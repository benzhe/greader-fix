package defpackage;

import java.util.NoSuchElementException;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public final class pt2<E> extends mu2 {
    public final int e;
    public int f;
    public final nt2<E> g;

    public pt2(nt2<E> nt2Var, int i) {
        int size = nt2Var.size();
        c50.G4(i, size);
        this.e = size;
        this.f = i;
        this.g = nt2Var;
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
