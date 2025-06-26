package defpackage;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class j53 extends l53 {
    public int e = 0;
    public final int f;
    public final /* synthetic */ k53 g;

    public j53(k53 k53Var) {
        this.g = k53Var;
        this.f = k53Var.size();
    }

    @Override // defpackage.o53
    public final byte b() {
        int i = this.e;
        if (i >= this.f) {
            throw new NoSuchElementException();
        }
        this.e = i + 1;
        return this.g.G(i);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e < this.f;
    }
}
