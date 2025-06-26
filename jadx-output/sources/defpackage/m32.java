package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class m32 implements jz1<dp1> {
    public final Context a;
    public final mp1 b;
    public final gp1 c;
    public final ll2 d;
    public final Executor e;
    public final zzbar f;
    public final ob0 g;
    public final boolean h = ((Boolean) os3.j.f.a(y40.k5)).booleanValue();

    public m32(Context context, zzbar zzbarVar, ll2 ll2Var, Executor executor, gp1 gp1Var, mp1 mp1Var, ob0 ob0Var) {
        this.a = context;
        this.d = ll2Var;
        this.c = gp1Var;
        this.e = executor;
        this.f = zzbarVar;
        this.b = mp1Var;
        this.g = ob0Var;
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        zk2 zk2Var = sk2Var.r;
        return (zk2Var == null || zk2Var.a == null) ? false : true;
    }

    @Override // defpackage.jz1
    public final aw2<dp1> b(final hl2 hl2Var, final sk2 sk2Var) {
        final cq1 cq1Var = new cq1();
        aw2<dp1> aw2VarM = vt2.m(vt2.j(null), new cv2(this, sk2Var, hl2Var, cq1Var) { // from class: p32
            public final m32 a;
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
                final m32 m32Var = this.a;
                final sk2 sk2Var2 = this.b;
                hl2 hl2Var2 = this.c;
                cq1 cq1Var2 = this.d;
                final xw0 xw0VarA = m32Var.b.a(m32Var.d.e, sk2Var2, hl2Var2.b.b);
                xw0VarA.g0(sk2Var2.Q);
                xw0VarA.getView();
                Objects.requireNonNull(cq1Var2);
                xs0 xs0Var = new xs0();
                final fp1 fp1VarE = m32Var.c.e(new v61(hl2Var2, sk2Var2, null), new ep1(new s32(m32Var.a, m32Var.b, m32Var.d, m32Var.f, sk2Var2, xs0Var, xw0VarA, m32Var.g, m32Var.h, null), xw0VarA));
                xs0Var.a(fp1VarE);
                xw0VarA.o("/reward", new ac0(fp1VarE.l()));
                fp1VarE.d().F0(new va1(xw0VarA) { // from class: r32
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
                fp1VarE.h().b(xw0VarA, true, m32Var.h ? m32Var.g : null);
                fp1VarE.h();
                zk2 zk2Var = sk2Var2.r;
                return vt2.l(op1.a(xw0VarA, zk2Var.b, zk2Var.a), new vs2(m32Var, xw0VarA, sk2Var2, fp1VarE) { // from class: q32
                    public final xw0 a;
                    public final sk2 b;
                    public final fp1 c;

                    {
                        this.a = xw0VarA;
                        this.b = sk2Var2;
                        this.c = fp1VarE;
                    }

                    @Override // defpackage.vs2
                    public final Object apply(Object obj2) {
                        xw0 xw0Var = this.a;
                        sk2 sk2Var3 = this.b;
                        fp1 fp1Var = this.c;
                        if (sk2Var3.H) {
                            xw0Var.p0();
                        }
                        xw0Var.u();
                        if (((Boolean) os3.j.f.a(y40.t0)).booleanValue()) {
                            xw0Var.onPause();
                        }
                        return fp1Var.k();
                    }
                }, m32Var.e);
            }
        }, this.e);
        ((su2) aw2VarM).i(new Runnable(cq1Var) { // from class: o32
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
