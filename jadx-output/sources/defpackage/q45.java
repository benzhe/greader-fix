package defpackage;

/* loaded from: classes.dex */
public final class q45 implements Runnable {
    public final /* synthetic */ r45 e;

    public q45(r45 r45Var) {
        this.e = r45Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.e.b) {
            y35 y35Var = this.e.c;
            if (y35Var != null) {
                y35Var.b();
            }
        }
    }
}
