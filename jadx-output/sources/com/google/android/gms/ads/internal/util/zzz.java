package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.telephony.TelephonyManager;
import defpackage.vq3;

/* loaded from: classes.dex */
public class zzz extends zzaa {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public final vq3 zza(Context context, TelephonyManager telephonyManager) {
        vq3 vq3Var = vq3.ENUM_FALSE;
        com.google.android.gms.ads.internal.zzr.zzkv();
        return (zzj.zzp(context, "android.permission.ACCESS_NETWORK_STATE") && telephonyManager.isDataEnabled()) ? vq3.ENUM_TRUE : vq3Var;
    }
}
