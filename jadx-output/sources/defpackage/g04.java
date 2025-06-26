package defpackage;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class g04 implements Iterator<String> {
    public Iterator<String> e;
    public final /* synthetic */ e04 f;

    public g04(e04 e04Var) {
        this.f = e04Var;
        this.e = e04Var.e.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.e.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
