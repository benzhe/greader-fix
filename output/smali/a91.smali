.class public final La91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lca1;
.implements Lra1;
.implements Lid1;
.implements Lhf1;


# instance fields
.field public final e:Lqa1;

.field public final f:Lsk2;

.field public final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public final h:Ljava/util/concurrent/Executor;

.field public i:Liw2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liw2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqa1;Lsk2;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Liw2;

    invoke-direct {v0}, Liw2;-><init>()V

    .line 3
    iput-object v0, p0, La91;->i:Liw2;

    .line 4
    iput-object p1, p0, La91;->e:Lqa1;

    .line 5
    iput-object p2, p0, La91;->f:Lsk2;

    .line 6
    iput-object p3, p0, La91;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p4, p0, La91;->h:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final O(Lgn0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    sget-object v0, Ly40;->b1:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La91;->f:Lsk2;

    iget v1, v0, Lsk2;->S:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    iget v0, v0, Lsk2;->p:I

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, La91;->e:Lqa1;

    invoke-virtual {v0}, Lqa1;->onAdImpression()V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, La91;->i:Liw2;

    new-instance v1, Lc91;

    invoke-direct {v1, p0}, Lc91;-><init>(La91;)V

    iget-object v2, p0, La91;->h:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v3, Lsv2;

    invoke-direct {v3, v0, v1}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-virtual {v0, v3, v2}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 9
    iget-object v0, p0, La91;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lz81;

    invoke-direct {v1, p0}, Lz81;-><init>(La91;)V

    iget-object v2, p0, La91;->f:Lsk2;

    iget v2, v2, Lsk2;->p:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, La91;->j:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, La91;->i:Liw2;

    invoke-virtual {p1}, Lsu2;->isDone()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p0, La91;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 5
    :cond_1
    iget-object p1, p0, La91;->i:Liw2;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Liw2;->j(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onAdClosed()V
    .locals 0

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdOpened()V
    .locals 2

    .line 1
    iget-object v0, p0, La91;->f:Lsk2;

    iget v0, v0, Lsk2;->S:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, La91;->e:Lqa1;

    invoke-virtual {v0}, Lqa1;->onAdImpression()V

    :cond_1
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized r()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, La91;->i:Liw2;

    invoke-virtual {v0}, Lsu2;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, La91;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 5
    :cond_1
    iget-object v0, p0, La91;->i:Liw2;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Liw2;->h(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s()V
    .locals 0

    return-void
.end method
