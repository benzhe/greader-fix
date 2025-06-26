.class public final Le;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le;->e:I

    iput-object p2, p0, Le;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Le;->e:I

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_8

    .line 1
    iget-object p1, p0, Le;->f:Ljava/lang/Object;

    check-cast p1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    .line 2
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    const-string v3, "binding"

    if-eqz v1, :cond_7

    iget-object v1, v1, Lho6;->o:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const-string v4, "binding.rewardedAdLoading"

    invoke-static {v1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$this$isVisible"

    .line 3
    invoke-static {v1, v5}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn6;->e0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f1102dd

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lho6;->o:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-static {v1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$visible"

    .line 9
    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 11
    new-instance v1, Lhs6;

    invoke-direct {v1, p1}, Lhs6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    const-string v2, "context"

    .line 12
    invoke-static {p1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onAdLoaded"

    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 14
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v3

    const-string v4, "GDPR.getInstance()"

    invoke-static {v3, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lpl6;->a()Lrl6;

    move-result-object v3

    const-string v4, "GDPR.getInstance().consentState"

    invoke-static {v3, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v3, v3, Lrl6;->a:Lql6;

    const-string v4, "GDPR.getInstance().consentState.consent"

    .line 16
    invoke-static {v3, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v4, Lql6;->h:Lql6;

    if-eq v3, v4, :cond_4

    sget-object v4, Lql6;->i:Lql6;

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "npa"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 20
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    const-string v2, "adRequestBuilder.build()"

    invoke-static {v0, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v2, Lzv6;

    invoke-direct {v2, v1}, Lzv6;-><init>(Ltl7;)V

    const-string v1, "ca-app-pub-6875289151086704/7294691963"

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    :goto_2
    return-void

    .line 22
    :cond_6
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_7
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_8
    throw v2

    .line 25
    :cond_9
    iget-object p1, p0, Le;->f:Ljava/lang/Object;

    check-cast p1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    .line 26
    sget v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->E:I

    .line 27
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lt75;

    invoke-direct {v0, p1}, Lt75;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1102da

    .line 29
    invoke-virtual {v0, v1}, Lt75;->m(I)Lt75;

    .line 30
    new-instance v1, Lns6;

    invoke-direct {v1, p1}, Lns6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    const p1, 0x7f1102d9

    .line 31
    invoke-virtual {v0, p1, v1}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    .line 32
    sget-object v0, Los6;->e:Los6;

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Lt75;->h(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    const v0, 0x7f0c0046

    .line 33
    invoke-virtual {p1, v0}, Lt75;->o(I)Lt75;

    .line 34
    invoke-virtual {p1}, La0$a;->e()La0;

    return-void

    .line 35
    :cond_a
    iget-object p1, p0, Le;->f:Ljava/lang/Object;

    check-cast p1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
