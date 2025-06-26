package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.Surface;
import defpackage.c50;
import defpackage.el3;
import defpackage.il3;
import defpackage.ll3;

/* loaded from: classes.dex */
public final class zzqa extends Surface {
    public static boolean g;
    public static boolean h;
    public final ll3 e;
    public boolean f;

    public zzqa(ll3 ll3Var, SurfaceTexture surfaceTexture, boolean z, il3 il3Var) {
        super(surfaceTexture);
        this.e = ll3Var;
    }

    public static zzqa a(Context context, boolean z) {
        if (el3.a < 17) {
            throw new UnsupportedOperationException("Unsupported prior to API level 17");
        }
        boolean z2 = false;
        c50.D(!z || b(context));
        ll3 ll3Var = new ll3();
        ll3Var.start();
        ll3Var.f = new Handler(ll3Var.getLooper(), ll3Var);
        synchronized (ll3Var) {
            ll3Var.f.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            while (ll3Var.j == null && ll3Var.i == null && ll3Var.h == null) {
                try {
                    ll3Var.wait();
                } catch (InterruptedException unused) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = ll3Var.i;
        if (runtimeException != null) {
            throw runtimeException;
        }
        Error error = ll3Var.h;
        if (error == null) {
            return ll3Var.j;
        }
        throw error;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized boolean b(android.content.Context r6) {
        /*
            java.lang.Class<com.google.android.gms.internal.ads.zzqa> r0 = com.google.android.gms.internal.ads.zzqa.class
            monitor-enter(r0)
            boolean r1 = com.google.android.gms.internal.ads.zzqa.h     // Catch: java.lang.Throwable -> L53
            if (r1 != 0) goto L4f
            int r1 = defpackage.el3.a     // Catch: java.lang.Throwable -> L53
            r2 = 17
            r3 = 1
            if (r1 < r2) goto L4d
            r2 = 0
            android.opengl.EGLDisplay r4 = android.opengl.EGL14.eglGetDisplay(r2)     // Catch: java.lang.Throwable -> L53
            r5 = 12373(0x3055, float:1.7338E-41)
            java.lang.String r4 = android.opengl.EGL14.eglQueryString(r4, r5)     // Catch: java.lang.Throwable -> L53
            if (r4 == 0) goto L4b
            java.lang.String r5 = "EGL_EXT_protected_content"
            boolean r4 = r4.contains(r5)     // Catch: java.lang.Throwable -> L53
            if (r4 == 0) goto L4b
            r4 = 24
            if (r1 != r4) goto L47
            java.lang.String r1 = defpackage.el3.d     // Catch: java.lang.Throwable -> L53
            java.lang.String r4 = "SM-G950"
            boolean r4 = r1.startsWith(r4)     // Catch: java.lang.Throwable -> L53
            if (r4 != 0) goto L39
            java.lang.String r4 = "SM-G955"
            boolean r1 = r1.startsWith(r4)     // Catch: java.lang.Throwable -> L53
            if (r1 == 0) goto L47
        L39:
            android.content.pm.PackageManager r6 = r6.getPackageManager()     // Catch: java.lang.Throwable -> L53
            java.lang.String r1 = "android.hardware.vr.high_performance"
            boolean r6 = r6.hasSystemFeature(r1)     // Catch: java.lang.Throwable -> L53
            if (r6 != 0) goto L47
            r6 = 1
            goto L48
        L47:
            r6 = 0
        L48:
            if (r6 != 0) goto L4b
            r2 = 1
        L4b:
            com.google.android.gms.internal.ads.zzqa.g = r2     // Catch: java.lang.Throwable -> L53
        L4d:
            com.google.android.gms.internal.ads.zzqa.h = r3     // Catch: java.lang.Throwable -> L53
        L4f:
            boolean r6 = com.google.android.gms.internal.ads.zzqa.g     // Catch: java.lang.Throwable -> L53
            monitor-exit(r0)
            return r6
        L53:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqa.b(android.content.Context):boolean");
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.e) {
            if (!this.f) {
                this.e.f.sendEmptyMessage(3);
                this.f = true;
            }
        }
    }
}
