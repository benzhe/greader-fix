package defpackage;

import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class ey1 implements fp2 {
    public final dy1 e;

    public ey1(dy1 dy1Var) {
        this.e = dy1Var;
    }

    @Override // defpackage.fp2
    public final void A(ap2 ap2Var, String str) {
        if (((Boolean) os3.j.f.a(y40.M3)).booleanValue() && ap2.RENDERER == ap2Var) {
            dy1 dy1Var = this.e;
            long jB = zzr.zzlc().b();
            synchronized (dy1Var) {
                synchronized (dy1Var.g) {
                    dy1Var.c = jB;
                }
            }
        }
    }

    @Override // defpackage.fp2
    public final void C(ap2 ap2Var, String str) {
        if (((Boolean) os3.j.f.a(y40.M3)).booleanValue() && ap2.RENDERER == ap2Var && this.e.a() != 0) {
            this.e.b(zzr.zzlc().b() - this.e.a());
        }
    }

    @Override // defpackage.fp2
    public final void d(ap2 ap2Var, String str, Throwable th) {
        if (((Boolean) os3.j.f.a(y40.M3)).booleanValue() && ap2.RENDERER == ap2Var && this.e.a() != 0) {
            this.e.b(zzr.zzlc().b() - this.e.a());
        }
    }

    @Override // defpackage.fp2
    public final void z(ap2 ap2Var, String str) {
    }
}
