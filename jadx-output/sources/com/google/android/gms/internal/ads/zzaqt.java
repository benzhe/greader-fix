package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import defpackage.is0;
import defpackage.mj0;
import defpackage.oj0;
import defpackage.os3;
import defpackage.q3;
import defpackage.sr0;
import defpackage.u3;
import defpackage.w50;
import defpackage.y40;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zzaqt implements MediationInterstitialAdapter {
    public Activity a;
    public MediationInterstitialListener b;
    public Uri c;

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        is0.zzdz("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        is0.zzdz("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        is0.zzdz("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.b = mediationInterstitialListener;
        if (mediationInterstitialListener == null) {
            is0.zzez("Listener not set for mediation. Returning.");
            return;
        }
        if (!(context instanceof Activity)) {
            is0.zzez("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.b.onAdFailedToLoad(this, 0);
            return;
        }
        if (!(w50.c(context))) {
            is0.zzez("Default browser does not support custom tabs. Bailing out.");
            this.b.onAdFailedToLoad(this, 0);
            return;
        }
        String string = bundle.getString("tab_url");
        if (TextUtils.isEmpty(string)) {
            is0.zzez("The tab_url retrieved from mediation metadata is empty. Bailing out.");
            this.b.onAdFailedToLoad(this, 0);
        } else {
            this.a = (Activity) context;
            this.c = Uri.parse(string);
            this.b.onAdLoaded(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        Intent intent = new Intent("android.intent.action.VIEW");
        q3 q3Var = new q3();
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        Integer num = q3Var.a;
        Bundle bundle2 = new Bundle();
        if (num != null) {
            bundle2.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
        }
        intent.putExtras(bundle2);
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        u3 u3Var = new u3(intent, null);
        u3Var.a.setData(this.c);
        zzj.zzegq.post(new oj0(this, new AdOverlayInfoParcel(new zzb(u3Var.a, null), null, new mj0(this), null, new zzbar(0, 0, false), null)));
        sr0 sr0Var = zzr.zzkz().j;
        Objects.requireNonNull(sr0Var);
        long jA = zzr.zzlc().a();
        synchronized (sr0Var.a) {
            if (sr0Var.b == 3) {
                if (sr0Var.c + ((Long) os3.j.f.a(y40.A3)).longValue() <= jA) {
                    sr0Var.b = 1;
                }
            }
        }
        long jA2 = zzr.zzlc().a();
        synchronized (sr0Var.a) {
            if (sr0Var.b != 2) {
                return;
            }
            sr0Var.b = 3;
            if (sr0Var.b == 3) {
                sr0Var.c = jA2;
            }
        }
    }
}
