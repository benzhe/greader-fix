package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.provider.Settings;
import defpackage.aw2;
import defpackage.c50;
import defpackage.ds0;
import defpackage.is0;
import defpackage.m60;
import defpackage.rw;

/* loaded from: classes.dex */
public final class zzb {
    public static void zzam(Context context) {
        boolean z;
        Object obj = ds0.b;
        boolean z2 = false;
        if (m60.a.a().booleanValue()) {
            try {
                if (Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0) {
                    z2 = true;
                }
            } catch (Exception e) {
                is0.zzd("Fail to determine debug setting.", e);
            }
        }
        if (z2) {
            synchronized (ds0.b) {
                z = ds0.c;
            }
            if (z) {
                return;
            }
            aw2<?> aw2VarZzyx = new rw(context).zzyx();
            is0.zzey("Updating ad debug logging enablement.");
            c50.e2(aw2VarZzyx, "AdDebugLogUpdater.updateEnablement");
        }
    }
}
