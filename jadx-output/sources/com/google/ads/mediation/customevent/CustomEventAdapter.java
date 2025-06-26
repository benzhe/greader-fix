package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.common.annotation.KeepName;
import defpackage.is0;

@KeepName
/* loaded from: classes.dex */
public final class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, CustomEventServerParameters>, MediationInterstitialAdapter<CustomEventExtras, CustomEventServerParameters> {
    public View a;
    public CustomEventBanner b;
    public CustomEventInterstitial c;

    public class a implements CustomEventInterstitialListener {
        public final CustomEventAdapter a;
        public final MediationInterstitialListener b;

        public a(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.a = customEventAdapter;
            this.b = mediationInterstitialListener;
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onDismissScreen() {
            is0.zzdz("Custom event adapter called onDismissScreen.");
            this.b.onDismissScreen(this.a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onFailedToReceiveAd() {
            is0.zzdz("Custom event adapter called onFailedToReceiveAd.");
            this.b.onFailedToReceiveAd(this.a, AdRequest.ErrorCode.NO_FILL);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onLeaveApplication() {
            is0.zzdz("Custom event adapter called onLeaveApplication.");
            this.b.onLeaveApplication(this.a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onPresentScreen() {
            is0.zzdz("Custom event adapter called onPresentScreen.");
            this.b.onPresentScreen(this.a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onReceivedAd() {
            is0.zzdz("Custom event adapter called onReceivedAd.");
            this.b.onReceivedAd(CustomEventAdapter.this);
        }
    }

    public static final class b implements CustomEventBannerListener {
        public final CustomEventAdapter a;
        public final MediationBannerListener b;

        public b(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.a = customEventAdapter;
            this.b = mediationBannerListener;
        }

        @Override // com.google.ads.mediation.customevent.CustomEventBannerListener
        public final void onClick() {
            is0.zzdz("Custom event adapter called onFailedToReceiveAd.");
            this.b.onClick(this.a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onDismissScreen() {
            is0.zzdz("Custom event adapter called onFailedToReceiveAd.");
            this.b.onDismissScreen(this.a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onFailedToReceiveAd() {
            is0.zzdz("Custom event adapter called onFailedToReceiveAd.");
            this.b.onFailedToReceiveAd(this.a, AdRequest.ErrorCode.NO_FILL);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onLeaveApplication() {
            is0.zzdz("Custom event adapter called onFailedToReceiveAd.");
            this.b.onLeaveApplication(this.a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onPresentScreen() {
            is0.zzdz("Custom event adapter called onFailedToReceiveAd.");
            this.b.onPresentScreen(this.a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventBannerListener
        public final void onReceivedAd(View view) {
            is0.zzdz("Custom event adapter called onReceivedAd.");
            CustomEventAdapter customEventAdapter = this.a;
            customEventAdapter.a = view;
            this.b.onReceivedAd(customEventAdapter);
        }
    }

    public static <T> T a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + String.valueOf(str).length() + 46);
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            is0.zzez(sb.toString());
            return null;
        }
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final void destroy() {
        CustomEventBanner customEventBanner = this.b;
        if (customEventBanner != null) {
            customEventBanner.destroy();
        }
        CustomEventInterstitial customEventInterstitial = this.c;
        if (customEventInterstitial != null) {
            customEventInterstitial.destroy();
        }
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.a;
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final Class<CustomEventServerParameters> getServerParametersType() {
        return CustomEventServerParameters.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(MediationBannerListener mediationBannerListener, Activity activity, CustomEventServerParameters customEventServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        CustomEventBanner customEventBanner = (CustomEventBanner) a(customEventServerParameters.className);
        this.b = customEventBanner;
        if (customEventBanner == null) {
            mediationBannerListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
        } else {
            this.b.requestBannerAd(new b(this, mediationBannerListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, adSize, mediationAdRequest, customEventExtras == null ? null : customEventExtras.getExtra(customEventServerParameters.label));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(MediationInterstitialListener mediationInterstitialListener, Activity activity, CustomEventServerParameters customEventServerParameters, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) a(customEventServerParameters.className);
        this.c = customEventInterstitial;
        if (customEventInterstitial == null) {
            mediationInterstitialListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
        } else {
            this.c.requestInterstitialAd(new a(this, mediationInterstitialListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, mediationAdRequest, customEventExtras == null ? null : customEventExtras.getExtra(customEventServerParameters.label));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.c.showInterstitial();
    }
}
