package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [E] */
/* loaded from: classes.dex */
public final class wa3<E> implements Iterator<E> {
    public int e = 0;
    public final /* synthetic */ ta3 f;

    public wa3(ta3 ta3Var) {
        this.f = ta3Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e < this.f.e.size() || this.f.f.hasNext();
    }

    @Override // java.util.Iterator
    public final E next() {
        while (this.e >= this.f.e.size()) {
            ta3 ta3Var = this.f;
            ta3Var.e.add(ta3Var.f.next());
        }
        List<E> list = this.f.e;
        int i = this.e;
        this.e = i + 1;
        return list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
