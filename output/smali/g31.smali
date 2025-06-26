.class public final Lg31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan3;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lb20;

.field public c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public d:J

.field public e:J

.field public f:Ljava/lang/Runnable;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lb20;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lg31;->d:J

    .line 3
    iput-wide v0, p0, Lg31;->e:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lg31;->f:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lg31;->g:Z

    .line 6
    iput-object p1, p0, Lg31;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p2, p0, Lg31;->b:Lb20;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lvm3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lvm3;->d(Lan3;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lg31;->g:Z

    if-eqz p1, :cond_1

    .line 3
    iget-wide v0, p0, Lg31;->e:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lg31;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lg31;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lg31;->f:Ljava/lang/Runnable;

    iget-wide v1, p0, Lg31;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lg31;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lg31;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 8
    :cond_2
    monitor-enter p0

    .line 9
    :try_start_1
    iget-boolean p1, p0, Lg31;->g:Z

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lg31;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lg31;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 12
    iget-wide v1, p0, Lg31;->d:J

    iget-object p1, p0, Lg31;->b:Lb20;

    invoke-interface {p1}, Lb20;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lg31;->e:J

    goto :goto_0

    :cond_3
    const-wide/16 v1, -0x1

    .line 13
    iput-wide v1, p0, Lg31;->e:J

    .line 14
    :goto_0
    iput-boolean v0, p0, Lg31;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :cond_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(ILjava/lang/Runnable;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p2, p0, Lg31;->f:Ljava/lang/Runnable;

    .line 2
    iget-object v0, p0, Lg31;->b:Lb20;

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lg31;->d:J

    .line 3
    iget-object p1, p0, Lg31;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lg31;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
