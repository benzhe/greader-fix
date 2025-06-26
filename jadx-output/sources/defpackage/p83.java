package defpackage;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class p83<E> extends f53<E> implements RandomAccess {
    public static final p83<Object> h;
    public E[] f;
    public int g;

    static {
        p83<Object> p83Var = new p83<>(new Object[0], 0);
        h = p83Var;
        p83Var.e = false;
    }

    public p83(E[] eArr, int i) {
        this.f = eArr;
        this.g = i;
    }

    @Override // defpackage.b73
    public final /* synthetic */ b73 D(int i) {
        if (i >= this.g) {
            return new p83(Arrays.copyOf(this.f, i), this.g);
        }
        throw new IllegalArgumentException();
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        d();
        int i = this.g;
        E[] eArr = this.f;
        if (i == eArr.length) {
            this.f = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        h(i);
        return this.f[i];
    }

    public final void h(int i) {
        if (i < 0 || i >= this.g) {
            throw new IndexOutOfBoundsException(j(i));
        }
    }

    public final String j(int i) {
        return jo.N(35, "Index:", i, ", Size:", this.g);
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        d();
        h(i);
        E[] eArr = this.f;
        E e = eArr[i];
        if (i < this.g - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (r2 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        d();
        h(i);
        E[] eArr = this.f;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        d();
        if (i >= 0 && i <= (i2 = this.g)) {
            E[] eArr = this.f;
            if (i2 < eArr.length) {
                System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
            } else {
                E[] eArr2 = (E[]) new Object[jo.m(i2, 3, 2, 1)];
                System.arraycopy(eArr, 0, eArr2, 0, i);
                System.arraycopy(this.f, i, eArr2, i + 1, this.g - i);
                this.f = eArr2;
            }
            this.f[i] = e;
            this.g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(j(i));
    }
}
