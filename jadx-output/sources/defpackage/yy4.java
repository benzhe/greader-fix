package defpackage;

/* loaded from: classes.dex */
public final class yy4 implements Runnable {
    public final /* synthetic */ long e;
    public final /* synthetic */ sz4 f;

    public yy4(sz4 sz4Var, long j) {
        this.f = sz4Var;
        this.e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.a.q().p.b(this.e);
        this.f.a.a().m.b("Session timeout duration set", Long.valueOf(this.e));
    }
}
