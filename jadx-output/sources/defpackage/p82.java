package defpackage;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzvq;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public final class p82 implements nd2<Bundle> {
    public final ll2 a;

    public p82(ll2 ll2Var) {
        bi.j(ll2Var, "the targeting must not be null");
        this.a = ll2Var;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzvq zzvqVar = this.a.d;
        bundle2.putInt("http_timeout_millis", zzvqVar.A);
        bundle2.putString("slotname", this.a.f);
        int i = o82.a[this.a.o.a - 1];
        if (i == 1) {
            bundle2.putBoolean("is_new_rewarded", true);
        } else if (i == 2) {
            bundle2.putBoolean("is_rewarded_interstitial", true);
        }
        String str = new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zzvqVar.f));
        if (zzvqVar.f != -1) {
            bundle2.putString("cust_age", str);
        }
        Bundle bundle3 = zzvqVar.g;
        if (bundle3 != null) {
            bundle2.putBundle("extras", bundle3);
        }
        c50.b2(bundle2, "cust_gender", Integer.valueOf(zzvqVar.h), zzvqVar.h != -1);
        c50.c2(bundle2, "kw", zzvqVar.i);
        c50.b2(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(zzvqVar.k), zzvqVar.k != -1);
        boolean z = zzvqVar.j;
        if (z) {
            bundle2.putBoolean("test_request", z);
        }
        c50.b2(bundle2, "d_imp_hdr", 1, zzvqVar.e >= 2 && zzvqVar.l);
        String str2 = zzvqVar.m;
        if (zzvqVar.e >= 2 && !TextUtils.isEmpty(str2)) {
            bundle2.putString("ppid", str2);
        }
        Location location = zzvqVar.o;
        if (location != null) {
            Float fValueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
            Long lValueOf = Long.valueOf(location.getTime() * 1000);
            Long lValueOf2 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
            Long lValueOf3 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
            Bundle bundle4 = new Bundle();
            bundle4.putFloat("radius", fValueOf.floatValue());
            bundle4.putLong("lat", lValueOf2.longValue());
            bundle4.putLong("long", lValueOf3.longValue());
            bundle4.putLong("time", lValueOf.longValue());
            bundle2.putBundle("uule", bundle4);
        }
        String str3 = zzvqVar.p;
        if (str3 != null) {
            bundle2.putString("url", str3);
        }
        c50.c2(bundle2, "neighboring_content_urls", zzvqVar.z);
        Bundle bundle5 = zzvqVar.r;
        if (bundle5 != null) {
            bundle2.putBundle("custom_targeting", bundle5);
        }
        c50.c2(bundle2, "category_exclusions", zzvqVar.s);
        String str4 = zzvqVar.t;
        if (str4 != null) {
            bundle2.putString("request_agent", str4);
        }
        String str5 = zzvqVar.u;
        if (str5 != null) {
            bundle2.putString("request_pkg", str5);
        }
        c50.a2(bundle2, "is_designed_for_families", Boolean.valueOf(zzvqVar.v), zzvqVar.e >= 7);
        if (zzvqVar.e >= 8) {
            c50.b2(bundle2, "tag_for_under_age_of_consent", Integer.valueOf(zzvqVar.x), zzvqVar.x != -1);
            String str6 = zzvqVar.y;
            if (str6 != null) {
                bundle2.putString("max_ad_content_rating", str6);
            }
        }
    }
}
