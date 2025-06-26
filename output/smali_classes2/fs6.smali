.class public final Lfs6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lcom/android/billingclient/api/SkuDetails;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

.field public final synthetic f:Lpo6;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;Lpo6;)V
    .locals 0

    iput-object p1, p0, Lfs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    iput-object p2, p0, Lfs6;->f:Lpo6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    .line 2
    iget-object v0, p0, Lfs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const-string v1, "it"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lfs6;->f:Lpo6;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->B:Lpo6;

    .line 4
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    const-string v3, "binding"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v2, Lho6;->k:Landroid/widget/TextView;

    const-string v5, "binding.promoSubscriptionPrice"

    invoke-static {v2, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f1102e8

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lho6;->j:Landroid/widget/TextView;

    const-string v5, "binding.promoSubscriptionDescription"

    invoke-static {v2, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ln56;->X0(Lcom/android/billingclient/api/SkuDetails;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lho6;->i:Landroid/widget/LinearLayout;

    .line 7
    new-instance v3, Lks6;

    invoke-direct {v3, v0, p1, v1}, Lks6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;Lcom/android/billingclient/api/SkuDetails;Lpo6;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1

    .line 10
    :cond_0
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v4

    .line 11
    :cond_1
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v4

    .line 12
    :cond_2
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v4
.end method
