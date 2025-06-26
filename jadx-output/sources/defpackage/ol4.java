package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class ol4 extends qj4<Long> implements wk4<Long>, im4, RandomAccess {
    public long[] f;
    public int g;

    static {
        new ol4(new long[0], 0).e = false;
    }

    public ol4() {
        this.f = new long[10];
        this.g = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        long jLongValue = ((Long) obj).longValue();
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
        this.f[i] = jLongValue;
        this.g++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.qj4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        d();
        Charset charset = rk4.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof ol4)) {
            return super.addAll(collection);
        }
        ol4 ol4Var = (ol4) collection;
        int i = ol4Var.g;
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
        System.arraycopy(ol4Var.f, 0, this.f, this.g, ol4Var.g);
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
        if (!(obj instanceof ol4)) {
            return super.equals(obj);
        }
        ol4 ol4Var = (ol4) obj;
        if (this.g != ol4Var.g) {
            return false;
        }
        long[] jArr = ol4Var.f;
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

    @Override // defpackage.qj4, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iA = 1;
        for (int i = 0; i < this.g; i++) {
            iA = (iA * 31) + rk4.a(this.f[i]);
        }
        return iA;
    }

    @Override // defpackage.wk4
    public final /* synthetic */ wk4<Long> i(int i) {
        if (i >= this.g) {
            return new ol4(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f[i2] == jLongValue) {
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
            if (obj.equals(Long.valueOf(this.f[i]))) {
                long[] jArr = this.f;
                System.arraycopy(jArr, i + 1, jArr, i, (this.g - i) - 1);
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

    public ol4(long[] jArr, int i) {
        this.f = jArr;
        this.g = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        j(i);
        long[] jArr = this.f;
        long j = jArr[i];
        if (i < this.g - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // defpackage.qj4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        long jLongValue = ((Long) obj).longValue();
        d();
        int i = this.g;
        long[] jArr = this.f;
        if (i == jArr.length) {
            long[] jArr2 = new long[jo.m(i, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f = jArr2;
        }
        long[] jArr3 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        jArr3[i2] = jLongValue;
        return true;
    }
}
