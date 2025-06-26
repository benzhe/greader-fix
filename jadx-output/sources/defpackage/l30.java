package defpackage;

/* loaded from: classes.dex */
public final class l30 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ long f;
    public final /* synthetic */ j40 g;

    public l30(j40 j40Var, String str, long j) {
        this.g = j40Var;
        this.e = str;
        this.f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.g.e.a(this.e, this.f);
        j40 j40Var = this.g;
        j40Var.e.b(j40Var.toString());
    }
}
