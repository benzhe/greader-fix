.class public final Le55;
.super Le45;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Le45<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:La55;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La55<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le45;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le55;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, La55;

    invoke-direct {v0}, La55;-><init>()V

    iput-object v0, p0, Le55;->b:La55;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Ly35;)Le45;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ly35;",
            ")",
            "Le45<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le55;->b:La55;

    new-instance v1, Lr45;

    .line 2
    sget v2, Lf55;->a:I

    .line 3
    invoke-direct {v1, p1, p2}, Lr45;-><init>(Ljava/util/concurrent/Executor;Ly35;)V

    .line 4
    invoke-virtual {v0, v1}, La55;->b(Lb55;)V

    .line 5
    invoke-virtual {p0}, Le55;->w()V

    return-object p0
.end method

.method public final b(Lz35;)Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz35<",
            "TTResult;>;)",
            "Le45<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg45;->a:Ljava/util/concurrent/Executor;

    .line 2
    iget-object v1, p0, Le55;->b:La55;

    new-instance v2, Ls45;

    .line 3
    sget v3, Lf55;->a:I

    .line 4
    invoke-direct {v2, v0, p1}, Ls45;-><init>(Ljava/util/concurrent/Executor;Lz35;)V

    .line 5
    invoke-virtual {v1, v2}, La55;->b(Lb55;)V

    .line 6
    invoke-virtual {p0}, Le55;->w()V

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Lz35;)Le45;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lz35<",
            "TTResult;>;)",
            "Le45<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le55;->b:La55;

    new-instance v1, Ls45;

    .line 2
    sget v2, Lf55;->a:I

    .line 3
    invoke-direct {v1, p1, p2}, Ls45;-><init>(Ljava/util/concurrent/Executor;Lz35;)V

    .line 4
    invoke-virtual {v0, v1}, La55;->b(Lb55;)V

    .line 5
    invoke-virtual {p0}, Le55;->w()V

    return-object p0
.end method

.method public final d(La45;)Le45;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La45;",
            ")",
            "Le45<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg45;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le55;->e(Ljava/util/concurrent/Executor;La45;)Le45;

    return-object p0
.end method

.method public final e(Ljava/util/concurrent/Executor;La45;)Le45;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "La45;",
            ")",
            "Le45<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le55;->b:La55;

    new-instance v1, Lv45;

    .line 2
    sget v2, Lf55;->a:I

    .line 3
    invoke-direct {v1, p1, p2}, Lv45;-><init>(Ljava/util/concurrent/Executor;La45;)V

    .line 4
    invoke-virtual {v0, v1}, La55;->b(Lb55;)V

    .line 5
    invoke-virtual {p0}, Le55;->w()V

    return-object p0
.end method

.method public final f(Lb45;)Le45;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb45<",
            "-TTResult;>;)",
            "Le45<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg45;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le55;->g(Ljava/util/concurrent/Executor;Lb45;)Le45;

    return-object p0
.end method

.method public final g(Ljava/util/concurrent/Executor;Lb45;)Le45;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lb45<",
            "-TTResult;>;)",
            "Le45<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le55;->b:La55;

    new-instance v1, Lw45;

    .line 2
    sget v2, Lf55;->a:I

    .line 3
    invoke-direct {v1, p1, p2}, Lw45;-><init>(Ljava/util/concurrent/Executor;Lb45;)V

    .line 4
    invoke-virtual {v0, v1}, La55;->b(Lb55;)V

    .line 5
    invoke-virtual {p0}, Le55;->w()V

    return-object p0
.end method

.method public final h(Lw35;)Le45;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lw35<",
            "TTResult;TTContinuationResult;>;)",
            "Le45<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg45;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le55;->i(Ljava/util/concurrent/Executor;Lw35;)Le45;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/util/concurrent/Executor;Lw35;)Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lw35<",
            "TTResult;TTContinuationResult;>;)",
            "Le45<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le55;

    invoke-direct {v0}, Le55;-><init>()V

    .line 2
    iget-object v1, p0, Le55;->b:La55;

    new-instance v2, Lm45;

    .line 3
    sget v3, Lf55;->a:I

    .line 4
    invoke-direct {v2, p1, p2, v0}, Lm45;-><init>(Ljava/util/concurrent/Executor;Lw35;Le55;)V

    .line 5
    invoke-virtual {v1, v2}, La55;->b(Lb55;)V

    .line 6
    invoke-virtual {p0}, Le55;->w()V

    return-object v0
.end method

.method public final j(Ljava/util/concurrent/Executor;Lw35;)Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lw35<",
            "TTResult;",
            "Le45<",
            "TTContinuationResult;>;>;)",
            "Le45<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le55;

    invoke-direct {v0}, Le55;-><init>()V

    .line 2
    iget-object v1, p0, Le55;->b:La55;

    new-instance v2, Ln45;

    .line 3
    sget v3, Lf55;->a:I

    .line 4
    invoke-direct {v2, p1, p2, v0}, Ln45;-><init>(Ljava/util/concurrent/Executor;Lw35;Le55;)V

    .line 5
    invoke-virtual {v1, v2}, La55;->b(Lb55;)V

    .line 6
    invoke-virtual {p0}, Le55;->w()V

    return-object v0
.end method

.method public final k()Ljava/lang/Exception;
    .locals 2

    .line 1
    iget-object v0, p0, Le55;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le55;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le55;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le55;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lbi;->m(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v1, p0, Le55;->d:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Le55;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Le55;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 6
    :cond_0
    new-instance v1, Lc45;

    iget-object v2, p0, Le55;->f:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lc45;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le55;->d:Z

    return v0
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le55;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le55;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le55;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le55;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Le55;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Le55;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p(Ld45;)Le45;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ld45<",
            "TTResult;TTContinuationResult;>;)",
            "Le45<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg45;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Le55;->q(Ljava/util/concurrent/Executor;Ld45;)Le45;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/util/concurrent/Executor;Ld45;)Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ld45<",
            "TTResult;TTContinuationResult;>;)",
            "Le45<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le55;

    invoke-direct {v0}, Le55;-><init>()V

    .line 2
    iget-object v1, p0, Le55;->b:La55;

    new-instance v2, Lz45;

    .line 3
    sget v3, Lf55;->a:I

    .line 4
    invoke-direct {v2, p1, p2, v0}, Lz45;-><init>(Ljava/util/concurrent/Executor;Ld45;Le55;)V

    .line 5
    invoke-virtual {v1, v2}, La55;->b(Lb55;)V

    .line 6
    invoke-virtual {p0}, Le55;->w()V

    return-object v0
.end method

.method public final r(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le55;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le55;->v()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Le55;->c:Z

    .line 5
    iput-object p1, p0, Le55;->f:Ljava/lang/Exception;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Le55;->b:La55;

    invoke-virtual {p1, p0}, La55;->a(Le45;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final s(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le55;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le55;->v()V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Le55;->c:Z

    .line 4
    iput-object p1, p0, Le55;->e:Ljava/lang/Object;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Le55;->b:La55;

    invoke-virtual {p1, p0}, La55;->a(Le45;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final t()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le55;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le55;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Le55;->c:Z

    .line 5
    iput-boolean v1, p0, Le55;->d:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Le55;->b:La55;

    invoke-virtual {v0, p0}, La55;->a(Le45;)V

    return v1

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final u(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le55;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le55;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Le55;->c:Z

    .line 5
    iput-object p1, p0, Le55;->e:Ljava/lang/Object;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Le55;->b:La55;

    invoke-virtual {p1, p0}, La55;->a(Le45;)V

    return v1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final v()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le55;->c:Z

    if-eqz v0, :cond_5

    .line 2
    sget v0, Lx35;->e:I

    .line 3
    invoke-virtual {p0}, Le55;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Le55;->k()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "failure"

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Le55;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Le55;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const-string v3, "result "

    invoke-static {v2, v3, v1}, Ljo;->O(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Le55;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cancellation"

    goto :goto_0

    :cond_2
    const-string v1, "unknown issue"

    .line 8
    :goto_0
    new-instance v2, Lx35;

    const-string v3, "Complete with: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v2, v1, v0}, Lx35;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 9
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_2
    throw v2

    :cond_5
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Le55;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le55;->c:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Le55;->b:La55;

    invoke-virtual {v0, p0}, La55;->a(Le45;)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
