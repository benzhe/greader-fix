package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class uj4 implements Iterator {
    public int e = 0;
    public final int f;
    public final /* synthetic */ vj4 g;

    public uj4(vj4 vj4Var) {
        this.g = vj4Var;
        this.f = vj4Var.h();
    }

    public final byte a() {
        int i = this.e;
        if (i >= this.f) {
            throw new NoSuchElementException();
        }
        this.e = i + 1;
        return this.g.p(i);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e < this.f;
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return Byte.valueOf(a());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
