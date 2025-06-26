package defpackage;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class ut2<F, T> extends AbstractList<T> implements Serializable, RandomAccess {
    public final List<F> e;
    public final vs2<? super F, ? extends T> f;

    public ut2(List<F> list, vs2<? super F, ? extends T> vs2Var) {
        Objects.requireNonNull(list);
        this.e = list;
        Objects.requireNonNull(vs2Var);
        this.f = vs2Var;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.e.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        return this.f.apply(this.e.get(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.e.isEmpty();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<T> iterator() {
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator(int i) {
        return new xt2(this, this.e.listIterator(i));
    }

    @Override // java.util.AbstractList, java.util.List
    public final T remove(int i) {
        return this.f.apply(this.e.remove(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e.size();
    }
}
