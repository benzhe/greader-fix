.class public final Lrx0;
.super Lvu3;
.source "SourceFile"


# instance fields
.field public final e:Liu0;

.field public final f:Ljava/lang/Object;

.field public final g:Z

.field public final h:Z

.field public i:I

.field public j:Lxu3;

.field public k:Z

.field public l:Z

.field public m:F

.field public n:F

.field public o:F

.field public p:Z

.field public q:Z

.field public r:Lh90;


# direct methods
.method public constructor <init>(Liu0;FZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvu3;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx0;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lrx0;->l:Z

    .line 4
    iput-object p1, p0, Lrx0;->e:Liu0;

    .line 5
    iput p2, p0, Lrx0;->m:F

    .line 6
    iput-boolean p3, p0, Lrx0;->g:Z

    .line 7
    iput-boolean p4, p0, Lrx0;->h:Z

    return-void
.end method


# virtual methods
.method public final F0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrx0;->g5()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lrx0;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lrx0;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    .line 4
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final K4()Lxu3;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrx0;->j:Lxu3;

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

.method public final X6(FFIZF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lrx0;->m:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    iget v1, p0, Lrx0;->o:F

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 3
    :goto_1
    iput p2, p0, Lrx0;->m:F

    .line 4
    iput p1, p0, Lrx0;->n:F

    .line 5
    iget-boolean p1, p0, Lrx0;->l:Z

    .line 6
    iput-boolean p4, p0, Lrx0;->l:Z

    .line 7
    iget p2, p0, Lrx0;->i:I

    .line 8
    iput p3, p0, Lrx0;->i:I

    .line 9
    iget v2, p0, Lrx0;->o:F

    .line 10
    iput p5, p0, Lrx0;->o:F

    sub-float/2addr p5, v2

    .line 11
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float p5, p5, v2

    if-lez p5, :cond_2

    .line 12
    iget-object p5, p0, Lrx0;->e:Liu0;

    invoke-interface {p5}, Ley0;->getView()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    .line 13
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 14
    :try_start_1
    iget-object p5, p0, Lrx0;->r:Lh90;

    if-eqz p5, :cond_3

    .line 15
    invoke-interface {p5}, Lh90;->l6()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p5

    const-string v0, "#007 Could not call remote method."

    .line 16
    invoke-static {v0, p5}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_3
    :goto_2
    invoke-virtual {p0, p2, p3, p1, p4}, Lrx0;->Y6(IIZZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final Y6(IIZZ)V
    .locals 8

    .line 1
    sget-object v0, Lms0;->e:Lzv2;

    new-instance v7, Ltx0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Ltx0;-><init>(Lrx0;IIZZ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Z6(Lcom/google/android/gms/internal/ads/zzaaz;)V
    .locals 8

    .line 1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaaz;->e:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzaaz;->f:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaaz;->g:Z

    .line 2
    iget-object v2, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lrx0;->p:Z

    .line 4
    iput-boolean p1, p0, Lrx0;->q:Z

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "initialState"

    const-string v3, "muteStart"

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v4, "customControlsRequested"

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    const-string v5, "clickToExpandRequested"

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_2

    :cond_2
    const-string p1, "0"

    .line 6
    :goto_2
    new-instance v6, Lf4;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lf4;-><init>(I)V

    .line 7
    invoke-virtual {v6, v3, v0}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v6, v4, v1}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v6, v5, p1}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 11
    invoke-virtual {p0, v2, p1}, Lrx0;->a7(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a7(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_0
    const-string v0, "action"

    .line 2
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lms0;->e:Lzv2;

    new-instance v0, Lqx0;

    invoke-direct {v0, p0, p2}, Lqx0;-><init>(Lrx0;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g2(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "mute"

    goto :goto_0

    :cond_0
    const-string p1, "unmute"

    :goto_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lrx0;->a7(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final g5()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lrx0;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lrx0;->p:Z

    if-eqz v1, :cond_0

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

.method public final getAspectRatio()F
    .locals 2

    .line 1
    iget-object v0, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lrx0;->o:F

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

.method public final getCurrentTime()F
    .locals 2

    .line 1
    iget-object v0, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lrx0;->n:F

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

.method public final getDuration()F
    .locals 2

    .line 1
    iget-object v0, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lrx0;->m:F

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

.method public final getPlaybackState()I
    .locals 2

    .line 1
    iget-object v0, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lrx0;->i:I

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

.method public final m1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lrx0;->l:Z

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

.method public final n4(Lxu3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lrx0;->j:Lxu3;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final pause()V
    .locals 2

    const-string v0, "pause"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lrx0;->a7(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final play()V
    .locals 2

    const-string v0, "play"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lrx0;->a7(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    const-string v0, "stop"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lrx0;->a7(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
