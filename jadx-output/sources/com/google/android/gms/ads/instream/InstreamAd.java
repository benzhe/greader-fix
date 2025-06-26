package com.google.android.gms.ads.instream;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MediaAspectRatio;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.internal.ads.zzajy;
import defpackage.bi;
import defpackage.bt3;
import defpackage.eg0;
import defpackage.id0;
import defpackage.is0;
import defpackage.js3;
import defpackage.kd0;
import defpackage.ld0;
import defpackage.nr3;
import defpackage.os3;
import defpackage.wr3;
import java.util.Objects;

@Deprecated
/* loaded from: classes.dex */
public abstract class InstreamAd {

    @Deprecated
    public static abstract class InstreamAdLoadCallback {
        @Deprecated
        public void onInstreamAdFailedToLoad(int i) {
        }

        public void onInstreamAdFailedToLoad(LoadAdError loadAdError) {
        }

        public void onInstreamAdLoaded(InstreamAd instreamAd) {
        }
    }

    public static void load(Context context, String str, AdRequest adRequest, @MediaAspectRatio int i, InstreamAdLoadCallback instreamAdLoadCallback) {
        kd0 kd0Var;
        bi.c(i == 2 || i == 3, "Instream ads only support Landscape and Portrait media aspect ratios");
        bi.j(context, "context cannot be null");
        wr3 wr3Var = os3.j.b;
        eg0 eg0Var = new eg0();
        Objects.requireNonNull(wr3Var);
        bt3 bt3VarB = new js3(wr3Var, context, str, eg0Var).b(context, false);
        try {
            bt3VarB.u3(new ld0(instreamAdLoadCallback));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        try {
            bt3VarB.w6(new zzajy(new id0(i)));
        } catch (RemoteException e2) {
            is0.zze("#007 Could not call remote method.", e2);
        }
        try {
            kd0Var = new kd0(context, bt3VarB.o4());
        } catch (RemoteException e3) {
            is0.zze("#007 Could not call remote method.", e3);
            kd0Var = null;
        }
        Objects.requireNonNull(kd0Var);
        try {
            kd0Var.b.M0(nr3.a(kd0Var.a, adRequest.zzdt()));
        } catch (RemoteException e4) {
            is0.zze("#007 Could not call remote method.", e4);
        }
    }

    public abstract void a(InstreamAdView instreamAdView);

    public abstract void destroy();

    @Deprecated
    public abstract float getAspectRatio();

    public abstract MediaContent getMediaContent();

    @Deprecated
    public abstract VideoController getVideoController();

    @Deprecated
    public abstract float getVideoCurrentTime();

    @Deprecated
    public abstract float getVideoDuration();

    public static void load(Context context, String str, InstreamAdLoadCallback instreamAdLoadCallback) {
        kd0 kd0Var;
        bi.j(context, "context cannot be null");
        wr3 wr3Var = os3.j.b;
        eg0 eg0Var = new eg0();
        Objects.requireNonNull(wr3Var);
        bt3 bt3VarB = new js3(wr3Var, context, "", eg0Var).b(context, false);
        try {
            bt3VarB.u3(new ld0(instreamAdLoadCallback));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        try {
            bt3VarB.w6(new zzajy(new id0(str)));
        } catch (RemoteException e2) {
            is0.zze("#007 Could not call remote method.", e2);
        }
        try {
            kd0Var = new kd0(context, bt3VarB.o4());
        } catch (RemoteException e3) {
            is0.zze("#007 Could not call remote method.", e3);
            kd0Var = null;
        }
        PublisherAdRequest publisherAdRequestBuild = new PublisherAdRequest.Builder().build();
        Objects.requireNonNull(kd0Var);
        try {
            kd0Var.b.M0(nr3.a(kd0Var.a, publisherAdRequestBuild.zzdt()));
        } catch (RemoteException e4) {
            is0.zze("#007 Could not call remote method.", e4);
        }
    }
}
