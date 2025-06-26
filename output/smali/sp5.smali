.class public final Lsp5;
.super Lop5;
.source "SourceFile"


# instance fields
.field public final a:Lof5;

.field public final b:Lqp5;

.field public c:Ltp5;

.field public d:Z


# direct methods
.method public constructor <init>(Lof5;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lop5;-><init>()V

    .line 2
    iput-object p1, p0, Lsp5;->a:Lof5;

    .line 3
    new-instance v0, Lqp5;

    invoke-direct {v0, p0}, Lqp5;-><init>(Lsp5;)V

    .line 4
    iput-object v0, p0, Lsp5;->b:Lqp5;

    .line 5
    invoke-interface {p1}, Lof5;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Ltp5;

    invoke-direct {v2, v1}, Ltp5;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Ltp5;->b:Ltp5;

    .line 7
    :goto_0
    iput-object v2, p0, Lsp5;->c:Ltp5;

    .line 8
    invoke-interface {p1, v0}, Lof5;->b(Lqp5;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le45<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lsp5;->d:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lsp5;->d:Z

    .line 3
    iget-object v2, p0, Lsp5;->a:Lof5;

    invoke-interface {v2, v0}, Lof5;->c(Z)Le45;

    move-result-object v0

    .line 4
    sget-object v2, Lnx5;->b:Ljava/util/concurrent/Executor;

    .line 5
    new-instance v3, Lrp5;

    invoke-direct {v3, p0, v1}, Lrp5;-><init>(Lsp5;I)V

    .line 6
    invoke-virtual {v0, v2, v3}, Le45;->j(Ljava/util/concurrent/Executor;Lw35;)Le45;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lsp5;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljq5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq5<",
            "Ltp5;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lsp5;->c:Ltp5;

    invoke-virtual {p1, v0}, Ljq5;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
