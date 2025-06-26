package defpackage;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class wt2<F, T> extends AbstractSequentialList<T> implements Serializable {
    public final List<F> e;
    public final vs2<? super F, ? extends T> f;

    public wt2(List<F> list, vs2<? super F, ? extends T> vs2Var) {
        Objects.requireNonNull(list);
        this.e = list;
        Objects.requireNonNull(vs2Var);
        this.f = vs2Var;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.e.clear();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator(int i) {
        return new yt2(this, this.e.listIterator(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e.size();
    }
}
