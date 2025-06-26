package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzbos;
import com.google.android.gms.internal.ads.zzcjr;
import com.google.android.gms.internal.ads.zzvt;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class d02 implements jz1<j41> {
    public final g51 a;
    public final Context b;
    public final mp1 c;
    public final ll2 d;
    public final Executor e;
    public final vs2<sk2, zzad> f;

    public d02(g51 g51Var, Context context, Executor executor, mp1 mp1Var, ll2 ll2Var, vs2<sk2, zzad> vs2Var) {
        this.b = context;
        this.a = g51Var;
        this.e = executor;
        this.c = mp1Var;
        this.d = ll2Var;
        this.f = vs2Var;
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        zk2 zk2Var = sk2Var.r;
        return (zk2Var == null || zk2Var.a == null) ? false : true;
    }

    @Override // defpackage.jz1
    public final aw2<j41> b(final hl2 hl2Var, final sk2 sk2Var) {
        return vt2.m(vt2.j(null), new cv2(this, hl2Var, sk2Var) { // from class: g02
            public final d02 a;
            public final hl2 b;
            public final sk2 c;

            {
                this.a = this;
                this.b = hl2Var;
                this.c = sk2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) throws ix0 {
                final d02 d02Var = this.a;
                hl2 hl2Var2 = this.b;
                sk2 sk2Var2 = this.c;
                zzvt zzvtVarV2 = c50.V2(d02Var.b, sk2Var2.t);
                final xw0 xw0VarA = d02Var.c.a(zzvtVarV2, sk2Var2, hl2Var2.b.b);
                xw0VarA.g0(sk2Var2.Q);
                final m41 m41VarB = d02Var.a.b(new v61(hl2Var2, sk2Var2, null), new q41((((Boolean) os3.j.f.a(y40.y4)).booleanValue() && sk2Var2.b0) ? zzbos.a(d02Var.b, xw0VarA.getView(), sk2Var2) : new zzcjr(d02Var.b, xw0VarA.getView(), d02Var.f.apply(sk2Var2)), xw0VarA, new g61(xw0VarA) { // from class: f02
                    public final xw0 a;

                    {
                        this.a = xw0VarA;
                    }

                    @Override // defpackage.g61
                    public final su3 getVideoController() {
                        return this.a.f();
                    }
                }, c50.k4(zzvtVarV2)));
                ((e01) m41VarB).Z0.get().b(xw0VarA, false, null);
                qa1 qa1VarD = m41VarB.d();
                va1 va1Var = new va1(xw0VarA) { // from class: i02
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
                };
                zv2 zv2Var = ms0.f;
                qa1VarD.F0(va1Var, zv2Var);
                ((e01) m41VarB).Z0.get();
                zk2 zk2Var = sk2Var2.r;
                aw2<?> aw2VarA = op1.a(xw0VarA, zk2Var.b, zk2Var.a);
                if (sk2Var2.H) {
                    ((xs0) aw2VarA).e.i(new Runnable(xw0VarA) { // from class: h02
                        public final xw0 e;

                        {
                            this.e = xw0VarA;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.e.p0();
                        }
                    }, d02Var.e);
                }
                ((xs0) aw2VarA).e.i(new Runnable(d02Var, xw0VarA) { // from class: k02
                    public final d02 e;
                    public final xw0 f;

                    {
                        this.e = d02Var;
                        this.f = xw0VarA;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        d02 d02Var2 = this.e;
                        xw0 xw0Var = this.f;
                        Objects.requireNonNull(d02Var2);
                        xw0Var.u();
                        rx0 rx0VarF = xw0Var.f();
                        zzaaz zzaazVar = d02Var2.d.b;
                        if (zzaazVar == null || rx0VarF == null) {
                            return;
                        }
                        rx0VarF.Z6(zzaazVar);
                    }
                }, d02Var.e);
                return vt2.l(aw2VarA, new vs2(m41VarB) { // from class: j02
                    public final m41 a;

                    {
                        this.a = m41VarB;
                    }

                    @Override // defpackage.vs2
                    public final Object apply(Object obj2) {
                        return this.a.h();
                    }
                }, zv2Var);
            }
        }, this.e);
    }
}
