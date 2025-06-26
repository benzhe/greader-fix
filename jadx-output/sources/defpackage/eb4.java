package defpackage;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class eb4 implements Iterator<String> {
    public final Iterator<String> e;
    public final /* synthetic */ fb4 f;

    public eb4(fb4 fb4Var) {
        this.f = fb4Var;
        this.e = fb4Var.e.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.e.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
