.class public final Lhs6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Ltl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Ltl7<",
        "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
        "Lcom/google/android/gms/ads/LoadAdError;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V
    .locals 0

    iput-object p1, p0, Lhs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    check-cast p2, Lcom/google/android/gms/ads/LoadAdError;

    .line 2
    iget-object v0, p0, Lhs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    .line 3
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v0, Lho6;->o:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const-string v1, "binding.rewardedAdLoading"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$gone"

    .line 5
    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=> load rewarded error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljy6;->a(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lhs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const p2, 0x7f1102dc

    invoke-static {p1, p2}, Ln56;->W1(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    iget-object p2, p0, Lhs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    .line 10
    iput-object p1, p2, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->C:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 11
    new-instance v0, Lgs6;

    invoke-direct {v0, p0}, Lgs6;-><init>(Lhs6;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 12
    :cond_1
    :goto_0
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1

    :cond_2
    const-string p1, "binding"

    .line 13
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
