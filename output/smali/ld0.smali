.class public final Lld0;
.super Lhd0;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhd0;-><init>()V

    .line 2
    iput-object p1, p0, Lld0;->e:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    return-void
.end method


# virtual methods
.method public final M4(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lld0;->e:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvh;->C()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;->onInstreamAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public final P1(Lzc0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lld0;->e:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    new-instance v1, Ljd0;

    invoke-direct {v1, p1}, Ljd0;-><init>(Lzc0;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;->onInstreamAdLoaded(Lcom/google/android/gms/ads/instream/InstreamAd;)V

    return-void
.end method

.method public final Y5(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lld0;->e:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;->onInstreamAdFailedToLoad(I)V

    return-void
.end method
