package defpackage;

import java.util.AbstractList;
import java.util.List;

/* loaded from: classes.dex */
public final class a73<F, T> extends AbstractList<T> {
    public final List<F> e;
    public final z63<F, T> f;

    public a73(List<F> list, z63<F, T> z63Var) {
        this.e = list;
        this.f = z63Var;
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        return (T) this.f.convert(this.e.get(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e.size();
    }
}
