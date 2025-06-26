package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class qx3 extends mw3<Float> implements xx3<Float>, RandomAccess {
    public float[] f;
    public int g;

    static {
        new qx3().e = false;
    }

    public qx3() {
        this.f = new float[10];
        this.g = 0;
    }

    public qx3(float[] fArr, int i) {
        this.f = fArr;
        this.g = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        h(i, ((Float) obj).floatValue());
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        d();
        Charset charset = ux3.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof qx3)) {
            return super.addAll(collection);
        }
        qx3 qx3Var = (qx3) collection;
        int i = qx3Var.g;
        if (i == 0) {
            return false;
        }
        int i2 = this.g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.f;
        if (i3 > fArr.length) {
            this.f = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(qx3Var.f, 0, this.f, this.g, qx3Var.g);
        this.g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qx3)) {
            return super.equals(obj);
        }
        qx3 qx3Var = (qx3) obj;
        if (this.g != qx3Var.g) {
            return false;
        }
        float[] fArr = qx3Var.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != fArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        j(i);
        return Float.valueOf(this.f[i]);
    }

    public final void h(int i, float f) {
        int i2;
        d();
        if (i < 0 || i > (i2 = this.g)) {
            throw new IndexOutOfBoundsException(l(i));
        }
        float[] fArr = this.f;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[jo.m(i2, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f, i, fArr2, i + 1, this.g - i);
            this.f = fArr2;
        }
        this.f[i] = f;
        this.g++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i = 0; i < this.g; i++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f[i]);
        }
        return iFloatToIntBits;
    }

    public final void j(int i) {
        if (i < 0 || i >= this.g) {
            throw new IndexOutOfBoundsException(l(i));
        }
    }

    @Override // defpackage.xx3
    public final /* synthetic */ xx3<Float> k(int i) {
        if (i >= this.g) {
            return new qx3(Arrays.copyOf(this.f, i), this.g);
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
        float[] fArr = this.f;
        float f = fArr[i];
        int i2 = this.g;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, i2 - i);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        d();
        for (int i = 0; i < this.g; i++) {
            if (obj.equals(Float.valueOf(this.f[i]))) {
                float[] fArr = this.f;
                System.arraycopy(fArr, i + 1, fArr, i, this.g - i);
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
        float[] fArr = this.f;
        System.arraycopy(fArr, i2, fArr, i, this.g - i2);
        this.g -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        d();
        j(i);
        float[] fArr = this.f;
        float f = fArr[i];
        fArr[i] = fFloatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }
}
