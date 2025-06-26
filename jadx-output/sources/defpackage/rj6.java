package defpackage;

import defpackage.jj6;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class rj6 extends ki6<Long> implements Object, RandomAccess, jk6 {
    public static final rj6 h;
    public long[] f;
    public int g;

    static {
        rj6 rj6Var = new rj6(new long[0], 0);
        h = rj6Var;
        rj6Var.e = false;
    }

    public rj6() {
        this.f = new long[10];
        this.g = 0;
    }

    @Override // jj6.d
    public jj6.d E(int i) {
        if (i >= this.g) {
            return new rj6(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        int i2;
        long jLongValue = ((Long) obj).longValue();
        d();
        if (i < 0 || i > (i2 = this.g)) {
            throw new IndexOutOfBoundsException(n(i));
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

    @Override // defpackage.ki6, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        d();
        Charset charset = jj6.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof rj6)) {
            return super.addAll(collection);
        }
        rj6 rj6Var = (rj6) collection;
        int i = rj6Var.g;
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
        System.arraycopy(rj6Var.f, 0, this.f, this.g, rj6Var.g);
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
        if (!(obj instanceof rj6)) {
            return super.equals(obj);
        }
        rj6 rj6Var = (rj6) obj;
        if (this.g != rj6Var.g) {
            return false;
        }
        long[] jArr = rj6Var.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        j(i);
        return Long.valueOf(this.f[i]);
    }

    public void h(long j) {
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
        jArr3[i2] = j;
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iB = 1;
        for (int i = 0; i < this.g; i++) {
            iB = (iB * 31) + jj6.b(this.f[i]);
        }
        return iB;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
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
            throw new IndexOutOfBoundsException(n(i));
        }
    }

    public long l(int i) {
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
        long[] jArr = this.f;
        long j = jArr[i];
        if (i < this.g - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
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
    public Object set(int i, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        d();
        j(i);
        long[] jArr = this.f;
        long j = jArr[i];
        jArr[i] = jLongValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.g;
    }

    public rj6(long[] jArr, int i) {
        this.f = jArr;
        this.g = i;
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        h(((Long) obj).longValue());
        return true;
    }
}
