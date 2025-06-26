.class public final Lwo0;
.super Lmo0;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field public final f:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmo0;-><init>()V

    .line 2
    iput-object p1, p0, Lwo0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    .line 3
    iput-object p2, p0, Lwo0;->f:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method


# virtual methods
.method public final H4(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwo0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public final J1(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwo0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvh;->C()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lwo0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 4
    iget-object v0, p0, Lwo0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method

.method public final O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwo0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdLoaded()V

    .line 3
    iget-object v0, p0, Lwo0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    iget-object v1, p0, Lwo0;->f:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
