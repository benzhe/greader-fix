package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import defpackage.ky;

/* loaded from: classes.dex */
public final class zzb {
    public SharedPreferences a;

    public zzb(Context context) {
        try {
            Context contextA = ky.a(context);
            this.a = contextA == null ? null : contextA.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.a = null;
        }
    }

    public final boolean getBoolean(String str, boolean z) {
        try {
            SharedPreferences sharedPreferences = this.a;
            if (sharedPreferences == null) {
                return false;
            }
            return sharedPreferences.getBoolean(str, false);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return false;
        }
    }
}
