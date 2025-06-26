package defpackage;

/* loaded from: classes.dex */
public final class qk2 {
    public final b20 a;
    public final Object b = new Object();
    public volatile int c = 1;
    public volatile long d = 0;

    public qk2(b20 b20Var) {
        this.a = b20Var;
    }

    public final void a() {
        long jA = this.a.a();
        synchronized (this.b) {
            if (this.c == 3) {
                if (this.d + ((Long) os3.j.f.a(y40.A3)).longValue() <= jA) {
                    this.c = 1;
                }
            }
        }
    }

    public final void b(int i, int i2) {
        a();
        long jA = this.a.a();
        synchronized (this.b) {
            if (this.c != i) {
                return;
            }
            this.c = i2;
            if (this.c == 3) {
                this.d = jA;
            }
        }
    }
}
