.class public final Lyn6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Loj7;

.field public final b:Leq;


# direct methods
.method public constructor <init>(Leq;)V
    .locals 3

    const-string v0, "rxBilling"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyn6;->b:Leq;

    .line 2
    new-instance p1, Lyn6$d;

    invoke-direct {p1, p0}, Lyn6$d;-><init>(Lyn6;)V

    const-string v0, "initializer"

    .line 3
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Luj7;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Luj7;-><init>(Lel7;Ljava/lang/Object;I)V

    .line 5
    iput-object v0, p0, Lyn6;->a:Loj7;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lrb7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrb7<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    const-string v0, "sku"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ln56;->r1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object p1, p0, Lyn6;->b:Leq;

    .line 5
    new-instance v1, Lkn;

    invoke-direct {v1}, Lkn;-><init>()V

    const-string v2, "subs"

    .line 6
    iput-object v2, v1, Lkn;->a:Ljava/lang/String;

    .line 7
    iput-object v0, v1, Lkn;->b:Ljava/util/List;

    const-string v0, "params.build()"

    .line 8
    invoke-static {v1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Leq;->a(Lkn;)Lac7;

    move-result-object p1

    .line 9
    sget-object v0, Lyn6$a;->e:Lyn6$a;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Llh7;

    invoke-direct {v1, p1, v0}, Llh7;-><init>(Lec7;Luc7;)V

    .line 12
    sget-object p1, Lyn6$b;->e:Lyn6$b;

    .line 13
    invoke-virtual {v1}, Lrb7;->p()Lmb7;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Lpf7;

    invoke-direct {v1, v0, p1}, Lpf7;-><init>(Lmb7;Luc7;)V

    .line 16
    new-instance p1, Lsf7;

    invoke-direct {p1, v1}, Lsf7;-><init>(Lmb7;)V

    const-string v0, "rxBilling.getSkuDetails(\u2026ONDS) }\n                }"

    .line 17
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b()Lac7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lac7<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyn6;->b:Leq;

    const-string v1, "subs"

    invoke-interface {v0, v1}, Leq;->c(Ljava/lang/String;)Lac7;

    move-result-object v0

    .line 2
    sget-object v1, Ldo6;->e:Ldo6;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v2, v0, Lgd7;

    if-eqz v2, :cond_0

    .line 5
    check-cast v0, Lgd7;

    invoke-interface {v0}, Lgd7;->c()Lmb7;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lsh7;

    invoke-direct {v2, v0}, Lsh7;-><init>(Lec7;)V

    move-object v0, v2

    .line 7
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Lpf7;

    invoke-direct {v2, v0, v1}, Lpf7;-><init>(Lmb7;Luc7;)V

    .line 9
    new-instance v0, Ltf7;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Ltf7;-><init>(Lmb7;Ljava/lang/Object;)V

    const-string v1, "rxBilling.getPurchases(B\u2026ONDS) }\n                }"

    .line 10
    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lyn6$c;->e:Lyn6$c;

    invoke-virtual {v0, v1}, Lac7;->e(Luc7;)Lac7;

    move-result-object v0

    const-string v1, "queryPurchases()\n       \u2026          }\n            }"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
