package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class e41 extends f61 {
    public final xw0 h;
    public final int i;
    public final Context j;
    public final m31 k;
    public final wh1 l;
    public boolean m;

    public e41(i61 i61Var, Context context, xw0 xw0Var, int i, m31 m31Var, wh1 wh1Var) {
        super(i61Var);
        this.m = false;
        this.h = xw0Var;
        this.j = context;
        this.i = i;
        this.k = m31Var;
        this.l = wh1Var;
    }

    @Override // defpackage.f61
    public final void a() {
        super.a();
        xw0 xw0Var = this.h;
        if (xw0Var != null) {
            xw0Var.destroy();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x005f  */
    /* JADX WARN: Type inference failed for: r6v4, types: [android.content.Context] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(android.app.Activity r6, defpackage.do3 r7, boolean r8) throws android.os.RemoteException {
        /*
            r5 = this;
            if (r6 != 0) goto L4
            android.content.Context r6 = r5.j
        L4:
            o40<java.lang.Boolean> r0 = defpackage.y40.o0
            os3 r1 = defpackage.os3.j
            u40 r1 = r1.f
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L5f
            com.google.android.gms.ads.internal.zzr.zzkv()
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzat(r6)
            if (r0 == 0) goto L5f
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            defpackage.is0.zzez(r0)
            dm2 r0 = defpackage.dm2.APP_NOT_FOREGROUND
            r3 = 0
            com.google.android.gms.internal.ads.zzvh r0 = defpackage.c50.x1(r0, r3, r3)
            r7.G(r0)
            o40<java.lang.Boolean> r0 = defpackage.y40.p0
            os3 r3 = defpackage.os3.j
            u40 r3 = r3.f
            java.lang.Object r0 = r3.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L6d
            ar2 r0 = new ar2
            android.content.Context r3 = r6.getApplicationContext()
            com.google.android.gms.ads.internal.util.zzbl r4 = com.google.android.gms.ads.internal.zzr.zzlj()
            android.os.Looper r4 = r4.zzaai()
            r0.<init>(r3, r4)
            hl2 r3 = r5.a
            fl2 r3 = r3.b
            wk2 r3 = r3.b
            java.lang.String r3 = r3.b
            r0.a(r3)
            goto L6d
        L5f:
            boolean r0 = r5.m
            if (r0 == 0) goto L68
            java.lang.String r0 = "App open interstitial ad is already visible."
            defpackage.is0.zzez(r0)
        L68:
            boolean r0 = r5.m
            if (r0 != 0) goto L6d
            r1 = 1
        L6d:
            if (r1 != 0) goto L70
            return
        L70:
            wh1 r0 = r5.l     // Catch: defpackage.vh1 -> L78
            r0.a(r8, r6)     // Catch: defpackage.vh1 -> L78
            r5.m = r2
            return
        L78:
            r6 = move-exception
            com.google.android.gms.internal.ads.zzvh r6 = defpackage.c50.l4(r6)
            r7.G(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e41.c(android.app.Activity, do3, boolean):void");
    }
}
