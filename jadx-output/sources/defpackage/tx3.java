package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class tx3 extends mw3<Integer> implements xx3<Integer>, RandomAccess {
    public int[] f;
    public int g;

    static {
        new tx3().e = false;
    }

    public tx3() {
        this.f = new int[10];
        this.g = 0;
    }

    public tx3(int[] iArr, int i) {
        this.f = iArr;
        this.g = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        n(i, ((Integer) obj).intValue());
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        d();
        Charset charset = ux3.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof tx3)) {
            return super.addAll(collection);
        }
        tx3 tx3Var = (tx3) collection;
        int i = tx3Var.g;
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
        System.arraycopy(tx3Var.f, 0, this.f, this.g, tx3Var.g);
        this.g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tx3)) {
            return super.equals(obj);
        }
        tx3 tx3Var = (tx3) obj;
        if (this.g != tx3Var.g) {
            return false;
        }
        int[] iArr = tx3Var.f;
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

    @Override // defpackage.mw3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.g; i2++) {
            i = (i * 31) + this.f[i2];
        }
        return i;
    }

    public final void j(int i) {
        if (i < 0 || i >= this.g) {
            throw new IndexOutOfBoundsException(l(i));
        }
    }

    @Override // defpackage.xx3
    public final /* synthetic */ xx3<Integer> k(int i) {
        if (i >= this.g) {
            return new tx3(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    public final String l(int i) {
        return jo.N(35, "Index:", i, ", Size:", this.g);
    }

    public final void n(int i, int i2) {
        int i3;
        d();
        if (i < 0 || i > (i3 = this.g)) {
            throw new IndexOutOfBoundsException(l(i));
        }
        int[] iArr = this.f;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[jo.m(i3, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f, i, iArr2, i + 1, this.g - i);
            this.f = iArr2;
        }
        this.f[i] = i2;
        this.g++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        j(i);
        int[] iArr = this.f;
        int i2 = iArr[i];
        int i3 = this.g;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, i3 - i);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        d();
        for (int i = 0; i < this.g; i++) {
            if (obj.equals(Integer.valueOf(this.f[i]))) {
                int[] iArr = this.f;
                System.arraycopy(iArr, i + 1, iArr, i, this.g - i);
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
}
