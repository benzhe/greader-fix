package defpackage;

import defpackage.jj6;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class ij6 extends ki6<Integer> implements jj6.c, RandomAccess, jk6 {
    public static final ij6 h;
    public int[] f;
    public int g;

    static {
        ij6 ij6Var = new ij6(new int[0], 0);
        h = ij6Var;
        ij6Var.e = false;
    }

    public ij6() {
        this.f = new int[10];
        this.g = 0;
    }

    @Override // jj6.d
    public jj6.d<Integer> E(int i) {
        if (i >= this.g) {
            return new ij6(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        int i2;
        int iIntValue = ((Integer) obj).intValue();
        d();
        if (i < 0 || i > (i2 = this.g)) {
            throw new IndexOutOfBoundsException(n(i));
        }
        int[] iArr = this.f;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[jo.m(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f, i, iArr2, i + 1, this.g - i);
            this.f = iArr2;
        }
        this.f[i] = iIntValue;
        this.g++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.ki6, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        d();
        Charset charset = jj6.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof ij6)) {
            return super.addAll(collection);
        }
        ij6 ij6Var = (ij6) collection;
        int i = ij6Var.g;
        if (i == 0) {
            return false;
        }
        int i2 = this.g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f;
        if (i3 > iArr.length) {
            this.f = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(ij6Var.f, 0, this.f, this.g, ij6Var.g);
        this.g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ij6)) {
            return super.equals(obj);
        }
        ij6 ij6Var = (ij6) obj;
        if (this.g != ij6Var.g) {
            return false;
        }
        int[] iArr = ij6Var.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        j(i);
        return Integer.valueOf(this.f[i]);
    }

    public void h(int i) {
        d();
        int i2 = this.g;
        int[] iArr = this.f;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[jo.m(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f = iArr2;
        }
        int[] iArr3 = this.f;
        int i3 = this.g;
        this.g = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.g; i2++) {
            i = (i * 31) + this.f[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f[i2] == iIntValue) {
                return i2;
            }
        }
        return -1;
    }

    public final void j(int i) {
        if (i < 0 || i >= this.g) {
            throw new IndexOutOfBoundsException(n(i));
        }
    }

    public int l(int i) {
        j(i);
        return this.f[i];
    }

    public final String n(int i) {
        StringBuilder sbA = jo.A("Index:", i, ", Size:");
        sbA.append(this.g);
        return sbA.toString();
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.List
    public Object remove(int i) {
        d();
        j(i);
        int[] iArr = this.f;
        int i2 = iArr[i];
        if (i < this.g - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        d();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f;
        System.arraycopy(iArr, i2, iArr, i, this.g - i2);
        this.g -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        d();
        j(i);
        int[] iArr = this.f;
        int i2 = iArr[i];
        iArr[i] = iIntValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.g;
    }

    public ij6(int[] iArr, int i) {
        this.f = iArr;
        this.g = i;
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        h(((Integer) obj).intValue());
        return true;
    }
}
