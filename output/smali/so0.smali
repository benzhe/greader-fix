.class public final Lso0;
.super Ljo0;
.source "SourceFile"


# instance fields
.field public e:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

.field public f:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljo0;-><init>()V

    return-void
.end method


# virtual methods
.method public final B1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lso0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdOpened()V

    .line 3
    :cond_0
    iget-object v0, p0, Lso0;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    :cond_1
    return-void
.end method

.method public final F5(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvh;->n()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lso0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lso0;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    :cond_1
    return-void
.end method

.method public final P0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lso0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdClosed()V

    .line 3
    :cond_0
    iget-object v0, p0, Lso0;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    :cond_1
    return-void
.end method

.method public final S(Lbo0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lso0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lto0;

    invoke-direct {v1, p1}, Lto0;-><init>(Lbo0;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_0
    return-void
.end method

.method public final b6(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lso0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdFailedToShow(I)V

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lso0;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    :cond_0
    return-void
.end method
