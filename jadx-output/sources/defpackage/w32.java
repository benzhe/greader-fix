package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzvq;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class w32 implements sz1<dp1, zl2, f12> {
    public final Context a;
    public final Executor b;
    public final gp1 c;

    public w32(Context context, Executor executor, gp1 gp1Var) {
        this.a = context;
        this.b = executor;
        this.c = gp1Var;
    }

    public static void c(hl2 hl2Var, sk2 sk2Var, mz1<zl2, f12> mz1Var) throws pl2 {
        try {
            zl2 zl2Var = mz1Var.b;
            zzvq zzvqVar = hl2Var.a.a.d;
            String string = sk2Var.u.toString();
            Objects.requireNonNull(zl2Var);
            try {
                zl2Var.a.V5(zzvqVar, string);
            } catch (Throwable th) {
                throw new pl2(th);
            }
        } catch (Exception e) {
            String strValueOf = String.valueOf(mz1Var.a);
            is0.zzd(strValueOf.length() != 0 ? "Fail to load ad from adapter ".concat(strValueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.sz1
    public final dp1 a(hl2 hl2Var, sk2 sk2Var, final mz1 mz1Var) throws pl2, z22 {
        fp1 fp1VarE = this.c.e(new v61(hl2Var, sk2Var, mz1Var.a), new ep1(new wh1(mz1Var) { // from class: z32
            public final mz1 a;

            {
                this.a = mz1Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.wh1
            public final void a(boolean z, Context context) throws vh1 {
                pl2 pl2Var;
                mz1 mz1Var2 = this.a;
                try {
                    ((zl2) mz1Var2.b).b(z);
                    zl2 zl2Var = (zl2) mz1Var2.b;
                    Objects.requireNonNull(zl2Var);
                    try {
                        zl2Var.a.showVideo();
                    } finally {
                    }
                } catch (pl2 e) {
                    is0.zzd("Cannot show rewarded video.", e);
                    throw new vh1(e.getCause());
                }
            }
        }));
        fp1VarE.a().F0(new e21((zl2) mz1Var.b), this.b);
        db1 db1VarB = fp1VarE.b();
        x91 x91VarC = fp1VarE.c();
        wb1 wb1VarJ = fp1VarE.j();
        cg1 cg1VarL = fp1VarE.l();
        f12 f12Var = (f12) mz1Var.c;
        a42 a42Var = new a42(wb1VarJ, x91VarC, db1VarB, cg1VarL);
        synchronized (f12Var) {
            f12Var.e = a42Var;
        }
        return fp1VarE.k();
    }

    @Override // defpackage.sz1
    public final void b(hl2 hl2Var, sk2 sk2Var, mz1<zl2, f12> mz1Var) throws pl2 {
        if (mz1Var.b.a()) {
            c(hl2Var, sk2Var, mz1Var);
            return;
        }
        y32 y32Var = new y32(this, hl2Var, sk2Var, mz1Var);
        f12 f12Var = (f12) mz1Var.c;
        synchronized (f12Var) {
            f12Var.g = y32Var;
        }
        zl2 zl2Var = mz1Var.b;
        Context context = this.a;
        zzvq zzvqVar = hl2Var.a.a.d;
        vn0 vn0Var = (vn0) mz1Var.c;
        String string = sk2Var.u.toString();
        Objects.requireNonNull(zl2Var);
        try {
            zl2Var.a.i5(new y20(context), zzvqVar, null, vn0Var, string);
        } catch (Throwable th) {
            throw new pl2(th);
        }
    }
}
