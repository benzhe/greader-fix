package defpackage;

/* loaded from: classes.dex */
public final class dv0 {
    public final ik3 a = new ik3();
    public long b = 15000000;
    public long c = 30000000;
    public long d = 2500000;
    public long e = 5000000;
    public int f;
    public boolean g;

    public final synchronized boolean a(long j, boolean z) {
        long j2;
        j2 = z ? this.e : this.d;
        return j2 <= 0 || j >= j2;
    }

    public final void b() {
        d(false);
    }

    public final void c() {
        d(true);
    }

    public final void d(boolean z) {
        this.f = 0;
        this.g = false;
        if (z) {
            ik3 ik3Var = this.a;
            synchronized (ik3Var) {
                if (ik3Var.a) {
                    ik3Var.c(0);
                }
            }
        }
    }
}
