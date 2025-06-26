package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzvq;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class p12 implements sz1<qg1, zl2, g12> {
    public final Context a;
    public final oh1 b;
    public final zzbar c;
    public final Executor d;

    public p12(Context context, zzbar zzbarVar, oh1 oh1Var, Executor executor) {
        this.a = context;
        this.c = zzbarVar;
        this.b = oh1Var;
        this.d = executor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.sz1
    public final /* synthetic */ qg1 a(hl2 hl2Var, sk2 sk2Var, final mz1 mz1Var) throws pl2, z22 {
        sg1 sg1VarA = this.b.a(new v61(hl2Var, sk2Var, mz1Var.a), new rg1(new wh1(this, mz1Var) { // from class: s12
            public final p12 a;
            public final mz1 b;

            {
                this.a = this;
                this.b = mz1Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.wh1
            public final void a(boolean z, Context context) throws vh1 {
                pl2 pl2Var;
                p12 p12Var = this.a;
                mz1 mz1Var2 = this.b;
                Objects.requireNonNull(p12Var);
                try {
                    ((zl2) mz1Var2.b).b(z);
                    if (p12Var.c.g < ((Integer) os3.j.f.a(y40.r0)).intValue()) {
                        zl2 zl2Var = (zl2) mz1Var2.b;
                        Objects.requireNonNull(zl2Var);
                        try {
                            zl2Var.a.showInterstitial();
                            return;
                        } finally {
                        }
                    }
                    zl2 zl2Var2 = (zl2) mz1Var2.b;
                    Objects.requireNonNull(zl2Var2);
                    try {
                        zl2Var2.a.u5(new y20(context));
                        return;
                    } finally {
                    }
                } catch (pl2 e) {
                    is0.zzey("Cannot show interstitial.");
                    throw new vh1(e.getCause());
                }
                is0.zzey("Cannot show interstitial.");
                throw new vh1(e.getCause());
            }
        }));
        sg1VarA.a().F0(new e21((zl2) mz1Var.b), this.d);
        ((g12) mz1Var.c).X6(sg1VarA.f());
        return sg1VarA.j();
    }

    @Override // defpackage.sz1
    public final void b(hl2 hl2Var, sk2 sk2Var, mz1<zl2, g12> mz1Var) throws pl2, IOException {
        zl2 zl2Var = mz1Var.b;
        Context context = this.a;
        zzvq zzvqVar = hl2Var.a.a.d;
        String string = sk2Var.u.toString();
        String strZza = zzbh.zza(sk2Var.r);
        ng0 ng0Var = (ng0) mz1Var.c;
        Objects.requireNonNull(zl2Var);
        try {
            zl2Var.a.Q5(new y20(context), zzvqVar, string, strZza, ng0Var);
        } catch (Throwable th) {
            throw new pl2(th);
        }
    }
}
