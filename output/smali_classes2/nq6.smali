.class public final Lnq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

.field public final synthetic b:Loq6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;Loq6;)V
    .locals 0

    iput-object p1, p0, Lnq6;->a:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    iput-object p2, p0, Lnq6;->b:Loq6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lnq6;->a:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;

    move-result-object p1

    const-string v0, "rewardItem"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result p1

    int-to-long v1, p1

    .line 2
    sget-object p1, Ln48;->g:Ln48;

    const p1, 0x15180

    .line 3
    invoke-static {v1, v2, p1}, Lkt7;->r(JI)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-static {v1, v2, p1}, Ln48;->i(JI)Ln48;

    move-result-object v1

    const-string v2, "Duration.ofDays(rewardItem.amount.toLong())"

    .line 4
    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-wide v1, v1, Ln48;->e:J

    .line 6
    iget-object v3, p0, Lnq6;->b:Loq6;

    iget-object v3, v3, Loq6;->f:Landroid/content/Context;

    .line 7
    sget v4, Lcn6;->b:I

    const-wide/16 v4, 0x3e8

    mul-long v1, v1, v4

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v1

    const-string v1, "premium_rewarded_expiry_time"

    .line 9
    invoke-static {v3, v1, v4, v5}, Liw6;->U(Landroid/content/Context;Ljava/lang/String;J)V

    .line 10
    iget-object v1, p0, Lnq6;->b:Loq6;

    iget-object v1, v1, Loq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v2, p0, Lnq6;->b:Loq6;

    iget-object v2, v2, Loq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 12
    iget-object v2, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->G:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v3, 0x8

    .line 14
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    :cond_0
    new-instance v2, Lt75;

    invoke-direct {v2, v1}, Lt75;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1102e0

    .line 16
    invoke-virtual {v2, v1}, Lt75;->m(I)Lt75;

    .line 17
    iget-object v1, p0, Lnq6;->b:Loq6;

    iget-object v1, v1, Loq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const v3, 0x7f1102de

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lnq6;->a:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;

    move-result-object v5

    invoke-static {v5, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object v0, v2, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 19
    iget-object p1, p0, Lnq6;->b:Loq6;

    iget-object p1, p1, Loq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const v0, 0x104000a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v0, Lc;->f:Lc;

    invoke-virtual {v2, p1, v0}, Lt75;->k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 20
    invoke-virtual {v2}, Lt75;->a()La0;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
