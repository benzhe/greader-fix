package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class q63 extends f53<Float> implements b73<Float>, n83, RandomAccess {
    public float[] f;
    public int g;

    static {
        new q63(new float[0], 0).e = false;
    }

    public q63() {
        this.f = new float[10];
        this.g = 0;
    }

    @Override // defpackage.b73
    public final /* synthetic */ b73<Float> D(int i) {
        if (i >= this.g) {
            return new q63(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        float fFloatValue = ((Float) obj).floatValue();
        d();
        if (i < 0 || i > (i2 = this.g)) {
            throw new IndexOutOfBoundsException(j(i));
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

    @Override // defpackage.f53, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        d();
        Charset charset = u63.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof q63)) {
            return super.addAll(collection);
        }
        q63 q63Var = (q63) collection;
        int i = q63Var.g;
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
        System.arraycopy(q63Var.f, 0, this.f, this.g, q63Var.g);
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
        if (!(obj instanceof q63)) {
            return super.equals(obj);
        }
        q63 q63Var = (q63) obj;
        if (this.g != q63Var.g) {
            return false;
        }
        float[] fArr = q63Var.f;
        for (int i = 0; i < this.g; i++) {
            if (Float.floatToIntBits(this.f[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        h(i);
        return Float.valueOf(this.f[i]);
    }

    public final void h(int i) {
        if (i < 0 || i >= this.g) {
            throw new IndexOutOfBoundsException(j(i));
        }
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.Collection, java.util.List
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

    public final String j(int i) {
        return jo.N(35, "Index:", i, ", Size:", this.g);
    }

    public final void l(float f) {
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

    @Override // defpackage.f53, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        h(i);
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
    public final /* synthetic */ Object set(int i, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        d();
        h(i);
        float[] fArr = this.f;
        float f = fArr[i];
        fArr[i] = fFloatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    public q63(float[] fArr, int i) {
        this.f = fArr;
        this.g = i;
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        l(((Float) obj).floatValue());
        return true;
    }
}
