package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class my3 extends mw3<Long> implements xx3<Long>, RandomAccess {
    public long[] f;
    public int g;

    static {
        new my3().e = false;
    }

    public my3() {
        this.f = new long[10];
        this.g = 0;
    }

    public my3(long[] jArr, int i) {
        this.f = jArr;
        this.g = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        n(i, ((Long) obj).longValue());
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        d();
        Charset charset = ux3.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof my3)) {
            return super.addAll(collection);
        }
        my3 my3Var = (my3) collection;
        int i = my3Var.g;
        if (i == 0) {
            return false;
        }
        int i2 = this.g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f;
        if (i3 > jArr.length) {
            this.f = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(my3Var.f, 0, this.f, this.g, my3Var.g);
        this.g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof my3)) {
            return super.equals(obj);
        }
        my3 my3Var = (my3) obj;
        if (this.g != my3Var.g) {
            return false;
        }
        long[] jArr = my3Var.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        j(i);
        return Long.valueOf(this.f[i]);
    }

    public final long h(int i) {
        j(i);
        return this.f[i];
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iC = 1;
        for (int i = 0; i < this.g; i++) {
            iC = (iC * 31) + ux3.c(this.f[i]);
        }
        return iC;
    }

    public final void j(int i) {
        if (i < 0 || i >= this.g) {
            throw new IndexOutOfBoundsException(l(i));
        }
    }

    @Override // defpackage.xx3
    public final /* synthetic */ xx3<Long> k(int i) {
        if (i >= this.g) {
            return new my3(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    public final String l(int i) {
        return jo.N(35, "Index:", i, ", Size:", this.g);
    }

    public final void n(int i, long j) {
        int i2;
        d();
        if (i < 0 || i > (i2 = this.g)) {
            throw new IndexOutOfBoundsException(l(i));
        }
        long[] jArr = this.f;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[jo.m(i2, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f, i, jArr2, i + 1, this.g - i);
            this.f = jArr2;
        }
        this.f[i] = j;
        this.g++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        j(i);
        long[] jArr = this.f;
        long j = jArr[i];
        int i2 = this.g;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, i2 - i);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        d();
        for (int i = 0; i < this.g; i++) {
            if (obj.equals(Long.valueOf(this.f[i]))) {
                long[] jArr = this.f;
                System.arraycopy(jArr, i + 1, jArr, i, this.g - i);
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
        long[] jArr = this.f;
        System.arraycopy(jArr, i2, jArr, i, this.g - i2);
        this.g -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        d();
        j(i);
        long[] jArr = this.f;
        long j = jArr[i];
        jArr[i] = jLongValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }
}
