.class public final Lcom/noinnion/android/greader/ui/premium/PremiumActivity$d;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Ldq;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$d;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ldq;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity$d;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const-string v1, "purchasesUpdate"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->E:I

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ldq;->a()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 p1, 0x7

    if-eq v1, p1, :cond_0

    const p1, 0x7f1102d7

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_0
    const p1, 0x7f1102d5

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    const p1, 0x7f1102d6

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_2
    const v1, 0x7f1102d8

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->B:Lpo6;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {p1}, Ldq;->b()Ljava/util/List;

    move-result-object p1

    .line 16
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 18
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v3

    .line 19
    iget-object v4, v1, Lpo6;->b:Ljava/lang/String;

    .line 20
    invoke-static {v3, v4}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 21
    iget-object p1, v0, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->y:Loj7;

    invoke-interface {p1}, Loj7;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwo6;

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "promoCode"

    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p1, p1, Lwo6;->a:Lgo6;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v2, Leo6;

    invoke-direct {v2, p1, v1}, Leo6;-><init>(Lgo6;Lpo6;)V

    .line 26
    new-instance p1, Lwd7;

    invoke-direct {p1, v2}, Lwd7;-><init>(Lkb7;)V

    const-string v1, "Completable.create { emi\u2026              }\n        }"

    .line 27
    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lej7;->b:Lzb7;

    .line 29
    invoke-virtual {p1, v1}, Lhb7;->j(Lzb7;)Lhb7;

    move-result-object p1

    .line 30
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v1

    invoke-virtual {p1, v1}, Lhb7;->g(Lzb7;)Lhb7;

    move-result-object p1

    const-string v1, "promoCodeUseCase.acknowl\u2026dSchedulers.mainThread())"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcs6;->e:Lcs6;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 32
    invoke-static {p1, v1, v2, v3}, Lbj7;->g(Lhb7;Lpl7;Lel7;I)Lic7;

    move-result-object p1

    .line 33
    invoke-static {p1, v0}, Ln56;->j(Lic7;Lcom/noinnion/android/reader/ui/BaseDialogActivity;)V

    .line 34
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->D()V

    .line 35
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
