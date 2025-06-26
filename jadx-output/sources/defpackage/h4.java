package defpackage;

import defpackage.l4;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class h4<E> implements Collection<E>, Set<E> {
    public static final int[] i = new int[0];
    public static final Object[] j = new Object[0];
    public static Object[] k;
    public static int l;
    public static Object[] m;
    public static int n;
    public int[] e;
    public Object[] f;
    public int g;
    public l4<E, E> h;

    public h4() {
        this(0);
    }

    public static void h(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (h4.class) {
                if (n < 10) {
                    objArr[0] = m;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    m = objArr;
                    n++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (h4.class) {
                if (l < 10) {
                    objArr[0] = k;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    k = objArr;
                    l++;
                }
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i2;
        int iJ;
        if (e == null) {
            iJ = l();
            i2 = 0;
        } else {
            int iHashCode = e.hashCode();
            i2 = iHashCode;
            iJ = j(e, iHashCode);
        }
        if (iJ >= 0) {
            return false;
        }
        int i3 = ~iJ;
        int i4 = this.g;
        int[] iArr = this.e;
        if (i4 >= iArr.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            Object[] objArr = this.f;
            d(i5);
            int[] iArr2 = this.e;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f, 0, objArr.length);
            }
            h(iArr, objArr, this.g);
        }
        int i6 = this.g;
        if (i3 < i6) {
            int[] iArr3 = this.e;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f;
            System.arraycopy(objArr2, i3, objArr2, i7, this.g - i3);
        }
        this.e[i3] = i2;
        this.f[i3] = e;
        this.g++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size() + this.g;
        int[] iArr = this.e;
        boolean zAdd = false;
        if (iArr.length < size) {
            Object[] objArr = this.f;
            d(size);
            int i2 = this.g;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.e, 0, i2);
                System.arraycopy(objArr, 0, this.f, 0, this.g);
            }
            h(iArr, objArr, this.g);
        }
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.g;
        if (i2 != 0) {
            h(this.e, this.f, i2);
            this.e = i;
            this.f = j;
            this.g = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final void d(int i2) {
        if (i2 == 8) {
            synchronized (h4.class) {
                Object[] objArr = m;
                if (objArr != null) {
                    this.f = objArr;
                    m = (Object[]) objArr[0];
                    this.e = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    n--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (h4.class) {
                Object[] objArr2 = k;
                if (objArr2 != null) {
                    this.f = objArr2;
                    k = (Object[]) objArr2[0];
                    this.e = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    l--;
                    return;
                }
            }
        }
        this.e = new int[i2];
        this.f = new Object[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (this.g != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.g; i2++) {
                try {
                    if (!set.contains(this.f[i2])) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.e;
        int i2 = this.g;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public int indexOf(Object obj) {
        return obj == null ? l() : j(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.g <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        if (this.h == null) {
            this.h = new g4(this);
        }
        l4<E, E> l4Var = this.h;
        if (l4Var.b == null) {
            l4Var.b = new l4.c();
        }
        return l4Var.b.iterator();
    }

    public final int j(Object obj, int i2) {
        int i3 = this.g;
        if (i3 == 0) {
            return -1;
        }
        int iA = i4.a(this.e, i3, i2);
        if (iA < 0 || obj.equals(this.f[iA])) {
            return iA;
        }
        int i4 = iA + 1;
        while (i4 < i3 && this.e[i4] == i2) {
            if (obj.equals(this.f[i4])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iA - 1; i5 >= 0 && this.e[i5] == i2; i5--) {
            if (obj.equals(this.f[i5])) {
                return i5;
            }
        }
        return ~i4;
    }

    public final int l() {
        int i2 = this.g;
        if (i2 == 0) {
            return -1;
        }
        int iA = i4.a(this.e, i2, 0);
        if (iA < 0 || this.f[iA] == null) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.e[i3] == 0) {
            if (this.f[i3] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.e[i4] == 0; i4--) {
            if (this.f[i4] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    public E n(int i2) {
        Object[] objArr = this.f;
        E e = (E) objArr[i2];
        int i3 = this.g;
        if (i3 <= 1) {
            h(this.e, objArr, i3);
            this.e = i;
            this.f = j;
            this.g = 0;
        } else {
            int[] iArr = this.e;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                int i4 = i3 - 1;
                this.g = i4;
                if (i2 < i4) {
                    int i5 = i2 + 1;
                    System.arraycopy(iArr, i5, iArr, i2, i4 - i2);
                    Object[] objArr2 = this.f;
                    System.arraycopy(objArr2, i5, objArr2, i2, this.g - i2);
                }
                this.f[this.g] = null;
            } else {
                d(i3 > 8 ? i3 + (i3 >> 1) : 8);
                this.g--;
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.e, 0, i2);
                    System.arraycopy(objArr, 0, this.f, 0, i2);
                }
                int i6 = this.g;
                if (i2 < i6) {
                    int i7 = i2 + 1;
                    System.arraycopy(iArr, i7, this.e, i2, i6 - i2);
                    System.arraycopy(objArr, i7, this.f, i2, this.g - i2);
                }
            }
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        n(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i2 = this.g - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f[i2])) {
                n(i2);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.g;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i2 = this.g;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.g * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.g; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.f[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public h4(int i2) {
        if (i2 == 0) {
            this.e = i;
            this.f = j;
        } else {
            d(i2);
        }
        this.g = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.g) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.g));
        }
        System.arraycopy(this.f, 0, tArr, 0, this.g);
        int length = tArr.length;
        int i2 = this.g;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }
}
