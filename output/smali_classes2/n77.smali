.class public Ln77;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln77$c;,
        Ln77$d;,
        Ln77$e;
    }
.end annotation


# static fields
.field public static final l:J


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lpd5;

.field public final c:Ln77$d;

.field public final d:Z

.field public e:Ln77$e;

.field public f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Runnable;

.field public final i:Ljava/lang/Runnable;

.field public final j:J

.field public final k:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Ln77;->l:J

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method

.method public constructor <init>(Ln77$d;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V
    .locals 3

    .line 1
    new-instance v0, Lpd5;

    invoke-direct {v0}, Lpd5;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v1, Ln77$e;->e:Ln77$e;

    iput-object v1, p0, Ln77;->e:Ln77$e;

    .line 4
    new-instance v1, Lo77;

    new-instance v2, Ln77$a;

    invoke-direct {v2, p0}, Ln77$a;-><init>(Ln77;)V

    invoke-direct {v1, v2}, Lo77;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Ln77;->h:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lo77;

    new-instance v2, Ln77$b;

    invoke-direct {v2, p0}, Ln77$b;-><init>(Ln77;)V

    invoke-direct {v1, v2}, Lo77;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Ln77;->i:Ljava/lang/Runnable;

    const-string v1, "keepAlivePinger"

    .line 6
    invoke-static {p1, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ln77;->c:Ln77$d;

    const-string p1, "scheduler"

    .line 7
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ln77;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p1, "stopwatch"

    .line 8
    invoke-static {v0, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Ln77;->b:Lpd5;

    .line 9
    iput-wide p3, p0, Ln77;->j:J

    .line 10
    iput-wide p5, p0, Ln77;->k:J

    .line 11
    iput-boolean p7, p0, Ln77;->d:Z

    .line 12
    invoke-virtual {v0}, Lpd5;->b()Lpd5;

    invoke-virtual {v0}, Lpd5;->c()Lpd5;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    sget-object v0, Ln77$e;->i:Ln77$e;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Ln77;->b:Lpd5;

    invoke-virtual {v1}, Lpd5;->b()Lpd5;

    invoke-virtual {v1}, Lpd5;->c()Lpd5;

    .line 2
    iget-object v1, p0, Ln77;->e:Ln77$e;

    sget-object v2, Ln77$e;->f:Ln77$e;

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v0, Ln77$e;->g:Ln77$e;

    iput-object v0, p0, Ln77;->e:Ln77$e;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v3, Ln77$e;->h:Ln77$e;

    if-eq v1, v3, :cond_1

    if-ne v1, v0, :cond_5

    .line 5
    :cond_1
    iget-object v1, p0, Ln77;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 7
    :cond_2
    iget-object v1, p0, Ln77;->e:Ln77$e;

    if-ne v1, v0, :cond_3

    .line 8
    sget-object v0, Ln77$e;->e:Ln77$e;

    iput-object v0, p0, Ln77;->e:Ln77$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_3
    :try_start_1
    iput-object v2, p0, Ln77;->e:Ln77$e;

    .line 11
    iget-object v0, p0, Ln77;->g:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_4

    const/4 v3, 0x1

    :cond_4
    const-string v0, "There should be no outstanding pingFuture"

    invoke-static {v3, v0}, Lc50;->G(ZLjava/lang/Object;)V

    .line 12
    iget-object v0, p0, Ln77;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Ln77;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Ln77;->j:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ln77;->g:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln77;->e:Ln77$e;

    sget-object v1, Ln77$e;->e:Ln77$e;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Ln77$e;->f:Ln77$e;

    iput-object v0, p0, Ln77;->e:Ln77$e;

    .line 3
    iget-object v0, p0, Ln77;->g:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Ln77;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Ln77;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Ln77;->j:J

    iget-object v4, p0, Ln77;->b:Lpd5;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v4, v5}, Lpd5;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 6
    invoke-interface {v0, v1, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ln77;->g:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Ln77$e;->i:Ln77$e;

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Ln77$e;->h:Ln77$e;

    iput-object v0, p0, Ln77;->e:Ln77$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
