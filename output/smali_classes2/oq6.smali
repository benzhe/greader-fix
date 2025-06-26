.class public final Loq6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Ltl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Ltl7<",
        "Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;",
        "Lcom/google/android/gms/ads/LoadAdError;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Loq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    iput-object p2, p0, Loq6;->f:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    check-cast p2, Lcom/google/android/gms/ads/LoadAdError;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Loq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 3
    iput-object p1, p2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->J:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 4
    new-instance p2, Lmq6;

    invoke-direct {p2, p0}, Lmq6;-><init>(Loq6;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 5
    iget-object p2, p0, Loq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lnq6;

    invoke-direct {v0, p1, p0}, Lnq6;-><init>(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;Loq6;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 6
    :cond_0
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
