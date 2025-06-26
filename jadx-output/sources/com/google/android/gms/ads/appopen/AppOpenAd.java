package com.google.android.gms.ads.appopen;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import defpackage.bi;
import defpackage.co3;
import defpackage.eg0;
import defpackage.es3;
import defpackage.is0;
import defpackage.it3;
import defpackage.nr3;
import defpackage.os3;
import defpackage.tn3;
import defpackage.wr3;
import defpackage.zu3;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class AppOpenAd {
    public static final int APP_OPEN_AD_ORIENTATION_LANDSCAPE = 2;
    public static final int APP_OPEN_AD_ORIENTATION_PORTRAIT = 1;

    public static abstract class AppOpenAdLoadCallback extends AdLoadCallback<AppOpenAd> {
        @Deprecated
        public void onAppOpenAdFailedToLoad(int i) {
        }

        @Deprecated
        public void onAppOpenAdFailedToLoad(LoadAdError loadAdError) {
        }

        @Deprecated
        public void onAppOpenAdLoaded(AppOpenAd appOpenAd) {
        }
    }

    public @interface AppOpenAdOrientation {
    }

    public static void load(Context context, String str, AdRequest adRequest, @AppOpenAdOrientation int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        bi.j(context, "Context cannot be null.");
        bi.j(str, "adUnitId cannot be null.");
        bi.j(adRequest, "AdRequest cannot be null.");
        zu3 zu3VarZzdt = adRequest.zzdt();
        eg0 eg0Var = new eg0();
        try {
            zzvt zzvtVarL0 = zzvt.L0();
            wr3 wr3Var = os3.j.b;
            Objects.requireNonNull(wr3Var);
            it3 it3VarB = new es3(wr3Var, context, zzvtVarL0, str, eg0Var).b(context, false);
            it3VarB.zza(new zzwc(i));
            it3VarB.zza(new tn3(appOpenAdLoadCallback, str));
            it3VarB.zza(nr3.a(context, zu3VarZzdt));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public abstract void a(co3 co3Var);

    public abstract it3 b();

    public abstract String getAdUnitId();

    public abstract FullScreenContentCallback getFullScreenContentCallback();

    public abstract OnPaidEventListener getOnPaidEventListener();

    public abstract ResponseInfo getResponseInfo();

    public abstract void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnPaidEventListener(OnPaidEventListener onPaidEventListener);

    public abstract void show(Activity activity);

    @Deprecated
    public abstract void show(Activity activity, FullScreenContentCallback fullScreenContentCallback);

    @Deprecated
    public static void load(Context context, String str, PublisherAdRequest publisherAdRequest, @AppOpenAdOrientation int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        bi.j(context, "Context cannot be null.");
        bi.j(str, "adUnitId cannot be null.");
        bi.j(publisherAdRequest, "PublisherAdRequest cannot be null.");
        zu3 zu3VarZzdt = publisherAdRequest.zzdt();
        eg0 eg0Var = new eg0();
        try {
            zzvt zzvtVarL0 = zzvt.L0();
            wr3 wr3Var = os3.j.b;
            Objects.requireNonNull(wr3Var);
            it3 it3VarB = new es3(wr3Var, context, zzvtVarL0, str, eg0Var).b(context, false);
            it3VarB.zza(new zzwc(i));
            it3VarB.zza(new tn3(appOpenAdLoadCallback, str));
            it3VarB.zza(nr3.a(context, zu3VarZzdt));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, @AppOpenAdOrientation int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        bi.j(context, "Context cannot be null.");
        bi.j(str, "adUnitId cannot be null.");
        bi.j(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        zu3 zu3VarZzdt = adManagerAdRequest.zzdt();
        eg0 eg0Var = new eg0();
        try {
            zzvt zzvtVarL0 = zzvt.L0();
            wr3 wr3Var = os3.j.b;
            Objects.requireNonNull(wr3Var);
            it3 it3VarB = new es3(wr3Var, context, zzvtVarL0, str, eg0Var).b(context, false);
            it3VarB.zza(new zzwc(i));
            it3VarB.zza(new tn3(appOpenAdLoadCallback, str));
            it3VarB.zza(nr3.a(context, zu3VarZzdt));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
