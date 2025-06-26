.class public final Lcom/noinnion/android/greader/ui/premium/PremiumActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public final A:Loj7;

.field public B:Lpo6;

.field public C:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field public D:Lho6;

.field public final y:Loj7;

.field public final z:Loj7;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    .line 2
    sget-object v0, Lpj7;->e:Lpj7;

    .line 3
    new-instance v1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$a;-><init>(Landroid/content/ComponentCallbacks;Lk18;Lel7;)V

    invoke-static {v0, v1}, Ln56;->q1(Lpj7;Lel7;)Loj7;

    move-result-object v1

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->y:Loj7;

    .line 4
    new-instance v1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$b;

    invoke-direct {v1, p0, v2, v2}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$b;-><init>(Landroid/content/ComponentCallbacks;Lk18;Lel7;)V

    invoke-static {v0, v1}, Ln56;->q1(Lpj7;Lel7;)Loj7;

    move-result-object v1

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->z:Loj7;

    .line 5
    new-instance v1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$c;

    invoke-direct {v1, p0, v2, v2}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$c;-><init>(Landroid/content/ComponentCallbacks;Lk18;Lel7;)V

    invoke-static {v0, v1}, Ln56;->q1(Lpj7;Lel7;)Loj7;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->A:Loj7;

    return-void
.end method

.method public static E(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;ZZZI)V
    .locals 3

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 1
    :cond_2
    iget-object p4, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    const-string v0, "binding"

    const/4 v1, 0x0

    if-eqz p4, :cond_5

    iget-object p4, p4, Lho6;->h:Landroid/widget/LinearLayout;

    const-string v2, "binding.premiumStatus"

    invoke-static {p4, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p4, p1}, Ln56;->B2(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lho6;->q:Landroid/widget/LinearLayout;

    const-string p4, "binding.subscriptionModels"

    invoke-static {p1, p4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Ln56;->B2(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 3
    iget-object p0, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lho6;->g:Landroid/widget/TextView;

    const-string p1, "binding.premiumDataError"

    invoke-static {p0, p1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Ln56;->B2(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void

    :cond_3
    invoke-static {v0}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_4
    invoke-static {v0}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_5
    invoke-static {v0}, Lim7;->k(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final B()Luo6;
    .locals 1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->z:Loj7;

    invoke-interface {v0}, Loj7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luo6;

    return-object v0
.end method

.method public final C(Lcom/android/billingclient/api/SkuDetails;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SKU cannot be null."

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_7

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    .line 11
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    const-string v6, "play_pass_subs"

    if-ge v5, v4, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 12
    check-cast v7, Lcom/android/billingclient/api/SkuDetails;

    .line 13
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 14
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 15
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SKUs should have the same type."

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 19
    check-cast v7, Lcom/android/billingclient/api/SkuDetails;

    .line 20
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 21
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 22
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All SKUs must have the same package name."

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 24
    :cond_7
    new-instance p1, Lhn;

    .line 25
    invoke-direct {p1}, Lhn;-><init>()V

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    .line 27
    iput-boolean v2, p1, Lhn;->a:Z

    const/4 v2, 0x0

    .line 28
    iput-object v2, p1, Lhn;->b:Ljava/lang/String;

    .line 29
    iput-object v2, p1, Lhn;->e:Ljava/lang/String;

    .line 30
    iput-object v2, p1, Lhn;->c:Ljava/lang/String;

    .line 31
    iput-object v2, p1, Lhn;->d:Ljava/lang/String;

    .line 32
    iput v1, p1, Lhn;->f:I

    .line 33
    iput-object v0, p1, Lhn;->g:Ljava/util/ArrayList;

    .line 34
    iput-boolean v1, p1, Lhn;->h:Z

    const-string v0, "BillingFlowParams.newBui\u2026ils)\n            .build()"

    .line 35
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->A:Loj7;

    invoke-interface {v0}, Loj7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq;

    .line 37
    invoke-interface {v0, p0, p1}, Leq;->d(Landroid/app/Activity;Lhn;)Lhb7;

    move-result-object p1

    .line 38
    sget-object v0, Lej7;->b:Lzb7;

    .line 39
    invoke-virtual {p1, v0}, Lhb7;->j(Lzb7;)Lhb7;

    move-result-object p1

    .line 40
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhb7;->g(Lzb7;)Lhb7;

    move-result-object p1

    const-string v0, "billingClient.launchFlow\u2026dSchedulers.mainThread())"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lis6;->e:Lis6;

    const/4 v1, 0x2

    .line 42
    invoke-static {p1, v0, v2, v1}, Lbj7;->g(Lhb7;Lpl7;Lel7;I)Lic7;

    move-result-object p1

    .line 43
    invoke-static {p1, p0}, Ln56;->j(Lic7;Lcom/noinnion/android/reader/ui/BaseDialogActivity;)V

    return-void

    .line 44
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SkuDetails must be provided."

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final D()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->B()Luo6;

    move-result-object v0

    .line 2
    iget-object v0, v0, Luo6;->c:Lyn6;

    invoke-virtual {v0}, Lyn6;->b()Lac7;

    move-result-object v0

    .line 3
    sget-object v1, Lto6;->e:Lto6;

    .line 4
    new-instance v2, Llh7;

    invoke-direct {v2, v0, v1}, Llh7;-><init>(Lec7;Luc7;)V

    const-string v0, "billingRepository.getVal\u2026just(purchases.first()) }"

    .line 5
    invoke-static {v2, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lej7;->b:Lzb7;

    .line 7
    invoke-virtual {v2, v0}, Lrb7;->n(Lzb7;)Lrb7;

    move-result-object v0

    .line 8
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrb7;->k(Lzb7;)Lrb7;

    move-result-object v0

    const-string v1, "billingUseCase.getSubscr\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$f;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$f;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    .line 10
    new-instance v2, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$g;

    invoke-direct {v2, p0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$g;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    .line 11
    new-instance v3, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$h;

    invoke-direct {v3, p0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$h;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    .line 12
    invoke-static {v0, v3, v2, v1}, Lbj7;->e(Lrb7;Lpl7;Lel7;Lpl7;)Lic7;

    move-result-object v0

    .line 13
    invoke-static {v0, p0}, Ln56;->j(Lic7;Lcom/noinnion/android/reader/ui/BaseDialogActivity;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn6;->e0(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "binding"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "binding.rewardedAdDescription"

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "dd.MMM.yyyy HH:mm"

    invoke-direct {v0, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-wide/16 v7, -0x1

    const-string v9, "premium_rewarded_expiry_time"

    .line 17
    invoke-static {v6, v9, v7, v8}, Liw6;->A(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v6, :cond_0

    iget-object v1, v6, Lho6;->n:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1102df

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_1
    invoke-static {}, Ljb6;->a()Ljb6;

    move-result-object v0

    const-string v6, "premium_reward_duration_in_seconds"

    invoke-virtual {v0, v6}, Ljb6;->b(Ljava/lang/String;)J

    move-result-wide v6

    .line 21
    invoke-static {v6, v7}, Ln48;->l(J)Ln48;

    move-result-object v0

    .line 22
    iget-wide v6, v0, Ln48;->e:J

    const-wide/32 v8, 0x15180

    div-long/2addr v6, v8

    .line 23
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lho6;->n:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1102db

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 32

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move-object/from16 v2, p1

    .line 1
    invoke-virtual {v0, v2, v1}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->A(Landroid/os/Bundle;Z)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00cc

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901e7

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/widget/LinearLayout;

    const v6, 0x7f09036c

    const v7, 0x7f09036d

    const v8, 0x7f09036e

    if-eqz v9, :cond_6

    const v3, 0x7f0901e8

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_6

    const v3, 0x7f0901e9

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_6

    const v3, 0x7f09022d

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_6

    const v3, 0x7f090241

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    if-eqz v13, :cond_6

    const v3, 0x7f090249

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_6

    const v3, 0x7f09024b

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_6

    const v3, 0x7f090257

    .line 11
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_6

    const v3, 0x7f090258

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_6

    const v3, 0x7f090259

    .line 13
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_6

    const v3, 0x7f090265

    .line 14
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/google/android/material/button/MaterialButton;

    if-eqz v19, :cond_6

    const v3, 0x7f090268

    .line 15
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    if-eqz v20, :cond_6

    const v3, 0x7f090269

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v21, :cond_6

    const v3, 0x7f09026a

    .line 17
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_6

    const v3, 0x7f09026b

    .line 18
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    if-eqz v23, :cond_6

    const v3, 0x7f09026c

    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_6

    const v3, 0x7f0902da

    .line 20
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_6

    const v3, 0x7f0902db

    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    if-eqz v26, :cond_6

    const v3, 0x7f0902dc

    .line 22
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_6

    const v3, 0x7f090323

    .line 23
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    if-eqz v28, :cond_6

    .line 24
    move-object/from16 v3, v28

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 25
    new-instance v4, Lio6;

    invoke-direct {v4, v3, v3}, Lio6;-><init>(Landroidx/appcompat/widget/Toolbar;Landroidx/appcompat/widget/Toolbar;)V

    .line 26
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/LinearLayout;

    if-eqz v29, :cond_5

    .line 27
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/TextView;

    if-eqz v30, :cond_4

    .line 28
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/TextView;

    if-eqz v31, :cond_3

    .line 29
    new-instance v3, Lho6;

    move-object v7, v3

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    move-object/from16 v28, v4

    invoke-direct/range {v7 .. v31}, Lho6;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lio6;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string v2, "PremiumBinding.inflate(layoutInflater)"

    .line 30
    invoke-static {v3, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    const-string v2, "binding"

    .line 31
    iget-object v3, v3, Lho6;->a:Landroid/widget/FrameLayout;

    .line 32
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 33
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lho6;->s:Lio6;

    iget-object v3, v3, Lio6;->a:Landroidx/appcompat/widget/Toolbar;

    const v4, 0x7f080081

    .line 34
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 35
    new-instance v4, Le;

    invoke-direct {v4, v5, v0}, Le;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lho6;->l:Lcom/google/android/material/button/MaterialButton;

    new-instance v4, Le;

    invoke-direct {v4, v1, v0}, Le;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v3, :cond_0

    iget-object v2, v3, Lho6;->m:Landroid/widget/LinearLayout;

    new-instance v3, Le;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Le;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->B()Luo6;

    move-result-object v2

    .line 39
    iget-object v2, v2, Luo6;->a:Lmb7;

    .line 40
    sget-object v3, Lej7;->b:Lzb7;

    .line 41
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "scheduler is null"

    .line 42
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    instance-of v4, v2, Lje7;

    xor-int/2addr v1, v4

    .line 44
    new-instance v4, Luf7;

    invoke-direct {v4, v2, v3, v1}, Luf7;-><init>(Lmb7;Lzb7;Z)V

    .line 45
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmb7;->o(Lzb7;)Lmb7;

    move-result-object v1

    const-string v2, "billingUseCase.purchaseU\u2026dSchedulers.mainThread())"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v2, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$d;

    invoke-direct {v2, v0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$d;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    .line 47
    sget-object v3, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$e;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity$e;

    .line 48
    sget-object v4, Lbj7;->a:Lpl7;

    .line 49
    sget-object v4, Lbj7;->c:Lel7;

    const-string v5, "$this$subscribeBy"

    .line 50
    invoke-static {v1, v5}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "onError"

    invoke-static {v3, v5}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "onComplete"

    invoke-static {v4, v5}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "onNext"

    invoke-static {v2, v5}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {v2}, Lbj7;->a(Lpl7;)Ltc7;

    move-result-object v2

    invoke-static {v3}, Lbj7;->c(Lpl7;)Ltc7;

    move-result-object v3

    invoke-static {v4}, Lbj7;->b(Lel7;)Lqc7;

    move-result-object v4

    .line 52
    sget-object v5, Lye7;->e:Lye7;

    invoke-virtual {v1, v2, v3, v4, v5}, Lmb7;->r(Ltc7;Ltc7;Lqc7;Ltc7;)Lic7;

    move-result-object v1

    const-string v2, "subscribe(onNext.asConsu\u2026ete.asOnCompleteAction())"

    .line 53
    invoke-static {v1, v2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {v1, v0}, Ln56;->j(Lic7;Lcom/noinnion/android/reader/ui/BaseDialogActivity;)V

    const v1, 0x7f110111

    .line 55
    invoke-static {v0, v1}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void

    .line 56
    :cond_0
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_1
    const/4 v1, 0x0

    .line 57
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x0

    .line 58
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    :cond_3
    const v3, 0x7f09036e

    goto :goto_0

    :cond_4
    const v3, 0x7f09036d

    goto :goto_0

    :cond_5
    const v3, 0x7f09036c

    .line 59
    :cond_6
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->C:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "$this$destroy"

    .line 2
    invoke-static {v0, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->C:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 5
    invoke-super {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D()V

    return-void
.end method
