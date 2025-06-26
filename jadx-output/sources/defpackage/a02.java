package defpackage;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzvt;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class a02 implements jz1<v31> {
    public final o31 a;
    public final Context b;
    public final mp1 c;
    public final Executor d;

    public a02(o31 o31Var, Context context, Executor executor, mp1 mp1Var) {
        this.b = context;
        this.a = o31Var;
        this.d = executor;
        this.c = mp1Var;
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        zk2 zk2Var = sk2Var.r;
        return (zk2Var == null || zk2Var.a == null) ? false : true;
    }

    @Override // defpackage.jz1
    public final aw2<v31> b(final hl2 hl2Var, final sk2 sk2Var) {
        return vt2.m(vt2.j(null), new cv2(this, hl2Var, sk2Var) { // from class: zz1
            public final a02 a;
            public final hl2 b;
            public final sk2 c;

            {
                this.a = this;
                this.b = hl2Var;
                this.c = sk2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) throws ix0 {
                a02 a02Var = this.a;
                hl2 hl2Var2 = this.b;
                sk2 sk2Var2 = this.c;
                zzvt zzvtVarV2 = c50.V2(a02Var.b, sk2Var2.t);
                xw0 xw0VarA = a02Var.c.a(zzvtVarV2, sk2Var2, hl2Var2.b.b);
                f31 f31VarE = a02Var.a.e(new v61(hl2Var2, sk2Var2, null), new j31(xw0VarA.getView(), xw0VarA, c50.k4(zzvtVarV2), sk2Var2.U, sk2Var2.Y, sk2Var2.J));
                ((b01) f31VarE).F0.get().b(xw0VarA, false, null);
                qa1 qa1VarD = f31VarE.d();
                va1 va1Var = new va1(xw0VarA) { // from class: c02
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
                ((b01) f31VarE).F0.get();
                zk2 zk2Var = sk2Var2.r;
                return vt2.l(op1.a(xw0VarA, zk2Var.b, zk2Var.a), new vs2(f31VarE) { // from class: b02
                    public final f31 a;

                    {
                        this.a = f31VarE;
                    }

                    @Override // defpackage.vs2
                    public final Object apply(Object obj2) {
                        b01 b01Var = (b01) this.a;
                        i61 i61Var = new i61(z61.a(b01Var.b), y61.a(b01Var.b), b01Var.q.get(), b01Var.f0.get(), b01Var.G0.h.m, new t91(y61.a(b01Var.b), x61.a(b01Var.b), b01Var.G0.S0.get()), b01Var.r.get());
                        View view = b01Var.c.a;
                        Objects.requireNonNull(view, "Cannot return null from a non-@Nullable @Provides method");
                        j31 j31Var = b01Var.c;
                        xw0 xw0Var = j31Var.b;
                        uk2 uk2Var = j31Var.c;
                        Objects.requireNonNull(uk2Var, "Cannot return null from a non-@Nullable @Provides method");
                        j31 j31Var2 = b01Var.c;
                        return new v31(i61Var, view, xw0Var, uk2Var, j31Var2.d, j31Var2.e, j31Var2.f, new m31(b01Var.G0.Z1.M.get(), z61.a(b01Var.b), b01Var.G0.Z1.n.get()));
                    }
                }, zv2Var);
            }
        }, this.d);
    }
}
