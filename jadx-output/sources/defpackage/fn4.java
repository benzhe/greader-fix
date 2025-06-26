package defpackage;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class fn4 implements Iterator<String> {
    public Iterator<String> e;
    public final /* synthetic */ dn4 f;

    public fn4(dn4 dn4Var) {
        this.f = dn4Var;
        this.e = dn4Var.e.iterator();
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
