package defpackage;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class s83 extends l53 {
    public final u83 e;
    public o53 f = a();
    public final /* synthetic */ t83 g;

    public s83(t83 t83Var) {
        this.g = t83Var;
        this.e = new u83(t83Var, null);
    }

    public final o53 a() {
        if (this.e.hasNext()) {
            return (o53) ((q53) this.e.next()).iterator();
        }
        return null;
    }

    @Override // defpackage.o53
    public final byte b() {
        o53 o53Var = this.f;
        if (o53Var == null) {
            throw new NoSuchElementException();
        }
        byte b = o53Var.b();
        if (!this.f.hasNext()) {
            this.f = a();
        }
        return b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f != null;
    }
}
