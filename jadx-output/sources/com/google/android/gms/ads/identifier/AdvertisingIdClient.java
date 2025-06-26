package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import defpackage.bi;
import defpackage.dy;
import defpackage.gy;
import defpackage.hy;
import defpackage.iy;
import defpackage.nv3;
import defpackage.ov3;
import defpackage.pv3;
import defpackage.rv;
import defpackage.x10;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class AdvertisingIdClient {
    public dy a;
    public nv3 b;
    public boolean c;
    public final Object d;
    public a e;
    public final Context f;
    public final boolean g;
    public final long h;

    public static final class Info {
        public final String a;
        public final boolean b;

        public Info(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        public final String getId() {
            return this.a;
        }

        public final boolean isLimitAdTrackingEnabled() {
            return this.b;
        }

        public final String toString() {
            String str = this.a;
            boolean z = this.b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            sb.append(z);
            return sb.toString();
        }
    }

    public static class a extends Thread {
        public WeakReference<AdvertisingIdClient> e;
        public long f;
        public CountDownLatch g = new CountDownLatch(1);
        public boolean h = false;

        public a(AdvertisingIdClient advertisingIdClient, long j) {
            this.e = new WeakReference<>(advertisingIdClient);
            this.f = j;
            start();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            AdvertisingIdClient advertisingIdClient;
            try {
                if (this.g.await(this.f, TimeUnit.MILLISECONDS) || (advertisingIdClient = this.e.get()) == null) {
                    return;
                }
                advertisingIdClient.finish();
                this.h = true;
            } catch (InterruptedException unused) {
                AdvertisingIdClient advertisingIdClient2 = this.e.get();
                if (advertisingIdClient2 != null) {
                    advertisingIdClient2.finish();
                    this.h = true;
                }
            }
        }
    }

    public AdvertisingIdClient(Context context) {
        this(context, 30000L, false, false);
    }

    public AdvertisingIdClient(Context context, long j, boolean z, boolean z2) {
        Context applicationContext;
        this.d = new Object();
        Objects.requireNonNull(context, "null reference");
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f = context;
        this.c = false;
        this.h = j;
        this.g = z2;
    }

    public static dy a(Context context, boolean z) throws iy, hy, PackageManager.NameNotFoundException, IOException {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int iD = gy.b.d(context, 12451000);
            if (iD != 0 && iD != 2) {
                throw new IOException("Google Play services not available");
            }
            String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
            dy dyVar = new dy();
            Intent intent = new Intent(str);
            intent.setPackage("com.google.android.gms");
            try {
                if (x10.b().a(context, intent, dyVar, 1)) {
                    return dyVar;
                }
                throw new IOException("Connection failure");
            } catch (Throwable th) {
                throw new IOException(th);
            }
        } catch (PackageManager.NameNotFoundException unused) {
            throw new hy(9);
        }
    }

    public static nv3 b(dy dyVar) throws IOException {
        try {
            IBinder iBinderA = dyVar.a(10000L, TimeUnit.MILLISECONDS);
            int i = ov3.e;
            IInterface iInterfaceQueryLocalInterface = iBinderA.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            return iInterfaceQueryLocalInterface instanceof nv3 ? (nv3) iInterfaceQueryLocalInterface : new pv3(iBinderA);
        } catch (InterruptedException unused) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002c A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #1 {all -> 0x0031, blocks: (B:12:0x0027, B:15:0x002c), top: B:33:0x0027 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.ads.identifier.AdvertisingIdClient.Info getAdvertisingIdInfo(android.content.Context r14) throws defpackage.iy, java.lang.IllegalStateException, defpackage.hy, java.io.IOException {
        /*
            java.lang.String r0 = "Error while reading from SharedPreferences "
            java.lang.String r1 = "GmscoreFlag"
            com.google.android.gms.ads.identifier.zzb r2 = new com.google.android.gms.ads.identifier.zzb
            r2.<init>(r14)
            java.lang.String r3 = "gads:ad_id_app_context:enabled"
            r4 = 0
            boolean r3 = r2.getBoolean(r3, r4)
            java.lang.String r5 = "gads:ad_id_app_context:ping_ratio"
            r6 = 0
            android.content.SharedPreferences r7 = r2.a     // Catch: java.lang.Throwable -> L1e
            if (r7 != 0) goto L18
            goto L22
        L18:
            float r5 = r7.getFloat(r5, r6)     // Catch: java.lang.Throwable -> L1e
            r13 = r5
            goto L23
        L1e:
            r5 = move-exception
            android.util.Log.w(r1, r0, r5)
        L22:
            r13 = 0
        L23:
            java.lang.String r5 = "gads:ad_id_use_shared_preference:experiment_id"
            java.lang.String r6 = ""
            android.content.SharedPreferences r7 = r2.a     // Catch: java.lang.Throwable -> L31
            if (r7 != 0) goto L2c
            goto L35
        L2c:
            java.lang.String r0 = r7.getString(r5, r6)     // Catch: java.lang.Throwable -> L31
            goto L36
        L31:
            r5 = move-exception
            android.util.Log.w(r1, r0, r5)
        L35:
            r0 = r6
        L36:
            java.lang.String r1 = "gads:ad_id_use_persistent_service:enabled"
            boolean r10 = r2.getBoolean(r1, r4)
            com.google.android.gms.ads.identifier.AdvertisingIdClient r1 = new com.google.android.gms.ads.identifier.AdvertisingIdClient
            r7 = -1
            r5 = r1
            r6 = r14
            r9 = r3
            r5.<init>(r6, r7, r9, r10)
            long r5 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L64
            r1.d(r4)     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r14 = r1.getInfo()     // Catch: java.lang.Throwable -> L64
            long r7 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L64
            long r9 = r7 - r5
            r12 = 0
            r5 = r1
            r6 = r14
            r7 = r3
            r8 = r13
            r11 = r0
            r5.e(r6, r7, r8, r9, r11, r12)     // Catch: java.lang.Throwable -> L64
            r1.finish()
            return r14
        L64:
            r14 = move-exception
            r6 = 0
            r9 = -1
            r5 = r1
            r7 = r3
            r8 = r13
            r11 = r0
            r12 = r14
            r5.e(r6, r7, r8, r9, r11, r12)     // Catch: java.lang.Throwable -> L71
            throw r14     // Catch: java.lang.Throwable -> L71
        L71:
            r14 = move-exception
            r1.finish()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(android.content.Context):com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
    }

    public static boolean getIsAdIdFakeForDebugLogging(Context context) throws iy, hy, IOException {
        zzb zzbVar = new zzb(context);
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, zzbVar.getBoolean("gads:ad_id_app_context:enabled", false), zzbVar.getBoolean("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            advertisingIdClient.d(false);
            return advertisingIdClient.f();
        } finally {
            advertisingIdClient.finish();
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    public final void c() {
        synchronized (this.d) {
            a aVar = this.e;
            if (aVar != null) {
                aVar.g.countDown();
                try {
                    this.e.join();
                } catch (InterruptedException unused) {
                }
            }
            if (this.h > 0) {
                this.e = new a(this, this.h);
            }
        }
    }

    public final void d(boolean z) throws iy, IllegalStateException, hy, IOException {
        bi.i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.c) {
                finish();
            }
            dy dyVarA = a(this.f, this.g);
            this.a = dyVarA;
            this.b = b(dyVarA);
            this.c = true;
            if (z) {
                c();
            }
        }
    }

    public final boolean e(Info info, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > f) {
            return false;
        }
        HashMap map = new HashMap();
        map.put("app_context", z ? "1" : "0");
        if (info != null) {
            map.put("limit_ad_tracking", info.isLimitAdTrackingEnabled() ? "1" : "0");
        }
        if (info != null && info.getId() != null) {
            map.put("ad_id_size", Integer.toString(info.getId().length()));
        }
        if (th != null) {
            map.put("error", th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            map.put("experiment_id", str);
        }
        map.put("tag", "AdvertisingIdClient");
        map.put("time_spent", Long.toString(j));
        new rv(map).start();
        return true;
    }

    public final boolean f() throws IOException {
        boolean zC;
        bi.i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.c) {
                Objects.requireNonNull(this.a, "null reference");
                Objects.requireNonNull(this.b, "null reference");
                zC = this.b.c();
            } else {
                synchronized (this.d) {
                    a aVar = this.e;
                    if (aVar == null || !aVar.h) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    d(false);
                    if (!this.c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                    Objects.requireNonNull(this.a, "null reference");
                    Objects.requireNonNull(this.b, "null reference");
                    try {
                        zC = this.b.c();
                    } catch (RemoteException e) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e);
                        throw new IOException("Remote exception");
                    }
                } catch (Exception e2) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                }
            }
        }
        c();
        return zC;
    }

    public void finalize() throws Throwable {
        finish();
        super.finalize();
    }

    public final void finish() {
        bi.i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f == null || this.a == null) {
                return;
            }
            try {
                if (this.c) {
                    x10.b().c(this.f, this.a);
                }
            } catch (Throwable th) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
            }
            this.c = false;
            this.b = null;
            this.a = null;
        }
    }

    public Info getInfo() throws IOException {
        Info info;
        bi.i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.c) {
                Objects.requireNonNull(this.a, "null reference");
                Objects.requireNonNull(this.b, "null reference");
                info = new Info(this.b.n(), this.b.v2(true));
            } else {
                synchronized (this.d) {
                    a aVar = this.e;
                    if (aVar == null || !aVar.h) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    d(false);
                    if (!this.c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                    Objects.requireNonNull(this.a, "null reference");
                    Objects.requireNonNull(this.b, "null reference");
                    try {
                        info = new Info(this.b.n(), this.b.v2(true));
                    } catch (RemoteException e) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e);
                        throw new IOException("Remote exception");
                    }
                } catch (Exception e2) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                }
            }
        }
        c();
        return info;
    }

    public void start() throws iy, IllegalStateException, hy, IOException {
        d(true);
    }
}
