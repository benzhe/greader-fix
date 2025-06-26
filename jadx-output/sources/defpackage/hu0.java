package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzau;
import com.google.android.gms.ads.internal.util.zzav;
import com.google.android.gms.ads.internal.util.zzaw;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbbz;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class hu0 {
    public final Context a;
    public final String b;
    public final zzbar c;
    public final m50 d;
    public final o50 e;
    public final long[] g;
    public final String[] h;
    public boolean m;
    public zzbbz n;
    public boolean o;
    public boolean p;
    public final zzau f = new zzav().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzaah();
    public boolean i = false;
    public boolean j = false;
    public boolean k = false;
    public boolean l = false;
    public long q = -1;

    public hu0(Context context, zzbar zzbarVar, String str, o50 o50Var, m50 m50Var) {
        this.a = context;
        this.c = zzbarVar;
        this.b = str;
        this.e = o50Var;
        this.d = m50Var;
        String str2 = (String) os3.j.f.a(y40.t);
        if (str2 == null) {
            this.h = new String[0];
            this.g = new long[0];
            return;
        }
        String[] strArrSplit = TextUtils.split(str2, ",");
        this.h = new String[strArrSplit.length];
        this.g = new long[strArrSplit.length];
        for (int i = 0; i < strArrSplit.length; i++) {
            try {
                this.g[i] = Long.parseLong(strArrSplit[i]);
            } catch (NumberFormatException e) {
                is0.zzd("Unable to parse frame hash target time number.", e);
                this.g[i] = -1;
            }
        }
    }

    public final void a() {
        if (!d70.a.a().booleanValue() || this.o) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(NSRSS20.ENC_TYPE, "native-player-metrics");
        bundle.putString("request", this.b);
        bundle.putString("player", this.n.m());
        for (zzaw zzawVar : this.f.zzaag()) {
            String strValueOf = String.valueOf(zzawVar.name);
            bundle.putString(strValueOf.length() != 0 ? "fps_c_".concat(strValueOf) : new String("fps_c_"), Integer.toString(zzawVar.count));
            String strValueOf2 = String.valueOf(zzawVar.name);
            bundle.putString(strValueOf2.length() != 0 ? "fps_p_".concat(strValueOf2) : new String("fps_p_"), Double.toString(zzawVar.zzeid));
        }
        int i = 0;
        while (true) {
            long[] jArr = this.g;
            if (i >= jArr.length) {
                zzr.zzkv().zza(this.a, this.c.e, "gmob-apps", bundle, true);
                this.o = true;
                return;
            }
            String str = this.h[i];
            if (str != null) {
                String strValueOf3 = String.valueOf(Long.valueOf(jArr[i]));
                StringBuilder sb = new StringBuilder(strValueOf3.length() + 3);
                sb.append("fh_");
                sb.append(strValueOf3);
                bundle.putString(sb.toString(), str);
            }
            i++;
        }
    }

    public final void b() {
        this.m = true;
        if (!this.j || this.k) {
            return;
        }
        c50.w2(this.e, this.d, "vfp2");
        this.k = true;
    }

    public final void c(zzbbz zzbbzVar) {
        c50.w2(this.e, this.d, "vpc2");
        this.i = true;
        o50 o50Var = this.e;
        if (o50Var != null) {
            o50Var.b("vpn", zzbbzVar.m());
        }
        this.n = zzbbzVar;
    }

    public final void d(zzbbz zzbbzVar) {
        if (this.k && !this.l) {
            if (zzd.zzyz() && !this.l) {
                zzd.zzed("VideoMetricsMixin first frame");
            }
            c50.w2(this.e, this.d, "vff2");
            this.l = true;
        }
        long jNanoTime = zzr.zzlc().nanoTime();
        if (this.m && this.p && this.q != -1) {
            this.f.zza(TimeUnit.SECONDS.toNanos(1L) / (jNanoTime - this.q));
        }
        this.p = this.m;
        this.q = jNanoTime;
        long jLongValue = ((Long) os3.j.f.a(y40.u)).longValue();
        long currentPosition = zzbbzVar.getCurrentPosition();
        int i = 0;
        while (true) {
            String[] strArr = this.h;
            if (i >= strArr.length) {
                return;
            }
            if (strArr[i] == null && jLongValue > Math.abs(currentPosition - this.g[i])) {
                String[] strArr2 = this.h;
                int i2 = 8;
                Bitmap bitmap = zzbbzVar.getBitmap(8, 8);
                long j = 63;
                int i3 = 0;
                long j2 = 0;
                while (i3 < i2) {
                    int i4 = 0;
                    while (i4 < i2) {
                        int pixel = bitmap.getPixel(i4, i3);
                        j2 |= (Color.green(pixel) + (Color.red(pixel) + Color.blue(pixel)) > 128 ? 1L : 0L) << ((int) j);
                        i4++;
                        j--;
                        i2 = 8;
                    }
                    i3++;
                    i2 = 8;
                }
                strArr2[i] = String.format("%016X", Long.valueOf(j2));
                return;
            }
            i++;
        }
    }

    public final void e() {
        if (!this.i || this.j) {
            return;
        }
        c50.w2(this.e, this.d, "vfr2");
        this.j = true;
    }
}
