package org.apache.commons.lang3;

import defpackage.jo;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;
import java.util.function.Supplier;
import org.apache.commons.lang3.exception.CloneFailedException;
import org.apache.commons.lang3.mutable.MutableInt;
import org.apache.commons.lang3.text.StrBuilder;

/* loaded from: classes2.dex */
public class ObjectUtils {
    private static final char AT_SIGN = '@';
    public static final Null NULL = new Null();

    public static class Null implements Serializable {
        private static final long serialVersionUID = 7092611880189329093L;

        private Object readResolve() {
            return ObjectUtils.NULL;
        }
    }

    public static byte CONST(byte b) {
        return b;
    }

    public static char CONST(char c) {
        return c;
    }

    public static double CONST(double d) {
        return d;
    }

    public static float CONST(float f) {
        return f;
    }

    public static int CONST(int i) {
        return i;
    }

    public static long CONST(long j) {
        return j;
    }

    public static <T> T CONST(T t) {
        return t;
    }

    public static short CONST(short s) {
        return s;
    }

    public static boolean CONST(boolean z) {
        return z;
    }

    public static byte CONST_BYTE(int i) {
        if (i < -128 || i > 127) {
            throw new IllegalArgumentException(jo.h("Supplied value must be a valid byte literal between -128 and 127: [", i, "]"));
        }
        return (byte) i;
    }

    public static short CONST_SHORT(int i) {
        if (i < -32768 || i > 32767) {
            throw new IllegalArgumentException(jo.h("Supplied value must be a valid byte literal between -32768 and 32767: [", i, "]"));
        }
        return (short) i;
    }

    public static boolean allNotNull(Object... objArr) {
        if (objArr == null) {
            return false;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                return false;
            }
        }
        return true;
    }

    public static boolean allNull(Object... objArr) {
        return !anyNotNull(objArr);
    }

    public static boolean anyNotNull(Object... objArr) {
        return firstNonNull(objArr) != null;
    }

    public static boolean anyNull(Object... objArr) {
        return !allNotNull(objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T clone(T t) throws ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (!(t instanceof Cloneable)) {
            return null;
        }
        if (!t.getClass().isArray()) {
            try {
                return (T) t.getClass().getMethod("clone", new Class[0]).invoke(t, new Object[0]);
            } catch (IllegalAccessException e) {
                StringBuilder sbZ = jo.z("Cannot clone Cloneable type ");
                sbZ.append(t.getClass().getName());
                throw new CloneFailedException(sbZ.toString(), e);
            } catch (NoSuchMethodException e2) {
                StringBuilder sbZ2 = jo.z("Cloneable type ");
                sbZ2.append(t.getClass().getName());
                sbZ2.append(" has no clone method");
                throw new CloneFailedException(sbZ2.toString(), e2);
            } catch (InvocationTargetException e3) {
                StringBuilder sbZ3 = jo.z("Exception cloning Cloneable type ");
                sbZ3.append(t.getClass().getName());
                throw new CloneFailedException(sbZ3.toString(), e3.getCause());
            }
        }
        Class<?> componentType = t.getClass().getComponentType();
        if (!componentType.isPrimitive()) {
            return (T) ((Object[]) t).clone();
        }
        int length = Array.getLength(t);
        T t2 = (T) Array.newInstance(componentType, length);
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return t2;
            }
            Array.set(t2, i, Array.get(t, i));
            length = i;
        }
    }

    public static <T> T cloneIfPossible(T t) {
        T t2 = (T) clone(t);
        return t2 == null ? t : t2;
    }

    public static <T extends Comparable<? super T>> int compare(T t, T t2) {
        return compare(t, t2, false);
    }

    public static <T> T defaultIfNull(T t, T t2) {
        return t != null ? t : t2;
    }

    @Deprecated
    public static boolean equals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    @SafeVarargs
    public static <T> T firstNonNull(T... tArr) {
        if (tArr == null) {
            return null;
        }
        for (T t : tArr) {
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    @SafeVarargs
    public static <T> T getFirstNonNull(Supplier<T>... supplierArr) {
        T t;
        if (supplierArr == null) {
            return null;
        }
        for (Supplier<T> supplier : supplierArr) {
            if (supplier != null && (t = supplier.get()) != null) {
                return t;
            }
        }
        return null;
    }

    public static <T> T getIfNull(T t, Supplier<T> supplier) {
        if (t != null) {
            return t;
        }
        if (supplier == null) {
            return null;
        }
        return supplier.get();
    }

    @Deprecated
    public static int hashCode(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    @Deprecated
    public static int hashCodeMulti(Object... objArr) {
        int iHashCode = 1;
        if (objArr != null) {
            for (Object obj : objArr) {
                iHashCode = (iHashCode * 31) + hashCode(obj);
            }
        }
        return iHashCode;
    }

    public static void identityToString(Appendable appendable, Object obj) throws IOException {
        Validate.notNull(obj, "Cannot get the toString of a null object", new Object[0]);
        appendable.append(obj.getClass().getName()).append(AT_SIGN).append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static boolean isEmpty(Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj instanceof CharSequence) {
            return ((CharSequence) obj).length() == 0;
        }
        if (obj.getClass().isArray()) {
            return Array.getLength(obj) == 0;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).isEmpty();
        }
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        return false;
    }

    public static boolean isNotEmpty(Object obj) {
        return !isEmpty(obj);
    }

    @SafeVarargs
    public static <T extends Comparable<? super T>> T max(T... tArr) {
        T t = null;
        if (tArr != null) {
            for (T t2 : tArr) {
                if (compare(t2, t, false) > 0) {
                    t = t2;
                }
            }
        }
        return t;
    }

    @SafeVarargs
    public static <T> T median(Comparator<T> comparator, T... tArr) {
        Validate.notEmpty(tArr, "null/empty items", new Object[0]);
        Validate.noNullElements(tArr);
        Validate.notNull(comparator, "null comparator", new Object[0]);
        TreeSet treeSet = new TreeSet(comparator);
        Collections.addAll(treeSet, tArr);
        return (T) treeSet.toArray()[(treeSet.size() - 1) / 2];
    }

    @SafeVarargs
    public static <T extends Comparable<? super T>> T min(T... tArr) {
        T t = null;
        if (tArr != null) {
            for (T t2 : tArr) {
                if (compare(t2, t, true) < 0) {
                    t = t2;
                }
            }
        }
        return t;
    }

    @SafeVarargs
    public static <T> T mode(T... tArr) {
        if (!ArrayUtils.isNotEmpty(tArr)) {
            return null;
        }
        HashMap map = new HashMap(tArr.length);
        int i = 0;
        for (T t : tArr) {
            MutableInt mutableInt = (MutableInt) map.get(t);
            if (mutableInt == null) {
                map.put(t, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        while (true) {
            T t2 = null;
            for (Map.Entry entry : map.entrySet()) {
                int iIntValue = ((MutableInt) entry.getValue()).intValue();
                if (iIntValue == i) {
                    break;
                }
                if (iIntValue > i) {
                    t2 = (T) entry.getKey();
                    i = iIntValue;
                }
            }
            return t2;
        }
    }

    public static boolean notEqual(Object obj, Object obj2) {
        return !equals(obj, obj2);
    }

    @Deprecated
    public static String toString(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public static <T extends Comparable<? super T>> int compare(T t, T t2, boolean z) {
        if (t == t2) {
            return 0;
        }
        return t == null ? z ? 1 : -1 : t2 == null ? z ? -1 : 1 : t.compareTo(t2);
    }

    @Deprecated
    public static String toString(Object obj, String str) {
        return obj == null ? str : obj.toString();
    }

    public static String toString(Object obj, Supplier<String> supplier) {
        if (obj != null) {
            return obj.toString();
        }
        if (supplier == null) {
            return null;
        }
        return supplier.get();
    }

    public static String identityToString(Object obj) {
        if (obj == null) {
            return null;
        }
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        StringBuilder sb = new StringBuilder(hexString.length() + name.length() + 1);
        sb.append(name);
        sb.append(AT_SIGN);
        sb.append(hexString);
        return sb.toString();
    }

    @SafeVarargs
    public static <T extends Comparable<? super T>> T median(T... tArr) {
        Validate.notEmpty(tArr);
        Validate.noNullElements(tArr);
        TreeSet treeSet = new TreeSet();
        Collections.addAll(treeSet, tArr);
        return (T) treeSet.toArray()[(treeSet.size() - 1) / 2];
    }

    @Deprecated
    public static void identityToString(StrBuilder strBuilder, Object obj) {
        Validate.notNull(obj, "Cannot get the toString of a null object", new Object[0]);
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        strBuilder.ensureCapacity(hexString.length() + name.length() + strBuilder.length() + 1);
        strBuilder.append(name).append(AT_SIGN).append(hexString);
    }

    public static void identityToString(StringBuffer stringBuffer, Object obj) {
        Validate.notNull(obj, "Cannot get the toString of a null object", new Object[0]);
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        stringBuffer.ensureCapacity(hexString.length() + name.length() + stringBuffer.length() + 1);
        stringBuffer.append(name);
        stringBuffer.append(AT_SIGN);
        stringBuffer.append(hexString);
    }

    public static void identityToString(StringBuilder sb, Object obj) {
        Validate.notNull(obj, "Cannot get the toString of a null object", new Object[0]);
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        sb.ensureCapacity(hexString.length() + name.length() + sb.length() + 1);
        sb.append(name);
        sb.append(AT_SIGN);
        sb.append(hexString);
    }
}
