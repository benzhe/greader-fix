.class public final Lrs6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lpo6;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V
    .locals 0

    iput-object p1, p0, Lrs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lpo6;

    .line 2
    iget-boolean v0, p1, Lpo6;->d:Z

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p1, Lpo6;->c:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lrs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const v0, 0x7f1102d4

    invoke-static {p1, v0}, Ln56;->W1(Landroid/content/Context;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lrs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const-string v1, "it"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget v1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->E:I

    .line 7
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->B()Luo6;

    move-result-object v1

    .line 8
    iget-object v2, p1, Lpo6;->b:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sku"

    invoke-static {v2, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v1, Luo6;->c:Lyn6;

    invoke-virtual {v1, v2}, Lyn6;->a(Ljava/lang/String;)Lrb7;

    move-result-object v1

    .line 11
    sget-object v2, Lej7;->b:Lzb7;

    .line 12
    invoke-virtual {v1, v2}, Lrb7;->n(Lzb7;)Lrb7;

    move-result-object v1

    .line 13
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrb7;->k(Lzb7;)Lrb7;

    move-result-object v1

    const-string v2, "billingUseCase.fetchSubs\u2026dSchedulers.mainThread())"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v2, Lds6;

    invoke-direct {v2, v0}, Lds6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    .line 15
    new-instance v3, Les6;

    invoke-direct {v3, v0}, Les6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    .line 16
    new-instance v4, Lfs6;

    invoke-direct {v4, v0, p1}, Lfs6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;Lpo6;)V

    .line 17
    invoke-static {v1, v2, v3, v4}, Lbj7;->e(Lrb7;Lpl7;Lel7;Lpl7;)Lic7;

    move-result-object p1

    .line 18
    invoke-static {p1, v0}, Ln56;->j(Lic7;Lcom/noinnion/android/reader/ui/BaseDialogActivity;)V

    .line 19
    :goto_0
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
