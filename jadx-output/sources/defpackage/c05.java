package defpackage;

/* loaded from: classes.dex */
public final class c05 implements Runnable {
    public final /* synthetic */ a05 e;
    public final /* synthetic */ a05 f;
    public final /* synthetic */ long g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ h05 i;

    public c05(h05 h05Var, a05 a05Var, a05 a05Var2, long j, boolean z) {
        this.i = h05Var;
        this.e = a05Var;
        this.f = a05Var2;
        this.g = j;
        this.h = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.i.k(this.e, this.f, this.g, this.h, null);
    }
}
