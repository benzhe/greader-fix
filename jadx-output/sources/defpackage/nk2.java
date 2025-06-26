package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class nk2 extends mn0 {
    public final zj2 f;
    public final ej2 g;
    public final gl2 h;
    public dp1 i;
    public boolean j = false;

    public nk2(zj2 zj2Var, ej2 ej2Var, gl2 gl2Var) {
        this.f = zj2Var;
        this.g = ej2Var;
        this.h = gl2Var;
    }

    @Override // defpackage.jn0
    public final synchronized void A6(x20 x20Var) {
        bi.f("destroy must be called on the main UI thread.");
        Context context = null;
        this.g.f.set(null);
        if (this.i != null) {
            if (x20Var != null) {
                context = (Context) y20.l0(x20Var);
            }
            this.i.c.I0(context);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0019  */
    @Override // defpackage.jn0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void I4(defpackage.x20 r3) throws android.os.RemoteException {
        /*
            r2 = this;
            monitor-enter(r2)
            java.lang.String r0 = "showAd must be called on the main UI thread."
            defpackage.bi.f(r0)     // Catch: java.lang.Throwable -> L23
            dp1 r0 = r2.i     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto Lc
            monitor-exit(r2)
            return
        Lc:
            if (r3 == 0) goto L19
            java.lang.Object r3 = defpackage.y20.l0(r3)     // Catch: java.lang.Throwable -> L23
            boolean r0 = r3 instanceof android.app.Activity     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto L19
            android.app.Activity r3 = (android.app.Activity) r3     // Catch: java.lang.Throwable -> L23
            goto L1a
        L19:
            r3 = 0
        L1a:
            dp1 r0 = r2.i     // Catch: java.lang.Throwable -> L23
            boolean r1 = r2.j     // Catch: java.lang.Throwable -> L23
            r0.c(r1, r3)     // Catch: java.lang.Throwable -> L23
            monitor-exit(r2)
            return
        L23:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nk2.I4(x20):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0033 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035 A[Catch: all -> 0x006e, TRY_ENTER, TryCatch #1 {, blocks: (B:3:0x0001, B:8:0x001a, B:11:0x0020, B:15:0x0035, B:17:0x003b, B:21:0x004f), top: B:29:0x0001, inners: #0 }] */
    @Override // defpackage.jn0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void U6(com.google.android.gms.internal.ads.zzavt r5) throws android.os.RemoteException {
        /*
            r4 = this;
            monitor-enter(r4)
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            defpackage.bi.f(r0)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r0 = r5.f     // Catch: java.lang.Throwable -> L6e
            o40<java.lang.String> r1 = defpackage.y40.b3     // Catch: java.lang.Throwable -> L6e
            os3 r2 = defpackage.os3.j     // Catch: java.lang.Throwable -> L6e
            u40 r2 = r2.f     // Catch: java.lang.Throwable -> L6e
            java.lang.Object r1 = r2.a(r1)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L6e
            r2 = 0
            if (r1 == 0) goto L31
            if (r0 != 0) goto L1a
            goto L31
        L1a:
            boolean r2 = java.util.regex.Pattern.matches(r1, r0)     // Catch: java.lang.RuntimeException -> L1f java.lang.Throwable -> L6e
            goto L31
        L1f:
            r0 = move-exception
            or0 r1 = com.google.android.gms.ads.internal.zzr.zzkz()     // Catch: java.lang.Throwable -> L6e
            android.content.Context r3 = r1.e     // Catch: java.lang.Throwable -> L6e
            com.google.android.gms.internal.ads.zzbar r1 = r1.f     // Catch: java.lang.Throwable -> L6e
            bm0 r1 = defpackage.xl0.d(r3, r1)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r3 = "NonagonUtil.isPatternMatched"
            r1.a(r0, r3)     // Catch: java.lang.Throwable -> L6e
        L31:
            if (r2 == 0) goto L35
            monitor-exit(r4)
            return
        L35:
            boolean r0 = r4.W6()     // Catch: java.lang.Throwable -> L6e
            if (r0 == 0) goto L4f
            o40<java.lang.Boolean> r0 = defpackage.y40.d3     // Catch: java.lang.Throwable -> L6e
            os3 r1 = defpackage.os3.j     // Catch: java.lang.Throwable -> L6e
            u40 r1 = r1.f     // Catch: java.lang.Throwable -> L6e
            java.lang.Object r0 = r1.a(r0)     // Catch: java.lang.Throwable -> L6e
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L6e
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L6e
            if (r0 != 0) goto L4f
            monitor-exit(r4)
            return
        L4f:
            bk2 r0 = new bk2     // Catch: java.lang.Throwable -> L6e
            r0.<init>()     // Catch: java.lang.Throwable -> L6e
            r1 = 0
            r4.i = r1     // Catch: java.lang.Throwable -> L6e
            zj2 r1 = r4.f     // Catch: java.lang.Throwable -> L6e
            r2 = 1
            nl2 r3 = r1.g     // Catch: java.lang.Throwable -> L6e
            al2 r3 = r3.p     // Catch: java.lang.Throwable -> L6e
            r3.a = r2     // Catch: java.lang.Throwable -> L6e
            com.google.android.gms.internal.ads.zzvq r2 = r5.e     // Catch: java.lang.Throwable -> L6e
            java.lang.String r5 = r5.f     // Catch: java.lang.Throwable -> L6e
            pk2 r3 = new pk2     // Catch: java.lang.Throwable -> L6e
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L6e
            r1.a(r2, r5, r0, r3)     // Catch: java.lang.Throwable -> L6e
            monitor-exit(r4)
            return
        L6e:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nk2.U6(com.google.android.gms.internal.ads.zzavt):void");
    }

    @Override // defpackage.jn0
    public final void W4(hn0 hn0Var) {
        bi.f("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.g.k.set(hn0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean W6() {
        /*
            r1 = this;
            monitor-enter(r1)
            dp1 r0 = r1.i     // Catch: java.lang.Throwable -> L14
            if (r0 == 0) goto L12
            c71 r0 = r0.n     // Catch: java.lang.Throwable -> L14
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.f     // Catch: java.lang.Throwable -> L14
            boolean r0 = r0.get()     // Catch: java.lang.Throwable -> L14
            if (r0 != 0) goto L12
            r0 = 1
        L10:
            monitor-exit(r1)
            return r0
        L12:
            r0 = 0
            goto L10
        L14:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nk2.W6():boolean");
    }

    @Override // defpackage.jn0
    public final synchronized void Y4(x20 x20Var) {
        bi.f("pause must be called on the main UI thread.");
        if (this.i != null) {
            this.i.c.G0(x20Var == null ? null : (Context) y20.l0(x20Var));
        }
    }

    @Override // defpackage.jn0
    public final void a5(String str) throws RemoteException {
    }

    @Override // defpackage.jn0
    public final void destroy() throws RemoteException {
        A6(null);
    }

    @Override // defpackage.jn0
    public final boolean g1() {
        dp1 dp1Var = this.i;
        if (dp1Var != null) {
            xw0 xw0Var = dp1Var.i.get();
            if ((xw0Var == null || xw0Var.q()) ? false : true) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.jn0
    public final Bundle getAdMetadata() {
        Bundle bundle;
        bi.f("getAdMetadata can only be called from the UI thread.");
        dp1 dp1Var = this.i;
        if (dp1Var == null) {
            return new Bundle();
        }
        rb1 rb1Var = dp1Var.m;
        synchronized (rb1Var) {
            bundle = new Bundle(rb1Var.f);
        }
        return bundle;
    }

    @Override // defpackage.jn0
    public final synchronized String getMediationAdapterClassName() throws RemoteException {
        t91 t91Var;
        dp1 dp1Var = this.i;
        if (dp1Var == null || (t91Var = dp1Var.f) == null) {
            return null;
        }
        return t91Var.e;
    }

    @Override // defpackage.jn0
    public final boolean isLoaded() throws RemoteException {
        bi.f("isLoaded must be called on the main UI thread.");
        return W6();
    }

    @Override // defpackage.jn0
    public final synchronized void k4(x20 x20Var) {
        bi.f("resume must be called on the main UI thread.");
        if (this.i != null) {
            this.i.c.H0(x20Var == null ? null : (Context) y20.l0(x20Var));
        }
    }

    @Override // defpackage.jn0
    public final void pause() {
        Y4(null);
    }

    @Override // defpackage.jn0
    public final void resume() {
        k4(null);
    }

    @Override // defpackage.jn0
    public final synchronized void setCustomData(String str) throws RemoteException {
        if (((Boolean) os3.j.f.a(y40.A0)).booleanValue()) {
            bi.f("#008 Must be called on the main UI thread.: setCustomData");
            this.h.b = str;
        }
    }

    @Override // defpackage.jn0
    public final synchronized void setImmersiveMode(boolean z) {
        bi.f("setImmersiveMode must be called on the main UI thread.");
        this.j = z;
    }

    @Override // defpackage.jn0
    public final synchronized void setUserId(String str) throws RemoteException {
        bi.f("setUserId must be called on the main UI thread.");
        this.h.a = str;
    }

    @Override // defpackage.jn0
    public final synchronized void show() throws RemoteException {
        I4(null);
    }

    @Override // defpackage.jn0
    public final void zza(pn0 pn0Var) throws RemoteException {
        bi.f("setRewardedVideoAdListener can only be called from the UI thread.");
        this.g.i.set(pn0Var);
    }

    @Override // defpackage.jn0
    public final synchronized ru3 zzkm() throws RemoteException {
        if (!((Boolean) os3.j.f.a(y40.m4)).booleanValue()) {
            return null;
        }
        dp1 dp1Var = this.i;
        if (dp1Var == null) {
            return null;
        }
        return dp1Var.f;
    }

    @Override // defpackage.jn0
    public final void zza(lt3 lt3Var) {
        bi.f("setAdMetadataListener can only be called from the UI thread.");
        if (lt3Var == null) {
            this.g.f.set(null);
            return;
        }
        ej2 ej2Var = this.g;
        ej2Var.f.set(new ok2(this, lt3Var));
    }
}
