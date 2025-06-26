package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class cx3 extends mw3<Double> implements xx3<Double>, RandomAccess {
    public double[] f;
    public int g;

    static {
        new cx3().e = false;
    }

    public cx3() {
        this.f = new double[10];
        this.g = 0;
    }

    public cx3(double[] dArr, int i) {
        this.f = dArr;
        this.g = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        h(i, ((Double) obj).doubleValue());
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        d();
        Charset charset = ux3.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof cx3)) {
            return super.addAll(collection);
        }
        cx3 cx3Var = (cx3) collection;
        int i = cx3Var.g;
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
        System.arraycopy(cx3Var.f, 0, this.f, this.g, cx3Var.g);
        this.g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cx3)) {
            return super.equals(obj);
        }
        cx3 cx3Var = (cx3) obj;
        if (this.g != cx3Var.g) {
            return false;
        }
        double[] dArr = cx3Var.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != dArr[i]) {
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

    public final void h(int i, double d) {
        int i2;
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
        this.f[i] = d;
        this.g++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iC = 1;
        for (int i = 0; i < this.g; i++) {
            iC = (iC * 31) + ux3.c(Double.doubleToLongBits(this.f[i]));
        }
        return iC;
    }

    public final void j(int i) {
        if (i < 0 || i >= this.g) {
            throw new IndexOutOfBoundsException(l(i));
        }
    }

    @Override // defpackage.xx3
    public final /* synthetic */ xx3<Double> k(int i) {
        if (i >= this.g) {
            return new cx3(Arrays.copyOf(this.f, i), this.g);
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
        double[] dArr = this.f;
        double d = dArr[i];
        int i2 = this.g;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, i2 - i);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        d();
        for (int i = 0; i < this.g; i++) {
            if (obj.equals(Double.valueOf(this.f[i]))) {
                double[] dArr = this.f;
                System.arraycopy(dArr, i + 1, dArr, i, this.g - i);
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
}
