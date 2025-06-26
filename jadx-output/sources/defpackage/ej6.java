package defpackage;

import defpackage.jj6;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class ej6 extends ki6<Float> implements Object, RandomAccess, jk6 {
    public static final ej6 h;
    public float[] f;
    public int g;

    static {
        ej6 ej6Var = new ej6(new float[0], 0);
        h = ej6Var;
        ej6Var.e = false;
    }

    public ej6() {
        this.f = new float[10];
        this.g = 0;
    }

    @Override // jj6.d
    public jj6.d E(int i) {
        if (i >= this.g) {
            return new ej6(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
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

    @Override // defpackage.ki6, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        d();
        Charset charset = jj6.a;
        Objects.requireNonNull(collection);
        if (!(collection instanceof ej6)) {
            return super.addAll(collection);
        }
        ej6 ej6Var = (ej6) collection;
        int i = ej6Var.g;
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
        System.arraycopy(ej6Var.f, 0, this.f, this.g, ej6Var.g);
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
        if (!(obj instanceof ej6)) {
            return super.equals(obj);
        }
        ej6 ej6Var = (ej6) obj;
        if (this.g != ej6Var.g) {
            return false;
        }
        float[] fArr = ej6Var.f;
        for (int i = 0; i < this.g; i++) {
            if (Float.floatToIntBits(this.f[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        j(i);
        return Float.valueOf(this.f[i]);
    }

    public void h(float f) {
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

    @Override // defpackage.ki6, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iFloatToIntBits = 1;
        for (int i = 0; i < this.g; i++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f[i]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
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
        StringBuilder sbA = jo.A("Index:", i, ", Size:");
        sbA.append(this.g);
        return sbA.toString();
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.List
    public Object remove(int i) {
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
    public void removeRange(int i, int i2) {
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
    public Object set(int i, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        d();
        j(i);
        float[] fArr = this.f;
        float f = fArr[i];
        fArr[i] = fFloatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.g;
    }

    public ej6(float[] fArr, int i) {
        this.f = fArr;
        this.g = i;
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        h(((Float) obj).floatValue());
        return true;
    }
}
