.class public final Lcom/noinnion/android/greader/ui/premium/PremiumActivity$g;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lel7;


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
        "Lel7<",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$g;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$g;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    .line 2
    sget v1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->E:I

    .line 3
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->B()Luo6;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljb6;->a()Ljb6;

    move-result-object v2

    const-string v3, "premium_monthly_subscription_product_id"

    invoke-virtual {v2, v3}, Ljb6;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FirebaseRemoteConfig.get\u2026scriptionProductId.key())"

    invoke-static {v2, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v1, Luo6;->c:Lyn6;

    invoke-virtual {v1, v2}, Lyn6;->a(Ljava/lang/String;)Lrb7;

    move-result-object v1

    .line 7
    sget-object v2, Lej7;->b:Lzb7;

    .line 8
    invoke-virtual {v1, v2}, Lrb7;->n(Lzb7;)Lrb7;

    move-result-object v1

    .line 9
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v4

    invoke-virtual {v1, v4}, Lrb7;->k(Lzb7;)Lrb7;

    move-result-object v1

    const-string v4, "billingUseCase.getMonthl\u2026dSchedulers.mainThread())"

    invoke-static {v1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v4, Lh;->f:Lh;

    .line 11
    sget-object v5, Lj;->f:Lj;

    .line 12
    new-instance v6, Ll;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v0}, Ll;-><init>(ILjava/lang/Object;)V

    .line 13
    invoke-static {v1, v4, v5, v6}, Lbj7;->e(Lrb7;Lpl7;Lel7;Lpl7;)Lic7;

    move-result-object v1

    .line 14
    invoke-static {v1, v0}, Ln56;->j(Lic7;Lcom/noinnion/android/reader/ui/BaseDialogActivity;)V

    .line 15
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->B()Luo6;

    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Ljb6;->a()Ljb6;

    move-result-object v4

    const-string v5, "premium_yearly_subscription_product_id"

    invoke-virtual {v4, v5}, Ljb6;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v1, v1, Luo6;->c:Lyn6;

    invoke-virtual {v1, v4}, Lyn6;->a(Ljava/lang/String;)Lrb7;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v2}, Lrb7;->n(Lzb7;)Lrb7;

    move-result-object v1

    .line 20
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrb7;->k(Lzb7;)Lrb7;

    move-result-object v1

    const-string v2, "billingUseCase.getYearly\u2026dSchedulers.mainThread())"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v2, Lh;->g:Lh;

    .line 22
    sget-object v3, Lj;->g:Lj;

    .line 23
    new-instance v4, Ll;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Ll;-><init>(ILjava/lang/Object;)V

    .line 24
    invoke-static {v1, v2, v3, v4}, Lbj7;->e(Lrb7;Lpl7;Lel7;Lpl7;)Lic7;

    move-result-object v1

    .line 25
    invoke-static {v1, v0}, Ln56;->j(Lic7;Lcom/noinnion/android/reader/ui/BaseDialogActivity;)V

    const/4 v1, 0x5

    .line 26
    invoke-static {v0, v7, v5, v7, v1}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->E(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;ZZZI)V

    .line 27
    sget-object v0, Lyj7;->a:Lyj7;

    return-object v0
.end method
