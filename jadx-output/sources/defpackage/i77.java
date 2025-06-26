package defpackage;

/* loaded from: classes2.dex */
public class i77 implements Runnable {
    public final /* synthetic */ d67 e;
    public final /* synthetic */ boolean f;
    public final /* synthetic */ d77 g;

    public i77(d77 d77Var, d67 d67Var, boolean z) {
        this.g = d77Var;
        this.e = d67Var;
        this.f = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.g.r.c(this.e, this.f);
    }
}
