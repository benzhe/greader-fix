package defpackage;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class s93 implements Iterator<String> {
    public Iterator<String> e;
    public final /* synthetic */ q93 f;

    public s93(q93 q93Var) {
        this.f = q93Var;
        this.e = q93Var.e.iterator();
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
