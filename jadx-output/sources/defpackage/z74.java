package defpackage;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class z74 extends a84 {
    public int e = 0;
    public final int f;
    public final /* synthetic */ g84 g;

    public z74(g84 g84Var) {
        this.g = g84Var;
        this.f = g84Var.j();
    }

    @Override // defpackage.a84
    public final byte a() {
        int i = this.e;
        if (i >= this.f) {
            throw new NoSuchElementException();
        }
        this.e = i + 1;
        return this.g.h(i);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e < this.f;
    }
}
