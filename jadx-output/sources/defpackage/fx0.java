package defpackage;

import android.content.Context;
import android.net.TrafficStats;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbft;

/* loaded from: classes.dex */
public final class fx0 {
    public static xw0 a(final Context context, final jy0 jy0Var, final String str, final boolean z, final boolean z2, final d23 d23Var, final b60 b60Var, final zzbar zzbarVar, final zzm zzmVar, final zzb zzbVar, final ep3 ep3Var, final sk2 sk2Var, final wk2 wk2Var) throws ix0 {
        y40.a(context);
        try {
            return (xw0) zzbr.zza(new gt2(context, jy0Var, str, z, z2, d23Var, b60Var, zzbarVar, zzmVar, zzbVar, ep3Var, sk2Var, wk2Var) { // from class: hx0
                public final Context a;
                public final jy0 b;
                public final String c;
                public final boolean d;
                public final boolean e;
                public final d23 f;
                public final b60 g;
                public final zzbar h;
                public final zzm i;
                public final zzb j;
                public final ep3 k;
                public final sk2 l;
                public final wk2 m;

                {
                    this.a = context;
                    this.b = jy0Var;
                    this.c = str;
                    this.d = z;
                    this.e = z2;
                    this.f = d23Var;
                    this.g = b60Var;
                    this.h = zzbarVar;
                    this.i = zzmVar;
                    this.j = zzbVar;
                    this.k = ep3Var;
                    this.l = sk2Var;
                    this.m = wk2Var;
                }

                @Override // defpackage.gt2
                public final Object get() {
                    Context context2 = this.a;
                    jy0 jy0Var2 = this.b;
                    String str2 = this.c;
                    boolean z3 = this.d;
                    boolean z4 = this.e;
                    d23 d23Var2 = this.f;
                    b60 b60Var2 = this.g;
                    zzbar zzbarVar2 = this.h;
                    zzm zzmVar2 = this.i;
                    zzb zzbVar2 = this.j;
                    ep3 ep3Var2 = this.k;
                    sk2 sk2Var2 = this.l;
                    wk2 wk2Var2 = this.m;
                    try {
                        TrafficStats.setThreadStatsTag(264);
                        int i = mx0.f0;
                        zzbft zzbftVar = new zzbft(new mx0(new ky0(context2), jy0Var2, str2, z3, d23Var2, b60Var2, zzbarVar2, null, zzmVar2, zzbVar2, ep3Var2, sk2Var2, wk2Var2));
                        zzbftVar.setWebViewClient(zzr.zzkx().zza(zzbftVar, ep3Var2, z4));
                        zzbftVar.setWebChromeClient(new pw0(zzbftVar));
                        return zzbftVar;
                    } finally {
                        TrafficStats.clearThreadStatsTag();
                    }
                }
            });
        } catch (Throwable th) {
            throw new ix0("Webview initialization failed.", th);
        }
    }
}
