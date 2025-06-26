package defpackage;

/* loaded from: classes.dex */
public class ok implements Runnable {
    public final /* synthetic */ wm e;
    public final /* synthetic */ qk f;

    public ok(qk qkVar, wm wmVar) {
        this.f = qkVar;
        this.e = wmVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            vj.c().a(qk.w, String.format("Starting work for %s", this.f.i.c), new Throwable[0]);
            qk qkVar = this.f;
            qkVar.u = qkVar.j.startWork();
            this.e.l(this.f.u);
        } catch (Throwable th) {
            this.e.k(th);
        }
    }
}
