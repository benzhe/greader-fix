package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.at3;
import defpackage.ba0;
import defpackage.bi;
import defpackage.bt3;
import defpackage.ea0;
import defpackage.eg0;
import defpackage.ek0;
import defpackage.fk0;
import defpackage.ga0;
import defpackage.gk0;
import defpackage.ha0;
import defpackage.hk0;
import defpackage.hr3;
import defpackage.ia0;
import defpackage.is0;
import defpackage.js3;
import defpackage.ka0;
import defpackage.la0;
import defpackage.ma0;
import defpackage.nr3;
import defpackage.os3;
import defpackage.wr3;
import defpackage.zu3;
import java.util.Objects;

/* loaded from: classes.dex */
public class AdLoader {
    public final Context a;
    public final at3 b;

    public AdLoader(Context context, at3 at3Var) {
        this.a = context;
        this.b = at3Var;
    }

    public final void a(zu3 zu3Var) {
        try {
            this.b.M0(nr3.a(this.a, zu3Var));
        } catch (RemoteException e) {
            is0.zzc("Failed to load ad.", e);
        }
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        try {
            return this.b.zzkl();
        } catch (RemoteException e) {
            is0.zzd("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    public boolean isLoading() {
        try {
            return this.b.isLoading();
        } catch (RemoteException e) {
            is0.zzd("Failed to check if ad is loading.", e);
            return false;
        }
    }

    public void loadAd(AdRequest adRequest) {
        a(adRequest.zzdt());
    }

    public void loadAds(AdRequest adRequest, int i) {
        try {
            this.b.D6(nr3.a(this.a, adRequest.zzdt()), i);
        } catch (RemoteException e) {
            is0.zzc("Failed to load ads.", e);
        }
    }

    public static class Builder {
        public final Context a;
        public final bt3 b;

        public Builder(Context context, String str) {
            bi.j(context, "context cannot be null");
            wr3 wr3Var = os3.j.b;
            eg0 eg0Var = new eg0();
            Objects.requireNonNull(wr3Var);
            bt3 bt3VarB = new js3(wr3Var, context, str, eg0Var).b(context, false);
            this.a = context;
            this.b = bt3VarB;
        }

        public AdLoader build() {
            try {
                return new AdLoader(this.a, this.b.o4());
            } catch (RemoteException e) {
                is0.zzc("Failed to build AdLoader.", e);
                return null;
            }
        }

        public Builder forAdManagerAdView(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.b.H2(new ga0(onAdManagerAdViewLoadedListener), new zzvt(this.a, adSizeArr));
            } catch (RemoteException e) {
                is0.zzd("Failed to add Google Ad Manager banner ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forAppInstallAd(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.b.x1(new ia0(onAppInstallAdLoadedListener));
            } catch (RemoteException e) {
                is0.zzd("Failed to add app install ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forContentAd(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.b.Q3(new la0(onContentAdLoadedListener));
            } catch (RemoteException e) {
                is0.zzd("Failed to add content ad listener", e);
            }
            return this;
        }

        public Builder forCustomFormatAd(String str, NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            ek0 ek0Var = new ek0(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                bt3 bt3Var = this.b;
                gk0 gk0Var = null;
                fk0 fk0Var = new fk0(ek0Var, null);
                if (ek0Var.b != null) {
                    gk0Var = new gk0(ek0Var, null);
                }
                bt3Var.z5(str, fk0Var, gk0Var);
            } catch (RemoteException e) {
                is0.zzd("Failed to add custom format ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forCustomTemplateAd(String str, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            ba0 ba0Var = new ba0(onCustomTemplateAdLoadedListener, onCustomClickListener);
            try {
                bt3 bt3Var = this.b;
                ea0 ea0Var = null;
                ha0 ha0Var = new ha0(ba0Var, null);
                if (ba0Var.b != null) {
                    ea0Var = new ea0(ba0Var, null);
                }
                bt3Var.z5(str, ha0Var, ea0Var);
            } catch (RemoteException e) {
                is0.zzd("Failed to add custom template ad listener", e);
            }
            return this;
        }

        public Builder forNativeAd(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.b.G3(new hk0(onNativeAdLoadedListener));
            } catch (RemoteException e) {
                is0.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forPublisherAdView(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.b.H2(new ka0(onPublisherAdViewLoadedListener), new zzvt(this.a, adSizeArr));
            } catch (RemoteException e) {
                is0.zzd("Failed to add publisher banner ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forUnifiedNativeAd(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.b.G3(new ma0(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                is0.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.b.J6(new hr3(adListener));
            } catch (RemoteException e) {
                is0.zzd("Failed to set AdListener.", e);
            }
            return this;
        }

        public Builder withAdManagerAdViewOptions(AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.b.a1(adManagerAdViewOptions);
            } catch (RemoteException e) {
                is0.zzd("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }

        @Deprecated
        public Builder withCorrelator(Correlator correlator) {
            return this;
        }

        @Deprecated
        public Builder withNativeAdOptions(NativeAdOptions nativeAdOptions) {
            try {
                this.b.X0(new zzaei(nativeAdOptions));
            } catch (RemoteException e) {
                is0.zzd("Failed to specify native ad options", e);
            }
            return this;
        }

        @Deprecated
        public Builder withPublisherAdViewOptions(PublisherAdViewOptions publisherAdViewOptions) {
            try {
                this.b.I1(publisherAdViewOptions);
            } catch (RemoteException e) {
                is0.zzd("Failed to specify Ad Manager banner ad options", e);
            }
            return this;
        }

        public Builder withNativeAdOptions(com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
            try {
                this.b.X0(new zzaei(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), -1, nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzaaz(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzjx(), nativeAdOptions.getMediaAspectRatio()));
            } catch (RemoteException e) {
                is0.zzd("Failed to specify native ad options", e);
            }
            return this;
        }
    }

    @Deprecated
    public void loadAd(PublisherAdRequest publisherAdRequest) {
        a(publisherAdRequest.zzdt());
    }

    public void loadAd(AdManagerAdRequest adManagerAdRequest) {
        a(adManagerAdRequest.zzdt());
    }
}
