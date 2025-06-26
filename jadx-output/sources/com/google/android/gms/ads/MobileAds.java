package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.internal.ads.zzaat;
import defpackage.bi;
import defpackage.gv3;
import defpackage.is0;
import defpackage.y20;
import java.util.Objects;

/* loaded from: classes.dex */
public class MobileAds {
    public static final String ERROR_DOMAIN = "com.google.android.gms.ads";

    @Deprecated
    public static final class Settings {
        @Deprecated
        public final String getTrackingId() {
            return null;
        }

        @Deprecated
        public final boolean isGoogleAnalyticsEnabled() {
            return false;
        }

        @Deprecated
        public final Settings setGoogleAnalyticsEnabled(boolean z) {
            return this;
        }

        @Deprecated
        public final Settings setTrackingId(String str) {
            return this;
        }
    }

    public static void disableMediationAdapterInitialization(Context context) {
        gv3 gv3VarG = gv3.g();
        synchronized (gv3VarG.b) {
            gv3VarG.f(context);
            try {
                gv3VarG.c.H0();
            } catch (RemoteException unused) {
                is0.zzex("Unable to disable mediation adapter initialization.");
            }
        }
    }

    public static InitializationStatus getInitializationStatus() {
        return gv3.g().a();
    }

    public static RequestConfiguration getRequestConfiguration() {
        return gv3.g().g;
    }

    @Deprecated
    public static RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        return gv3.g().b(context);
    }

    public static String getVersionString() {
        return gv3.g().c();
    }

    @Deprecated
    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    public static void openDebugMenu(Context context, String str) {
        gv3 gv3VarG = gv3.g();
        synchronized (gv3VarG.b) {
            bi.m(gv3VarG.c != null, "MobileAds.initialize() must be called prior to opening debug menu.");
            try {
                gv3VarG.c.r0(new y20(context), str);
            } catch (RemoteException e) {
                is0.zzc("Unable to open debug menu.", e);
            }
        }
    }

    public static void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        gv3 gv3VarG = gv3.g();
        synchronized (gv3VarG.b) {
            try {
                gv3VarG.c.B6(cls.getCanonicalName());
            } catch (RemoteException e) {
                is0.zzc("Unable to register RtbAdapter", e);
            }
        }
    }

    public static void setAppMuted(boolean z) {
        gv3 gv3VarG = gv3.g();
        synchronized (gv3VarG.b) {
            bi.m(gv3VarG.c != null, "MobileAds.initialize() must be called prior to setting app muted state.");
            try {
                gv3VarG.c.L1(z);
            } catch (RemoteException e) {
                is0.zzc("Unable to set app mute state.", e);
            }
        }
    }

    public static void setAppVolume(float f) {
        gv3 gv3VarG = gv3.g();
        Objects.requireNonNull(gv3VarG);
        bi.c(0.0f <= f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        synchronized (gv3VarG.b) {
            bi.m(gv3VarG.c != null, "MobileAds.initialize() must be called prior to setting the app volume.");
            try {
                gv3VarG.c.k5(f);
            } catch (RemoteException e) {
                is0.zzc("Unable to set app volume.", e);
            }
        }
    }

    public static void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        gv3 gv3VarG = gv3.g();
        Objects.requireNonNull(gv3VarG);
        bi.c(requestConfiguration != null, "Null passed to setRequestConfiguration.");
        synchronized (gv3VarG.b) {
            RequestConfiguration requestConfiguration2 = gv3VarG.g;
            gv3VarG.g = requestConfiguration;
            if (gv3VarG.c == null) {
                return;
            }
            if (requestConfiguration2.getTagForChildDirectedTreatment() != requestConfiguration.getTagForChildDirectedTreatment() || requestConfiguration2.getTagForUnderAgeOfConsent() != requestConfiguration.getTagForUnderAgeOfConsent()) {
                try {
                    gv3VarG.c.N2(new zzaat(requestConfiguration));
                } catch (RemoteException e) {
                    is0.zzc("Unable to set request configuration parcel.", e);
                }
            }
        }
    }

    @Deprecated
    public static void initialize(Context context, String str, Settings settings) {
        gv3.g().d(context, str, null);
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    public static void initialize(Context context, OnInitializationCompleteListener onInitializationCompleteListener) {
        gv3.g().d(context, null, onInitializationCompleteListener);
    }
}
