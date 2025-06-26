package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.util.zzj;
import defpackage.er3;

/* loaded from: classes.dex */
public final class zzo {
    public static void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.zzduk == 4 && adOverlayInfoParcel.zzduf == null) {
            er3 er3Var = adOverlayInfoParcel.zzchr;
            if (er3Var != null) {
                er3Var.onAdClicked();
            }
            com.google.android.gms.ads.internal.zzr.zzkt();
            if (adOverlayInfoParcel.zzdue.zzdsy) {
                context = adOverlayInfoParcel.zzdkm.a();
            }
            zzb zzbVar = adOverlayInfoParcel.zzdue;
            zza.zza(context, zzbVar, adOverlayInfoParcel.zzduj, zzbVar.zzdjj);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzbpx.h);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.zza(intent, adOverlayInfoParcel);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        com.google.android.gms.ads.internal.zzr.zzkv();
        zzj.zza(context, intent);
    }
}
