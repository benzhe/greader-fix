package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public final class tr0 {
    public final String g;
    public final zzf h;
    public long a = -1;
    public long b = -1;
    public int c = -1;
    public int d = -1;
    public long e = 0;
    public final Object f = new Object();
    public int i = 0;
    public int j = 0;

    public tr0(String str, zzf zzfVar) {
        this.g = str;
        this.h = zzfVar;
    }

    public static boolean b(Context context) {
        Context contextA = en0.a(context);
        int identifier = contextA.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (identifier == 0) {
            is0.zzey("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == contextA.getPackageManager().getActivityInfo(new ComponentName(contextA.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                return true;
            }
            is0.zzey("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            is0.zzez("Fail to fetch AdActivity theme");
            is0.zzey("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    public final void a(zzvq zzvqVar, long j) {
        Bundle bundle;
        synchronized (this.f) {
            long jZzzh = this.h.zzzh();
            long jA = zzr.zzlc().a();
            if (this.b == -1) {
                if (jA - jZzzh > ((Long) os3.j.f.a(y40.C0)).longValue()) {
                    this.d = -1;
                } else {
                    this.d = this.h.zzzi();
                }
                this.b = j;
                this.a = j;
            } else {
                this.a = j;
            }
            if (zzvqVar == null || (bundle = zzvqVar.g) == null || bundle.getInt("gw", 2) != 1) {
                this.c++;
                int i = this.d + 1;
                this.d = i;
                if (i == 0) {
                    this.e = 0L;
                    this.h.zzfb(jA);
                } else {
                    this.e = jA - this.h.zzzj();
                }
            }
        }
    }
}
