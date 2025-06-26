package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import defpackage.is0;
import defpackage.os3;
import defpackage.y40;
import defpackage.y50;

/* loaded from: classes.dex */
public final class zza {
    public static boolean a(Context context, Intent intent, zzx zzxVar, zzv zzvVar, boolean z) {
        if (!z) {
            try {
                String strValueOf = String.valueOf(intent.toURI());
                zzd.zzed(strValueOf.length() != 0 ? "Launching an intent: ".concat(strValueOf) : new String("Launching an intent: "));
                com.google.android.gms.ads.internal.zzr.zzkv();
                zzj.zza(context, intent);
                if (zzxVar != null) {
                    zzxVar.zzws();
                }
                if (zzvVar != null) {
                    zzvVar.zzaf(true);
                }
                return true;
            } catch (ActivityNotFoundException e) {
                is0.zzez(e.getMessage());
                if (zzvVar != null) {
                    zzvVar.zzaf(false);
                }
                return false;
            }
        }
        Uri data = intent.getData();
        y50 y50Var = y50.CCT_READY_TO_OPEN;
        y50 y50VarZza = y50.UNKNOWN;
        try {
            try {
                y50VarZza = com.google.android.gms.ads.internal.zzr.zzkv().zza(context, data);
                if (zzxVar != null) {
                    zzxVar.zzws();
                }
                if (zzvVar != null) {
                    zzvVar.zzb(y50VarZza);
                }
                return y50VarZza.equals(y50Var);
            } catch (Throwable unused) {
                if (zzvVar != null) {
                    zzvVar.zzb(y50VarZza);
                }
                return y50VarZza.equals(y50Var);
            }
        } catch (ActivityNotFoundException e2) {
            is0.zzez(e2.getMessage());
            y50 y50Var2 = y50.ACTIVITY_NOT_FOUND;
            if (zzvVar != null) {
                zzvVar.zzb(y50Var2);
            }
            return y50Var2.equals(y50Var);
        }
    }

    public static boolean zza(Context context, zzb zzbVar, zzx zzxVar, zzv zzvVar) throws NumberFormatException {
        int i = 0;
        if (zzbVar == null) {
            is0.zzez("No intent data for launcher overlay.");
            return false;
        }
        y40.a(context);
        Intent intent = zzbVar.intent;
        if (intent != null) {
            return a(context, intent, zzxVar, zzvVar, zzbVar.zzdsy);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzbVar.url)) {
            is0.zzez("Open GMSG did not contain a URL.");
            return false;
        }
        if (TextUtils.isEmpty(zzbVar.mimeType)) {
            intent2.setData(Uri.parse(zzbVar.url));
        } else {
            intent2.setDataAndType(Uri.parse(zzbVar.url), zzbVar.mimeType);
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzbVar.packageName)) {
            intent2.setPackage(zzbVar.packageName);
        }
        if (!TextUtils.isEmpty(zzbVar.zzdsv)) {
            String[] strArrSplit = zzbVar.zzdsv.split("/", 2);
            if (strArrSplit.length < 2) {
                String strValueOf = String.valueOf(zzbVar.zzdsv);
                is0.zzez(strValueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(strValueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent2.setClassName(strArrSplit[0], strArrSplit[1]);
        }
        String str = zzbVar.zzdsw;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                is0.zzez("Could not parse intent flags.");
            }
            intent2.addFlags(i);
        }
        if (((Boolean) os3.j.f.a(y40.x2)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) os3.j.f.a(y40.w2)).booleanValue()) {
                com.google.android.gms.ads.internal.zzr.zzkv();
                zzj.zzb(context, intent2);
            }
        }
        return a(context, intent2, zzxVar, zzvVar, zzbVar.zzdsy);
    }
}
