.class public final Lhq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luc7<",
        "Len;",
        "Lec7<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/android/billingclient/api/Purchase;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lgq;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lhq;->e:Lgq;

    iput-object p2, p0, Lhq;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Len;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lhq;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Len;->e(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;

    move-result-object p1

    const-string v0, "it.queryPurchases(type)"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lhq;->e:Lgq;

    .line 5
    iget-object v1, p1, Lcom/android/billingclient/api/Purchase$a;->b:Lin;

    .line 6
    iget v1, v1, Lin;->a:I

    .line 7
    invoke-static {v0, v1}, Lgq;->f(Lgq;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p1, Lcom/android/billingclient/api/Purchase$a;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lhk7;->e:Lhk7;

    .line 10
    :goto_0
    new-instance v0, Lnh7;

    invoke-direct {v0, p1}, Lnh7;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p1, Lcom/android/billingclient/api/Purchase$a;->b:Lin;

    const-string v0, "purchasesResult.billingResult"

    .line 12
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lmq;->a(Lin;)Lmq;

    move-result-object p1

    .line 13
    new-instance v0, Ldd7$g;

    invoke-direct {v0, p1}, Ldd7$g;-><init>(Ljava/lang/Object;)V

    .line 14
    new-instance p1, Lhh7;

    invoke-direct {p1, v0}, Lhh7;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v0, p1

    :goto_1
    return-object v0
.end method
