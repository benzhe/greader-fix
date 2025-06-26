.class public final Ll;
.super Ljm7;
.source "kotlin-style lambda group"

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
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ll;->e:I

    iput-object p2, p0, Ll;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Ll;->e:I

    const/4 v1, 0x0

    const-string v2, "binding"

    const-string v3, "it"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    if-ne v0, v4, :cond_3

    .line 1
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    .line 2
    iget-object v0, p0, Ll;->f:Ljava/lang/Object;

    check-cast v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    invoke-static {p1, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lho6;->v:Landroid/widget/TextView;

    const-string v6, "binding.yearlySubscriptionPrice"

    invoke-static {v3, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f1102e8

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-virtual {v0, v6, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lho6;->u:Landroid/widget/TextView;

    const-string v4, "binding.yearlySubscriptionDescription"

    invoke-static {v3, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ln56;->X0(Lcom/android/billingclient/api/SkuDetails;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v3, :cond_0

    iget-object v2, v3, Lho6;->t:Landroid/widget/LinearLayout;

    .line 6
    new-instance v3, Lls6;

    invoke-direct {v3, v0, p1}, Lls6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;Lcom/android/billingclient/api/SkuDetails;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1

    .line 9
    :cond_0
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v5

    .line 10
    :cond_1
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v5

    .line 11
    :cond_2
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v5

    .line 12
    :cond_3
    throw v5

    .line 13
    :cond_4
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    .line 14
    iget-object v0, p0, Ll;->f:Ljava/lang/Object;

    check-cast v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    invoke-static {p1, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lho6;->d:Landroid/widget/TextView;

    const-string v6, "binding.monthlySubscriptionPrice"

    invoke-static {v3, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f1102cd

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-virtual {v0, v6, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lho6;->c:Landroid/widget/TextView;

    const-string v4, "binding.monthlySubscriptionDescription"

    invoke-static {v3, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ln56;->X0(Lcom/android/billingclient/api/SkuDetails;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v3, :cond_5

    iget-object v2, v3, Lho6;->b:Landroid/widget/LinearLayout;

    .line 18
    new-instance v3, Ljs6;

    invoke-direct {v3, v0, p1}, Ljs6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;Lcom/android/billingclient/api/SkuDetails;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1

    .line 21
    :cond_5
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v5

    .line 22
    :cond_6
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v5

    .line 23
    :cond_7
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v5
.end method
