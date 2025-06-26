.class public final Lpp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzm;


# instance fields
.field public final synthetic e:Lmp1;


# direct methods
.method public constructor <init>(Lmp1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpp1;->e:Lmp1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzkr()V
    .locals 7

    .line 1
    iget-object v0, p0, Lpp1;->e:Lmp1;

    .line 2
    iget-object v0, v0, Lmp1;->g:Lkc1;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, v0, Lkc1;->j:Z

    if-nez v1, :cond_1

    .line 5
    iget-object v1, v0, Lkc1;->k:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, v0, Lkc1;->k:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 7
    iget-wide v3, v0, Lkc1;->h:J

    iget-object v1, v0, Lkc1;->g:Lb20;

    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lkc1;->i:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    .line 8
    iput-wide v3, v0, Lkc1;->i:J

    .line 9
    :goto_0
    iput-boolean v2, v0, Lkc1;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final zzks()V
    .locals 6

    .line 1
    iget-object v0, p0, Lpp1;->e:Lmp1;

    .line 2
    iget-object v0, v0, Lmp1;->g:Lkc1;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, v0, Lkc1;->j:Z

    if-eqz v1, :cond_1

    .line 5
    iget-wide v1, v0, Lkc1;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, v0, Lkc1;->k:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-wide v1, v0, Lkc1;->i:J

    invoke-virtual {v0, v1, v2}, Lkc1;->H0(J)V

    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lkc1;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
