package org.apache.commons.lang3;

import defpackage.jo;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.commons.lang3.mutable.MutableInt;

/* loaded from: classes2.dex */
public class ArrayUtils {
    public static final int INDEX_NOT_FOUND = -1;
    public static final boolean[] EMPTY_BOOLEAN_ARRAY = new boolean[0];
    public static final Boolean[] EMPTY_BOOLEAN_OBJECT_ARRAY = new Boolean[0];
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final Byte[] EMPTY_BYTE_OBJECT_ARRAY = new Byte[0];
    public static final char[] EMPTY_CHAR_ARRAY = new char[0];
    public static final Character[] EMPTY_CHARACTER_OBJECT_ARRAY = new Character[0];
    public static final Class<?>[] EMPTY_CLASS_ARRAY = new Class[0];
    public static final double[] EMPTY_DOUBLE_ARRAY = new double[0];
    public static final Double[] EMPTY_DOUBLE_OBJECT_ARRAY = new Double[0];
    public static final Field[] EMPTY_FIELD_ARRAY = new Field[0];
    public static final float[] EMPTY_FLOAT_ARRAY = new float[0];
    public static final Float[] EMPTY_FLOAT_OBJECT_ARRAY = new Float[0];
    public static final int[] EMPTY_INT_ARRAY = new int[0];
    public static final Integer[] EMPTY_INTEGER_OBJECT_ARRAY = new Integer[0];
    public static final long[] EMPTY_LONG_ARRAY = new long[0];
    public static final Long[] EMPTY_LONG_OBJECT_ARRAY = new Long[0];
    public static final Method[] EMPTY_METHOD_ARRAY = new Method[0];
    public static final Object[] EMPTY_OBJECT_ARRAY = new Object[0];
    public static final short[] EMPTY_SHORT_ARRAY = new short[0];
    public static final Short[] EMPTY_SHORT_OBJECT_ARRAY = new Short[0];
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final Throwable[] EMPTY_THROWABLE_ARRAY = new Throwable[0];
    public static final Type[] EMPTY_TYPE_ARRAY = new Type[0];

    public static boolean[] add(boolean[] zArr, boolean z) {
        boolean[] zArr2 = (boolean[]) copyArrayGrow1(zArr, Boolean.TYPE);
        zArr2[zArr2.length - 1] = z;
        return zArr2;
    }

    public static boolean[] addAll(boolean[] zArr, boolean... zArr2) {
        if (zArr == null) {
            return clone(zArr2);
        }
        if (zArr2 == null) {
            return clone(zArr);
        }
        boolean[] zArr3 = new boolean[zArr.length + zArr2.length];
        System.arraycopy(zArr, 0, zArr3, 0, zArr.length);
        System.arraycopy(zArr2, 0, zArr3, zArr.length, zArr2.length);
        return zArr3;
    }

    public static boolean[] addFirst(boolean[] zArr, boolean z) {
        return zArr == null ? add(zArr, z) : insert(0, zArr, z);
    }

    public static boolean[] clone(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        return (boolean[]) zArr.clone();
    }

    public static boolean contains(boolean[] zArr, boolean z) {
        return indexOf(zArr, z) != -1;
    }

    private static Object copyArrayGrow1(Object obj, Class<?> cls) throws NegativeArraySizeException {
        if (obj == null) {
            return Array.newInstance(cls, 1);
        }
        int length = Array.getLength(obj);
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), length + 1);
        System.arraycopy(obj, 0, objNewInstance, 0, length);
        return objNewInstance;
    }

    public static <T> T get(T[] tArr, int i) {
        return (T) get(tArr, i, null);
    }

    public static int getLength(Object obj) {
        if (obj == null) {
            return 0;
        }
        return Array.getLength(obj);
    }

    public static int hashCode(Object obj) {
        return new HashCodeBuilder().append(obj).toHashCode();
    }

    public static int indexOf(boolean[] zArr, boolean z) {
        return indexOf(zArr, z, 0);
    }

    public static BitSet indexesOf(boolean[] zArr, boolean z) {
        return indexesOf(zArr, z, 0);
    }

    public static boolean[] insert(int i, boolean[] zArr, boolean... zArr2) {
        if (zArr == null) {
            return null;
        }
        if (isEmpty(zArr2)) {
            return clone(zArr);
        }
        if (i < 0 || i > zArr.length) {
            StringBuilder sbA = jo.A("Index: ", i, ", Length: ");
            sbA.append(zArr.length);
            throw new IndexOutOfBoundsException(sbA.toString());
        }
        boolean[] zArr3 = new boolean[zArr.length + zArr2.length];
        System.arraycopy(zArr2, 0, zArr3, i, zArr2.length);
        if (i > 0) {
            System.arraycopy(zArr, 0, zArr3, 0, i);
        }
        if (i < zArr.length) {
            System.arraycopy(zArr, i, zArr3, zArr2.length + i, zArr.length - i);
        }
        return zArr3;
    }

    public static <T> boolean isArrayIndexValid(T[] tArr, int i) {
        return i >= 0 && getLength(tArr) > i;
    }

    public static boolean isEmpty(boolean[] zArr) {
        return getLength(zArr) == 0;
    }

    @Deprecated
    public static boolean isEquals(Object obj, Object obj2) {
        return new EqualsBuilder().append(obj, obj2).isEquals();
    }

    public static boolean isNotEmpty(boolean[] zArr) {
        return !isEmpty(zArr);
    }

    public static boolean isSameLength(boolean[] zArr, boolean[] zArr2) {
        return getLength(zArr) == getLength(zArr2);
    }

    public static boolean isSameType(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        return obj.getClass().getName().equals(obj2.getClass().getName());
    }

    public static boolean isSorted(boolean[] zArr) {
        if (zArr != null && zArr.length >= 2) {
            boolean z = zArr[0];
            int length = zArr.length;
            int i = 1;
            while (i < length) {
                boolean z2 = zArr[i];
                if (BooleanUtils.compare(z, z2) > 0) {
                    return false;
                }
                i++;
                z = z2;
            }
        }
        return true;
    }

    public static int lastIndexOf(boolean[] zArr, boolean z) {
        return lastIndexOf(zArr, z, Integer.MAX_VALUE);
    }

    public static boolean[] nullToEmpty(boolean[] zArr) {
        return isEmpty(zArr) ? EMPTY_BOOLEAN_ARRAY : zArr;
    }

    public static boolean[] remove(boolean[] zArr, int i) {
        return (boolean[]) remove((Object) zArr, i);
    }

    public static boolean[] removeAll(boolean[] zArr, int... iArr) {
        return (boolean[]) removeAll((Object) zArr, iArr);
    }

    @Deprecated
    public static boolean[] removeAllOccurences(boolean[] zArr, boolean z) {
        return (boolean[]) removeAll(zArr, indexesOf(zArr, z));
    }

    public static boolean[] removeAllOccurrences(boolean[] zArr, boolean z) {
        return (boolean[]) removeAll(zArr, indexesOf(zArr, z));
    }

    public static boolean[] removeElement(boolean[] zArr, boolean z) {
        int iIndexOf = indexOf(zArr, z);
        return iIndexOf == -1 ? clone(zArr) : remove(zArr, iIndexOf);
    }

    public static boolean[] removeElements(boolean[] zArr, boolean... zArr2) {
        if (isEmpty(zArr) || isEmpty(zArr2)) {
            return clone(zArr);
        }
        HashMap map = new HashMap(2);
        for (boolean z : zArr2) {
            Boolean boolValueOf = Boolean.valueOf(z);
            MutableInt mutableInt = (MutableInt) map.get(boolValueOf);
            if (mutableInt == null) {
                map.put(boolValueOf, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i = 0; i < zArr.length; i++) {
            boolean z2 = zArr[i];
            MutableInt mutableInt2 = (MutableInt) map.get(Boolean.valueOf(z2));
            if (mutableInt2 != null) {
                if (mutableInt2.decrementAndGet() == 0) {
                    map.remove(Boolean.valueOf(z2));
                }
                bitSet.set(i);
            }
        }
        return (boolean[]) removeAll(zArr, bitSet);
    }

    public static void reverse(boolean[] zArr) {
        if (zArr == null) {
            return;
        }
        reverse(zArr, 0, zArr.length);
    }

    public static void shift(boolean[] zArr, int i) {
        if (zArr == null) {
            return;
        }
        shift(zArr, 0, zArr.length, i);
    }

    public static void shuffle(boolean[] zArr) {
        shuffle(zArr, new Random());
    }

    public static boolean[] subarray(boolean[] zArr, int i, int i2) {
        if (zArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > zArr.length) {
            i2 = zArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return EMPTY_BOOLEAN_ARRAY;
        }
        boolean[] zArr2 = new boolean[i3];
        System.arraycopy(zArr, i, zArr2, 0, i3);
        return zArr2;
    }

    public static void swap(boolean[] zArr, int i, int i2) {
        if (isEmpty(zArr)) {
            return;
        }
        swap(zArr, i, i2, 1);
    }

    public static <T> T[] toArray(T... tArr) {
        return tArr;
    }

    public static Map<Object, Object> toMap(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        HashMap map = new HashMap((int) (objArr.length * 1.5d));
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                map.put(entry.getKey(), entry.getValue());
            } else {
                if (!(obj instanceof Object[])) {
                    throw new IllegalArgumentException("Array element " + i + ", '" + obj + "', is neither of type Map.Entry nor an Array");
                }
                Object[] objArr2 = (Object[]) obj;
                if (objArr2.length < 2) {
                    throw new IllegalArgumentException("Array element " + i + ", '" + obj + "', has a length less than 2");
                }
                map.put(objArr2[0], objArr2[1]);
            }
        }
        return map;
    }

    public static Boolean[] toObject(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        if (zArr.length == 0) {
            return EMPTY_BOOLEAN_OBJECT_ARRAY;
        }
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; i < zArr.length; i++) {
            boolArr[i] = zArr[i] ? Boolean.TRUE : Boolean.FALSE;
        }
        return boolArr;
    }

    public static boolean[] toPrimitive(Boolean[] boolArr) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return EMPTY_BOOLEAN_ARRAY;
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i = 0; i < boolArr.length; i++) {
            zArr[i] = boolArr[i].booleanValue();
        }
        return zArr;
    }

    public static String toString(Object obj) {
        return toString(obj, "{}");
    }

    public static String[] toStringArray(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        if (objArr.length == 0) {
            return EMPTY_STRING_ARRAY;
        }
        String[] strArr = new String[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            strArr[i] = objArr[i].toString();
        }
        return strArr;
    }

    public static byte[] addFirst(byte[] bArr, byte b) {
        return bArr == null ? add(bArr, b) : insert(0, bArr, b);
    }

    public static byte[] clone(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public static boolean contains(byte[] bArr, byte b) {
        return indexOf(bArr, b) != -1;
    }

    public static <T> T get(T[] tArr, int i, T t) {
        return isArrayIndexValid(tArr, i) ? tArr[i] : t;
    }

    public static int indexOf(boolean[] zArr, boolean z, int i) {
        if (isEmpty(zArr)) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < zArr.length) {
            if (z == zArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static BitSet indexesOf(boolean[] zArr, boolean z, int i) {
        int iIndexOf;
        BitSet bitSet = new BitSet();
        if (zArr == null) {
            return bitSet;
        }
        while (i < zArr.length && (iIndexOf = indexOf(zArr, z, i)) != -1) {
            bitSet.set(iIndexOf);
            i = iIndexOf + 1;
        }
        return bitSet;
    }

    public static boolean isEmpty(byte[] bArr) {
        return getLength(bArr) == 0;
    }

    public static boolean isNotEmpty(byte[] bArr) {
        return !isEmpty(bArr);
    }

    public static boolean isSameLength(byte[] bArr, byte[] bArr2) {
        return getLength(bArr) == getLength(bArr2);
    }

    public static int lastIndexOf(boolean[] zArr, boolean z, int i) {
        if (isEmpty(zArr) || i < 0) {
            return -1;
        }
        if (i >= zArr.length) {
            i = zArr.length - 1;
        }
        while (i >= 0) {
            if (z == zArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static byte[] remove(byte[] bArr, int i) {
        return (byte[]) remove((Object) bArr, i);
    }

    public static byte[] removeAll(byte[] bArr, int... iArr) {
        return (byte[]) removeAll((Object) bArr, iArr);
    }

    @Deprecated
    public static byte[] removeAllOccurences(byte[] bArr, byte b) {
        return (byte[]) removeAll(bArr, indexesOf(bArr, b));
    }

    public static byte[] removeAllOccurrences(byte[] bArr, byte b) {
        return (byte[]) removeAll(bArr, indexesOf(bArr, b));
    }

    public static void reverse(boolean[] zArr, int i, int i2) {
        if (zArr == null) {
            return;
        }
        int iMin = Math.min(zArr.length, i2) - 1;
        for (int iMax = Math.max(i, 0); iMin > iMax; iMax++) {
            boolean z = zArr[iMin];
            zArr[iMin] = zArr[iMax];
            zArr[iMax] = z;
            iMin--;
        }
    }

    public static void shift(boolean[] zArr, int i, int i2, int i3) {
        if (zArr != null && i < zArr.length - 1 && i2 > 0) {
            if (i < 0) {
                i = 0;
            }
            if (i2 >= zArr.length) {
                i2 = zArr.length;
            }
            int i4 = i2 - i;
            if (i4 <= 1) {
                return;
            }
            int i5 = i3 % i4;
            if (i5 < 0) {
                i5 += i4;
            }
            while (i4 > 1 && i5 > 0) {
                int i6 = i4 - i5;
                if (i5 > i6) {
                    swap(zArr, i, (i4 + i) - i6, i6);
                    int i7 = i5;
                    i5 -= i6;
                    i4 = i7;
                } else if (i5 >= i6) {
                    swap(zArr, i, i6 + i, i5);
                    return;
                } else {
                    swap(zArr, i, i + i6, i5);
                    i += i5;
                    i4 = i6;
                }
            }
        }
    }

    public static void shuffle(boolean[] zArr, Random random) {
        for (int length = zArr.length; length > 1; length--) {
            swap(zArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static String toString(Object obj, String str) {
        return obj == null ? str : new ToStringBuilder(obj, ToStringStyle.SIMPLE_STYLE).append(obj).toString();
    }

    @Deprecated
    public static boolean[] add(boolean[] zArr, int i, boolean z) {
        return (boolean[]) add(zArr, i, Boolean.valueOf(z), Boolean.TYPE);
    }

    public static char[] addFirst(char[] cArr, char c) {
        return cArr == null ? add(cArr, c) : insert(0, cArr, c);
    }

    public static char[] clone(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return (char[]) cArr.clone();
    }

    public static boolean contains(char[] cArr, char c) {
        return indexOf(cArr, c) != -1;
    }

    public static boolean isEmpty(char[] cArr) {
        return getLength(cArr) == 0;
    }

    public static boolean isNotEmpty(char[] cArr) {
        return !isEmpty(cArr);
    }

    public static boolean isSameLength(char[] cArr, char[] cArr2) {
        return getLength(cArr) == getLength(cArr2);
    }

    public static Boolean[] nullToEmpty(Boolean[] boolArr) {
        return isEmpty(boolArr) ? EMPTY_BOOLEAN_OBJECT_ARRAY : boolArr;
    }

    public static char[] remove(char[] cArr, int i) {
        return (char[]) remove((Object) cArr, i);
    }

    public static char[] removeAll(char[] cArr, int... iArr) {
        return (char[]) removeAll((Object) cArr, iArr);
    }

    @Deprecated
    public static char[] removeAllOccurences(char[] cArr, char c) {
        return (char[]) removeAll(cArr, indexesOf(cArr, c));
    }

    public static char[] removeAllOccurrences(char[] cArr, char c) {
        return (char[]) removeAll(cArr, indexesOf(cArr, c));
    }

    public static void swap(boolean[] zArr, int i, int i2, int i3) {
        if (isEmpty(zArr) || i >= zArr.length || i2 >= zArr.length) {
            return;
        }
        int i4 = 0;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int iMin = Math.min(Math.min(i3, zArr.length - i), zArr.length - i2);
        while (i4 < iMin) {
            boolean z = zArr[i];
            zArr[i] = zArr[i2];
            zArr[i2] = z;
            i4++;
            i++;
            i2++;
        }
    }

    public static byte[] add(byte[] bArr, byte b) {
        byte[] bArr2 = (byte[]) copyArrayGrow1(bArr, Byte.TYPE);
        bArr2[bArr2.length - 1] = b;
        return bArr2;
    }

    public static double[] addFirst(double[] dArr, double d) {
        return dArr == null ? add(dArr, d) : insert(0, dArr, d);
    }

    public static double[] clone(double[] dArr) {
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public static boolean contains(double[] dArr, double d) {
        return indexOf(dArr, d) != -1;
    }

    public static boolean isEmpty(double[] dArr) {
        return getLength(dArr) == 0;
    }

    public static boolean isNotEmpty(double[] dArr) {
        return !isEmpty(dArr);
    }

    public static boolean isSameLength(double[] dArr, double[] dArr2) {
        return getLength(dArr) == getLength(dArr2);
    }

    public static double[] remove(double[] dArr, int i) {
        return (double[]) remove((Object) dArr, i);
    }

    public static double[] removeAll(double[] dArr, int... iArr) {
        return (double[]) removeAll((Object) dArr, iArr);
    }

    @Deprecated
    public static double[] removeAllOccurences(double[] dArr, double d) {
        return (double[]) removeAll(dArr, indexesOf(dArr, d));
    }

    public static double[] removeAllOccurrences(double[] dArr, double d) {
        return (double[]) removeAll(dArr, indexesOf(dArr, d));
    }

    public static byte[] removeElement(byte[] bArr, byte b) {
        int iIndexOf = indexOf(bArr, b);
        if (iIndexOf == -1) {
            return clone(bArr);
        }
        return remove(bArr, iIndexOf);
    }

    public static void shuffle(byte[] bArr) {
        shuffle(bArr, new Random());
    }

    public static float[] addFirst(float[] fArr, float f) {
        return fArr == null ? add(fArr, f) : insert(0, fArr, f);
    }

    public static float[] clone(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        return (float[]) fArr.clone();
    }

    public static boolean contains(double[] dArr, double d, double d2) {
        return indexOf(dArr, d, 0, d2) != -1;
    }

    public static int indexOf(byte[] bArr, byte b) {
        return indexOf(bArr, b, 0);
    }

    public static boolean isEmpty(float[] fArr) {
        return getLength(fArr) == 0;
    }

    public static boolean isNotEmpty(float[] fArr) {
        return !isEmpty(fArr);
    }

    public static boolean isSameLength(float[] fArr, float[] fArr2) {
        return getLength(fArr) == getLength(fArr2);
    }

    public static byte[] nullToEmpty(byte[] bArr) {
        return isEmpty(bArr) ? EMPTY_BYTE_ARRAY : bArr;
    }

    public static float[] remove(float[] fArr, int i) {
        return (float[]) remove((Object) fArr, i);
    }

    public static float[] removeAll(float[] fArr, int... iArr) {
        return (float[]) removeAll((Object) fArr, iArr);
    }

    @Deprecated
    public static float[] removeAllOccurences(float[] fArr, float f) {
        return (float[]) removeAll(fArr, indexesOf(fArr, f));
    }

    public static float[] removeAllOccurrences(float[] fArr, float f) {
        return (float[]) removeAll(fArr, indexesOf(fArr, f));
    }

    public static void shuffle(byte[] bArr, Random random) {
        for (int length = bArr.length; length > 1; length--) {
            swap(bArr, length - 1, random.nextInt(length), 1);
        }
    }

    @Deprecated
    public static byte[] add(byte[] bArr, int i, byte b) {
        return (byte[]) add(bArr, i, Byte.valueOf(b), Byte.TYPE);
    }

    public static byte[] addAll(byte[] bArr, byte... bArr2) {
        if (bArr == null) {
            return clone(bArr2);
        }
        if (bArr2 == null) {
            return clone(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static int[] addFirst(int[] iArr, int i) {
        return iArr == null ? add(iArr, i) : insert(0, iArr, i);
    }

    public static int[] clone(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    public static boolean contains(float[] fArr, float f) {
        return indexOf(fArr, f) != -1;
    }

    public static int indexOf(byte[] bArr, byte b, int i) {
        if (bArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < bArr.length) {
            if (b == bArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static BitSet indexesOf(byte[] bArr, byte b) {
        return indexesOf(bArr, b, 0);
    }

    public static boolean isEmpty(int[] iArr) {
        return getLength(iArr) == 0;
    }

    public static boolean isNotEmpty(int[] iArr) {
        return !isEmpty(iArr);
    }

    public static boolean isSameLength(int[] iArr, int[] iArr2) {
        return getLength(iArr) == getLength(iArr2);
    }

    public static boolean isSorted(byte[] bArr) {
        if (bArr != null && bArr.length >= 2) {
            byte b = bArr[0];
            int length = bArr.length;
            int i = 1;
            while (i < length) {
                byte b2 = bArr[i];
                if (NumberUtils.compare(b, b2) > 0) {
                    return false;
                }
                i++;
                b = b2;
            }
        }
        return true;
    }

    public static int lastIndexOf(byte[] bArr, byte b) {
        return lastIndexOf(bArr, b, Integer.MAX_VALUE);
    }

    public static int[] remove(int[] iArr, int i) {
        return (int[]) remove((Object) iArr, i);
    }

    public static int[] removeAll(int[] iArr, int... iArr2) {
        return (int[]) removeAll((Object) iArr, iArr2);
    }

    @Deprecated
    public static int[] removeAllOccurences(int[] iArr, int i) {
        return (int[]) removeAll(iArr, indexesOf(iArr, i));
    }

    public static int[] removeAllOccurrences(int[] iArr, int i) {
        return (int[]) removeAll(iArr, indexesOf(iArr, i));
    }

    public static byte[] subarray(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > bArr.length) {
            i2 = bArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        return bArr2;
    }

    public static Byte[] toObject(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return EMPTY_BYTE_OBJECT_ARRAY;
        }
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    public static boolean[] toPrimitive(Boolean[] boolArr, boolean z) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return EMPTY_BOOLEAN_ARRAY;
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i = 0; i < boolArr.length; i++) {
            Boolean bool = boolArr[i];
            zArr[i] = bool == null ? z : bool.booleanValue();
        }
        return zArr;
    }

    public static String[] toStringArray(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        if (objArr.length == 0) {
            return EMPTY_STRING_ARRAY;
        }
        String[] strArr = new String[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            strArr[i] = obj == null ? str : obj.toString();
        }
        return strArr;
    }

    public static char[] add(char[] cArr, char c) {
        char[] cArr2 = (char[]) copyArrayGrow1(cArr, Character.TYPE);
        cArr2[cArr2.length - 1] = c;
        return cArr2;
    }

    public static long[] addFirst(long[] jArr, long j) {
        return jArr == null ? add(jArr, j) : insert(0, jArr, j);
    }

    public static long[] clone(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        return (long[]) jArr.clone();
    }

    public static boolean contains(int[] iArr, int i) {
        return indexOf(iArr, i) != -1;
    }

    public static BitSet indexesOf(byte[] bArr, byte b, int i) {
        int iIndexOf;
        BitSet bitSet = new BitSet();
        if (bArr == null) {
            return bitSet;
        }
        while (i < bArr.length && (iIndexOf = indexOf(bArr, b, i)) != -1) {
            bitSet.set(iIndexOf);
            i = iIndexOf + 1;
        }
        return bitSet;
    }

    public static boolean isEmpty(long[] jArr) {
        return getLength(jArr) == 0;
    }

    public static boolean isNotEmpty(long[] jArr) {
        return !isEmpty(jArr);
    }

    public static boolean isSameLength(long[] jArr, long[] jArr2) {
        return getLength(jArr) == getLength(jArr2);
    }

    public static int lastIndexOf(byte[] bArr, byte b, int i) {
        if (bArr == null || i < 0) {
            return -1;
        }
        if (i >= bArr.length) {
            i = bArr.length - 1;
        }
        while (i >= 0) {
            if (b == bArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static Byte[] nullToEmpty(Byte[] bArr) {
        return isEmpty(bArr) ? EMPTY_BYTE_OBJECT_ARRAY : bArr;
    }

    public static long[] remove(long[] jArr, int i) {
        return (long[]) remove((Object) jArr, i);
    }

    public static long[] removeAll(long[] jArr, int... iArr) {
        return (long[]) removeAll((Object) jArr, iArr);
    }

    @Deprecated
    public static long[] removeAllOccurences(long[] jArr, long j) {
        return (long[]) removeAll(jArr, indexesOf(jArr, j));
    }

    public static long[] removeAllOccurrences(long[] jArr, long j) {
        return (long[]) removeAll(jArr, indexesOf(jArr, j));
    }

    public static char[] removeElement(char[] cArr, char c) {
        int iIndexOf = indexOf(cArr, c);
        if (iIndexOf == -1) {
            return clone(cArr);
        }
        return remove(cArr, iIndexOf);
    }

    public static void reverse(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        reverse(bArr, 0, bArr.length);
    }

    public static void shuffle(char[] cArr) {
        shuffle(cArr, new Random());
    }

    public static short[] addFirst(short[] sArr, short s) {
        return sArr == null ? add(sArr, s) : insert(0, sArr, s);
    }

    public static short[] clone(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    public static boolean contains(long[] jArr, long j) {
        return indexOf(jArr, j) != -1;
    }

    public static int indexOf(char[] cArr, char c) {
        return indexOf(cArr, c, 0);
    }

    public static boolean isEmpty(Object[] objArr) {
        return getLength(objArr) == 0;
    }

    public static boolean isNotEmpty(short[] sArr) {
        return !isEmpty(sArr);
    }

    public static boolean isSameLength(Object obj, Object obj2) {
        return getLength(obj) == getLength(obj2);
    }

    private static Object remove(Object obj, int i) throws NegativeArraySizeException {
        int length = getLength(obj);
        if (i >= 0 && i < length) {
            int i2 = length - 1;
            Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), i2);
            System.arraycopy(obj, 0, objNewInstance, 0, i);
            if (i < i2) {
                System.arraycopy(obj, i + 1, objNewInstance, i, (length - i) - 1);
            }
            return objNewInstance;
        }
        throw new IndexOutOfBoundsException(jo.i("Index: ", i, ", Length: ", length));
    }

    public static Object removeAll(Object obj, BitSet bitSet) throws NegativeArraySizeException {
        if (obj == null) {
            return null;
        }
        int length = getLength(obj);
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), length - bitSet.cardinality());
        int iNextClearBit = 0;
        int i = 0;
        while (true) {
            int iNextSetBit = bitSet.nextSetBit(iNextClearBit);
            if (iNextSetBit == -1) {
                break;
            }
            int i2 = iNextSetBit - iNextClearBit;
            if (i2 > 0) {
                System.arraycopy(obj, iNextClearBit, objNewInstance, i, i2);
                i += i2;
            }
            iNextClearBit = bitSet.nextClearBit(iNextSetBit);
        }
        int i3 = length - iNextClearBit;
        if (i3 > 0) {
            System.arraycopy(obj, iNextClearBit, objNewInstance, i, i3);
        }
        return objNewInstance;
    }

    @Deprecated
    public static short[] removeAllOccurences(short[] sArr, short s) {
        return (short[]) removeAll(sArr, indexesOf(sArr, s));
    }

    public static short[] removeAllOccurrences(short[] sArr, short s) {
        return (short[]) removeAll(sArr, indexesOf(sArr, s));
    }

    public static void reverse(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return;
        }
        int iMin = Math.min(bArr.length, i2) - 1;
        for (int iMax = Math.max(i, 0); iMin > iMax; iMax++) {
            byte b = bArr[iMin];
            bArr[iMin] = bArr[iMax];
            bArr[iMax] = b;
            iMin--;
        }
    }

    public static void shuffle(char[] cArr, Random random) {
        for (int length = cArr.length; length > 1; length--) {
            swap(cArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void swap(byte[] bArr, int i, int i2) {
        if (isEmpty(bArr)) {
            return;
        }
        swap(bArr, i, i2, 1);
    }

    @Deprecated
    public static char[] add(char[] cArr, int i, char c) {
        return (char[]) add(cArr, i, Character.valueOf(c), Character.TYPE);
    }

    public static <T> T[] addFirst(T[] tArr, T t) {
        return tArr == null ? (T[]) add(tArr, t) : (T[]) insert(0, tArr, t);
    }

    public static <T> T[] clone(T[] tArr) {
        if (tArr == null) {
            return null;
        }
        return (T[]) ((Object[]) tArr.clone());
    }

    public static boolean contains(Object[] objArr, Object obj) {
        return indexOf(objArr, obj) != -1;
    }

    public static int indexOf(char[] cArr, char c, int i) {
        if (cArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < cArr.length) {
            if (c == cArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static boolean isEmpty(short[] sArr) {
        return getLength(sArr) == 0;
    }

    public static <T> boolean isNotEmpty(T[] tArr) {
        return !isEmpty(tArr);
    }

    public static boolean isSameLength(Object[] objArr, Object[] objArr2) {
        return getLength(objArr) == getLength(objArr2);
    }

    public static char[] nullToEmpty(char[] cArr) {
        return isEmpty(cArr) ? EMPTY_CHAR_ARRAY : cArr;
    }

    @Deprecated
    public static <T> T[] removeAllOccurences(T[] tArr, T t) {
        return (T[]) ((Object[]) removeAll(tArr, indexesOf(tArr, t)));
    }

    public static <T> T[] removeAllOccurrences(T[] tArr, T t) {
        return (T[]) ((Object[]) removeAll(tArr, indexesOf(tArr, t)));
    }

    public static void shift(byte[] bArr, int i) {
        if (bArr == null) {
            return;
        }
        shift(bArr, 0, bArr.length, i);
    }

    public static double[] add(double[] dArr, double d) {
        double[] dArr2 = (double[]) copyArrayGrow1(dArr, Double.TYPE);
        dArr2[dArr2.length - 1] = d;
        return dArr2;
    }

    public static boolean contains(short[] sArr, short s) {
        return indexOf(sArr, s) != -1;
    }

    public static byte[] insert(int i, byte[] bArr, byte... bArr2) {
        if (bArr == null) {
            return null;
        }
        if (isEmpty(bArr2)) {
            return clone(bArr);
        }
        if (i >= 0 && i <= bArr.length) {
            byte[] bArr3 = new byte[bArr.length + bArr2.length];
            System.arraycopy(bArr2, 0, bArr3, i, bArr2.length);
            if (i > 0) {
                System.arraycopy(bArr, 0, bArr3, 0, i);
            }
            if (i < bArr.length) {
                System.arraycopy(bArr, i, bArr3, bArr2.length + i, bArr.length - i);
            }
            return bArr3;
        }
        StringBuilder sbA = jo.A("Index: ", i, ", Length: ");
        sbA.append(bArr.length);
        throw new IndexOutOfBoundsException(sbA.toString());
    }

    public static boolean isSameLength(short[] sArr, short[] sArr2) {
        return getLength(sArr) == getLength(sArr2);
    }

    public static int lastIndexOf(char[] cArr, char c) {
        return lastIndexOf(cArr, c, Integer.MAX_VALUE);
    }

    public static double[] removeElement(double[] dArr, double d) {
        int iIndexOf = indexOf(dArr, d);
        if (iIndexOf == -1) {
            return clone(dArr);
        }
        return remove(dArr, iIndexOf);
    }

    public static void shift(byte[] bArr, int i, int i2, int i3) {
        if (bArr != null && i < bArr.length - 1 && i2 > 0) {
            if (i < 0) {
                i = 0;
            }
            if (i2 >= bArr.length) {
                i2 = bArr.length;
            }
            int i4 = i2 - i;
            if (i4 <= 1) {
                return;
            }
            int i5 = i3 % i4;
            if (i5 < 0) {
                i5 += i4;
            }
            while (i4 > 1 && i5 > 0) {
                int i6 = i4 - i5;
                if (i5 > i6) {
                    swap(bArr, i, (i4 + i) - i6, i6);
                    int i7 = i5;
                    i5 -= i6;
                    i4 = i7;
                } else if (i5 < i6) {
                    swap(bArr, i, i + i6, i5);
                    i += i5;
                    i4 = i6;
                } else {
                    swap(bArr, i, i6 + i, i5);
                    return;
                }
            }
        }
    }

    public static void shuffle(double[] dArr) {
        shuffle(dArr, new Random());
    }

    public static void swap(byte[] bArr, int i, int i2, int i3) {
        if (isEmpty(bArr) || i >= bArr.length || i2 >= bArr.length) {
            return;
        }
        int i4 = 0;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int iMin = Math.min(Math.min(i3, bArr.length - i), bArr.length - i2);
        while (i4 < iMin) {
            byte b = bArr[i];
            bArr[i] = bArr[i2];
            bArr[i2] = b;
            i4++;
            i++;
            i2++;
        }
    }

    public static char[] addAll(char[] cArr, char... cArr2) {
        if (cArr == null) {
            return clone(cArr2);
        }
        if (cArr2 == null) {
            return clone(cArr);
        }
        char[] cArr3 = new char[cArr.length + cArr2.length];
        System.arraycopy(cArr, 0, cArr3, 0, cArr.length);
        System.arraycopy(cArr2, 0, cArr3, cArr.length, cArr2.length);
        return cArr3;
    }

    public static int indexOf(double[] dArr, double d) {
        return indexOf(dArr, d, 0);
    }

    public static BitSet indexesOf(char[] cArr, char c) {
        return indexesOf(cArr, c, 0);
    }

    public static boolean isSorted(char[] cArr) {
        if (cArr != null && cArr.length >= 2) {
            char c = cArr[0];
            int length = cArr.length;
            int i = 1;
            while (i < length) {
                char c2 = cArr[i];
                if (CharUtils.compare(c, c2) > 0) {
                    return false;
                }
                i++;
                c = c2;
            }
        }
        return true;
    }

    public static int lastIndexOf(char[] cArr, char c, int i) {
        if (cArr == null || i < 0) {
            return -1;
        }
        if (i >= cArr.length) {
            i = cArr.length - 1;
        }
        while (i >= 0) {
            if (c == cArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static Character[] nullToEmpty(Character[] chArr) {
        return isEmpty(chArr) ? EMPTY_CHARACTER_OBJECT_ARRAY : chArr;
    }

    public static void shuffle(double[] dArr, Random random) {
        for (int length = dArr.length; length > 1; length--) {
            swap(dArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static char[] subarray(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > cArr.length) {
            i2 = cArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return EMPTY_CHAR_ARRAY;
        }
        char[] cArr2 = new char[i3];
        System.arraycopy(cArr, i, cArr2, 0, i3);
        return cArr2;
    }

    public static Character[] toObject(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        if (cArr.length == 0) {
            return EMPTY_CHARACTER_OBJECT_ARRAY;
        }
        Character[] chArr = new Character[cArr.length];
        for (int i = 0; i < cArr.length; i++) {
            chArr[i] = Character.valueOf(cArr[i]);
        }
        return chArr;
    }

    @Deprecated
    public static double[] add(double[] dArr, int i, double d) {
        return (double[]) add(dArr, i, Double.valueOf(d), Double.TYPE);
    }

    public static int indexOf(double[] dArr, double d, double d2) {
        return indexOf(dArr, d, 0, d2);
    }

    public static BitSet indexesOf(char[] cArr, char c, int i) {
        int iIndexOf;
        BitSet bitSet = new BitSet();
        if (cArr == null) {
            return bitSet;
        }
        while (i < cArr.length && (iIndexOf = indexOf(cArr, c, i)) != -1) {
            bitSet.set(iIndexOf);
            i = iIndexOf + 1;
        }
        return bitSet;
    }

    public static byte[] toPrimitive(Byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[i].byteValue();
        }
        return bArr2;
    }

    public static float[] add(float[] fArr, float f) {
        float[] fArr2 = (float[]) copyArrayGrow1(fArr, Float.TYPE);
        fArr2[fArr2.length - 1] = f;
        return fArr2;
    }

    public static int indexOf(double[] dArr, double d, int i) {
        if (isEmpty(dArr)) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < dArr.length) {
            if (d == dArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static Class<?>[] nullToEmpty(Class<?>[] clsArr) {
        return isEmpty(clsArr) ? EMPTY_CLASS_ARRAY : clsArr;
    }

    public static short[] remove(short[] sArr, int i) {
        return (short[]) remove((Object) sArr, i);
    }

    public static float[] removeElement(float[] fArr, float f) {
        int iIndexOf = indexOf(fArr, f);
        if (iIndexOf == -1) {
            return clone(fArr);
        }
        return remove(fArr, iIndexOf);
    }

    public static void reverse(char[] cArr) {
        if (cArr == null) {
            return;
        }
        reverse(cArr, 0, cArr.length);
    }

    public static void shuffle(float[] fArr) {
        shuffle(fArr, new Random());
    }

    public static int lastIndexOf(double[] dArr, double d) {
        return lastIndexOf(dArr, d, Integer.MAX_VALUE);
    }

    public static <T> T[] remove(T[] tArr, int i) {
        return (T[]) ((Object[]) remove((Object) tArr, i));
    }

    public static void reverse(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return;
        }
        int iMin = Math.min(cArr.length, i2) - 1;
        for (int iMax = Math.max(i, 0); iMin > iMax; iMax++) {
            char c = cArr[iMin];
            cArr[iMin] = cArr[iMax];
            cArr[iMax] = c;
            iMin--;
        }
    }

    public static void shuffle(float[] fArr, Random random) {
        for (int length = fArr.length; length > 1; length--) {
            swap(fArr, length - 1, random.nextInt(length), 1);
        }
    }

    @Deprecated
    public static float[] add(float[] fArr, int i, float f) {
        return (float[]) add(fArr, i, Float.valueOf(f), Float.TYPE);
    }

    public static int lastIndexOf(double[] dArr, double d, double d2) {
        return lastIndexOf(dArr, d, Integer.MAX_VALUE, d2);
    }

    public static double[] nullToEmpty(double[] dArr) {
        return isEmpty(dArr) ? EMPTY_DOUBLE_ARRAY : dArr;
    }

    public static Object removeAll(Object obj, int... iArr) throws NegativeArraySizeException {
        int i;
        int i2;
        int length = getLength(obj);
        int[] iArrClone = clone(iArr);
        Arrays.sort(iArrClone);
        if (isNotEmpty(iArrClone)) {
            int length2 = iArrClone.length;
            i = 0;
            int i3 = length;
            while (true) {
                length2--;
                if (length2 < 0) {
                    break;
                }
                i2 = iArrClone[length2];
                if (i2 < 0 || i2 >= length) {
                    break;
                }
                if (i2 < i3) {
                    i++;
                    i3 = i2;
                }
            }
            throw new IndexOutOfBoundsException(jo.i("Index: ", i2, ", Length: ", length));
        }
        i = 0;
        int i4 = length - i;
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), i4);
        if (i < length) {
            int length3 = iArrClone.length - 1;
            while (length3 >= 0) {
                int i5 = iArrClone[length3];
                int i6 = length - i5;
                if (i6 > 1) {
                    int i7 = i6 - 1;
                    i4 -= i7;
                    System.arraycopy(obj, i5 + 1, objNewInstance, i4, i7);
                }
                length3--;
                length = i5;
            }
            if (length > 0) {
                System.arraycopy(obj, 0, objNewInstance, 0, length);
            }
        }
        return objNewInstance;
    }

    public static void swap(char[] cArr, int i, int i2) {
        if (isEmpty(cArr)) {
            return;
        }
        swap(cArr, i, i2, 1);
    }

    public static int[] add(int[] iArr, int i) {
        int[] iArr2 = (int[]) copyArrayGrow1(iArr, Integer.TYPE);
        iArr2[iArr2.length - 1] = i;
        return iArr2;
    }

    public static double[] addAll(double[] dArr, double... dArr2) {
        if (dArr == null) {
            return clone(dArr2);
        }
        if (dArr2 == null) {
            return clone(dArr);
        }
        double[] dArr3 = new double[dArr.length + dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr3, dArr.length, dArr2.length);
        return dArr3;
    }

    public static int indexOf(double[] dArr, double d, int i, double d2) {
        if (isEmpty(dArr)) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        double d3 = d - d2;
        double d4 = d + d2;
        while (i < dArr.length) {
            if (dArr[i] >= d3 && dArr[i] <= d4) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static BitSet indexesOf(double[] dArr, double d) {
        return indexesOf(dArr, d, 0);
    }

    public static boolean isSorted(double[] dArr) {
        if (dArr != null && dArr.length >= 2) {
            double d = dArr[0];
            int length = dArr.length;
            int i = 1;
            while (i < length) {
                double d2 = dArr[i];
                if (Double.compare(d, d2) > 0) {
                    return false;
                }
                i++;
                d = d2;
            }
        }
        return true;
    }

    public static int lastIndexOf(double[] dArr, double d, int i) {
        if (isEmpty(dArr) || i < 0) {
            return -1;
        }
        if (i >= dArr.length) {
            i = dArr.length - 1;
        }
        while (i >= 0) {
            if (d == dArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static int[] removeElement(int[] iArr, int i) {
        int iIndexOf = indexOf(iArr, i);
        if (iIndexOf == -1) {
            return clone(iArr);
        }
        return remove(iArr, iIndexOf);
    }

    public static void shuffle(int[] iArr) {
        shuffle(iArr, new Random());
    }

    public static double[] subarray(double[] dArr, int i, int i2) {
        if (dArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > dArr.length) {
            i2 = dArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return EMPTY_DOUBLE_ARRAY;
        }
        double[] dArr2 = new double[i3];
        System.arraycopy(dArr, i, dArr2, 0, i3);
        return dArr2;
    }

    public static Double[] toObject(double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return EMPTY_DOUBLE_OBJECT_ARRAY;
        }
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    public static BitSet indexesOf(double[] dArr, double d, double d2) {
        return indexesOf(dArr, d, 0, d2);
    }

    public static Double[] nullToEmpty(Double[] dArr) {
        return isEmpty(dArr) ? EMPTY_DOUBLE_OBJECT_ARRAY : dArr;
    }

    public static byte[] removeElements(byte[] bArr, byte... bArr2) {
        if (!isEmpty(bArr) && !isEmpty(bArr2)) {
            HashMap map = new HashMap(bArr2.length);
            for (byte b : bArr2) {
                Byte bValueOf = Byte.valueOf(b);
                MutableInt mutableInt = (MutableInt) map.get(bValueOf);
                if (mutableInt == null) {
                    map.put(bValueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i = 0; i < bArr.length; i++) {
                byte b2 = bArr[i];
                MutableInt mutableInt2 = (MutableInt) map.get(Byte.valueOf(b2));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        map.remove(Byte.valueOf(b2));
                    }
                    bitSet.set(i);
                }
            }
            return (byte[]) removeAll(bArr, bitSet);
        }
        return clone(bArr);
    }

    public static void shift(char[] cArr, int i) {
        if (cArr == null) {
            return;
        }
        shift(cArr, 0, cArr.length, i);
    }

    public static void shuffle(int[] iArr, Random random) {
        for (int length = iArr.length; length > 1; length--) {
            swap(iArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void swap(char[] cArr, int i, int i2, int i3) {
        if (isEmpty(cArr) || i >= cArr.length || i2 >= cArr.length) {
            return;
        }
        int i4 = 0;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int iMin = Math.min(Math.min(i3, cArr.length - i), cArr.length - i2);
        while (i4 < iMin) {
            char c = cArr[i];
            cArr[i] = cArr[i2];
            cArr[i2] = c;
            i4++;
            i++;
            i2++;
        }
    }

    public static byte[] toPrimitive(Byte[] bArr, byte b) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            Byte b2 = bArr[i];
            bArr2[i] = b2 == null ? b : b2.byteValue();
        }
        return bArr2;
    }

    @Deprecated
    public static int[] add(int[] iArr, int i, int i2) {
        return (int[]) add(iArr, i, Integer.valueOf(i2), Integer.TYPE);
    }

    public static BitSet indexesOf(double[] dArr, double d, int i) {
        int iIndexOf;
        BitSet bitSet = new BitSet();
        if (dArr == null) {
            return bitSet;
        }
        while (i < dArr.length && (iIndexOf = indexOf(dArr, d, i)) != -1) {
            bitSet.set(iIndexOf);
            i = iIndexOf + 1;
        }
        return bitSet;
    }

    public static void shift(char[] cArr, int i, int i2, int i3) {
        if (cArr != null && i < cArr.length - 1 && i2 > 0) {
            if (i < 0) {
                i = 0;
            }
            if (i2 >= cArr.length) {
                i2 = cArr.length;
            }
            int i4 = i2 - i;
            if (i4 <= 1) {
                return;
            }
            int i5 = i3 % i4;
            if (i5 < 0) {
                i5 += i4;
            }
            while (i4 > 1 && i5 > 0) {
                int i6 = i4 - i5;
                if (i5 > i6) {
                    swap(cArr, i, (i4 + i) - i6, i6);
                    int i7 = i5;
                    i5 -= i6;
                    i4 = i7;
                } else if (i5 < i6) {
                    swap(cArr, i, i + i6, i5);
                    i += i5;
                    i4 = i6;
                } else {
                    swap(cArr, i, i6 + i, i5);
                    return;
                }
            }
        }
    }

    @Deprecated
    public static long[] add(long[] jArr, int i, long j) {
        return (long[]) add(jArr, i, Long.valueOf(j), Long.TYPE);
    }

    public static int indexOf(float[] fArr, float f) {
        return indexOf(fArr, f, 0);
    }

    public static char[] insert(int i, char[] cArr, char... cArr2) {
        if (cArr == null) {
            return null;
        }
        if (isEmpty(cArr2)) {
            return clone(cArr);
        }
        if (i >= 0 && i <= cArr.length) {
            char[] cArr3 = new char[cArr.length + cArr2.length];
            System.arraycopy(cArr2, 0, cArr3, i, cArr2.length);
            if (i > 0) {
                System.arraycopy(cArr, 0, cArr3, 0, i);
            }
            if (i < cArr.length) {
                System.arraycopy(cArr, i, cArr3, cArr2.length + i, cArr.length - i);
            }
            return cArr3;
        }
        StringBuilder sbA = jo.A("Index: ", i, ", Length: ");
        sbA.append(cArr.length);
        throw new IndexOutOfBoundsException(sbA.toString());
    }

    public static float[] nullToEmpty(float[] fArr) {
        return isEmpty(fArr) ? EMPTY_FLOAT_ARRAY : fArr;
    }

    public static long[] removeElement(long[] jArr, long j) {
        int iIndexOf = indexOf(jArr, j);
        if (iIndexOf == -1) {
            return clone(jArr);
        }
        return remove(jArr, iIndexOf);
    }

    public static void reverse(double[] dArr) {
        if (dArr == null) {
            return;
        }
        reverse(dArr, 0, dArr.length);
    }

    public static void shuffle(long[] jArr) {
        shuffle(jArr, new Random());
    }

    public static long[] add(long[] jArr, long j) {
        long[] jArr2 = (long[]) copyArrayGrow1(jArr, Long.TYPE);
        jArr2[jArr2.length - 1] = j;
        return jArr2;
    }

    public static int indexOf(float[] fArr, float f, int i) {
        if (isEmpty(fArr)) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < fArr.length) {
            if (f == fArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int lastIndexOf(double[] dArr, double d, int i, double d2) {
        if (isEmpty(dArr) || i < 0) {
            return -1;
        }
        if (i >= dArr.length) {
            i = dArr.length - 1;
        }
        double d3 = d - d2;
        double d4 = d + d2;
        while (i >= 0) {
            if (dArr[i] >= d3 && dArr[i] <= d4) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static void reverse(double[] dArr, int i, int i2) {
        if (dArr == null) {
            return;
        }
        int iMin = Math.min(dArr.length, i2) - 1;
        for (int iMax = Math.max(i, 0); iMin > iMax; iMax++) {
            double d = dArr[iMin];
            dArr[iMin] = dArr[iMax];
            dArr[iMax] = d;
            iMin--;
        }
    }

    public static void shuffle(long[] jArr, Random random) {
        for (int length = jArr.length; length > 1; length--) {
            swap(jArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static float[] addAll(float[] fArr, float... fArr2) {
        if (fArr == null) {
            return clone(fArr2);
        }
        if (fArr2 == null) {
            return clone(fArr);
        }
        float[] fArr3 = new float[fArr.length + fArr2.length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        return fArr3;
    }

    public static boolean isSorted(float[] fArr) {
        if (fArr != null && fArr.length >= 2) {
            float f = fArr[0];
            int length = fArr.length;
            int i = 1;
            while (i < length) {
                float f2 = fArr[i];
                if (Float.compare(f, f2) > 0) {
                    return false;
                }
                i++;
                f = f2;
            }
        }
        return true;
    }

    public static Float[] nullToEmpty(Float[] fArr) {
        return isEmpty(fArr) ? EMPTY_FLOAT_OBJECT_ARRAY : fArr;
    }

    public static float[] subarray(float[] fArr, int i, int i2) {
        if (fArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > fArr.length) {
            i2 = fArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return EMPTY_FLOAT_ARRAY;
        }
        float[] fArr2 = new float[i3];
        System.arraycopy(fArr, i, fArr2, 0, i3);
        return fArr2;
    }

    public static Float[] toObject(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return EMPTY_FLOAT_OBJECT_ARRAY;
        }
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    private static Object add(Object obj, int i, Object obj2, Class<?> cls) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        if (obj == null) {
            if (i == 0) {
                Object objNewInstance = Array.newInstance(cls, 1);
                Array.set(objNewInstance, 0, obj2);
                return objNewInstance;
            }
            throw new IndexOutOfBoundsException(jo.h("Index: ", i, ", Length: 0"));
        }
        int length = Array.getLength(obj);
        if (i <= length && i >= 0) {
            Object objNewInstance2 = Array.newInstance(cls, length + 1);
            System.arraycopy(obj, 0, objNewInstance2, 0, i);
            Array.set(objNewInstance2, i, obj2);
            if (i < length) {
                System.arraycopy(obj, i, objNewInstance2, i + 1, length - i);
            }
            return objNewInstance2;
        }
        throw new IndexOutOfBoundsException(jo.i("Index: ", i, ", Length: ", length));
    }

    public static BitSet indexesOf(double[] dArr, double d, int i, double d2) {
        int iIndexOf;
        BitSet bitSet = new BitSet();
        if (dArr == null) {
            return bitSet;
        }
        int i2 = i;
        while (i2 < dArr.length && (iIndexOf = indexOf(dArr, d, i2, d2)) != -1) {
            bitSet.set(iIndexOf);
            i2 = iIndexOf + 1;
        }
        return bitSet;
    }

    public static short[] removeElement(short[] sArr, short s) {
        int iIndexOf = indexOf(sArr, s);
        if (iIndexOf == -1) {
            return clone(sArr);
        }
        return remove(sArr, iIndexOf);
    }

    public static void shuffle(Object[] objArr) {
        shuffle(objArr, new Random());
    }

    public static void swap(double[] dArr, int i, int i2) {
        if (isEmpty(dArr)) {
            return;
        }
        swap(dArr, i, i2, 1);
    }

    public static int indexOf(int[] iArr, int i) {
        return indexOf(iArr, i, 0);
    }

    public static int[] nullToEmpty(int[] iArr) {
        return isEmpty(iArr) ? EMPTY_INT_ARRAY : iArr;
    }

    public static void shuffle(Object[] objArr, Random random) {
        for (int length = objArr.length; length > 1; length--) {
            swap(objArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static char[] toPrimitive(Character[] chArr) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[chArr.length];
        for (int i = 0; i < chArr.length; i++) {
            cArr[i] = chArr[i].charValue();
        }
        return cArr;
    }

    public static int indexOf(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < iArr.length) {
            if (i == iArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int lastIndexOf(float[] fArr, float f) {
        return lastIndexOf(fArr, f, Integer.MAX_VALUE);
    }

    public static void swap(double[] dArr, int i, int i2, int i3) {
        if (isEmpty(dArr) || i >= dArr.length || i2 >= dArr.length) {
            return;
        }
        int i4 = 0;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int iMin = Math.min(Math.min(i3, dArr.length - i), dArr.length - i2);
        while (i4 < iMin) {
            double d = dArr[i];
            dArr[i] = dArr[i2];
            dArr[i2] = d;
            i4++;
            i++;
            i2++;
        }
    }

    public static int lastIndexOf(float[] fArr, float f, int i) {
        if (isEmpty(fArr) || i < 0) {
            return -1;
        }
        if (i >= fArr.length) {
            i = fArr.length - 1;
        }
        while (i >= 0) {
            if (f == fArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static Integer[] nullToEmpty(Integer[] numArr) {
        return isEmpty(numArr) ? EMPTY_INTEGER_OBJECT_ARRAY : numArr;
    }

    public static <T> T[] removeElement(T[] tArr, Object obj) {
        int iIndexOf = indexOf(tArr, obj);
        if (iIndexOf == -1) {
            return (T[]) clone(tArr);
        }
        return (T[]) remove((Object[]) tArr, iIndexOf);
    }

    public static void reverse(float[] fArr) {
        if (fArr == null) {
            return;
        }
        reverse(fArr, 0, fArr.length);
    }

    public static void shift(double[] dArr, int i) {
        if (dArr == null) {
            return;
        }
        shift(dArr, 0, dArr.length, i);
    }

    public static void shuffle(short[] sArr) {
        shuffle(sArr, new Random());
    }

    public static int[] addAll(int[] iArr, int... iArr2) {
        if (iArr == null) {
            return clone(iArr2);
        }
        if (iArr2 == null) {
            return clone(iArr);
        }
        int[] iArr3 = new int[iArr.length + iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
        return iArr3;
    }

    public static int indexOf(long[] jArr, long j) {
        return indexOf(jArr, j, 0);
    }

    public static BitSet indexesOf(float[] fArr, float f) {
        return indexesOf(fArr, f, 0);
    }

    public static boolean isSorted(int[] iArr) {
        if (iArr != null && iArr.length >= 2) {
            int i = iArr[0];
            int length = iArr.length;
            int i2 = 1;
            while (i2 < length) {
                int i3 = iArr[i2];
                if (NumberUtils.compare(i, i3) > 0) {
                    return false;
                }
                i2++;
                i = i3;
            }
        }
        return true;
    }

    public static void reverse(float[] fArr, int i, int i2) {
        if (fArr == null) {
            return;
        }
        int iMin = Math.min(fArr.length, i2) - 1;
        for (int iMax = Math.max(i, 0); iMin > iMax; iMax++) {
            float f = fArr[iMin];
            fArr[iMin] = fArr[iMax];
            fArr[iMax] = f;
            iMin--;
        }
    }

    public static void shift(double[] dArr, int i, int i2, int i3) {
        if (dArr != null && i < dArr.length - 1 && i2 > 0) {
            if (i < 0) {
                i = 0;
            }
            if (i2 >= dArr.length) {
                i2 = dArr.length;
            }
            int i4 = i2 - i;
            if (i4 <= 1) {
                return;
            }
            int i5 = i3 % i4;
            if (i5 < 0) {
                i5 += i4;
            }
            while (i4 > 1 && i5 > 0) {
                int i6 = i4 - i5;
                if (i5 > i6) {
                    swap(dArr, i, (i4 + i) - i6, i6);
                    int i7 = i5;
                    i5 -= i6;
                    i4 = i7;
                } else if (i5 < i6) {
                    swap(dArr, i, i + i6, i5);
                    i += i5;
                    i4 = i6;
                } else {
                    swap(dArr, i, i6 + i, i5);
                    return;
                }
            }
        }
    }

    public static void shuffle(short[] sArr, Random random) {
        for (int length = sArr.length; length > 1; length--) {
            swap(sArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static int[] subarray(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > iArr.length) {
            i2 = iArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return EMPTY_INT_ARRAY;
        }
        int[] iArr2 = new int[i3];
        System.arraycopy(iArr, i, iArr2, 0, i3);
        return iArr2;
    }

    public static Integer[] toObject(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        if (iArr.length == 0) {
            return EMPTY_INTEGER_OBJECT_ARRAY;
        }
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    public static int indexOf(long[] jArr, long j, int i) {
        if (jArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < jArr.length) {
            if (j == jArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static BitSet indexesOf(float[] fArr, float f, int i) {
        int iIndexOf;
        BitSet bitSet = new BitSet();
        if (fArr == null) {
            return bitSet;
        }
        while (i < fArr.length && (iIndexOf = indexOf(fArr, f, i)) != -1) {
            bitSet.set(iIndexOf);
            i = iIndexOf + 1;
        }
        return bitSet;
    }

    public static long[] nullToEmpty(long[] jArr) {
        return isEmpty(jArr) ? EMPTY_LONG_ARRAY : jArr;
    }

    public static short[] removeAll(short[] sArr, int... iArr) {
        return (short[]) removeAll((Object) sArr, iArr);
    }

    public static double[] insert(int i, double[] dArr, double... dArr2) {
        if (dArr == null) {
            return null;
        }
        if (isEmpty(dArr2)) {
            return clone(dArr);
        }
        if (i >= 0 && i <= dArr.length) {
            double[] dArr3 = new double[dArr.length + dArr2.length];
            System.arraycopy(dArr2, 0, dArr3, i, dArr2.length);
            if (i > 0) {
                System.arraycopy(dArr, 0, dArr3, 0, i);
            }
            if (i < dArr.length) {
                System.arraycopy(dArr, i, dArr3, dArr2.length + i, dArr.length - i);
            }
            return dArr3;
        }
        StringBuilder sbA = jo.A("Index: ", i, ", Length: ");
        sbA.append(dArr.length);
        throw new IndexOutOfBoundsException(sbA.toString());
    }

    public static <T> T[] removeAll(T[] tArr, int... iArr) {
        return (T[]) ((Object[]) removeAll((Object) tArr, iArr));
    }

    public static char[] toPrimitive(Character[] chArr, char c) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[chArr.length];
        for (int i = 0; i < chArr.length; i++) {
            Character ch = chArr[i];
            cArr[i] = ch == null ? c : ch.charValue();
        }
        return cArr;
    }

    public static int indexOf(Object[] objArr, Object obj) {
        return indexOf(objArr, obj, 0);
    }

    public static int lastIndexOf(int[] iArr, int i) {
        return lastIndexOf(iArr, i, Integer.MAX_VALUE);
    }

    public static Long[] nullToEmpty(Long[] lArr) {
        return isEmpty(lArr) ? EMPTY_LONG_OBJECT_ARRAY : lArr;
    }

    public static void swap(float[] fArr, int i, int i2) {
        if (isEmpty(fArr)) {
            return;
        }
        swap(fArr, i, i2, 1);
    }

    public static int indexOf(Object[] objArr, Object obj, int i) {
        if (objArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        if (obj == null) {
            while (i < objArr.length) {
                if (objArr[i] == null) {
                    return i;
                }
                i++;
            }
        } else {
            while (i < objArr.length) {
                if (obj.equals(objArr[i])) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public static int lastIndexOf(int[] iArr, int i, int i2) {
        if (iArr == null || i2 < 0) {
            return -1;
        }
        if (i2 >= iArr.length) {
            i2 = iArr.length - 1;
        }
        while (i2 >= 0) {
            if (i == iArr[i2]) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    @Deprecated
    public static short[] add(short[] sArr, int i, short s) {
        return (short[]) add(sArr, i, Short.valueOf(s), Short.TYPE);
    }

    public static long[] addAll(long[] jArr, long... jArr2) {
        if (jArr == null) {
            return clone(jArr2);
        }
        if (jArr2 == null) {
            return clone(jArr);
        }
        long[] jArr3 = new long[jArr.length + jArr2.length];
        System.arraycopy(jArr, 0, jArr3, 0, jArr.length);
        System.arraycopy(jArr2, 0, jArr3, jArr.length, jArr2.length);
        return jArr3;
    }

    public static BitSet indexesOf(int[] iArr, int i) {
        return indexesOf(iArr, i, 0);
    }

    public static boolean isSorted(long[] jArr) {
        if (jArr != null && jArr.length >= 2) {
            long j = jArr[0];
            int length = jArr.length;
            int i = 1;
            while (i < length) {
                long j2 = jArr[i];
                if (NumberUtils.compare(j, j2) > 0) {
                    return false;
                }
                i++;
                j = j2;
            }
        }
        return true;
    }

    public static Object[] nullToEmpty(Object[] objArr) {
        return isEmpty(objArr) ? EMPTY_OBJECT_ARRAY : objArr;
    }

    public static void reverse(int[] iArr) {
        if (iArr == null) {
            return;
        }
        reverse(iArr, 0, iArr.length);
    }

    public static long[] subarray(long[] jArr, int i, int i2) {
        if (jArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > jArr.length) {
            i2 = jArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return EMPTY_LONG_ARRAY;
        }
        long[] jArr2 = new long[i3];
        System.arraycopy(jArr, i, jArr2, 0, i3);
        return jArr2;
    }

    public static void swap(float[] fArr, int i, int i2, int i3) {
        if (isEmpty(fArr) || i >= fArr.length || i2 >= fArr.length) {
            return;
        }
        int i4 = 0;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int iMin = Math.min(Math.min(i3, fArr.length - i), fArr.length - i2);
        while (i4 < iMin) {
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
            i4++;
            i++;
            i2++;
        }
    }

    public static Long[] toObject(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        if (jArr.length == 0) {
            return EMPTY_LONG_OBJECT_ARRAY;
        }
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    public static short[] add(short[] sArr, short s) {
        short[] sArr2 = (short[]) copyArrayGrow1(sArr, Short.TYPE);
        sArr2[sArr2.length - 1] = s;
        return sArr2;
    }

    public static BitSet indexesOf(int[] iArr, int i, int i2) {
        int iIndexOf;
        BitSet bitSet = new BitSet();
        if (iArr == null) {
            return bitSet;
        }
        while (i2 < iArr.length && (iIndexOf = indexOf(iArr, i, i2)) != -1) {
            bitSet.set(iIndexOf);
            i2 = iIndexOf + 1;
        }
        return bitSet;
    }

    public static void reverse(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return;
        }
        int iMin = Math.min(iArr.length, i2) - 1;
        for (int iMax = Math.max(i, 0); iMin > iMax; iMax++) {
            int i3 = iArr[iMin];
            iArr[iMin] = iArr[iMax];
            iArr[iMax] = i3;
            iMin--;
        }
    }

    public static int lastIndexOf(long[] jArr, long j) {
        return lastIndexOf(jArr, j, Integer.MAX_VALUE);
    }

    public static short[] nullToEmpty(short[] sArr) {
        return isEmpty(sArr) ? EMPTY_SHORT_ARRAY : sArr;
    }

    public static char[] removeElements(char[] cArr, char... cArr2) {
        if (!isEmpty(cArr) && !isEmpty(cArr2)) {
            HashMap map = new HashMap(cArr2.length);
            for (char c : cArr2) {
                Character chValueOf = Character.valueOf(c);
                MutableInt mutableInt = (MutableInt) map.get(chValueOf);
                if (mutableInt == null) {
                    map.put(chValueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i = 0; i < cArr.length; i++) {
                char c2 = cArr[i];
                MutableInt mutableInt2 = (MutableInt) map.get(Character.valueOf(c2));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        map.remove(Character.valueOf(c2));
                    }
                    bitSet.set(i);
                }
            }
            return (char[]) removeAll(cArr, bitSet);
        }
        return clone(cArr);
    }

    public static void shift(float[] fArr, int i) {
        if (fArr == null) {
            return;
        }
        shift(fArr, 0, fArr.length, i);
    }

    @Deprecated
    public static <T> T[] add(T[] tArr, int i, T t) {
        Class<?> componentType;
        if (tArr != null) {
            componentType = tArr.getClass().getComponentType();
        } else if (t != null) {
            componentType = t.getClass();
        } else {
            throw new IllegalArgumentException("Array and element cannot both be null");
        }
        return (T[]) ((Object[]) add(tArr, i, t, componentType));
    }

    public static int indexOf(short[] sArr, short s) {
        return indexOf(sArr, s, 0);
    }

    public static int lastIndexOf(long[] jArr, long j, int i) {
        if (jArr == null || i < 0) {
            return -1;
        }
        if (i >= jArr.length) {
            i = jArr.length - 1;
        }
        while (i >= 0) {
            if (j == jArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static void shift(float[] fArr, int i, int i2, int i3) {
        if (fArr != null && i < fArr.length - 1 && i2 > 0) {
            if (i < 0) {
                i = 0;
            }
            if (i2 >= fArr.length) {
                i2 = fArr.length;
            }
            int i4 = i2 - i;
            if (i4 <= 1) {
                return;
            }
            int i5 = i3 % i4;
            if (i5 < 0) {
                i5 += i4;
            }
            while (i4 > 1 && i5 > 0) {
                int i6 = i4 - i5;
                if (i5 > i6) {
                    swap(fArr, i, (i4 + i) - i6, i6);
                    int i7 = i5;
                    i5 -= i6;
                    i4 = i7;
                } else if (i5 < i6) {
                    swap(fArr, i, i + i6, i5);
                    i += i5;
                    i4 = i6;
                } else {
                    swap(fArr, i, i6 + i, i5);
                    return;
                }
            }
        }
    }

    public static double[] toPrimitive(Double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return EMPTY_DOUBLE_ARRAY;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = dArr[i].doubleValue();
        }
        return dArr2;
    }

    public static int indexOf(short[] sArr, short s, int i) {
        if (sArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < sArr.length) {
            if (s == sArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static Short[] nullToEmpty(Short[] shArr) {
        return isEmpty(shArr) ? EMPTY_SHORT_OBJECT_ARRAY : shArr;
    }

    public static short[] addAll(short[] sArr, short... sArr2) {
        if (sArr == null) {
            return clone(sArr2);
        }
        if (sArr2 == null) {
            return clone(sArr);
        }
        short[] sArr3 = new short[sArr.length + sArr2.length];
        System.arraycopy(sArr, 0, sArr3, 0, sArr.length);
        System.arraycopy(sArr2, 0, sArr3, sArr.length, sArr2.length);
        return sArr3;
    }

    public static BitSet indexesOf(long[] jArr, long j) {
        return indexesOf(jArr, j, 0);
    }

    public static boolean isSorted(short[] sArr) {
        if (sArr != null && sArr.length >= 2) {
            short s = sArr[0];
            int length = sArr.length;
            int i = 1;
            while (i < length) {
                short s2 = sArr[i];
                if (NumberUtils.compare(s, s2) > 0) {
                    return false;
                }
                i++;
                s = s2;
            }
        }
        return true;
    }

    public static short[] subarray(short[] sArr, int i, int i2) {
        if (sArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > sArr.length) {
            i2 = sArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr2 = new short[i3];
        System.arraycopy(sArr, i, sArr2, 0, i3);
        return sArr2;
    }

    public static void swap(int[] iArr, int i, int i2) {
        if (isEmpty(iArr)) {
            return;
        }
        swap(iArr, i, i2, 1);
    }

    public static Short[] toObject(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        if (sArr.length == 0) {
            return EMPTY_SHORT_OBJECT_ARRAY;
        }
        Short[] shArr = new Short[sArr.length];
        for (int i = 0; i < sArr.length; i++) {
            shArr[i] = Short.valueOf(sArr[i]);
        }
        return shArr;
    }

    public static BitSet indexesOf(long[] jArr, long j, int i) {
        int iIndexOf;
        BitSet bitSet = new BitSet();
        if (jArr == null) {
            return bitSet;
        }
        while (i < jArr.length && (iIndexOf = indexOf(jArr, j, i)) != -1) {
            bitSet.set(iIndexOf);
            i = iIndexOf + 1;
        }
        return bitSet;
    }

    public static float[] insert(int i, float[] fArr, float... fArr2) {
        if (fArr == null) {
            return null;
        }
        if (isEmpty(fArr2)) {
            return clone(fArr);
        }
        if (i >= 0 && i <= fArr.length) {
            float[] fArr3 = new float[fArr.length + fArr2.length];
            System.arraycopy(fArr2, 0, fArr3, i, fArr2.length);
            if (i > 0) {
                System.arraycopy(fArr, 0, fArr3, 0, i);
            }
            if (i < fArr.length) {
                System.arraycopy(fArr, i, fArr3, fArr2.length + i, fArr.length - i);
            }
            return fArr3;
        }
        StringBuilder sbA = jo.A("Index: ", i, ", Length: ");
        sbA.append(fArr.length);
        throw new IndexOutOfBoundsException(sbA.toString());
    }

    public static int lastIndexOf(Object[] objArr, Object obj) {
        return lastIndexOf(objArr, obj, Integer.MAX_VALUE);
    }

    public static String[] nullToEmpty(String[] strArr) {
        return isEmpty(strArr) ? EMPTY_STRING_ARRAY : strArr;
    }

    public static void reverse(long[] jArr) {
        if (jArr == null) {
            return;
        }
        reverse(jArr, 0, jArr.length);
    }

    public static <T> T[] add(T[] tArr, T t) {
        Class<?> componentType;
        if (tArr != null) {
            componentType = tArr.getClass().getComponentType();
        } else if (t != null) {
            componentType = t.getClass();
        } else {
            throw new IllegalArgumentException("Arguments cannot both be null");
        }
        T[] tArr2 = (T[]) ((Object[]) copyArrayGrow1(tArr, componentType));
        tArr2[tArr2.length - 1] = t;
        return tArr2;
    }

    public static int lastIndexOf(Object[] objArr, Object obj, int i) {
        if (objArr == null || i < 0) {
            return -1;
        }
        if (i >= objArr.length) {
            i = objArr.length - 1;
        }
        if (obj == null) {
            while (i >= 0) {
                if (objArr[i] == null) {
                    return i;
                }
                i--;
            }
        } else if (objArr.getClass().getComponentType().isInstance(obj)) {
            while (i >= 0) {
                if (obj.equals(objArr[i])) {
                    return i;
                }
                i--;
            }
        }
        return -1;
    }

    public static void reverse(long[] jArr, int i, int i2) {
        if (jArr == null) {
            return;
        }
        int iMin = Math.min(jArr.length, i2) - 1;
        for (int iMax = Math.max(i, 0); iMin > iMax; iMax++) {
            long j = jArr[iMin];
            jArr[iMin] = jArr[iMax];
            jArr[iMax] = j;
            iMin--;
        }
    }

    public static void swap(int[] iArr, int i, int i2, int i3) {
        if (isEmpty(iArr) || i >= iArr.length || i2 >= iArr.length) {
            return;
        }
        int i4 = 0;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int iMin = Math.min(Math.min(i3, iArr.length - i), iArr.length - i2);
        while (i4 < iMin) {
            int i5 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i5;
            i4++;
            i++;
            i2++;
        }
    }

    public static <T> T[] nullToEmpty(T[] tArr, Class<T[]> cls) {
        if (cls != null) {
            return tArr == null ? cls.cast(Array.newInstance(cls.getComponentType(), 0)) : tArr;
        }
        throw new IllegalArgumentException("The type must not be null");
    }

    public static double[] toPrimitive(Double[] dArr, double d) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return EMPTY_DOUBLE_ARRAY;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            Double d2 = dArr[i];
            dArr2[i] = d2 == null ? d : d2.doubleValue();
        }
        return dArr2;
    }

    public static <T> T[] addAll(T[] tArr, T... tArr2) {
        if (tArr == null) {
            return (T[]) clone(tArr2);
        }
        if (tArr2 == null) {
            return (T[]) clone(tArr);
        }
        Class<?> componentType = tArr.getClass().getComponentType();
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(componentType, tArr.length + tArr2.length));
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        try {
            System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
            return tArr3;
        } catch (ArrayStoreException e) {
            Class<?> componentType2 = tArr2.getClass().getComponentType();
            if (!componentType.isAssignableFrom(componentType2)) {
                StringBuilder sbZ = jo.z("Cannot store ");
                sbZ.append(componentType2.getName());
                sbZ.append(" in an array of ");
                sbZ.append(componentType.getName());
                throw new IllegalArgumentException(sbZ.toString(), e);
            }
            throw e;
        }
    }

    public static BitSet indexesOf(Object[] objArr, Object obj) {
        return indexesOf(objArr, obj, 0);
    }

    public static <T extends Comparable<? super T>> boolean isSorted(T[] tArr) {
        return isSorted(tArr, new Comparator() { // from class: ru7
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((Comparable) obj).compareTo((Comparable) obj2);
            }
        });
    }

    public static void shift(int[] iArr, int i) {
        if (iArr == null) {
            return;
        }
        shift(iArr, 0, iArr.length, i);
    }

    public static <T> T[] subarray(T[] tArr, int i, int i2) {
        if (tArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > tArr.length) {
            i2 = tArr.length;
        }
        int i3 = i2 - i;
        Class<?> componentType = tArr.getClass().getComponentType();
        if (i3 <= 0) {
            return (T[]) ((Object[]) Array.newInstance(componentType, 0));
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(componentType, i3));
        System.arraycopy(tArr, i, tArr2, 0, i3);
        return tArr2;
    }

    public static BitSet indexesOf(Object[] objArr, Object obj, int i) {
        int iIndexOf;
        BitSet bitSet = new BitSet();
        if (objArr == null) {
            return bitSet;
        }
        while (i < objArr.length && (iIndexOf = indexOf(objArr, obj, i)) != -1) {
            bitSet.set(iIndexOf);
            i = iIndexOf + 1;
        }
        return bitSet;
    }

    public static <T> boolean isSorted(T[] tArr, Comparator<T> comparator) {
        if (comparator != null) {
            if (tArr != null && tArr.length >= 2) {
                T t = tArr[0];
                int length = tArr.length;
                int i = 1;
                while (i < length) {
                    T t2 = tArr[i];
                    if (comparator.compare(t, t2) > 0) {
                        return false;
                    }
                    i++;
                    t = t2;
                }
            }
            return true;
        }
        throw new IllegalArgumentException("Comparator should not be null.");
    }

    public static void shift(int[] iArr, int i, int i2, int i3) {
        if (iArr != null && i < iArr.length - 1 && i2 > 0) {
            if (i < 0) {
                i = 0;
            }
            if (i2 >= iArr.length) {
                i2 = iArr.length;
            }
            int i4 = i2 - i;
            if (i4 <= 1) {
                return;
            }
            int i5 = i3 % i4;
            if (i5 < 0) {
                i5 += i4;
            }
            while (i4 > 1 && i5 > 0) {
                int i6 = i4 - i5;
                if (i5 > i6) {
                    swap(iArr, i, (i4 + i) - i6, i6);
                    int i7 = i5;
                    i5 -= i6;
                    i4 = i7;
                } else if (i5 < i6) {
                    swap(iArr, i, i + i6, i5);
                    i += i5;
                    i4 = i6;
                } else {
                    swap(iArr, i, i6 + i, i5);
                    return;
                }
            }
        }
    }

    public static int lastIndexOf(short[] sArr, short s) {
        return lastIndexOf(sArr, s, Integer.MAX_VALUE);
    }

    public static void reverse(Object[] objArr) {
        if (objArr == null) {
            return;
        }
        reverse(objArr, 0, objArr.length);
    }

    public static void swap(long[] jArr, int i, int i2) {
        if (isEmpty(jArr)) {
            return;
        }
        swap(jArr, i, i2, 1);
    }

    public static int lastIndexOf(short[] sArr, short s, int i) {
        if (sArr == null || i < 0) {
            return -1;
        }
        if (i >= sArr.length) {
            i = sArr.length - 1;
        }
        while (i >= 0) {
            if (s == sArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static void reverse(Object[] objArr, int i, int i2) {
        if (objArr == null) {
            return;
        }
        int iMin = Math.min(objArr.length, i2) - 1;
        for (int iMax = Math.max(i, 0); iMin > iMax; iMax++) {
            Object obj = objArr[iMin];
            objArr[iMin] = objArr[iMax];
            objArr[iMax] = obj;
            iMin--;
        }
    }

    public static void swap(long[] jArr, int i, int i2, int i3) {
        if (isEmpty(jArr) || i >= jArr.length || i2 >= jArr.length) {
            return;
        }
        int i4 = 0;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int iMin = Math.min(Math.min(i3, jArr.length - i), jArr.length - i2);
        while (i4 < iMin) {
            long j = jArr[i];
            jArr[i] = jArr[i2];
            jArr[i2] = j;
            i4++;
            i++;
            i2++;
        }
    }

    public static float[] toPrimitive(Float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return EMPTY_FLOAT_ARRAY;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = fArr[i].floatValue();
        }
        return fArr2;
    }

    public static BitSet indexesOf(short[] sArr, short s) {
        return indexesOf(sArr, s, 0);
    }

    public static int[] insert(int i, int[] iArr, int... iArr2) {
        if (iArr == null) {
            return null;
        }
        if (isEmpty(iArr2)) {
            return clone(iArr);
        }
        if (i >= 0 && i <= iArr.length) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr2, 0, iArr3, i, iArr2.length);
            if (i > 0) {
                System.arraycopy(iArr, 0, iArr3, 0, i);
            }
            if (i < iArr.length) {
                System.arraycopy(iArr, i, iArr3, iArr2.length + i, iArr.length - i);
            }
            return iArr3;
        }
        StringBuilder sbA = jo.A("Index: ", i, ", Length: ");
        sbA.append(iArr.length);
        throw new IndexOutOfBoundsException(sbA.toString());
    }

    public static BitSet indexesOf(short[] sArr, short s, int i) {
        int iIndexOf;
        BitSet bitSet = new BitSet();
        if (sArr == null) {
            return bitSet;
        }
        while (i < sArr.length && (iIndexOf = indexOf(sArr, s, i)) != -1) {
            bitSet.set(iIndexOf);
            i = iIndexOf + 1;
        }
        return bitSet;
    }

    public static double[] removeElements(double[] dArr, double... dArr2) {
        if (!isEmpty(dArr) && !isEmpty(dArr2)) {
            HashMap map = new HashMap(dArr2.length);
            for (double d : dArr2) {
                Double dValueOf = Double.valueOf(d);
                MutableInt mutableInt = (MutableInt) map.get(dValueOf);
                if (mutableInt == null) {
                    map.put(dValueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i = 0; i < dArr.length; i++) {
                double d2 = dArr[i];
                MutableInt mutableInt2 = (MutableInt) map.get(Double.valueOf(d2));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        map.remove(Double.valueOf(d2));
                    }
                    bitSet.set(i);
                }
            }
            return (double[]) removeAll(dArr, bitSet);
        }
        return clone(dArr);
    }

    public static void reverse(short[] sArr) {
        if (sArr == null) {
            return;
        }
        reverse(sArr, 0, sArr.length);
    }

    public static void shift(long[] jArr, int i) {
        if (jArr == null) {
            return;
        }
        shift(jArr, 0, jArr.length, i);
    }

    public static void reverse(short[] sArr, int i, int i2) {
        if (sArr == null) {
            return;
        }
        int iMin = Math.min(sArr.length, i2) - 1;
        for (int iMax = Math.max(i, 0); iMin > iMax; iMax++) {
            short s = sArr[iMin];
            sArr[iMin] = sArr[iMax];
            sArr[iMax] = s;
            iMin--;
        }
    }

    public static void shift(long[] jArr, int i, int i2, int i3) {
        if (jArr != null && i < jArr.length - 1 && i2 > 0) {
            if (i < 0) {
                i = 0;
            }
            if (i2 >= jArr.length) {
                i2 = jArr.length;
            }
            int i4 = i2 - i;
            if (i4 <= 1) {
                return;
            }
            int i5 = i3 % i4;
            if (i5 < 0) {
                i5 += i4;
            }
            while (i4 > 1 && i5 > 0) {
                int i6 = i4 - i5;
                if (i5 > i6) {
                    swap(jArr, i, (i4 + i) - i6, i6);
                    int i7 = i5;
                    i5 -= i6;
                    i4 = i7;
                } else if (i5 < i6) {
                    swap(jArr, i, i + i6, i5);
                    i += i5;
                    i4 = i6;
                } else {
                    swap(jArr, i, i6 + i, i5);
                    return;
                }
            }
        }
    }

    public static void swap(Object[] objArr, int i, int i2) {
        if (isEmpty(objArr)) {
            return;
        }
        swap(objArr, i, i2, 1);
    }

    public static float[] toPrimitive(Float[] fArr, float f) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return EMPTY_FLOAT_ARRAY;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            Float f2 = fArr[i];
            fArr2[i] = f2 == null ? f : f2.floatValue();
        }
        return fArr2;
    }

    public static void swap(Object[] objArr, int i, int i2, int i3) {
        if (isEmpty(objArr) || i >= objArr.length || i2 >= objArr.length) {
            return;
        }
        int i4 = 0;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int iMin = Math.min(Math.min(i3, objArr.length - i), objArr.length - i2);
        while (i4 < iMin) {
            Object obj = objArr[i];
            objArr[i] = objArr[i2];
            objArr[i2] = obj;
            i4++;
            i++;
            i2++;
        }
    }

    public static long[] insert(int i, long[] jArr, long... jArr2) {
        if (jArr == null) {
            return null;
        }
        if (isEmpty(jArr2)) {
            return clone(jArr);
        }
        if (i >= 0 && i <= jArr.length) {
            long[] jArr3 = new long[jArr.length + jArr2.length];
            System.arraycopy(jArr2, 0, jArr3, i, jArr2.length);
            if (i > 0) {
                System.arraycopy(jArr, 0, jArr3, 0, i);
            }
            if (i < jArr.length) {
                System.arraycopy(jArr, i, jArr3, jArr2.length + i, jArr.length - i);
            }
            return jArr3;
        }
        StringBuilder sbA = jo.A("Index: ", i, ", Length: ");
        sbA.append(jArr.length);
        throw new IndexOutOfBoundsException(sbA.toString());
    }

    public static int[] toPrimitive(Integer[] numArr) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return EMPTY_INT_ARRAY;
        }
        int[] iArr = new int[numArr.length];
        for (int i = 0; i < numArr.length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    public static void shift(Object[] objArr, int i) {
        if (objArr == null) {
            return;
        }
        shift(objArr, 0, objArr.length, i);
    }

    public static void swap(short[] sArr, int i, int i2) {
        if (isEmpty(sArr)) {
            return;
        }
        swap(sArr, i, i2, 1);
    }

    public static void shift(Object[] objArr, int i, int i2, int i3) {
        if (objArr != null && i < objArr.length - 1 && i2 > 0) {
            if (i < 0) {
                i = 0;
            }
            if (i2 >= objArr.length) {
                i2 = objArr.length;
            }
            int i4 = i2 - i;
            if (i4 <= 1) {
                return;
            }
            int i5 = i3 % i4;
            if (i5 < 0) {
                i5 += i4;
            }
            while (i4 > 1 && i5 > 0) {
                int i6 = i4 - i5;
                if (i5 > i6) {
                    swap(objArr, i, (i4 + i) - i6, i6);
                    int i7 = i5;
                    i5 -= i6;
                    i4 = i7;
                } else if (i5 < i6) {
                    swap(objArr, i, i + i6, i5);
                    i += i5;
                    i4 = i6;
                } else {
                    swap(objArr, i, i6 + i, i5);
                    return;
                }
            }
        }
    }

    public static void swap(short[] sArr, int i, int i2, int i3) {
        if (isEmpty(sArr) || i >= sArr.length || i2 >= sArr.length) {
            return;
        }
        int i4 = 0;
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i == i2) {
            return;
        }
        int iMin = Math.min(Math.min(i3, sArr.length - i), sArr.length - i2);
        while (i4 < iMin) {
            short s = sArr[i];
            sArr[i] = sArr[i2];
            sArr[i2] = s;
            i4++;
            i++;
            i2++;
        }
    }

    public static int[] toPrimitive(Integer[] numArr, int i) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return EMPTY_INT_ARRAY;
        }
        int[] iArr = new int[numArr.length];
        for (int i2 = 0; i2 < numArr.length; i2++) {
            Integer num = numArr[i2];
            iArr[i2] = num == null ? i : num.intValue();
        }
        return iArr;
    }

    public static short[] insert(int i, short[] sArr, short... sArr2) {
        if (sArr == null) {
            return null;
        }
        if (isEmpty(sArr2)) {
            return clone(sArr);
        }
        if (i >= 0 && i <= sArr.length) {
            short[] sArr3 = new short[sArr.length + sArr2.length];
            System.arraycopy(sArr2, 0, sArr3, i, sArr2.length);
            if (i > 0) {
                System.arraycopy(sArr, 0, sArr3, 0, i);
            }
            if (i < sArr.length) {
                System.arraycopy(sArr, i, sArr3, sArr2.length + i, sArr.length - i);
            }
            return sArr3;
        }
        StringBuilder sbA = jo.A("Index: ", i, ", Length: ");
        sbA.append(sArr.length);
        throw new IndexOutOfBoundsException(sbA.toString());
    }

    public static float[] removeElements(float[] fArr, float... fArr2) {
        if (!isEmpty(fArr) && !isEmpty(fArr2)) {
            HashMap map = new HashMap(fArr2.length);
            for (float f : fArr2) {
                Float fValueOf = Float.valueOf(f);
                MutableInt mutableInt = (MutableInt) map.get(fValueOf);
                if (mutableInt == null) {
                    map.put(fValueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i = 0; i < fArr.length; i++) {
                float f2 = fArr[i];
                MutableInt mutableInt2 = (MutableInt) map.get(Float.valueOf(f2));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        map.remove(Float.valueOf(f2));
                    }
                    bitSet.set(i);
                }
            }
            return (float[]) removeAll(fArr, bitSet);
        }
        return clone(fArr);
    }

    public static void shift(short[] sArr, int i) {
        if (sArr == null) {
            return;
        }
        shift(sArr, 0, sArr.length, i);
    }

    public static void shift(short[] sArr, int i, int i2, int i3) {
        if (sArr != null && i < sArr.length - 1 && i2 > 0) {
            if (i < 0) {
                i = 0;
            }
            if (i2 >= sArr.length) {
                i2 = sArr.length;
            }
            int i4 = i2 - i;
            if (i4 <= 1) {
                return;
            }
            int i5 = i3 % i4;
            if (i5 < 0) {
                i5 += i4;
            }
            while (i4 > 1 && i5 > 0) {
                int i6 = i4 - i5;
                if (i5 > i6) {
                    swap(sArr, i, (i4 + i) - i6, i6);
                    int i7 = i5;
                    i5 -= i6;
                    i4 = i7;
                } else if (i5 < i6) {
                    swap(sArr, i, i + i6, i5);
                    i += i5;
                    i4 = i6;
                } else {
                    swap(sArr, i, i6 + i, i5);
                    return;
                }
            }
        }
    }

    public static long[] toPrimitive(Long[] lArr) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return EMPTY_LONG_ARRAY;
        }
        long[] jArr = new long[lArr.length];
        for (int i = 0; i < lArr.length; i++) {
            jArr[i] = lArr[i].longValue();
        }
        return jArr;
    }

    public static long[] toPrimitive(Long[] lArr, long j) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return EMPTY_LONG_ARRAY;
        }
        long[] jArr = new long[lArr.length];
        for (int i = 0; i < lArr.length; i++) {
            Long l = lArr[i];
            jArr[i] = l == null ? j : l.longValue();
        }
        return jArr;
    }

    @SafeVarargs
    public static <T> T[] insert(int i, T[] tArr, T... tArr2) {
        if (tArr == null) {
            return null;
        }
        if (isEmpty(tArr2)) {
            return (T[]) clone(tArr);
        }
        if (i >= 0 && i <= tArr.length) {
            T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), tArr.length + tArr2.length));
            System.arraycopy(tArr2, 0, tArr3, i, tArr2.length);
            if (i > 0) {
                System.arraycopy(tArr, 0, tArr3, 0, i);
            }
            if (i < tArr.length) {
                System.arraycopy(tArr, i, tArr3, tArr2.length + i, tArr.length - i);
            }
            return tArr3;
        }
        StringBuilder sbA = jo.A("Index: ", i, ", Length: ");
        sbA.append(tArr.length);
        throw new IndexOutOfBoundsException(sbA.toString());
    }

    public static Object toPrimitive(Object obj) {
        if (obj == null) {
            return null;
        }
        Class<?> clsWrapperToPrimitive = ClassUtils.wrapperToPrimitive(obj.getClass().getComponentType());
        if (Integer.TYPE.equals(clsWrapperToPrimitive)) {
            return toPrimitive((Integer[]) obj);
        }
        if (Long.TYPE.equals(clsWrapperToPrimitive)) {
            return toPrimitive((Long[]) obj);
        }
        if (Short.TYPE.equals(clsWrapperToPrimitive)) {
            return toPrimitive((Short[]) obj);
        }
        if (Double.TYPE.equals(clsWrapperToPrimitive)) {
            return toPrimitive((Double[]) obj);
        }
        return Float.TYPE.equals(clsWrapperToPrimitive) ? toPrimitive((Float[]) obj) : obj;
    }

    public static int[] removeElements(int[] iArr, int... iArr2) {
        if (!isEmpty(iArr) && !isEmpty(iArr2)) {
            HashMap map = new HashMap(iArr2.length);
            for (int i : iArr2) {
                Integer numValueOf = Integer.valueOf(i);
                MutableInt mutableInt = (MutableInt) map.get(numValueOf);
                if (mutableInt == null) {
                    map.put(numValueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i2 = 0; i2 < iArr.length; i2++) {
                int i3 = iArr[i2];
                MutableInt mutableInt2 = (MutableInt) map.get(Integer.valueOf(i3));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        map.remove(Integer.valueOf(i3));
                    }
                    bitSet.set(i2);
                }
            }
            return (int[]) removeAll(iArr, bitSet);
        }
        return clone(iArr);
    }

    public static short[] toPrimitive(Short[] shArr) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr = new short[shArr.length];
        for (int i = 0; i < shArr.length; i++) {
            sArr[i] = shArr[i].shortValue();
        }
        return sArr;
    }

    public static short[] toPrimitive(Short[] shArr, short s) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr = new short[shArr.length];
        for (int i = 0; i < shArr.length; i++) {
            Short sh = shArr[i];
            sArr[i] = sh == null ? s : sh.shortValue();
        }
        return sArr;
    }

    public static long[] removeElements(long[] jArr, long... jArr2) {
        if (!isEmpty(jArr) && !isEmpty(jArr2)) {
            HashMap map = new HashMap(jArr2.length);
            for (long j : jArr2) {
                Long lValueOf = Long.valueOf(j);
                MutableInt mutableInt = (MutableInt) map.get(lValueOf);
                if (mutableInt == null) {
                    map.put(lValueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i = 0; i < jArr.length; i++) {
                long j2 = jArr[i];
                MutableInt mutableInt2 = (MutableInt) map.get(Long.valueOf(j2));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        map.remove(Long.valueOf(j2));
                    }
                    bitSet.set(i);
                }
            }
            return (long[]) removeAll(jArr, bitSet);
        }
        return clone(jArr);
    }

    public static short[] removeElements(short[] sArr, short... sArr2) {
        if (!isEmpty(sArr) && !isEmpty(sArr2)) {
            HashMap map = new HashMap(sArr2.length);
            for (short s : sArr2) {
                Short shValueOf = Short.valueOf(s);
                MutableInt mutableInt = (MutableInt) map.get(shValueOf);
                if (mutableInt == null) {
                    map.put(shValueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i = 0; i < sArr.length; i++) {
                short s2 = sArr[i];
                MutableInt mutableInt2 = (MutableInt) map.get(Short.valueOf(s2));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        map.remove(Short.valueOf(s2));
                    }
                    bitSet.set(i);
                }
            }
            return (short[]) removeAll(sArr, bitSet);
        }
        return clone(sArr);
    }

    @SafeVarargs
    public static <T> T[] removeElements(T[] tArr, T... tArr2) {
        if (!isEmpty(tArr) && !isEmpty(tArr2)) {
            HashMap map = new HashMap(tArr2.length);
            for (T t : tArr2) {
                MutableInt mutableInt = (MutableInt) map.get(t);
                if (mutableInt == null) {
                    map.put(t, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i = 0; i < tArr.length; i++) {
                T t2 = tArr[i];
                MutableInt mutableInt2 = (MutableInt) map.get(t2);
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        map.remove(t2);
                    }
                    bitSet.set(i);
                }
            }
            return (T[]) ((Object[]) removeAll(tArr, bitSet));
        }
        return (T[]) clone(tArr);
    }
}
