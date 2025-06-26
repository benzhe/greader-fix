package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class t73 extends f53<Long> implements c73, n83, RandomAccess {
    public static final t73 h;
    public long[] f;
    public int g;

    static {
        t73 t73Var = new t73(new long[0], 0);
        h = t73Var;
        t73Var.e = false;
    }

    public t73() {
        this.f = new long[10];
        this.g = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
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

    @Override // defpackage.f53, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        d();
        Charset charset = u63.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof t73)) {
            return super.addAll(collection);
        }
        t73 t73Var = (t73) collection;
        int i = t73Var.g;
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
        System.arraycopy(t73Var.f, 0, this.f, this.g, t73Var.g);
        this.g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t73)) {
            return super.equals(obj);
        }
        t73 t73Var = (t73) obj;
        if (this.g != t73Var.g) {
            return false;
        }
        long[] jArr = t73Var.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        l(i);
        return Long.valueOf(this.f[i]);
    }

    public final long h(int i) {
        l(i);
        return this.f[i];
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iC = 1;
        for (int i = 0; i < this.g; i++) {
            iC = (iC * 31) + u63.c(this.f[i]);
        }
        return iC;
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

    public final void j(long j) {
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

    public final void l(int i) {
        if (i < 0 || i >= this.g) {
            throw new IndexOutOfBoundsException(n(i));
        }
    }

    public final String n(int i) {
        return jo.N(35, "Index:", i, ", Size:", this.g);
    }

    @Override // defpackage.b73
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public final c73 D(int i) {
        if (i >= this.g) {
            return new t73(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        l(i);
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
        l(i);
        long[] jArr = this.f;
        long j = jArr[i];
        jArr[i] = jLongValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    public t73(long[] jArr, int i) {
        this.f = jArr;
        this.g = i;
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        j(((Long) obj).longValue());
        return true;
    }
}
