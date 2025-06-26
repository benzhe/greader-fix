package defpackage;

import defpackage.ad;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class xc {
    public static xc c = new xc();
    public final Map<Class, a> a = new HashMap();
    public final Map<Class, Boolean> b = new HashMap();

    public static class a {
        public final Map<ad.a, List<b>> a = new HashMap();
        public final Map<b, ad.a> b;

        public a(Map<b, ad.a> map) {
            this.b = map;
            for (Map.Entry<b, ad.a> entry : map.entrySet()) {
                ad.a value = entry.getValue();
                List<b> arrayList = this.a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        public static void a(List<b> list, dd ddVar, ad.a aVar, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    b bVar = list.get(size);
                    Objects.requireNonNull(bVar);
                    try {
                        int i = bVar.a;
                        if (i == 0) {
                            bVar.b.invoke(obj, new Object[0]);
                        } else if (i == 1) {
                            bVar.b.invoke(obj, ddVar);
                        } else if (i == 2) {
                            bVar.b.invoke(obj, ddVar, aVar);
                        }
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException("Failed to call observer method", e2.getCause());
                    }
                }
            }
        }
    }

    public static class b {
        public final int a;
        public final Method b;

        public b(int i, Method method) {
            this.a = i;
            this.b = method;
            method.setAccessible(true);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && this.b.getName().equals(bVar.b.getName());
        }

        public int hashCode() {
            return this.b.getName().hashCode() + (this.a * 31);
        }
    }

    public final a a(Class cls, Method[] methodArr) throws SecurityException {
        int i;
        a aVarB;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (aVarB = b(superclass)) != null) {
            map.putAll(aVarB.b);
        }
        for (Class cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, ad.a> entry : b(cls2).b.entrySet()) {
                c(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            kd kdVar = (kd) method.getAnnotation(kd.class);
            if (kdVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(dd.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                ad.a aVarValue = kdVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(ad.a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (aVarValue != ad.a.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                c(map, new b(i, method), aVarValue, cls);
                z = true;
            }
        }
        a aVar = new a(map);
        this.a.put(cls, aVar);
        this.b.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    public a b(Class cls) {
        a aVar = this.a.get(cls);
        return aVar != null ? aVar : a(cls, null);
    }

    public final void c(Map<b, ad.a> map, b bVar, ad.a aVar, Class cls) {
        ad.a aVar2 = map.get(bVar);
        if (aVar2 == null || aVar == aVar2) {
            if (aVar2 == null) {
                map.put(bVar, aVar);
                return;
            }
            return;
        }
        Method method = bVar.b;
        StringBuilder sbZ = jo.z("Method ");
        sbZ.append(method.getName());
        sbZ.append(" in ");
        sbZ.append(cls.getName());
        sbZ.append(" already declared with different @OnLifecycleEvent value: previous value ");
        sbZ.append(aVar2);
        sbZ.append(", new value ");
        sbZ.append(aVar);
        throw new IllegalArgumentException(sbZ.toString());
    }
}
