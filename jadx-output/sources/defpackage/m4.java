package defpackage;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: classes.dex */
public class m4<K, V> {
    public static Object[] h;
    public static int i;
    public static Object[] j;
    public static int k;
    public int[] e;
    public Object[] f;
    public int g;

    public m4() {
        this.e = i4.a;
        this.f = i4.c;
        this.g = 0;
    }

    public static void c(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (m4.class) {
                if (k < 10) {
                    objArr[0] = j;
                    objArr[1] = iArr;
                    for (int i3 = (i2 << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    j = objArr;
                    k++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (m4.class) {
                if (i < 10) {
                    objArr[0] = h;
                    objArr[1] = iArr;
                    for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    h = objArr;
                    i++;
                }
            }
        }
    }

    public final void a(int i2) {
        if (i2 == 8) {
            synchronized (m4.class) {
                Object[] objArr = j;
                if (objArr != null) {
                    this.f = objArr;
                    j = (Object[]) objArr[0];
                    this.e = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    k--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (m4.class) {
                Object[] objArr2 = h;
                if (objArr2 != null) {
                    this.f = objArr2;
                    h = (Object[]) objArr2[0];
                    this.e = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    i--;
                    return;
                }
            }
        }
        this.e = new int[i2];
        this.f = new Object[i2 << 1];
    }

    public void b(int i2) {
        int i3 = this.g;
        int[] iArr = this.e;
        if (iArr.length < i2) {
            Object[] objArr = this.f;
            a(i2);
            if (this.g > 0) {
                System.arraycopy(iArr, 0, this.e, 0, i3);
                System.arraycopy(objArr, 0, this.f, 0, i3 << 1);
            }
            c(iArr, objArr, i3);
        }
        if (this.g != i3) {
            throw new ConcurrentModificationException();
        }
    }

    public void clear() {
        int i2 = this.g;
        if (i2 > 0) {
            int[] iArr = this.e;
            Object[] objArr = this.f;
            this.e = i4.a;
            this.f = i4.c;
            this.g = 0;
            c(iArr, objArr, i2);
        }
        if (this.g > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return e(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return g(obj) >= 0;
    }

    public int d(Object obj, int i2) {
        int i3 = this.g;
        if (i3 == 0) {
            return -1;
        }
        try {
            int iA = i4.a(this.e, i3, i2);
            if (iA < 0 || obj.equals(this.f[iA << 1])) {
                return iA;
            }
            int i4 = iA + 1;
            while (i4 < i3 && this.e[i4] == i2) {
                if (obj.equals(this.f[i4 << 1])) {
                    return i4;
                }
                i4++;
            }
            for (int i5 = iA - 1; i5 >= 0 && this.e[i5] == i2; i5--) {
                if (obj.equals(this.f[i5 << 1])) {
                    return i5;
                }
            }
            return ~i4;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public int e(Object obj) {
        return obj == null ? f() : d(obj, obj.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m4) {
            m4 m4Var = (m4) obj;
            if (this.g != m4Var.g) {
                return false;
            }
            for (int i2 = 0; i2 < this.g; i2++) {
                try {
                    K kH = h(i2);
                    V vK = k(i2);
                    Object obj2 = m4Var.get(kH);
                    if (vK == null) {
                        if (obj2 != null || !m4Var.containsKey(kH)) {
                            return false;
                        }
                    } else if (!vK.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.g != map.size()) {
                return false;
            }
            for (int i3 = 0; i3 < this.g; i3++) {
                try {
                    K kH2 = h(i3);
                    V vK2 = k(i3);
                    Object obj3 = map.get(kH2);
                    if (vK2 == null) {
                        if (obj3 != null || !map.containsKey(kH2)) {
                            return false;
                        }
                    } else if (!vK2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public int f() {
        int i2 = this.g;
        if (i2 == 0) {
            return -1;
        }
        try {
            int iA = i4.a(this.e, i2, 0);
            if (iA < 0 || this.f[iA << 1] == null) {
                return iA;
            }
            int i3 = iA + 1;
            while (i3 < i2 && this.e[i3] == 0) {
                if (this.f[i3 << 1] == null) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = iA - 1; i4 >= 0 && this.e[i4] == 0; i4--) {
                if (this.f[i4 << 1] == null) {
                    return i4;
                }
            }
            return ~i3;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public int g(Object obj) {
        int i2 = this.g * 2;
        Object[] objArr = this.f;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
            return -1;
        }
        for (int i4 = 1; i4 < i2; i4 += 2) {
            if (obj.equals(objArr[i4])) {
                return i4 >> 1;
            }
        }
        return -1;
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int iE = e(obj);
        return iE >= 0 ? (V) this.f[(iE << 1) + 1] : v;
    }

    public K h(int i2) {
        return (K) this.f[i2 << 1];
    }

    public int hashCode() {
        int[] iArr = this.e;
        Object[] objArr = this.f;
        int i2 = this.g;
        int i3 = 1;
        int i4 = 0;
        int iHashCode = 0;
        while (i4 < i2) {
            Object obj = objArr[i3];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i4];
            i4++;
            i3 += 2;
        }
        return iHashCode;
    }

    public V i(int i2) {
        Object[] objArr = this.f;
        int i3 = i2 << 1;
        V v = (V) objArr[i3 + 1];
        int i4 = this.g;
        int i5 = 0;
        if (i4 <= 1) {
            c(this.e, objArr, i4);
            this.e = i4.a;
            this.f = i4.c;
        } else {
            int i6 = i4 - 1;
            int[] iArr = this.e;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i2 < i6) {
                    int i7 = i2 + 1;
                    int i8 = i6 - i2;
                    System.arraycopy(iArr, i7, iArr, i2, i8);
                    Object[] objArr2 = this.f;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i3, i8 << 1);
                }
                Object[] objArr3 = this.f;
                int i9 = i6 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                a(i4 > 8 ? i4 + (i4 >> 1) : 8);
                if (i4 != this.g) {
                    throw new ConcurrentModificationException();
                }
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.e, 0, i2);
                    System.arraycopy(objArr, 0, this.f, 0, i3);
                }
                if (i2 < i6) {
                    int i10 = i2 + 1;
                    int i11 = i6 - i2;
                    System.arraycopy(iArr, i10, this.e, i2, i11);
                    System.arraycopy(objArr, i10 << 1, this.f, i3, i11 << 1);
                }
            }
            i5 = i6;
        }
        if (i4 != this.g) {
            throw new ConcurrentModificationException();
        }
        this.g = i5;
        return v;
    }

    public boolean isEmpty() {
        return this.g <= 0;
    }

    public V j(int i2, V v) {
        int i3 = (i2 << 1) + 1;
        Object[] objArr = this.f;
        V v2 = (V) objArr[i3];
        objArr[i3] = v;
        return v2;
    }

    public V k(int i2) {
        return (V) this.f[(i2 << 1) + 1];
    }

    public V put(K k2, V v) {
        int i2;
        int iD;
        int i3 = this.g;
        if (k2 == null) {
            iD = f();
            i2 = 0;
        } else {
            int iHashCode = k2.hashCode();
            i2 = iHashCode;
            iD = d(k2, iHashCode);
        }
        if (iD >= 0) {
            int i4 = (iD << 1) + 1;
            Object[] objArr = this.f;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = ~iD;
        int[] iArr = this.e;
        if (i3 >= iArr.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            Object[] objArr2 = this.f;
            a(i6);
            if (i3 != this.g) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.e;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f, 0, objArr2.length);
            }
            c(iArr, objArr2, i3);
        }
        if (i5 < i3) {
            int[] iArr3 = this.e;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.g - i5) << 1);
        }
        int i8 = this.g;
        if (i3 == i8) {
            int[] iArr4 = this.e;
            if (i5 < iArr4.length) {
                iArr4[i5] = i2;
                Object[] objArr4 = this.f;
                int i9 = i5 << 1;
                objArr4[i9] = k2;
                objArr4[i9 + 1] = v;
                this.g = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V putIfAbsent(K k2, V v) {
        V orDefault = getOrDefault(k2, null);
        return orDefault == null ? put(k2, v) : orDefault;
    }

    public V remove(Object obj) {
        int iE = e(obj);
        if (iE >= 0) {
            return i(iE);
        }
        return null;
    }

    public V replace(K k2, V v) {
        int iE = e(k2);
        if (iE >= 0) {
            return j(iE, v);
        }
        return null;
    }

    public int size() {
        return this.g;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.g * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.g; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            K kH = h(i2);
            if (kH != this) {
                sb.append(kH);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vK = k(i2);
            if (vK != this) {
                sb.append(vK);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public boolean remove(Object obj, Object obj2) {
        int iE = e(obj);
        if (iE < 0) {
            return false;
        }
        V vK = k(iE);
        if (obj2 != vK && (obj2 == null || !obj2.equals(vK))) {
            return false;
        }
        i(iE);
        return true;
    }

    public boolean replace(K k2, V v, V v2) {
        int iE = e(k2);
        if (iE < 0) {
            return false;
        }
        V vK = k(iE);
        if (vK != v && (v == null || !v.equals(vK))) {
            return false;
        }
        j(iE, v2);
        return true;
    }

    public m4(int i2) {
        if (i2 == 0) {
            this.e = i4.a;
            this.f = i4.c;
        } else {
            a(i2);
        }
        this.g = 0;
    }

    public m4(m4<K, V> m4Var) {
        this();
        if (m4Var != null) {
            int i2 = m4Var.g;
            b(this.g + i2);
            if (this.g != 0) {
                for (int i3 = 0; i3 < i2; i3++) {
                    put(m4Var.h(i3), m4Var.k(i3));
                }
            } else if (i2 > 0) {
                System.arraycopy(m4Var.e, 0, this.e, 0, i2);
                System.arraycopy(m4Var.f, 0, this.f, 0, i2 << 1);
                this.g = i2;
            }
        }
    }
}
