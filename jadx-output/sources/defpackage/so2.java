package defpackage;

/* loaded from: classes.dex */
public final class so2 implements Runnable {
    public final /* synthetic */ rn2 e;

    public so2(rn2 rn2Var) {
        this.e = rn2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.e.o) {
            if (this.e.p) {
                return;
            }
            this.e.p = true;
            try {
                rn2.e(this.e);
            } catch (Exception e) {
                this.e.j.b(2023, -1L, e);
            }
            synchronized (this.e.o) {
                this.e.p = false;
            }
        }
    }
}
