package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class c63 extends f53<Double> implements b73<Double>, n83, RandomAccess {
    public double[] f;
    public int g;

    static {
        new c63(new double[0], 0).e = false;
    }

    public c63() {
        this.f = new double[10];
        this.g = 0;
    }

    @Override // defpackage.b73
    public final /* synthetic */ b73<Double> D(int i) {
        if (i >= this.g) {
            return new c63(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double dDoubleValue = ((Double) obj).doubleValue();
        d();
        if (i < 0 || i > (i2 = this.g)) {
            throw new IndexOutOfBoundsException(l(i));
        }
        double[] dArr = this.f;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[jo.m(i2, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f, i, dArr2, i + 1, this.g - i);
            this.f = dArr2;
        }
        this.f[i] = dDoubleValue;
        this.g++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.f53, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        d();
        Charset charset = u63.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof c63)) {
            return super.addAll(collection);
        }
        c63 c63Var = (c63) collection;
        int i = c63Var.g;
        if (i == 0) {
            return false;
        }
        int i2 = this.g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.f;
        if (i3 > dArr.length) {
            this.f = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(c63Var.f, 0, this.f, this.g, c63Var.g);
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
        if (!(obj instanceof c63)) {
            return super.equals(obj);
        }
        c63 c63Var = (c63) obj;
        if (this.g != c63Var.g) {
            return false;
        }
        double[] dArr = c63Var.f;
        for (int i = 0; i < this.g; i++) {
            if (Double.doubleToLongBits(this.f[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        j(i);
        return Double.valueOf(this.f[i]);
    }

    public final void h(double d) {
        d();
        int i = this.g;
        double[] dArr = this.f;
        if (i == dArr.length) {
            double[] dArr2 = new double[jo.m(i, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f = dArr2;
        }
        double[] dArr3 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iC = 1;
        for (int i = 0; i < this.g; i++) {
            iC = (iC * 31) + u63.c(Double.doubleToLongBits(this.f[i]));
        }
        return iC;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f[i2] == dDoubleValue) {
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

    @Override // defpackage.f53, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        j(i);
        double[] dArr = this.f;
        double d = dArr[i];
        if (i < this.g - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (r3 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        d();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f;
        System.arraycopy(dArr, i2, dArr, i, this.g - i2);
        this.g -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        d();
        j(i);
        double[] dArr = this.f;
        double d = dArr[i];
        dArr[i] = dDoubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    public c63(double[] dArr, int i) {
        this.f = dArr;
        this.g = i;
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        h(((Double) obj).doubleValue());
        return true;
    }
}
