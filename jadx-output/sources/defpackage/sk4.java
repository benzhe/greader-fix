package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class sk4 extends qj4<Integer> implements wk4<Integer>, im4, RandomAccess {
    public static final sk4 h;
    public int[] f;
    public int g;

    static {
        sk4 sk4Var = new sk4(new int[0], 0);
        h = sk4Var;
        sk4Var.e = false;
    }

    public sk4() {
        this.f = new int[10];
        this.g = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int iIntValue = ((Integer) obj).intValue();
        d();
        if (i < 0 || i > (i2 = this.g)) {
            throw new IndexOutOfBoundsException(l(i));
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

    @Override // defpackage.qj4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        d();
        Charset charset = rk4.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof sk4)) {
            return super.addAll(collection);
        }
        sk4 sk4Var = (sk4) collection;
        int i = sk4Var.g;
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
        System.arraycopy(sk4Var.f, 0, this.f, this.g, sk4Var.g);
        this.g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.qj4, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sk4)) {
            return super.equals(obj);
        }
        sk4 sk4Var = (sk4) obj;
        if (this.g != sk4Var.g) {
            return false;
        }
        int[] iArr = sk4Var.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        j(i);
        return Integer.valueOf(this.f[i]);
    }

    public final int h(int i) {
        j(i);
        return this.f[i];
    }

    @Override // defpackage.qj4, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.g; i2++) {
            i = (i * 31) + this.f[i2];
        }
        return i;
    }

    @Override // defpackage.wk4
    public final /* synthetic */ wk4<Integer> i(int i) {
        if (i >= this.g) {
            return new sk4(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
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
            throw new IndexOutOfBoundsException(l(i));
        }
    }

    public final String l(int i) {
        return jo.N(35, "Index:", i, ", Size:", this.g);
    }

    @Override // defpackage.qj4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        d();
        for (int i = 0; i < this.g; i++) {
            if (obj.equals(Integer.valueOf(this.f[i]))) {
                int[] iArr = this.f;
                System.arraycopy(iArr, i + 1, iArr, i, (this.g - i) - 1);
                this.g--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
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
    public final /* synthetic */ Object set(int i, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        d();
        j(i);
        int[] iArr = this.f;
        int i2 = iArr[i];
        iArr[i] = iIntValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    public sk4(int[] iArr, int i) {
        this.f = iArr;
        this.g = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
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

    @Override // defpackage.qj4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        d();
        int i = this.g;
        int[] iArr = this.f;
        if (i == iArr.length) {
            int[] iArr2 = new int[jo.m(i, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f = iArr2;
        }
        int[] iArr3 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        iArr3[i2] = iIntValue;
        return true;
    }
}
