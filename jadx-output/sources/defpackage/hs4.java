package defpackage;

/* loaded from: classes.dex */
public final class hs4 implements Runnable {
    public final /* synthetic */ ny4 e;
    public final /* synthetic */ is4 f;

    public hs4(is4 is4Var, ny4 ny4Var) {
        this.f = is4Var;
        this.e = ny4Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.e.o();
        if (c35.a()) {
            this.e.m().q(this);
            return;
        }
        boolean z = this.f.c != 0;
        this.f.c = 0L;
        if (z) {
            this.f.a();
        }
    }
}
