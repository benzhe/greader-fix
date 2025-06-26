package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import defpackage.aw2;
import defpackage.gw;
import defpackage.is0;
import defpackage.os3;
import defpackage.y40;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class zzam {
    public final Object a = new Object();
    public String b = "";
    public String c = "";
    public boolean d = false;
    public String e = "";

    public static String d(Context context, String str, String str2) {
        HashMap map = new HashMap();
        map.put("User-Agent", com.google.android.gms.ads.internal.zzr.zzkv().zzq(context, str2));
        aw2<String> aw2VarZzb = new zzay(context).zzb(str, map);
        try {
            return aw2VarZzb.get(((Integer) os3.j.f.a(y40.H2)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String strValueOf = String.valueOf(str);
            is0.zzc(strValueOf.length() != 0 ? "Interrupted while retriving a response from: ".concat(strValueOf) : new String("Interrupted while retriving a response from: "), e);
            aw2VarZzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String strValueOf2 = String.valueOf(str);
            is0.zzc(strValueOf2.length() != 0 ? "Timeout while retriving a response from: ".concat(strValueOf2) : new String("Timeout while retriving a response from: "), e2);
            aw2VarZzb.cancel(true);
            return null;
        } catch (Exception e3) {
            String strValueOf3 = String.valueOf(str);
            is0.zzc(strValueOf3.length() != 0 ? "Error retriving a response from: ".concat(strValueOf3) : new String("Error retriving a response from: "), e3);
            return null;
        }
    }

    public final void a(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            zzj.zzegq.post(new gw(context, str, z, z2));
        } else {
            is0.zzey("Can not create dialog without Activity Context");
        }
    }

    public final void b(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = c(context, (String) os3.j.f.a(y40.G2), str3, str).buildUpon();
        builderBuildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzr.zzkv();
        zzj.zzb(context, str, builderBuildUpon.build().toString());
    }

    public final Uri c(Context context, String str, String str2, String str3) {
        String str4;
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        synchronized (this.a) {
            if (TextUtils.isEmpty(this.b)) {
                com.google.android.gms.ads.internal.zzr.zzkv();
                String strZzr = zzj.zzr(context, "debug_signals_id.txt");
                this.b = strZzr;
                if (TextUtils.isEmpty(strZzr)) {
                    com.google.android.gms.ads.internal.zzr.zzkv();
                    this.b = zzj.zzzr();
                    com.google.android.gms.ads.internal.zzr.zzkv();
                    zzj.zzc(context, "debug_signals_id.txt", this.b);
                }
            }
            str4 = this.b;
        }
        builderBuildUpon.appendQueryParameter("linkedDeviceId", str4);
        builderBuildUpon.appendQueryParameter("adSlotPath", str2);
        builderBuildUpon.appendQueryParameter("afmaVersion", str3);
        return builderBuildUpon.build();
    }

    public final void e(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzr.zzkv();
        zzj.zzb(context, c(context, (String) os3.j.f.a(y40.D2), str, str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(android.content.Context r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r4 = this;
            boolean r0 = r4.zzaaf()
            o40<java.lang.String> r1 = defpackage.y40.F2
            os3 r2 = defpackage.os3.j
            u40 r2 = r2.f
            java.lang.Object r1 = r2.a(r1)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri r1 = r4.c(r5, r1, r6, r7)
            java.lang.String r1 = r1.toString()
            java.lang.String r1 = d(r5, r1, r7)
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            r3 = 0
            if (r2 == 0) goto L2a
            java.lang.String r1 = "Not linked for debug signals."
            defpackage.is0.zzdz(r1)
        L28:
            r1 = 0
            goto L50
        L2a:
            java.lang.String r1 = r1.trim()
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: org.json.JSONException -> L49
            r2.<init>(r1)     // Catch: org.json.JSONException -> L49
            java.lang.String r1 = "debug_mode"
            java.lang.String r1 = r2.optString(r1)     // Catch: org.json.JSONException -> L49
            java.lang.String r2 = "1"
            boolean r1 = r2.equals(r1)
            java.lang.Object r2 = r4.a
            monitor-enter(r2)
            r4.d = r1     // Catch: java.lang.Throwable -> L46
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L46
            goto L50
        L46:
            r5 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L46
            throw r5
        L49:
            r1 = move-exception
            java.lang.String r2 = "Fail to get debug mode response json."
            defpackage.is0.zzd(r2, r1)
            goto L28
        L50:
            if (r1 == 0) goto L69
            if (r0 != 0) goto L5d
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            if (r0 != 0) goto L5d
            r4.b(r5, r7, r8, r6)
        L5d:
            java.lang.String r6 = "Device is linked for debug signals."
            defpackage.is0.zzdz(r6)
            java.lang.String r6 = "The device is successfully linked for troubleshooting."
            r7 = 1
            r4.a(r5, r6, r3, r7)
            return
        L69:
            r4.e(r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzam.zza(android.content.Context, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public final String zzaae() {
        String str;
        synchronized (this.a) {
            str = this.c;
        }
        return str;
    }

    public final boolean zzaaf() {
        boolean z;
        synchronized (this.a) {
            z = this.d;
        }
        return z;
    }

    public final boolean zzb(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !com.google.android.gms.ads.internal.zzr.zzlf().zzaaf()) {
            return false;
        }
        is0.zzdz("Sending troubleshooting signals to the server.");
        b(context, str, str2, str3);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(android.content.Context r6, java.lang.String r7, java.lang.String r8) {
        /*
            r5 = this;
            o40<java.lang.String> r0 = defpackage.y40.E2
            os3 r1 = defpackage.os3.j
            u40 r1 = r1.f
            java.lang.Object r0 = r1.a(r0)
            java.lang.String r0 = (java.lang.String) r0
            android.net.Uri r0 = r5.c(r6, r0, r7, r8)
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = d(r6, r0, r8)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L27
            java.lang.String r0 = "Not linked for in app preview."
            defpackage.is0.zzdz(r0)
        L25:
            r0 = 0
            goto L50
        L27:
            java.lang.String r0 = r0.trim()
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L49
            r1.<init>(r0)     // Catch: org.json.JSONException -> L49
            java.lang.String r0 = "gct"
            java.lang.String r0 = r1.optString(r0)     // Catch: org.json.JSONException -> L49
            java.lang.String r4 = "status"
            java.lang.String r1 = r1.optString(r4)     // Catch: org.json.JSONException -> L49
            r5.e = r1     // Catch: org.json.JSONException -> L49
            java.lang.Object r1 = r5.a
            monitor-enter(r1)
            r5.c = r0     // Catch: java.lang.Throwable -> L46
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L46
            r0 = 1
            goto L50
        L46:
            r6 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L46
            throw r6
        L49:
            r0 = move-exception
            java.lang.String r1 = "Fail to get in app preview response json."
            defpackage.is0.zzd(r1, r0)
            goto L25
        L50:
            if (r0 != 0) goto L58
            java.lang.String r7 = "In-app preview failed to load because of a system error. Please try again later."
            r5.a(r6, r7, r2, r2)
            return
        L58:
            java.lang.String r0 = "2"
            java.lang.String r1 = r5.e
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L6d
            java.lang.String r7 = "Creative is not pushed for this device."
            defpackage.is0.zzdz(r7)
            java.lang.String r7 = "There was no creative pushed from DFP to the device."
            r5.a(r6, r7, r3, r3)
            return
        L6d:
            java.lang.String r0 = "1"
            java.lang.String r1 = r5.e
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L80
            java.lang.String r0 = "The app is not linked for creative preview."
            defpackage.is0.zzdz(r0)
            r5.e(r6, r7, r8)
            return
        L80:
            java.lang.String r7 = "0"
            java.lang.String r8 = r5.e
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L94
            java.lang.String r7 = "Device is linked for in app preview."
            defpackage.is0.zzdz(r7)
            java.lang.String r7 = "The device is successfully linked for creative preview."
            r5.a(r6, r7, r3, r2)
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzam.zze(android.content.Context, java.lang.String, java.lang.String):void");
    }
}
