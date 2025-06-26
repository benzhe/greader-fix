.class public final Lgq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leq;


# instance fields
.field public final a:Lgj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgj7<",
            "Ldq;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljn;

.field public final c:Lmb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb7<",
            "Len;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkq;)V
    .locals 4

    const-string v0, "billingFactory"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lgj7;

    invoke-direct {v0}, Lgj7;-><init>()V

    const-string v1, "PublishSubject.create<PurchasesUpdate>()"

    .line 3
    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lgq;->a:Lgj7;

    .line 4
    new-instance v0, Lgq$f;

    invoke-direct {v0, p0}, Lgq$f;-><init>(Lgq;)V

    iput-object v0, p0, Lgq;->b:Ljn;

    .line 5
    sget-object v1, Lxd7;->a:Lhb7;

    .line 6
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhb7;->g(Lzb7;)Lhb7;

    move-result-object v1

    const-string v2, "listener"

    .line 7
    invoke-static {v0, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljq;

    invoke-direct {v2, p1, v0}, Ljq;-><init>(Lkq;Ljn;)V

    .line 9
    sget-object v0, Lgb7;->i:Lgb7;

    .line 10
    sget v3, Lmb7;->e:I

    .line 11
    new-instance v3, Lje7;

    invoke-direct {v3, v2, v0}, Lje7;-><init>(Lob7;Lgb7;)V

    const-string v0, "Flowable.create<BillingC\u2026kpressureStrategy.LATEST)"

    .line 12
    invoke-static {v3, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p1, Lkq;->b:Lqb7;

    const-string v0, "composer is null"

    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    invoke-interface {p1, v3}, Lqb7;->a(Lmb7;)Lw38;

    move-result-object p1

    .line 16
    instance-of v0, p1, Lmb7;

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Lmb7;

    goto :goto_0

    :cond_0
    const-string v0, "source is null"

    .line 18
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    new-instance v0, Lxe7;

    invoke-direct {v0, p1}, Lxe7;-><init>(Lw38;)V

    move-object p1, v0

    :goto_0
    const-string v0, "flowable.compose(transformer)"

    .line 20
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ltg7;

    invoke-direct {v0, v1, p1}, Ltg7;-><init>(Llb7;Lw38;)V

    const-string p1, "Completable.complete()\n \u2026lowable(updatedListener))"

    .line 22
    invoke-static {v0, p1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lgq;->c:Lmb7;

    return-void
.end method

.method public static final f(Lgq;I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lkn;)Lac7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkn;",
            ")",
            "Lac7<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;>;"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lgq;->c:Lmb7;

    .line 2
    new-instance v1, Lgq$b;

    invoke-direct {v1, p0, p1}, Lgq$b;-><init>(Lgq;Lkn;)V

    invoke-virtual {v0, v1}, Lmb7;->m(Luc7;)Lmb7;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lmb7;->j()Lac7;

    move-result-object p1

    const-string v0, "connectionFlowable\n     \u2026         }.firstOrError()"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()Lmb7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmb7<",
            "Ldq;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgq;->c:Lmb7;

    new-instance v1, Lgq$e;

    invoke-direct {v1, p0}, Lgq$e;-><init>(Lgq;)V

    .line 2
    sget v2, Lmb7;->e:I

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v2, v2}, Lmb7;->k(Luc7;ZII)Lmb7;

    move-result-object v0

    const-string v1, "connectionFlowable.flatM\u2026trategy.LATEST)\n        }"

    .line 4
    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lac7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lac7<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;"
        }
    .end annotation

    const-string v0, "skuType"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lgq;->c:Lmb7;

    .line 2
    new-instance v1, Lhq;

    invoke-direct {v1, p0, p1}, Lhq;-><init>(Lgq;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmb7;->m(Luc7;)Lmb7;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lmb7;->j()Lac7;

    move-result-object p1

    const-string v0, "connectionFlowable\n     \u2026         }.firstOrError()"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Landroid/app/Activity;Lhn;)Lhb7;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lgq;->c:Lmb7;

    .line 2
    new-instance v1, Lgq$c;

    invoke-direct {v1, p1, p2}, Lgq$c;-><init>(Landroid/app/Activity;Lhn;)V

    .line 3
    sget p1, Lmb7;->e:I

    const/4 p2, 0x0

    .line 4
    invoke-virtual {v0, v1, p2, p1, p1}, Lmb7;->k(Luc7;ZII)Lmb7;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lmb7;->j()Lac7;

    move-result-object p1

    .line 6
    new-instance p2, Lgq$d;

    invoke-direct {p2, p0}, Lgq$d;-><init>(Lgq;)V

    .line 7
    new-instance v0, Ljh7;

    invoke-direct {v0, p1, p2}, Ljh7;-><init>(Lec7;Luc7;)V

    const-string p1, "connectionFlowable\n     \u2026      }\n                }"

    .line 8
    invoke-static {v0, p1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Lcn;)Lhb7;
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lgq;->c:Lmb7;

    .line 2
    new-instance v1, Lgq$a;

    invoke-direct {v1, p0, p1}, Lgq$a;-><init>(Lgq;Lcn;)V

    invoke-virtual {v0, v1}, Lmb7;->m(Luc7;)Lmb7;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lmb7;->j()Lac7;

    move-result-object p1

    .line 4
    new-instance v0, Lbe7;

    invoke-direct {v0, p1}, Lbe7;-><init>(Lec7;)V

    const-string p1, "connectionFlowable\n     \u2026         .ignoreElement()"

    .line 5
    invoke-static {v0, p1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
