package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzvq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class q22<AdT> implements jz1<AdT> {
    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        return !TextUtils.isEmpty(sk2Var.u.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    @Override // defpackage.jz1
    public final aw2<AdT> b(hl2 hl2Var, sk2 sk2Var) {
        String strOptString = sk2Var.u.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        ll2 ll2Var = hl2Var.a.a;
        nl2 nl2Var = new nl2();
        al2 al2Var = nl2Var.p;
        xk2 xk2Var = ll2Var.o;
        Objects.requireNonNull(al2Var);
        al2Var.a = xk2Var.a;
        nl2Var.a = ll2Var.d;
        nl2Var.b = ll2Var.e;
        nl2Var.c = ll2Var.a;
        nl2Var.d = ll2Var.f;
        nl2Var.e = ll2Var.b;
        nl2Var.g = ll2Var.g;
        nl2Var.h = ll2Var.h;
        nl2Var.i = ll2Var.i;
        nl2Var.j = ll2Var.j;
        AdManagerAdViewOptions adManagerAdViewOptions = ll2Var.l;
        nl2Var.k = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            nl2Var.f = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        PublisherAdViewOptions publisherAdViewOptions = ll2Var.m;
        nl2Var.l = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            nl2Var.f = publisherAdViewOptions.getManualImpressionsEnabled();
            nl2Var.m = publisherAdViewOptions.zzjz();
        }
        nl2Var.q = ll2Var.p;
        nl2Var.d = strOptString;
        Bundle bundle = ll2Var.d.q;
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        Bundle bundle3 = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        Bundle bundle4 = bundle3 == null ? new Bundle() : new Bundle(bundle3);
        bundle4.putInt("gw", 1);
        String strOptString2 = sk2Var.u.optString("mad_hac", null);
        if (strOptString2 != null) {
            bundle4.putString("mad_hac", strOptString2);
        }
        String strOptString3 = sk2Var.u.optString("adJson", null);
        if (strOptString3 != null) {
            bundle4.putString("_ad", strOptString3);
        }
        bundle4.putBoolean("_noRefresh", true);
        Iterator<String> itKeys = sk2Var.C.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString4 = sk2Var.C.optString(next, null);
            if (next != null) {
                bundle4.putString(next, strOptString4);
            }
        }
        bundle2.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle4);
        zzvq zzvqVar = ll2Var.d;
        nl2Var.a = new zzvq(zzvqVar.e, zzvqVar.f, bundle4, zzvqVar.h, zzvqVar.i, zzvqVar.j, zzvqVar.k, zzvqVar.l, zzvqVar.m, zzvqVar.n, zzvqVar.o, zzvqVar.p, bundle2, zzvqVar.r, zzvqVar.s, zzvqVar.t, zzvqVar.u, zzvqVar.v, zzvqVar.w, zzvqVar.x, zzvqVar.y, zzvqVar.z, zzvqVar.A);
        ll2 ll2VarA = nl2Var.a();
        Bundle bundle5 = new Bundle();
        wk2 wk2Var = hl2Var.b.b;
        Bundle bundle6 = new Bundle();
        bundle6.putStringArrayList("nofill_urls", new ArrayList<>(wk2Var.a));
        bundle6.putInt("refresh_interval", wk2Var.c);
        bundle6.putString("gws_query_id", wk2Var.b);
        bundle5.putBundle("parent_common_config", bundle6);
        String str = hl2Var.a.a.f;
        Bundle bundle7 = new Bundle();
        bundle7.putString("initial_ad_unit_id", str);
        bundle7.putString("allocation_id", sk2Var.v);
        bundle7.putStringArrayList("click_urls", new ArrayList<>(sk2Var.c));
        bundle7.putStringArrayList("imp_urls", new ArrayList<>(sk2Var.d));
        bundle7.putStringArrayList("manual_tracking_urls", new ArrayList<>(sk2Var.o));
        bundle7.putStringArrayList("fill_urls", new ArrayList<>(sk2Var.m));
        bundle7.putStringArrayList("video_start_urls", new ArrayList<>(sk2Var.g));
        bundle7.putStringArrayList("video_reward_urls", new ArrayList<>(sk2Var.h));
        bundle7.putStringArrayList("video_complete_urls", new ArrayList<>(sk2Var.i));
        bundle7.putString("transaction_id", sk2Var.j);
        bundle7.putString("valid_from_timestamp", sk2Var.k);
        bundle7.putBoolean("is_closable_area_disabled", sk2Var.K);
        if (sk2Var.l != null) {
            Bundle bundle8 = new Bundle();
            bundle8.putInt("rb_amount", sk2Var.l.f);
            bundle8.putString("rb_type", sk2Var.l.e);
            bundle7.putParcelableArray("rewards", new Bundle[]{bundle8});
        }
        bundle5.putBundle("parent_ad_config", bundle7);
        return c(ll2VarA, bundle5);
    }

    public abstract aw2<AdT> c(ll2 ll2Var, Bundle bundle);
}
