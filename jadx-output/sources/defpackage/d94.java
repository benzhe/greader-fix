package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class d94 extends u74<Integer> implements RandomAccess, g94, ja4 {
    public static final d94 h;
    public int[] f;
    public int g;

    static {
        d94 d94Var = new d94(new int[0], 0);
        h = d94Var;
        d94Var.e = false;
    }

    public d94() {
        this.f = new int[10];
        this.g = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        int iIntValue = ((Integer) obj).intValue();
        d();
        if (i < 0 || i > (i2 = this.g)) {
            throw new IndexOutOfBoundsException(o(i));
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

    @Override // defpackage.u74, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        l(((Integer) obj).intValue());
        return true;
    }

    @Override // defpackage.u74, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        d();
        Charset charset = j94.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof d94)) {
            return super.addAll(collection);
        }
        d94 d94Var = (d94) collection;
        int i = d94Var.g;
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
        System.arraycopy(d94Var.f, 0, this.f, this.g, d94Var.g);
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
        if (!(obj instanceof d94)) {
            return super.equals(obj);
        }
        d94 d94Var = (d94) obj;
        if (this.g != d94Var.g) {
            return false;
        }
        int[] iArr = d94Var.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        n(i);
        return Integer.valueOf(this.f[i]);
    }

    @Override // defpackage.i94
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final g94 w(int i) {
        if (i >= this.g) {
            return new d94(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    @Override // defpackage.u74, java.util.AbstractList, java.util.Collection, java.util.List
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

    public final int j(int i) {
        n(i);
        return this.f[i];
    }

    public final void l(int i) {
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

    public final void n(int i) {
        if (i < 0 || i >= this.g) {
            throw new IndexOutOfBoundsException(o(i));
        }
    }

    public final String o(int i) {
        return jo.N(35, "Index:", i, ", Size:", this.g);
    }

    @Override // defpackage.u74, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        d();
        n(i);
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
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        d();
        n(i);
        int[] iArr = this.f;
        int i2 = iArr[i];
        iArr[i] = iIntValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    public d94(int[] iArr, int i) {
        this.f = iArr;
        this.g = i;
    }
}
