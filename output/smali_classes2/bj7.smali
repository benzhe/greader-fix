.class public final Lbj7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lpl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpl7<",
            "Ljava/lang/Object;",
            "Lyj7;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lpl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpl7<",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lel7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lel7<",
            "Lyj7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbj7$c;->e:Lbj7$c;

    sput-object v0, Lbj7;->a:Lpl7;

    .line 2
    sget-object v0, Lbj7$b;->e:Lbj7$b;

    sput-object v0, Lbj7;->b:Lpl7;

    .line 3
    sget-object v0, Lbj7$a;->e:Lbj7$a;

    sput-object v0, Lbj7;->c:Lel7;

    return-void
.end method

.method public static final a(Lpl7;)Ltc7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lpl7<",
            "-TT;",
            "Lyj7;",
            ">;)",
            "Ltc7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbj7;->a:Lpl7;

    if-ne p0, v0, :cond_0

    sget-object p0, Ldd7;->d:Ltc7;

    const-string v0, "Functions.emptyConsumer()"

    invoke-static {p0, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ldj7;

    invoke-direct {v0, p0}, Ldj7;-><init>(Lpl7;)V

    move-object p0, v0

    :cond_1
    check-cast p0, Ltc7;

    :goto_0
    return-object p0
.end method

.method public static final b(Lel7;)Lqc7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lel7<",
            "Lyj7;",
            ">;)",
            "Lqc7;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbj7;->c:Lel7;

    if-ne p0, v0, :cond_0

    sget-object p0, Ldd7;->c:Lqc7;

    const-string v0, "Functions.EMPTY_ACTION"

    invoke-static {p0, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcj7;

    invoke-direct {v0, p0}, Lcj7;-><init>(Lel7;)V

    move-object p0, v0

    :cond_1
    check-cast p0, Lqc7;

    :goto_0
    return-object p0
.end method

.method public static final c(Lpl7;)Ltc7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl7<",
            "-",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;)",
            "Ltc7<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbj7;->b:Lpl7;

    if-ne p0, v0, :cond_0

    sget-object p0, Ldd7;->e:Ltc7;

    const-string v0, "Functions.ON_ERROR_MISSING"

    invoke-static {p0, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ldj7;

    invoke-direct {v0, p0}, Ldj7;-><init>(Lpl7;)V

    move-object p0, v0

    :cond_1
    check-cast p0, Ltc7;

    :goto_0
    return-object p0
.end method

.method public static final d(Lhb7;Lpl7;Lel7;)Lic7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb7;",
            "Lpl7<",
            "-",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;",
            "Lel7<",
            "Lyj7;",
            ">;)",
            "Lic7;"
        }
    .end annotation

    const-string v0, "$this$subscribeBy"

    invoke-static {p0, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lbj7;->b:Lpl7;

    if-ne p1, v0, :cond_0

    sget-object v1, Lbj7;->c:Lel7;

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lhb7;->h()Lic7;

    move-result-object p0

    const-string p1, "subscribe()"

    invoke-static {p0, p1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Lcj7;

    invoke-direct {p1, p2}, Lcj7;-><init>(Lel7;)V

    .line 3
    new-instance p2, Lrd7;

    invoke-direct {p2, p1}, Lrd7;-><init>(Lqc7;)V

    .line 4
    invoke-virtual {p0, p2}, Lhb7;->a(Ljb7;)V

    const-string p0, "subscribe(onComplete)"

    .line 5
    invoke-static {p2, p0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Lbj7;->b(Lel7;)Lqc7;

    move-result-object p2

    new-instance v0, Ldj7;

    invoke-direct {v0, p1}, Ldj7;-><init>(Lpl7;)V

    const-string p1, "onComplete is null"

    .line 7
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance p1, Lrd7;

    invoke-direct {p1, v0, p2}, Lrd7;-><init>(Ltc7;Lqc7;)V

    .line 9
    invoke-virtual {p0, p1}, Lhb7;->a(Ljb7;)V

    const-string p0, "subscribe(onComplete.asO\u2026ion(), Consumer(onError))"

    .line 10
    invoke-static {p1, p0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static final e(Lrb7;Lpl7;Lel7;Lpl7;)Lic7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrb7<",
            "TT;>;",
            "Lpl7<",
            "-",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;",
            "Lel7<",
            "Lyj7;",
            ">;",
            "Lpl7<",
            "-TT;",
            "Lyj7;",
            ">;)",
            "Lic7;"
        }
    .end annotation

    const-string v0, "$this$subscribeBy"

    invoke-static {p0, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p3, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p3}, Lbj7;->a(Lpl7;)Ltc7;

    move-result-object p3

    invoke-static {p1}, Lbj7;->c(Lpl7;)Ltc7;

    move-result-object p1

    invoke-static {p2}, Lbj7;->b(Lel7;)Lqc7;

    move-result-object p2

    const-string v0, "onSuccess is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lzf7;

    invoke-direct {v0, p3, p1, p2}, Lzf7;-><init>(Ltc7;Ltc7;Lqc7;)V

    .line 6
    invoke-virtual {p0, v0}, Lrb7;->a(Ltb7;)V

    const-string p0, "subscribe(onSuccess.asCo\u2026ete.asOnCompleteAction())"

    .line 7
    invoke-static {v0, p0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final f(Lac7;Lpl7;Lpl7;)Lic7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lac7<",
            "TT;>;",
            "Lpl7<",
            "-",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;",
            "Lpl7<",
            "-TT;",
            "Lyj7;",
            ">;)",
            "Lic7;"
        }
    .end annotation

    const-string v0, "$this$subscribeBy"

    invoke-static {p0, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lbj7;->a(Lpl7;)Ltc7;

    move-result-object p2

    invoke-static {p1}, Lbj7;->c(Lpl7;)Ltc7;

    move-result-object p1

    const-string v0, "onSuccess is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lsd7;

    invoke-direct {v0, p2, p1}, Lsd7;-><init>(Ltc7;Ltc7;)V

    .line 5
    invoke-virtual {p0, v0}, Lac7;->a(Lcc7;)V

    const-string p0, "subscribe(onSuccess.asCo\u2026rror.asOnErrorConsumer())"

    .line 6
    invoke-static {v0, p0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic g(Lhb7;Lpl7;Lel7;I)Lic7;
    .locals 0

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lbj7;->b:Lpl7;

    :cond_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    .line 2
    sget-object p2, Lbj7;->c:Lel7;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p1, p2}, Lbj7;->d(Lhb7;Lpl7;Lel7;)Lic7;

    move-result-object p0

    return-object p0
.end method
