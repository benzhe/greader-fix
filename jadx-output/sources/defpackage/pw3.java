package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class pw3 extends mw3<Boolean> implements xx3<Boolean>, RandomAccess {
    public boolean[] f;
    public int g;

    static {
        new pw3().e = false;
    }

    public pw3() {
        this.f = new boolean[10];
        this.g = 0;
    }

    public pw3(boolean[] zArr, int i) {
        this.f = zArr;
        this.g = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        h(i, ((Boolean) obj).booleanValue());
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        d();
        Charset charset = ux3.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof pw3)) {
            return super.addAll(collection);
        }
        pw3 pw3Var = (pw3) collection;
        int i = pw3Var.g;
        if (i == 0) {
            return false;
        }
        int i2 = this.g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.f;
        if (i3 > zArr.length) {
            this.f = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(pw3Var.f, 0, this.f, this.g, pw3Var.g);
        this.g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pw3)) {
            return super.equals(obj);
        }
        pw3 pw3Var = (pw3) obj;
        if (this.g != pw3Var.g) {
            return false;
        }
        boolean[] zArr = pw3Var.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        j(i);
        return Boolean.valueOf(this.f[i]);
    }

    public final void h(int i, boolean z) {
        int i2;
        d();
        if (i < 0 || i > (i2 = this.g)) {
            throw new IndexOutOfBoundsException(l(i));
        }
        boolean[] zArr = this.f;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[jo.m(i2, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f, i, zArr2, i + 1, this.g - i);
            this.f = zArr2;
        }
        this.f[i] = z;
        this.g++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iB = 1;
        for (int i = 0; i < this.g; i++) {
            iB = (iB * 31) + ux3.b(this.f[i]);
        }
        return iB;
    }

    public final void j(int i) {
        if (i < 0 || i >= this.g) {
            throw new IndexOutOfBoundsException(l(i));
        }
    }

    @Override // defpackage.xx3
    public final /* synthetic */ xx3<Boolean> k(int i) {
        if (i >= this.g) {
            return new pw3(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    public final String l(int i) {
        return jo.N(35, "Index:", i, ", Size:", this.g);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        j(i);
        boolean[] zArr = this.f;
        boolean z = zArr[i];
        int i2 = this.g;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, i2 - i);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        d();
        for (int i = 0; i < this.g; i++) {
            if (obj.equals(Boolean.valueOf(this.f[i]))) {
                boolean[] zArr = this.f;
                System.arraycopy(zArr, i + 1, zArr, i, this.g - i);
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
        boolean[] zArr = this.f;
        System.arraycopy(zArr, i2, zArr, i, this.g - i2);
        this.g -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        d();
        j(i);
        boolean[] zArr = this.f;
        boolean z = zArr[i];
        zArr[i] = zBooleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }
}
