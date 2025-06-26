package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class rz1 implements jz1<e41> {
    public final y31 a;
    public final Context b;
    public final mp1 c;
    public final ll2 d;
    public final Executor e;
    public final zzbar f;
    public final ob0 g;
    public final boolean h = ((Boolean) os3.j.f.a(y40.k5)).booleanValue();

    public rz1(y31 y31Var, Context context, Executor executor, mp1 mp1Var, ll2 ll2Var, zzbar zzbarVar, ob0 ob0Var) {
        this.b = context;
        this.a = y31Var;
        this.e = executor;
        this.c = mp1Var;
        this.d = ll2Var;
        this.f = zzbarVar;
        this.g = ob0Var;
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        zk2 zk2Var = sk2Var.r;
        return (zk2Var == null || zk2Var.a == null) ? false : true;
    }

    @Override // defpackage.jz1
    public final aw2<e41> b(final hl2 hl2Var, final sk2 sk2Var) {
        final cq1 cq1Var = new cq1();
        aw2<e41> aw2VarM = vt2.m(vt2.j(null), new cv2(this, sk2Var, hl2Var, cq1Var) { // from class: uz1
            public final rz1 a;
            public final sk2 b;
            public final hl2 c;
            public final cq1 d;

            {
                this.a = this;
                this.b = sk2Var;
                this.c = hl2Var;
                this.d = cq1Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) throws ix0 {
                final rz1 rz1Var = this.a;
                final sk2 sk2Var2 = this.b;
                hl2 hl2Var2 = this.c;
                cq1 cq1Var2 = this.d;
                final xw0 xw0VarA = rz1Var.c.a(rz1Var.d.e, sk2Var2, hl2Var2.b.b);
                xw0VarA.g0(sk2Var2.Q);
                xw0VarA.getView();
                Objects.requireNonNull(cq1Var2);
                xs0 xs0Var = new xs0();
                final x31 x31VarE = rz1Var.a.e(new v61(hl2Var2, sk2Var2, null), new rg1(new xz1(rz1Var.f, xs0Var, sk2Var2, xw0VarA, rz1Var.d, rz1Var.h, rz1Var.g), xw0VarA), new w31(sk2Var2.U));
                x31VarE.i().b(xw0VarA, false, rz1Var.h ? rz1Var.g : null);
                xs0Var.a(x31VarE);
                x31VarE.d().F0(new va1(xw0VarA) { // from class: wz1
                    public final xw0 e;

                    {
                        this.e = xw0VarA;
                    }

                    @Override // defpackage.va1
                    public final void onAdImpression() {
                        xw0 xw0Var = this.e;
                        if (xw0Var.I() != null) {
                            ((ww0) xw0Var.I()).O();
                        }
                    }
                }, ms0.f);
                x31VarE.i();
                zk2 zk2Var = sk2Var2.r;
                return vt2.l(op1.a(xw0VarA, zk2Var.b, zk2Var.a), new vs2(rz1Var, xw0VarA, sk2Var2, x31VarE) { // from class: vz1
                    public final xw0 a;
                    public final sk2 b;
                    public final x31 c;

                    {
                        this.a = xw0VarA;
                        this.b = sk2Var2;
                        this.c = x31VarE;
                    }

                    @Override // defpackage.vs2
                    public final Object apply(Object obj2) {
                        xw0 xw0Var = this.a;
                        sk2 sk2Var3 = this.b;
                        x31 x31Var = this.c;
                        if (sk2Var3.H) {
                            xw0Var.p0();
                        }
                        xw0Var.u();
                        if (((Boolean) os3.j.f.a(y40.t0)).booleanValue()) {
                            xw0Var.onPause();
                        }
                        return x31Var.h();
                    }
                }, rz1Var.e);
            }
        }, this.e);
        ((su2) aw2VarM).i(new Runnable(cq1Var) { // from class: tz1
            public final cq1 e;

            {
                this.e = cq1Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.e.a();
            }
        }, this.e);
        return aw2VarM;
    }
}
