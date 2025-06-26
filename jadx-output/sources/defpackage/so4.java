package defpackage;

import java.util.NoSuchElementException;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public final class so4<E> extends vo4 {
    public final int e;
    public int f;
    public final po4<E> g;

    public so4(po4<E> po4Var, int i) {
        int size = po4Var.size();
        if (i < 0 || i > size) {
            throw new IndexOutOfBoundsException(c50.H1(i, size, "index"));
        }
        this.e = size;
        this.f = i;
        this.g = po4Var;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f < this.e;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f;
        this.f = i + 1;
        return this.g.get(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f - 1;
        this.f = i;
        return this.g.get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f - 1;
    }
}
