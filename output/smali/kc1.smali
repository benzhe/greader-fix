.class public final Lkc1;
.super Lxd1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd1<",
        "Loc1;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field public final g:Lb20;

.field public h:J

.field public i:J

.field public j:Z

.field public k:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lb20;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lxd1;-><init>(Ljava/util/Set;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lkc1;->h:J

    .line 3
    iput-wide v0, p0, Lkc1;->i:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lkc1;->j:Z

    .line 5
    iput-object p1, p0, Lkc1;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p2, p0, Lkc1;->g:Lb20;

    return-void
.end method


# virtual methods
.method public final declared-synchronized G0(I)V
    .locals 6

    monitor-enter p0

    if-gtz p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 3
    iget-boolean p1, p0, Lkc1;->j:Z

    if-eqz p1, :cond_2

    .line 4
    iget-wide v2, p0, Lkc1;->i:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 5
    :goto_0
    iput-wide v0, p0, Lkc1;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    :try_start_1
    iget-object p1, p0, Lkc1;->g:Lb20;

    invoke-interface {p1}, Lb20;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lkc1;->h:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_3

    iget-object p1, p0, Lkc1;->g:Lb20;

    .line 8
    invoke-interface {p1}, Lb20;->b()J

    move-result-wide v2

    sub-long/2addr v4, v2

    cmp-long p1, v4, v0

    if-lez p1, :cond_4

    .line 9
    :cond_3
    invoke-virtual {p0, v0, v1}, Lkc1;->H0(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized H0(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkc1;->k:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkc1;->k:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lkc1;->g:Lb20;

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lkc1;->h:J

    .line 4
    iget-object v0, p0, Lkc1;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Llc1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Llc1;-><init>(Lkc1;Lmc1;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lkc1;->k:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
