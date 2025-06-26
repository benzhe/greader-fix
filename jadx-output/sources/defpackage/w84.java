package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class w84 extends u74<Float> implements RandomAccess, i94, ja4 {
    public static final w84 h;
    public float[] f;
    public int g;

    static {
        w84 w84Var = new w84(new float[0], 0);
        h = w84Var;
        w84Var.e = false;
    }

    public w84() {
        this.f = new float[10];
        this.g = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        float fFloatValue = ((Float) obj).floatValue();
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
        this.f[i] = fFloatValue;
        this.g++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.u74, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        h(((Float) obj).floatValue());
        return true;
    }

    @Override // defpackage.u74, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        d();
        Charset charset = j94.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof w84)) {
            return super.addAll(collection);
        }
        w84 w84Var = (w84) collection;
        int i = w84Var.g;
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
        System.arraycopy(w84Var.f, 0, this.f, this.g, w84Var.g);
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
        if (!(obj instanceof w84)) {
            return super.equals(obj);
        }
        w84 w84Var = (w84) obj;
        if (this.g != w84Var.g) {
            return false;
        }
        float[] fArr = w84Var.f;
        for (int i = 0; i < this.g; i++) {
            if (Float.floatToIntBits(this.f[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        j(i);
        return Float.valueOf(this.f[i]);
    }

    public final void h(float f) {
        d();
        int i = this.g;
        float[] fArr = this.f;
        if (i == fArr.length) {
            float[] fArr2 = new float[jo.m(i, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f = fArr2;
        }
        float[] fArr3 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // defpackage.u74, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i = 0; i < this.g; i++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f[i]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f[i2] == fFloatValue) {
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
        float[] fArr = this.f;
        float f = fArr[i];
        if (i < this.g - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (r2 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
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
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
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

    @Override // defpackage.i94
    public final /* bridge */ /* synthetic */ i94 w(int i) {
        if (i >= this.g) {
            return new w84(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    public w84(float[] fArr, int i) {
        this.f = fArr;
        this.g = i;
    }
}
