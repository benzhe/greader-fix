package defpackage;

import android.content.Context;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class d32 implements sz1<dp1, zl2, g12> {
    public final Context a;
    public final Executor b;
    public final gp1 c;

    public d32(Context context, Executor executor, gp1 gp1Var) {
        this.a = context;
        this.b = executor;
        this.c = gp1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.sz1
    public final /* synthetic */ dp1 a(hl2 hl2Var, sk2 sk2Var, final mz1 mz1Var) throws pl2, z22 {
        fp1 fp1VarE = this.c.e(new v61(hl2Var, sk2Var, mz1Var.a), new ep1(new wh1(mz1Var) { // from class: f32
            public final mz1 a;

            {
                this.a = mz1Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.wh1
            public final void a(boolean z, Context context) throws pl2, vh1 {
                mz1 mz1Var2 = this.a;
                try {
                    ((zl2) mz1Var2.b).b(z);
                    zl2 zl2Var = (zl2) mz1Var2.b;
                    Objects.requireNonNull(zl2Var);
                    try {
                        zl2Var.a.d6(new y20(context));
                    } catch (Throwable th) {
                        throw new pl2(th);
                    }
                } catch (pl2 e) {
                    throw new vh1(e.getCause());
                }
            }
        }));
        fp1VarE.a().F0(new e21((zl2) mz1Var.b), this.b);
        ((g12) mz1Var.c).X6(fp1VarE.m());
        return fp1VarE.k();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006d  */
    @Override // defpackage.sz1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(defpackage.hl2 r5, defpackage.sk2 r6, defpackage.mz1<defpackage.zl2, defpackage.g12> r7) throws defpackage.pl2 {
        /*
            r4 = this;
            cl2 r5 = r5.a     // Catch: java.lang.Exception -> L59
            ll2 r5 = r5.a     // Catch: java.lang.Exception -> L59
            xk2 r0 = r5.o     // Catch: java.lang.Exception -> L59
            int r0 = r0.a     // Catch: java.lang.Exception -> L59
            r1 = 3
            if (r0 != r1) goto L32
            AdapterT r0 = r7.b     // Catch: java.lang.Exception -> L59
            zl2 r0 = (defpackage.zl2) r0     // Catch: java.lang.Exception -> L59
            android.content.Context r1 = r4.a     // Catch: java.lang.Exception -> L59
            com.google.android.gms.internal.ads.zzvq r5 = r5.d     // Catch: java.lang.Exception -> L59
            org.json.JSONObject r6 = r6.u     // Catch: java.lang.Exception -> L59
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Exception -> L59
            ListenerT extends lb1 r2 = r7.c     // Catch: java.lang.Exception -> L59
            ng0 r2 = (defpackage.ng0) r2     // Catch: java.lang.Exception -> L59
            java.util.Objects.requireNonNull(r0)     // Catch: java.lang.Exception -> L59
            ig0 r0 = r0.a     // Catch: java.lang.Throwable -> L2b
            y20 r3 = new y20     // Catch: java.lang.Throwable -> L2b
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L2b
            r0.O6(r3, r5, r6, r2)     // Catch: java.lang.Throwable -> L2b
            return
        L2b:
            r5 = move-exception
            pl2 r6 = new pl2     // Catch: java.lang.Exception -> L59
            r6.<init>(r5)     // Catch: java.lang.Exception -> L59
            throw r6     // Catch: java.lang.Exception -> L59
        L32:
            AdapterT r0 = r7.b     // Catch: java.lang.Exception -> L59
            zl2 r0 = (defpackage.zl2) r0     // Catch: java.lang.Exception -> L59
            android.content.Context r1 = r4.a     // Catch: java.lang.Exception -> L59
            com.google.android.gms.internal.ads.zzvq r5 = r5.d     // Catch: java.lang.Exception -> L59
            org.json.JSONObject r6 = r6.u     // Catch: java.lang.Exception -> L59
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Exception -> L59
            ListenerT extends lb1 r2 = r7.c     // Catch: java.lang.Exception -> L59
            ng0 r2 = (defpackage.ng0) r2     // Catch: java.lang.Exception -> L59
            java.util.Objects.requireNonNull(r0)     // Catch: java.lang.Exception -> L59
            ig0 r0 = r0.a     // Catch: java.lang.Throwable -> L52
            y20 r3 = new y20     // Catch: java.lang.Throwable -> L52
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L52
            r0.a6(r3, r5, r6, r2)     // Catch: java.lang.Throwable -> L52
            return
        L52:
            r5 = move-exception
            pl2 r6 = new pl2     // Catch: java.lang.Exception -> L59
            r6.<init>(r5)     // Catch: java.lang.Exception -> L59
            throw r6     // Catch: java.lang.Exception -> L59
        L59:
            r5 = move-exception
            java.lang.String r6 = "Fail to load ad from adapter "
            java.lang.String r7 = r7.a
            java.lang.String r7 = java.lang.String.valueOf(r7)
            int r0 = r7.length()
            if (r0 == 0) goto L6d
            java.lang.String r6 = r6.concat(r7)
            goto L73
        L6d:
            java.lang.String r7 = new java.lang.String
            r7.<init>(r6)
            r6 = r7
        L73:
            defpackage.is0.zzd(r6, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d32.b(hl2, sk2, mz1):void");
    }
}
