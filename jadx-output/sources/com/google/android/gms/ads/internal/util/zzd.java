package com.google.android.gms.ads.internal.util;

import android.util.Log;
import com.google.ads.AdRequest;
import defpackage.is0;
import defpackage.q60;

/* loaded from: classes.dex */
public final class zzd extends is0 {
    public static void zza(String str, Throwable th) {
        if (zzyz()) {
            Log.v(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzed(String str) {
        if (zzyz()) {
            Log.v(AdRequest.LOGTAG, str);
        }
    }

    public static boolean zzyz() {
        return is0.isLoggable(2) && q60.a.a().booleanValue();
    }
}
