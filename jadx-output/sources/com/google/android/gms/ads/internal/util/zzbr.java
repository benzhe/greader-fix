package com.google.android.gms.ads.internal.util;

import android.os.StrictMode;
import defpackage.gt2;

/* loaded from: classes.dex */
public final class zzbr {
    public static <T> T zza(gt2<T> gt2Var) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return gt2Var.get();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005f A[Catch: all -> 0x0070, TryCatch #0 {, blocks: (B:13:0x002f, B:15:0x0033, B:17:0x0041, B:19:0x0053, B:20:0x005f, B:21:0x0066), top: B:27:0x002f }] */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> T zza(android.content.Context r3, java.util.concurrent.Callable<T> r4) {
        /*
            android.os.StrictMode$ThreadPolicy r0 = android.os.StrictMode.getThreadPolicy()     // Catch: java.lang.Throwable -> L20
            android.os.StrictMode$ThreadPolicy$Builder r1 = new android.os.StrictMode$ThreadPolicy$Builder     // Catch: java.lang.Throwable -> L22
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L22
            android.os.StrictMode$ThreadPolicy$Builder r1 = r1.permitDiskReads()     // Catch: java.lang.Throwable -> L22
            android.os.StrictMode$ThreadPolicy$Builder r1 = r1.permitDiskWrites()     // Catch: java.lang.Throwable -> L22
            android.os.StrictMode$ThreadPolicy r1 = r1.build()     // Catch: java.lang.Throwable -> L22
            android.os.StrictMode.setThreadPolicy(r1)     // Catch: java.lang.Throwable -> L22
            java.lang.Object r4 = r4.call()     // Catch: java.lang.Throwable -> L22
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> L20
            return r4
        L20:
            r4 = move-exception
            goto L27
        L22:
            r4 = move-exception
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> L20
            throw r4     // Catch: java.lang.Throwable -> L20
        L27:
            java.lang.String r0 = "Unexpected exception."
            defpackage.is0.zzc(r0, r4)
            java.lang.Object r0 = defpackage.xl0.f
            monitor-enter(r0)
            bm0 r1 = defpackage.xl0.g     // Catch: java.lang.Throwable -> L70
            if (r1 != 0) goto L66
            e60<java.lang.Boolean> r1 = defpackage.w60.e     // Catch: java.lang.Throwable -> L70
            java.lang.Object r1 = r1.a()     // Catch: java.lang.Throwable -> L70
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L70
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L70
            if (r1 == 0) goto L5f
            o40<java.lang.Boolean> r1 = defpackage.y40.w4     // Catch: java.lang.Throwable -> L70
            os3 r2 = defpackage.os3.j     // Catch: java.lang.Throwable -> L70
            u40 r2 = r2.f     // Catch: java.lang.Throwable -> L70
            java.lang.Object r1 = r2.a(r1)     // Catch: java.lang.Throwable -> L70
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L70
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L70
            if (r1 != 0) goto L5f
            xl0 r1 = new xl0     // Catch: java.lang.Throwable -> L70
            com.google.android.gms.internal.ads.zzbar r2 = com.google.android.gms.internal.ads.zzbar.n()     // Catch: java.lang.Throwable -> L70
            r1.<init>(r3, r2)     // Catch: java.lang.Throwable -> L70
            defpackage.xl0.g = r1     // Catch: java.lang.Throwable -> L70
            goto L66
        L5f:
            am0 r3 = new am0     // Catch: java.lang.Throwable -> L70
            r3.<init>()     // Catch: java.lang.Throwable -> L70
            defpackage.xl0.g = r3     // Catch: java.lang.Throwable -> L70
        L66:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L70
            bm0 r3 = defpackage.xl0.g
            java.lang.String r0 = "StrictModeUtil.runWithLaxStrictMode"
            r3.a(r4, r0)
            r3 = 0
            return r3
        L70:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L70
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzbr.zza(android.content.Context, java.util.concurrent.Callable):java.lang.Object");
    }
}
