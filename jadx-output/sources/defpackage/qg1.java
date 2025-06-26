package defpackage;

import android.content.Context;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class qg1 extends f61 {
    public final Context h;
    public final WeakReference<xw0> i;
    public final gf1 j;
    public final wh1 k;
    public final c71 l;
    public final ar2 m;
    public final ga1 n;
    public boolean o;

    public qg1(i61 i61Var, Context context, xw0 xw0Var, gf1 gf1Var, wh1 wh1Var, c71 c71Var, ar2 ar2Var, ga1 ga1Var) {
        super(i61Var);
        this.o = false;
        this.h = context;
        this.i = new WeakReference<>(xw0Var);
        this.j = gf1Var;
        this.k = wh1Var;
        this.l = c71Var;
        this.m = ar2Var;
        this.n = ga1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004b  */
    /* JADX WARN: Type inference failed for: r6v4, types: [android.content.Context] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(boolean r5, android.app.Activity r6) {
        /*
            r4 = this;
            o40<java.lang.Boolean> r0 = defpackage.y40.o0
            os3 r1 = defpackage.os3.j
            u40 r1 = r1.f
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L4b
            com.google.android.gms.ads.internal.zzr.zzkv()
            android.content.Context r0 = r4.h
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzat(r0)
            if (r0 == 0) goto L4b
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            defpackage.is0.zzez(r0)
            ga1 r0 = r4.n
            zd1 r3 = defpackage.la1.a
            r0.D0(r3)
            o40<java.lang.Boolean> r0 = defpackage.y40.p0
            os3 r3 = defpackage.os3.j
            u40 r3 = r3.f
            java.lang.Object r0 = r3.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L51
            ar2 r0 = r4.m
            hl2 r3 = r4.a
            fl2 r3 = r3.b
            wk2 r3 = r3.b
            java.lang.String r3 = r3.b
            r0.a(r3)
            goto L51
        L4b:
            boolean r0 = r4.o
            if (r0 != 0) goto L51
            r0 = 1
            goto L52
        L51:
            r0 = 0
        L52:
            if (r0 != 0) goto L55
            return r1
        L55:
            gf1 r0 = r4.j
            zd1 r3 = defpackage.ff1.a
            r0.D0(r3)
            if (r6 != 0) goto L60
            android.content.Context r6 = r4.h
        L60:
            wh1 r0 = r4.k     // Catch: defpackage.vh1 -> L6f
            r0.a(r5, r6)     // Catch: defpackage.vh1 -> L6f
            gf1 r5 = r4.j     // Catch: defpackage.vh1 -> L6f
            zd1 r6 = defpackage.if1.a     // Catch: defpackage.vh1 -> L6f
            r5.D0(r6)     // Catch: defpackage.vh1 -> L6f
            r4.o = r2
            return r2
        L6f:
            r5 = move-exception
            ga1 r6 = r4.n
            ia1 r0 = new ia1
            r0.<init>(r5)
            r6.D0(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qg1.c(boolean, android.app.Activity):boolean");
    }

    public final void finalize() throws Throwable {
        try {
            final xw0 xw0Var = this.i.get();
            if (((Boolean) os3.j.f.a(y40.k4)).booleanValue()) {
                if (!this.o && xw0Var != null) {
                    ms0.e.execute(new Runnable(xw0Var) { // from class: pg1
                        public final xw0 e;

                        {
                            this.e = xw0Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.e.destroy();
                        }
                    });
                }
            } else if (xw0Var != null) {
                xw0Var.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}
