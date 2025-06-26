.class public final Lss3;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lj40<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Lfp3;

.field public final g:Lhg3;

.field public final h:Ljl3;

.field public volatile i:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lfp3;Lhg3;Ljl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lj40<",
            "*>;>;",
            "Lfp3;",
            "Lhg3;",
            "Ljl3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lss3;->i:Z

    .line 3
    iput-object p1, p0, Lss3;->e:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lss3;->f:Lfp3;

    .line 5
    iput-object p3, p0, Lss3;->g:Lhg3;

    .line 6
    iput-object p4, p0, Lss3;->h:Ljl3;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "post-error"

    .line 1
    iget-object v1, p0, Lss3;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj40;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v1, v2}, Lj40;->t(I)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    const-string v4, "network-queue-take"

    .line 4
    invoke-virtual {v1, v4}, Lj40;->zzc(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lj40;->isCanceled()Z

    .line 6
    invoke-virtual {v1}, Lj40;->zzd()I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 7
    iget-object v4, p0, Lss3;->f:Lfp3;

    invoke-interface {v4, v1}, Lfp3;->zza(Lj40;)Lpu3;

    move-result-object v4

    const-string v5, "network-http-complete"

    .line 8
    invoke-virtual {v1, v5}, Lj40;->zzc(Ljava/lang/String;)V

    .line 9
    iget-boolean v5, v4, Lpu3;->e:Z

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lj40;->zzl()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "not-modified"

    .line 10
    invoke-virtual {v1, v4}, Lj40;->w(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lj40;->x()V
    :try_end_0
    .catch Luh0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1, v3}, Lj40;->t(I)V

    return-void

    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {v1, v4}, Lj40;->i(Lpu3;)Lc90;

    move-result-object v4

    const-string v5, "network-parse-complete"

    .line 14
    invoke-virtual {v1, v5}, Lj40;->zzc(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lj40;->zzh()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lc90;->b:Lui3;

    if-eqz v5, :cond_1

    .line 16
    iget-object v5, p0, Lss3;->g:Lhg3;

    invoke-virtual {v1}, Lj40;->zze()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lc90;->b:Lui3;

    check-cast v5, Ldn0;

    invoke-virtual {v5, v6, v7}, Ldn0;->i(Ljava/lang/String;Lui3;)V

    const-string v5, "network-cache-written"

    .line 17
    invoke-virtual {v1, v5}, Lj40;->zzc(Ljava/lang/String;)V

    .line 18
    :cond_1
    invoke-virtual {v1}, Lj40;->zzk()V

    .line 19
    iget-object v5, p0, Lss3;->h:Ljl3;

    invoke-virtual {v5, v1, v4}, Ljl3;->a(Lj40;Lc90;)V

    .line 20
    invoke-virtual {v1, v4}, Lj40;->k(Lc90;)V
    :try_end_1
    .catch Luh0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-virtual {v1, v3}, Lj40;->t(I)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "Unhandled exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 22
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 23
    invoke-static {v5, v6}, Ltg0;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Volley"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    new-instance v5, Luh0;

    invoke-direct {v5, v4}, Luh0;-><init>(Ljava/lang/Throwable;)V

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    iget-object v4, p0, Lss3;->h:Ljl3;

    .line 27
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v1, v0}, Lj40;->zzc(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lc90;

    invoke-direct {v0, v5}, Lc90;-><init>(Luh0;)V

    .line 30
    iget-object v4, v4, Ljl3;->a:Ljava/util/concurrent/Executor;

    new-instance v5, Ljn3;

    invoke-direct {v5, v1, v0, v2}, Ljn3;-><init>(Lj40;Lc90;Ljava/lang/Runnable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v1}, Lj40;->x()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    invoke-virtual {v1, v3}, Lj40;->t(I)V

    return-void

    :catch_1
    move-exception v4

    .line 33
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    iget-object v5, p0, Lss3;->h:Ljl3;

    .line 35
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v1, v0}, Lj40;->zzc(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lc90;

    invoke-direct {v0, v4}, Lc90;-><init>(Luh0;)V

    .line 38
    iget-object v4, v5, Ljl3;->a:Ljava/util/concurrent/Executor;

    new-instance v5, Ljn3;

    invoke-direct {v5, v1, v0, v2}, Ljn3;-><init>(Lj40;Lc90;Ljava/lang/Runnable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    invoke-virtual {v1}, Lj40;->x()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    invoke-virtual {v1, v3}, Lj40;->t(I)V

    return-void

    .line 41
    :goto_0
    invoke-virtual {v1, v3}, Lj40;->t(I)V

    .line 42
    throw v0
.end method

.method public final run()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lss3;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-boolean v0, p0, Lss3;->i:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 5
    invoke-static {v1, v0}, Ltg0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
