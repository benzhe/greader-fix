.class public final Lcom/noinnion/android/greader/ui/premium/PremiumActivity$f;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lcom/android/billingclient/api/Purchase;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$f;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$f;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const-string v1, "purchase"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    const-string v2, "binding"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v1, Lho6;->e:Landroid/widget/TextView;

    const-string v4, "binding.orderId"

    invoke-static {v1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v4, p1, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v5, "orderId"

    .line 5
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lho6;->p:Landroid/widget/TextView;

    .line 8
    iget-object v4, p1, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v5, "autoRenewing"

    .line 9
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f110356

    goto :goto_0

    :cond_0
    const v4, 0x7f11034a

    .line 10
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lho6;->r:Landroid/widget/TextView;

    const-string v4, "binding.subscriptionSubscribedSince"

    invoke-static {v1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v4, p1, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v5, "purchaseTime"

    .line 13
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 14
    invoke-static {v4, v5}, Lo48;->M(J)Lo48;

    move-result-object v4

    invoke-static {}, Lz48;->M()Lz48;

    move-result-object v5

    const-string v6, "instant"

    .line 15
    invoke-static {v4, v6}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v6, "zone"

    .line 16
    invoke-static {v5, v6}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-wide v6, v4, Lo48;->e:J

    .line 18
    iget v4, v4, Lo48;->f:I

    .line 19
    invoke-static {v6, v7, v4, v5}, Lc58;->W(JILz48;)Lc58;

    move-result-object v4

    .line 20
    sget-object v5, Lh68;->g:Lh68;

    .line 21
    sget-object v6, Lb68;->h:Lb68;

    const-string v6, "dateStyle"

    .line 22
    invoke-static {v5, v6}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    new-instance v6, Lc68;

    invoke-direct {v6}, Lc68;-><init>()V

    .line 24
    new-instance v7, Lc68$i;

    invoke-direct {v7, v5, v3}, Lc68$i;-><init>(Lh68;Lh68;)V

    invoke-virtual {v6, v7}, Lc68;->b(Lc68$e;)I

    .line 25
    invoke-virtual {v6}, Lc68;->o()Lb68;

    move-result-object v5

    sget-object v6, Lo58;->g:Lo58;

    invoke-virtual {v5, v6}, Lb68;->b(Lj58;)Lb68;

    move-result-object v5

    const-string v6, "formatter"

    .line 26
    invoke-static {v5, v6}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v5, v4}, Lb68;->a(Lu68;)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D:Lho6;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lho6;->f:Landroid/widget/Button;

    new-instance v2, Lms6;

    invoke-direct {v2, v0, p1}, Lms6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 30
    invoke-static {v0, p1, v2, v2, v1}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->E(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;ZZZI)V

    .line 31
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1

    .line 32
    :cond_1
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_2
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v3

    .line 34
    :cond_3
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v3

    .line 35
    :cond_4
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v3
.end method
