package defpackage;

import java.util.Iterator;
import java.util.ListIterator;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public abstract class vo4<E> implements ListIterator<E>, Iterator {
    @Override // java.util.ListIterator
    @Deprecated
    public final void add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    @Deprecated
    public final void set(E e) {
        throw new UnsupportedOperationException();
    }
}
