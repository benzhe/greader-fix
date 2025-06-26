package defpackage;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;

/* loaded from: classes.dex */
public final class ph0 implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {
    public final ng0 a;
    public NativeAdMapper b;
    public UnifiedNativeAdMapper c;
    public NativeCustomTemplateAd d;

    public ph0(ng0 ng0Var) {
        this.a = ng0Var;
    }

    public static void a(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper, NativeAdMapper nativeAdMapper) {
        if (mediationNativeAdapter instanceof AdMobAdapter) {
            return;
        }
        VideoController videoController = new VideoController();
        videoController.zza(new ch0());
        if (unifiedNativeAdMapper != null && unifiedNativeAdMapper.hasVideoContent()) {
            unifiedNativeAdMapper.zza(videoController);
        }
        if (nativeAdMapper == null || !nativeAdMapper.hasVideoContent()) {
            return;
        }
        nativeAdMapper.zza(videoController);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdClicked.");
        try {
            this.a.onAdClicked();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdClosed.");
        try {
            this.a.onAdClosed();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        bi.f("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error. ");
        sb.append(i);
        is0.zzdz(sb.toString());
        try {
            this.a.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.b;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.c;
        if (this.d == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                is0.zze("#007 Could not call remote method.", null);
                return;
            }
            if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideImpressionRecording()) {
                is0.zzdz("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideImpressionRecording()) {
                is0.zzdz("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        is0.zzdz("Adapter called onAdImpression.");
        try {
            this.a.onAdImpression();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.a.onAdLeftApplication();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdLoaded.");
        try {
            this.a.onAdLoaded();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdOpened.");
        try {
            this.a.onAdOpened();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onVideoEnd(MediationNativeAdapter mediationNativeAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onVideoEnd.");
        try {
            this.a.X();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void zza(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAppEvent.");
        try {
            this.a.onAppEvent(str, str2);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdClicked.");
        try {
            this.a.onAdClicked();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdClosed.");
        try {
            this.a.onAdClosed();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, AdError adError) {
        bi.f("#008 Must be called on the main UI thread.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(domain).length() + String.valueOf(message).length() + 97);
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(code);
        sb.append(". ErrorMessage: ");
        sb.append(message);
        sb.append(". ErrorDomain: ");
        sb.append(domain);
        is0.zzdz(sb.toString());
        try {
            this.a.U(adError.zzdr());
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.a.onAdLeftApplication();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdLoaded.");
        try {
            this.a.onAdLoaded();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdOpened.");
        try {
            this.a.onAdOpened();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd) {
        bi.f("#008 Must be called on the main UI thread.");
        String strValueOf = String.valueOf(nativeCustomTemplateAd.getCustomTemplateId());
        is0.zzdz(strValueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(strValueOf) : new String("Adapter called onAdLoaded with template id "));
        this.d = nativeCustomTemplateAd;
        try {
            this.a.onAdLoaded();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.b;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.c;
        if (this.d == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                is0.zze("#007 Could not call remote method.", null);
                return;
            }
            if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideClickHandling()) {
                is0.zzdz("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideClickHandling()) {
                is0.zzdz("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        is0.zzdz("Adapter called onAdClicked.");
        try {
            this.a.onAdClicked();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdClosed.");
        try {
            this.a.onAdClosed();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.a.onAdLeftApplication();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdLoaded.");
        this.b = nativeAdMapper;
        this.c = null;
        a(mediationNativeAdapter, null, nativeAdMapper);
        try {
            this.a.onAdLoaded();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdOpened.");
        try {
            this.a.onAdOpened();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        if (nativeCustomTemplateAd instanceof v80) {
            try {
                this.a.Y(((v80) nativeCustomTemplateAd).a, str);
                return;
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
                return;
            }
        }
        is0.zzez("Unexpected native custom template ad type.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        bi.f("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        is0.zzdz(sb.toString());
        try {
            this.a.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, AdError adError) {
        bi.f("#008 Must be called on the main UI thread.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(domain).length() + String.valueOf(message).length() + 97);
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(code);
        sb.append(". ErrorMessage: ");
        sb.append(message);
        sb.append(". ErrorDomain: ");
        sb.append(domain);
        is0.zzdz(sb.toString());
        try {
            this.a.U(adError.zzdr());
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdLoaded.");
        this.c = unifiedNativeAdMapper;
        this.b = null;
        a(mediationNativeAdapter, unifiedNativeAdMapper, null);
        try {
            this.a.onAdLoaded();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        bi.f("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        is0.zzdz(sb.toString());
        try {
            this.a.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, AdError adError) {
        bi.f("#008 Must be called on the main UI thread.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(domain).length() + String.valueOf(message).length() + 97);
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(code);
        sb.append(". ErrorMessage: ");
        sb.append(message);
        sb.append(". ErrorDomain: ");
        sb.append(domain);
        is0.zzdz(sb.toString());
        try {
            this.a.U(adError.zzdr());
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
