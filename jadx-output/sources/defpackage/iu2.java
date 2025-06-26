package defpackage;

import java.util.Iterator;
import java.util.ListIterator;
import java.util.Objects;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public abstract class iu2<F, T> implements ListIterator<T>, Iterator {
    public final Iterator<? extends F> e;

    public iu2(ListIterator<? extends F> listIterator) {
        Objects.requireNonNull(listIterator);
        this.e = listIterator;
    }

    public abstract T a(F f);

    @Override // java.util.ListIterator
    public void add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.e.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return ((ListIterator) this.e).hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        return a(this.e.next());
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return ((ListIterator) this.e).nextIndex();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ListIterator
    public final T previous() {
        return (T) a(((ListIterator) this.e).previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return ((ListIterator) this.e).previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        this.e.remove();
    }

    @Override // java.util.ListIterator
    public void set(T t) {
        throw new UnsupportedOperationException();
    }
}
