.class public Lp57$a;
.super Lq67;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ld67;

.field public final synthetic b:Lp57;


# direct methods
.method public constructor <init>(Lp57;Ld67;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp57$a;->b:Lp57;

    invoke-direct {p0}, Lq67;-><init>()V

    const-string p1, "delegate"

    .line 2
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp57$a;->a:Ld67;

    const-string p1, "authority"

    .line 3
    invoke-static {p3, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ld67;
    .locals 1

    .line 1
    iget-object v0, p0, Lp57$a;->a:Ld67;

    return-object v0
.end method

.method public g(Lj47;Li47;Lx27;)Ly57;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj47<",
            "**>;",
            "Li47;",
            "Lx27;",
            ")",
            "Ly57;"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lx27;->d:Lw27;

    if-eqz v0, :cond_2

    .line 2
    new-instance v1, Lf87;

    iget-object v2, p0, Lp57$a;->a:Ld67;

    invoke-direct {v1, v2, p1, p2, p3}, Lf87;-><init>(La67;Lj47;Li47;Lx27;)V

    .line 3
    :try_start_0
    iget-object p1, p3, Lx27;->b:Ljava/util/concurrent/Executor;

    .line 4
    iget-object p2, p0, Lp57$a;->b:Lp57;

    .line 5
    iget-object p2, p2, Lp57;->f:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Both parameters are null"

    .line 6
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, p2

    .line 7
    :goto_0
    check-cast v0, Lvv5;

    .line 8
    iget-object p2, v0, Lvv5;->a:Lop5;

    .line 9
    invoke-virtual {p2}, Lop5;->a()Le45;

    move-result-object p2

    .line 10
    new-instance p3, Ltv5;

    invoke-direct {p3, v1}, Ltv5;-><init>(Lw27$a;)V

    .line 11
    invoke-virtual {p2, p1, p3}, Le45;->g(Ljava/util/concurrent/Executor;Lb45;)Le45;

    move-result-object p2

    .line 12
    new-instance p3, Luv5;

    invoke-direct {p3, v1}, Luv5;-><init>(Lw27$a;)V

    .line 13
    invoke-virtual {p2, p1, p3}, Le45;->e(Ljava/util/concurrent/Executor;La45;)Le45;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    sget-object p2, Lx47;->k:Lx47;

    const-string p3, "Credentials should use fail() instead of throwing exceptions"

    .line 15
    invoke-virtual {p2, p3}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Lf87;->b(Lx47;)V

    .line 18
    :goto_1
    iget-object v0, v1, Lf87;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_1
    iget-object p1, v1, Lf87;->g:Ly57;

    if-nez p1, :cond_1

    .line 20
    new-instance p1, Li67;

    invoke-direct {p1}, Li67;-><init>()V

    iput-object p1, v1, Lf87;->i:Li67;

    .line 21
    iput-object p1, v1, Lf87;->g:Ly57;

    monitor-exit v0

    goto :goto_2

    .line 22
    :cond_1
    monitor-exit v0

    :goto_2
    return-object p1

    :catchall_1
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 24
    :cond_2
    iget-object v0, p0, Lp57$a;->a:Ld67;

    invoke-interface {v0, p1, p2, p3}, La67;->g(Lj47;Li47;Lx27;)Ly57;

    move-result-object p1

    return-object p1
.end method
