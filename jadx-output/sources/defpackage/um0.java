package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class um0 {
    public int A;
    public String B;
    public boolean C;
    public int a;
    public boolean b;
    public boolean c;
    public int d;
    public int e;
    public int f;
    public String g;
    public int h;
    public int i;
    public int j;
    public boolean k;
    public int l;
    public double m;
    public boolean n;
    public String o;
    public String p;
    public boolean q;
    public boolean r;
    public String s;
    public boolean t;
    public final boolean u;
    public boolean v;
    public String w;
    public String x;
    public float y;
    public int z;

    /* JADX WARN: Removed duplicated region for block: B:20:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public um0(android.content.Context r7) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            r6 = this;
            r6.<init>()
            android.content.pm.PackageManager r0 = r7.getPackageManager()
            r6.b(r7)
            r6.c(r7)
            r6.d(r7)
            java.util.Locale r1 = java.util.Locale.getDefault()
            java.lang.String r2 = "geo:0,0?q=donuts"
            android.content.pm.ResolveInfo r2 = a(r0, r2)
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L20
            r2 = 1
            goto L21
        L20:
            r2 = 0
        L21:
            r6.q = r2
            java.lang.String r2 = "http://www.google.com"
            android.content.pm.ResolveInfo r2 = a(r0, r2)
            if (r2 == 0) goto L2c
            goto L2d
        L2c:
            r3 = 0
        L2d:
            r6.r = r3
            java.lang.String r2 = r1.getCountry()
            r6.s = r2
            os3 r2 = defpackage.os3.j
            zr0 r2 = r2.a
            boolean r2 = defpackage.zr0.e()
            r6.t = r2
            boolean r2 = defpackage.bi.N(r7)
            r6.u = r2
            boolean r2 = defpackage.bi.u0(r7)
            r6.v = r2
            java.lang.String r1 = r1.getLanguage()
            r6.w = r1
            java.lang.String r1 = "market://details?id=com.google.android.gms.ads"
            android.content.pm.ResolveInfo r0 = a(r0, r1)
            java.lang.String r1 = "."
            r2 = 0
            if (r0 != 0) goto L5d
            goto L8f
        L5d:
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            if (r0 != 0) goto L62
            goto L8f
        L62:
            h20 r3 = defpackage.i20.a(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            java.lang.String r5 = r0.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            android.content.pm.PackageInfo r3 = r3.b(r5, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            if (r3 == 0) goto L8f
            int r3 = r3.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            java.lang.String r0 = r0.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            java.lang.String r4 = java.lang.String.valueOf(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            int r4 = r4.length()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            int r4 = r4 + 12
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            r5.<init>(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            r5.append(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            r5.append(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            r5.append(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            java.lang.String r0 = r5.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8f
            goto L90
        L8f:
            r0 = r2
        L90:
            r6.x = r0
            h20 r0 = defpackage.i20.a(r7)     // Catch: java.lang.Exception -> Lc7
            java.lang.String r3 = "com.android.vending"
            r4 = 128(0x80, float:1.8E-43)
            android.content.Context r0 = r0.a     // Catch: java.lang.Exception -> Lc7
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Exception -> Lc7
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r3, r4)     // Catch: java.lang.Exception -> Lc7
            if (r0 == 0) goto Lc8
            int r3 = r0.versionCode     // Catch: java.lang.Exception -> Lc7
            java.lang.String r0 = r0.packageName     // Catch: java.lang.Exception -> Lc7
            java.lang.String r4 = java.lang.String.valueOf(r0)     // Catch: java.lang.Exception -> Lc7
            int r4 = r4.length()     // Catch: java.lang.Exception -> Lc7
            int r4 = r4 + 12
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lc7
            r5.<init>(r4)     // Catch: java.lang.Exception -> Lc7
            r5.append(r3)     // Catch: java.lang.Exception -> Lc7
            r5.append(r1)     // Catch: java.lang.Exception -> Lc7
            r5.append(r0)     // Catch: java.lang.Exception -> Lc7
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Exception -> Lc7
            goto Lc8
        Lc7:
        Lc8:
            r6.B = r2
            android.content.res.Resources r7 = r7.getResources()
            if (r7 != 0) goto Ld1
            return
        Ld1:
            android.util.DisplayMetrics r7 = r7.getDisplayMetrics()
            if (r7 != 0) goto Ld8
            return
        Ld8:
            float r0 = r7.density
            r6.y = r0
            int r0 = r7.widthPixels
            r6.z = r0
            int r7 = r7.heightPixels
            r6.A = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.um0.<init>(android.content.Context):void");
    }

    public static ResolveInfo a(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            or0 or0VarZzkz = zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    public final void b(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.a = audioManager.getMode();
                this.b = audioManager.isMusicActive();
                this.c = audioManager.isSpeakerphoneOn();
                this.d = audioManager.getStreamVolume(3);
                this.e = audioManager.getRingerMode();
                this.f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                or0 or0VarZzkz = zzr.zzkz();
                xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.a = -2;
        this.b = false;
        this.c = false;
        this.d = 0;
        this.e = 2;
        this.f = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(android.content.Context r6) {
        /*
            r5 = this;
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r6.getSystemService(r0)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            java.lang.String r1 = "connectivity"
            java.lang.Object r1 = r6.getSystemService(r1)
            android.net.ConnectivityManager r1 = (android.net.ConnectivityManager) r1
            java.lang.String r2 = r0.getNetworkOperator()
            r5.g = r2
            boolean r2 = defpackage.bi.K()
            r3 = 0
            if (r2 == 0) goto L31
            o40<java.lang.Boolean> r2 = defpackage.y40.Z4
            os3 r4 = defpackage.os3.j
            u40 r4 = r4.f
            java.lang.Object r2 = r4.a(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L31
            r2 = 0
            goto L35
        L31:
            int r2 = r0.getNetworkType()
        L35:
            r5.i = r2
            int r0 = r0.getPhoneType()
            r5.j = r0
            r0 = -2
            r5.h = r0
            r5.k = r3
            r0 = -1
            r5.l = r0
            com.google.android.gms.ads.internal.zzr.zzkv()
            java.lang.String r2 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r6 = com.google.android.gms.ads.internal.util.zzj.zzp(r6, r2)
            if (r6 == 0) goto L6f
            android.net.NetworkInfo r6 = r1.getActiveNetworkInfo()
            if (r6 == 0) goto L67
            int r0 = r6.getType()
            r5.h = r0
            android.net.NetworkInfo$DetailedState r6 = r6.getDetailedState()
            int r6 = r6.ordinal()
            r5.l = r6
            goto L69
        L67:
            r5.h = r0
        L69:
            boolean r6 = r1.isActiveNetworkMetered()
            r5.k = r6
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.um0.c(android.content.Context):void");
    }

    public final void d(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            this.m = -1.0d;
            this.n = false;
        } else {
            int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
            this.m = intentRegisterReceiver.getIntExtra("level", -1) / intentRegisterReceiver.getIntExtra("scale", -1);
            this.n = intExtra == 2 || intExtra == 5;
        }
    }

    public final rm0 e() {
        return new rm0(this.a, this.q, this.r, this.g, this.s, this.t, this.u, this.v, this.b, this.c, this.w, this.x, this.B, this.d, this.h, this.i, this.j, this.e, this.f, this.y, this.z, this.A, this.m, this.n, this.k, this.l, this.o, this.C, this.p);
    }

    public um0(Context context, rm0 rm0Var) {
        b(context);
        c(context);
        d(context);
        this.o = Build.FINGERPRINT;
        this.p = Build.DEVICE;
        this.C = w50.c(context);
        this.q = rm0Var.a;
        this.r = rm0Var.b;
        this.s = rm0Var.c;
        this.t = rm0Var.d;
        this.u = rm0Var.e;
        this.v = rm0Var.f;
        this.w = rm0Var.g;
        this.x = rm0Var.h;
        this.B = rm0Var.i;
        this.y = rm0Var.l;
        this.z = rm0Var.m;
        this.A = rm0Var.n;
    }
}
