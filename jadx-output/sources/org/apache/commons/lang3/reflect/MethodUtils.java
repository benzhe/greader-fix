package org.apache.commons.lang3.reflect;

import defpackage.jo;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.Validate;

/* loaded from: classes2.dex */
public class MethodUtils {
    private static final Comparator<Method> METHOD_BY_SIGNATURE = Comparator.comparing(new Function() { // from class: sz7
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((Method) obj).toString();
        }
    });

    private static int distance(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (!ClassUtils.isAssignable(clsArr, clsArr2, true)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < clsArr.length; i2++) {
            if (!clsArr[i2].equals(clsArr2[i2])) {
                i = (!ClassUtils.isAssignable(clsArr[i2], clsArr2[i2], true) || ClassUtils.isAssignable(clsArr[i2], clsArr2[i2], false)) ? i + 2 : i + 1;
            }
        }
        return i;
    }

    public static Method getAccessibleMethod(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return getAccessibleMethod(cls.getMethod(str, clsArr));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private static Method getAccessibleMethodFromInterfaceNest(Class<?> cls, String str, Class<?>... clsArr) {
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (Modifier.isPublic(cls2.getModifiers())) {
                    try {
                        return cls2.getDeclaredMethod(str, clsArr);
                    } catch (NoSuchMethodException unused) {
                        Method accessibleMethodFromInterfaceNest = getAccessibleMethodFromInterfaceNest(cls2, str, clsArr);
                        if (accessibleMethodFromInterfaceNest != null) {
                            return accessibleMethodFromInterfaceNest;
                        }
                    }
                }
            }
            cls = cls.getSuperclass();
        }
        return null;
    }

    private static Method getAccessibleMethodFromSuperclass(Class<?> cls, String str, Class<?>... clsArr) {
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (Modifier.isPublic(superclass.getModifiers())) {
                try {
                    return superclass.getMethod(str, clsArr);
                } catch (NoSuchMethodException unused) {
                    return null;
                }
            }
        }
        return null;
    }

    private static List<Class<?>> getAllSuperclassesAndInterfaces(Class<?> cls) {
        Class<?> cls2;
        int i;
        if (cls == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<Class<?>> allSuperclasses = ClassUtils.getAllSuperclasses(cls);
        List<Class<?>> allInterfaces = ClassUtils.getAllInterfaces(cls);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= allInterfaces.size() && i3 >= allSuperclasses.size()) {
                return arrayList;
            }
            if (i2 >= allInterfaces.size()) {
                i = i3 + 1;
                cls2 = allSuperclasses.get(i3);
            } else if (i3 >= allSuperclasses.size() || i2 < i3 || i3 >= i2) {
                int i4 = i3;
                cls2 = allInterfaces.get(i2);
                i2++;
                i = i4;
            } else {
                i = i3 + 1;
                cls2 = allSuperclasses.get(i3);
            }
            arrayList.add(cls2);
            i3 = i;
        }
    }

    public static <A extends Annotation> A getAnnotation(Method method, Class<A> cls, boolean z, boolean z2) {
        Validate.notNull(method, "The method must not be null", new Object[0]);
        Validate.notNull(cls, "The annotation class must not be null", new Object[0]);
        if (!z2 && !MemberUtils.isAccessible(method)) {
            return null;
        }
        A a = (A) method.getAnnotation(cls);
        if (a == null && z) {
            for (Class<?> cls2 : getAllSuperclassesAndInterfaces(method.getDeclaringClass())) {
                Method matchingMethod = z2 ? getMatchingMethod(cls2, method.getName(), method.getParameterTypes()) : getMatchingAccessibleMethod(cls2, method.getName(), method.getParameterTypes());
                if (matchingMethod != null && (a = (A) matchingMethod.getAnnotation(cls)) != null) {
                    break;
                }
            }
        }
        return a;
    }

    public static Method getMatchingAccessibleMethod(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException, SecurityException {
        try {
            Method method = cls.getMethod(str, clsArr);
            MemberUtils.setAccessibleWorkaround(method);
            return method;
        } catch (NoSuchMethodException unused) {
            Method[] methods = cls.getMethods();
            ArrayList arrayList = new ArrayList();
            for (Method method2 : methods) {
                if (method2.getName().equals(str) && MemberUtils.isMatchingMethod(method2, clsArr)) {
                    arrayList.add(method2);
                }
            }
            arrayList.sort(METHOD_BY_SIGNATURE);
            Iterator it = arrayList.iterator();
            Method method3 = null;
            while (it.hasNext()) {
                Method accessibleMethod = getAccessibleMethod((Method) it.next());
                if (accessibleMethod != null && (method3 == null || MemberUtils.compareMethodFit(accessibleMethod, method3, clsArr) < 0)) {
                    method3 = accessibleMethod;
                }
            }
            if (method3 != null) {
                MemberUtils.setAccessibleWorkaround(method3);
            }
            if (method3 != null && method3.isVarArgs() && method3.getParameterTypes().length > 0 && clsArr.length > 0) {
                String name = ClassUtils.primitiveToWrapper(method3.getParameterTypes()[r5.length - 1].getComponentType()).getName();
                Class<?> cls2 = clsArr[clsArr.length - 1];
                String name2 = cls2 == null ? null : cls2.getName();
                String name3 = cls2 == null ? null : cls2.getSuperclass().getName();
                if (name2 != null && name3 != null && !name.equals(name2) && !name.equals(name3)) {
                    return null;
                }
            }
            return method3;
        }
    }

    public static Method getMatchingMethod(Class<?> cls, String str, Class<?>... clsArr) throws SecurityException {
        Validate.notNull(cls, "Null class not allowed.", new Object[0]);
        Validate.notEmpty(str, "Null or blank methodName not allowed.", new Object[0]);
        Method[] declaredMethods = cls.getDeclaredMethods();
        Iterator<Class<?>> it = ClassUtils.getAllSuperclasses(cls).iterator();
        while (it.hasNext()) {
            declaredMethods = (Method[]) ArrayUtils.addAll(declaredMethods, it.next().getDeclaredMethods());
        }
        Method method = null;
        for (Method method2 : declaredMethods) {
            if (str.equals(method2.getName()) && Objects.deepEquals(clsArr, method2.getParameterTypes())) {
                return method2;
            }
            if (str.equals(method2.getName()) && ClassUtils.isAssignable(clsArr, method2.getParameterTypes(), true) && (method == null || distance(clsArr, method2.getParameterTypes()) < distance(clsArr, method.getParameterTypes()))) {
                method = method2;
            }
        }
        return method;
    }

    public static List<Method> getMethodsListWithAnnotation(Class<?> cls, Class<? extends Annotation> cls2) {
        return getMethodsListWithAnnotation(cls, cls2, false, false);
    }

    public static Method[] getMethodsWithAnnotation(Class<?> cls, Class<? extends Annotation> cls2) {
        return getMethodsWithAnnotation(cls, cls2, false, false);
    }

    public static Set<Method> getOverrideHierarchy(Method method, ClassUtils.Interfaces interfaces) throws NoSuchMethodException, SecurityException {
        Validate.notNull(method);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(method);
        Class<?>[] parameterTypes = method.getParameterTypes();
        Class<?> declaringClass = method.getDeclaringClass();
        Iterator<Class<?>> it = ClassUtils.hierarchy(declaringClass, interfaces).iterator();
        it.next();
        while (it.hasNext()) {
            Method matchingAccessibleMethod = getMatchingAccessibleMethod(it.next(), method.getName(), parameterTypes);
            if (matchingAccessibleMethod != null) {
                if (!Arrays.equals(matchingAccessibleMethod.getParameterTypes(), parameterTypes)) {
                    Map<TypeVariable<?>, Type> typeArguments = TypeUtils.getTypeArguments(declaringClass, matchingAccessibleMethod.getDeclaringClass());
                    int i = 0;
                    while (true) {
                        if (i >= parameterTypes.length) {
                            linkedHashSet.add(matchingAccessibleMethod);
                            break;
                        }
                        if (!TypeUtils.equals(TypeUtils.unrollVariables(typeArguments, method.getGenericParameterTypes()[i]), TypeUtils.unrollVariables(typeArguments, matchingAccessibleMethod.getGenericParameterTypes()[i]))) {
                            break;
                        }
                        i++;
                    }
                } else {
                    linkedHashSet.add(matchingAccessibleMethod);
                }
            }
        }
        return linkedHashSet;
    }

    public static Object[] getVarArgs(Object[] objArr, Class<?>[] clsArr) throws NegativeArraySizeException {
        if (objArr.length == clsArr.length && (objArr[objArr.length - 1] == null || objArr[objArr.length - 1].getClass().equals(clsArr[clsArr.length - 1]))) {
            return objArr;
        }
        Object[] objArr2 = new Object[clsArr.length];
        System.arraycopy(objArr, 0, objArr2, 0, clsArr.length - 1);
        Class<?> componentType = clsArr[clsArr.length - 1].getComponentType();
        int length = (objArr.length - clsArr.length) + 1;
        Object objNewInstance = Array.newInstance(ClassUtils.primitiveToWrapper(componentType), length);
        System.arraycopy(objArr, clsArr.length - 1, objNewInstance, 0, length);
        if (componentType.isPrimitive()) {
            objNewInstance = ArrayUtils.toPrimitive(objNewInstance);
        }
        objArr2[clsArr.length - 1] = objNewInstance;
        return objArr2;
    }

    public static Object invokeExactMethod(Object obj, String str) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return invokeExactMethod(obj, str, ArrayUtils.EMPTY_OBJECT_ARRAY, null);
    }

    public static Object invokeExactStaticMethod(Class<?> cls, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrNullToEmpty = ArrayUtils.nullToEmpty(objArr);
        Method accessibleMethod = getAccessibleMethod(cls, str, ArrayUtils.nullToEmpty(clsArr));
        if (accessibleMethod != null) {
            return accessibleMethod.invoke(null, objArrNullToEmpty);
        }
        StringBuilder sbC = jo.C("No such accessible method: ", str, "() on class: ");
        sbC.append(cls.getName());
        throw new NoSuchMethodException(sbC.toString());
    }

    public static Object invokeMethod(Object obj, String str) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return invokeMethod(obj, str, ArrayUtils.EMPTY_OBJECT_ARRAY, (Class<?>[]) null);
    }

    public static Object invokeStaticMethod(Class<?> cls, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrNullToEmpty = ArrayUtils.nullToEmpty(objArr);
        return invokeStaticMethod(cls, str, objArrNullToEmpty, ClassUtils.toClass(objArrNullToEmpty));
    }

    private static Object[] toVarArgs(Method method, Object[] objArr) {
        return method.isVarArgs() ? getVarArgs(objArr, method.getParameterTypes()) : objArr;
    }

    public static Method getAccessibleMethod(Method method) {
        if (!MemberUtils.isAccessible(method)) {
            return null;
        }
        Class<?> declaringClass = method.getDeclaringClass();
        if (Modifier.isPublic(declaringClass.getModifiers())) {
            return method;
        }
        String name = method.getName();
        Class<?>[] parameterTypes = method.getParameterTypes();
        Method accessibleMethodFromInterfaceNest = getAccessibleMethodFromInterfaceNest(declaringClass, name, parameterTypes);
        return accessibleMethodFromInterfaceNest == null ? getAccessibleMethodFromSuperclass(declaringClass, name, parameterTypes) : accessibleMethodFromInterfaceNest;
    }

    public static List<Method> getMethodsListWithAnnotation(Class<?> cls, Class<? extends Annotation> cls2, boolean z, boolean z2) {
        Validate.notNull(cls, "The class must not be null", new Object[0]);
        Validate.notNull(cls2, "The annotation class must not be null", new Object[0]);
        List<Class> allSuperclassesAndInterfaces = z ? getAllSuperclassesAndInterfaces(cls) : new ArrayList();
        allSuperclassesAndInterfaces.add(0, cls);
        ArrayList arrayList = new ArrayList();
        for (Class cls3 : allSuperclassesAndInterfaces) {
            for (Method method : z2 ? cls3.getDeclaredMethods() : cls3.getMethods()) {
                if (method.getAnnotation(cls2) != null) {
                    arrayList.add(method);
                }
            }
        }
        return arrayList;
    }

    public static Method[] getMethodsWithAnnotation(Class<?> cls, Class<? extends Annotation> cls2, boolean z, boolean z2) {
        return (Method[]) getMethodsListWithAnnotation(cls, cls2, z, z2).toArray(ArrayUtils.EMPTY_METHOD_ARRAY);
    }

    public static Object invokeExactMethod(Object obj, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrNullToEmpty = ArrayUtils.nullToEmpty(objArr);
        return invokeExactMethod(obj, str, objArrNullToEmpty, ClassUtils.toClass(objArrNullToEmpty));
    }

    public static Object invokeMethod(Object obj, boolean z, String str) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return invokeMethod(obj, z, str, ArrayUtils.EMPTY_OBJECT_ARRAY, null);
    }

    public static Object invokeMethod(Object obj, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrNullToEmpty = ArrayUtils.nullToEmpty(objArr);
        return invokeMethod(obj, str, objArrNullToEmpty, ClassUtils.toClass(objArrNullToEmpty));
    }

    public static Object invokeStaticMethod(Class<?> cls, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, SecurityException, InvocationTargetException {
        Object[] objArrNullToEmpty = ArrayUtils.nullToEmpty(objArr);
        Method matchingAccessibleMethod = getMatchingAccessibleMethod(cls, str, ArrayUtils.nullToEmpty(clsArr));
        if (matchingAccessibleMethod != null) {
            return matchingAccessibleMethod.invoke(null, toVarArgs(matchingAccessibleMethod, objArrNullToEmpty));
        }
        StringBuilder sbC = jo.C("No such accessible method: ", str, "() on class: ");
        sbC.append(cls.getName());
        throw new NoSuchMethodException(sbC.toString());
    }

    public static Object invokeExactMethod(Object obj, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrNullToEmpty = ArrayUtils.nullToEmpty(objArr);
        Method accessibleMethod = getAccessibleMethod(obj.getClass(), str, ArrayUtils.nullToEmpty(clsArr));
        if (accessibleMethod != null) {
            return accessibleMethod.invoke(obj, objArrNullToEmpty);
        }
        StringBuilder sbC = jo.C("No such accessible method: ", str, "() on object: ");
        sbC.append(obj.getClass().getName());
        throw new NoSuchMethodException(sbC.toString());
    }

    public static Object invokeMethod(Object obj, boolean z, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrNullToEmpty = ArrayUtils.nullToEmpty(objArr);
        return invokeMethod(obj, z, str, objArrNullToEmpty, ClassUtils.toClass(objArrNullToEmpty));
    }

    public static Object invokeExactStaticMethod(Class<?> cls, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrNullToEmpty = ArrayUtils.nullToEmpty(objArr);
        return invokeExactStaticMethod(cls, str, objArrNullToEmpty, ClassUtils.toClass(objArrNullToEmpty));
    }

    public static Object invokeMethod(Object obj, boolean z, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, SecurityException, InvocationTargetException {
        Method matchingAccessibleMethod;
        String str2;
        Class<?>[] clsArrNullToEmpty = ArrayUtils.nullToEmpty(clsArr);
        Object[] objArrNullToEmpty = ArrayUtils.nullToEmpty(objArr);
        if (z) {
            matchingAccessibleMethod = getMatchingMethod(obj.getClass(), str, clsArrNullToEmpty);
            if (matchingAccessibleMethod != null && !matchingAccessibleMethod.isAccessible()) {
                matchingAccessibleMethod.setAccessible(true);
            }
            str2 = "No such method: ";
        } else {
            matchingAccessibleMethod = getMatchingAccessibleMethod(obj.getClass(), str, clsArrNullToEmpty);
            str2 = "No such accessible method: ";
        }
        if (matchingAccessibleMethod != null) {
            return matchingAccessibleMethod.invoke(obj, toVarArgs(matchingAccessibleMethod, objArrNullToEmpty));
        }
        StringBuilder sbC = jo.C(str2, str, "() on object: ");
        sbC.append(obj.getClass().getName());
        throw new NoSuchMethodException(sbC.toString());
    }

    public static Object invokeMethod(Object obj, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return invokeMethod(obj, false, str, objArr, clsArr);
    }
}
