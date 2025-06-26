package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.annotation.KeepName;
import defpackage.is0;

@KeepName
/* loaded from: classes.dex */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    public static final AdError e = new AdError(0, "Could not instantiate custom event adapter", MobileAds.ERROR_DOMAIN);
    public View a;
    public CustomEventBanner b;
    public CustomEventInterstitial c;
    public CustomEventNative d;

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

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        CustomEventBanner customEventBanner = this.b;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.d;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        CustomEventBanner customEventBanner = this.b;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.d;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        CustomEventBanner customEventBanner = this.b;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.d;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        CustomEventBanner customEventBanner = (CustomEventBanner) a(bundle.getString("class_name"));
        this.b = customEventBanner;
        if (customEventBanner == null) {
            mediationBannerListener.onAdFailedToLoad(this, e);
        } else {
            this.b.requestBannerAd(context, new a(this, mediationBannerListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), adSize, mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) a(bundle.getString("class_name"));
        this.c = customEventInterstitial;
        if (customEventInterstitial == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, e);
        } else {
            this.c.requestInterstitialAd(context, new c(this, mediationInterstitialListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        CustomEventNative customEventNative = (CustomEventNative) a(bundle.getString("class_name"));
        this.d = customEventNative;
        if (customEventNative == null) {
            mediationNativeListener.onAdFailedToLoad(this, e);
        } else {
            this.d.requestNativeAd(context, new b(this, mediationNativeListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), nativeMediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.c.showInterstitial();
    }

    public static final class a implements CustomEventBannerListener {
        public final CustomEventAdapter a;
        public final MediationBannerListener b;

        public a(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.a = customEventAdapter;
            this.b = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            is0.zzdz("Custom event adapter called onAdClicked.");
            this.b.onAdClicked(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            is0.zzdz("Custom event adapter called onAdClosed.");
            this.b.onAdClosed(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            is0.zzdz("Custom event adapter called onAdFailedToLoad.");
            this.b.onAdFailedToLoad(this.a, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            is0.zzdz("Custom event adapter called onAdLeftApplication.");
            this.b.onAdLeftApplication(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener
        public final void onAdLoaded(View view) {
            is0.zzdz("Custom event adapter called onAdLoaded.");
            CustomEventAdapter customEventAdapter = this.a;
            customEventAdapter.a = view;
            this.b.onAdLoaded(customEventAdapter);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            is0.zzdz("Custom event adapter called onAdOpened.");
            this.b.onAdOpened(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            is0.zzdz("Custom event adapter called onAdFailedToLoad.");
            this.b.onAdFailedToLoad(this.a, adError);
        }
    }

    public static class b implements CustomEventNativeListener {
        public final CustomEventAdapter a;
        public final MediationNativeListener b;

        public b(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
            this.a = customEventAdapter;
            this.b = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            is0.zzdz("Custom event adapter called onAdClicked.");
            this.b.onAdClicked(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            is0.zzdz("Custom event adapter called onAdClosed.");
            this.b.onAdClosed(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            is0.zzdz("Custom event adapter called onAdFailedToLoad.");
            this.b.onAdFailedToLoad(this.a, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdImpression() {
            is0.zzdz("Custom event adapter called onAdImpression.");
            this.b.onAdImpression(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            is0.zzdz("Custom event adapter called onAdLeftApplication.");
            this.b.onAdLeftApplication(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(NativeAdMapper nativeAdMapper) {
            is0.zzdz("Custom event adapter called onAdLoaded.");
            this.b.onAdLoaded(this.a, nativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            is0.zzdz("Custom event adapter called onAdOpened.");
            this.b.onAdOpened(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            is0.zzdz("Custom event adapter called onAdFailedToLoad.");
            this.b.onAdFailedToLoad(this.a, adError);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(UnifiedNativeAdMapper unifiedNativeAdMapper) {
            is0.zzdz("Custom event adapter called onAdLoaded.");
            this.b.onAdLoaded(this.a, unifiedNativeAdMapper);
        }
    }

    public class c implements CustomEventInterstitialListener {
        public final CustomEventAdapter a;
        public final MediationInterstitialListener b;

        public c(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.a = customEventAdapter;
            this.b = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            is0.zzdz("Custom event adapter called onAdClicked.");
            this.b.onAdClicked(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            is0.zzdz("Custom event adapter called onAdClosed.");
            this.b.onAdClosed(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            is0.zzdz("Custom event adapter called onFailedToReceiveAd.");
            this.b.onAdFailedToLoad(this.a, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            is0.zzdz("Custom event adapter called onAdLeftApplication.");
            this.b.onAdLeftApplication(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onAdLoaded() {
            is0.zzdz("Custom event adapter called onReceivedAd.");
            this.b.onAdLoaded(CustomEventAdapter.this);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            is0.zzdz("Custom event adapter called onAdOpened.");
            this.b.onAdOpened(this.a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            is0.zzdz("Custom event adapter called onFailedToReceiveAd.");
            this.b.onAdFailedToLoad(this.a, adError);
        }
    }
}
