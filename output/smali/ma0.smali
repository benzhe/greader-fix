.class public final Lma0;
.super Ln90;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln90;-><init>()V

    .line 2
    iput-object p1, p0, Lma0;->e:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final V3(Lv90;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lma0;->e:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;

    .line 2
    new-instance v1, Laa0;

    invoke-direct {v1, p1}, Laa0;-><init>(Lv90;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;->onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method
