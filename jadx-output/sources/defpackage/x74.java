package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class x74 extends u74<Boolean> implements RandomAccess, i94, ja4 {
    public static final x74 h;
    public boolean[] f;
    public int g;

    static {
        x74 x74Var = new x74(new boolean[0], 0);
        h = x74Var;
        x74Var.e = false;
    }

    public x74() {
        this.f = new boolean[10];
        this.g = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
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
        this.f[i] = zBooleanValue;
        this.g++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.u74, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        h(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // defpackage.u74, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        d();
        Charset charset = j94.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof x74)) {
            return super.addAll(collection);
        }
        x74 x74Var = (x74) collection;
        int i = x74Var.g;
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
        System.arraycopy(x74Var.f, 0, this.f, this.g, x74Var.g);
        this.g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.u74, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x74)) {
            return super.equals(obj);
        }
        x74 x74Var = (x74) obj;
        if (this.g != x74Var.g) {
            return false;
        }
        boolean[] zArr = x74Var.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        j(i);
        return Boolean.valueOf(this.f[i]);
    }

    public final void h(boolean z) {
        d();
        int i = this.g;
        boolean[] zArr = this.f;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[jo.m(i, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f = zArr2;
        }
        boolean[] zArr3 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // defpackage.u74, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iB = 1;
        for (int i = 0; i < this.g; i++) {
            iB = (iB * 31) + j94.b(this.f[i]);
        }
        return iB;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f[i2] == zBooleanValue) {
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

    @Override // defpackage.u74, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        d();
        j(i);
        boolean[] zArr = this.f;
        boolean z = zArr[i];
        if (i < this.g - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (r2 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
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
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
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

    @Override // defpackage.i94
    public final /* bridge */ /* synthetic */ i94 w(int i) {
        if (i >= this.g) {
            return new x74(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    public x74(boolean[] zArr, int i) {
        this.f = zArr;
        this.g = i;
    }
}
