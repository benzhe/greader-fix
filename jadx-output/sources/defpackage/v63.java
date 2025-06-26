package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class v63 extends f53<Integer> implements x63, n83, RandomAccess {
    public static final v63 h;
    public int[] f;
    public int g;

    static {
        v63 v63Var = new v63(new int[0], 0);
        h = v63Var;
        v63Var.e = false;
    }

    public v63() {
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

    @Override // defpackage.f53, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        d();
        Charset charset = u63.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof v63)) {
            return super.addAll(collection);
        }
        v63 v63Var = (v63) collection;
        int i = v63Var.g;
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
        System.arraycopy(v63Var.f, 0, this.f, this.g, v63Var.g);
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
        if (!(obj instanceof v63)) {
            return super.equals(obj);
        }
        v63 v63Var = (v63) obj;
        if (this.g != v63Var.g) {
            return false;
        }
        int[] iArr = v63Var.f;
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

    @Override // defpackage.f53, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.g; i2++) {
            i = (i * 31) + this.f[i2];
        }
        return i;
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

    @Override // defpackage.b73
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final x63 D(int i) {
        if (i >= this.g) {
            return new v63(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    public final void o(int i) {
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

    @Override // defpackage.f53, java.util.AbstractList, java.util.List
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

    public v63(int[] iArr, int i) {
        this.f = iArr;
        this.g = i;
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        o(((Integer) obj).intValue());
        return true;
    }
}
