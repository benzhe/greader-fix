package defpackage;

import defpackage.wd5;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public abstract class ud5<E> extends ce5 implements ListIterator {
    public final int e;
    public int f;

    public ud5(int i, int i2) {
        if (i2 < 0 || i2 > i) {
            throw new IndexOutOfBoundsException(c50.f(i2, i, "index"));
        }
        this.e = i;
        this.f = i2;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f < this.e;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f;
        this.f = i + 1;
        return ((wd5.a) this).g.get(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f - 1;
        this.f = i;
        return ((wd5.a) this).g.get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
