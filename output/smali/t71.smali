.class public final Lt71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lca1;
.implements Lva1;
.implements Lob1;
.implements Lsc1;
.implements Ler3;


# instance fields
.field public final e:Lb20;

.field public final f:Lnr0;


# direct methods
.method public constructor <init>(Lb20;Lnr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt71;->e:Lb20;

    .line 3
    iput-object p2, p0, Lt71;->f:Lnr0;

    return-void
.end method


# virtual methods
.method public final M(Lhl2;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lt71;->f:Lnr0;

    iget-object v0, p0, Lt71;->e:Lb20;

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    .line 2
    iget-object v2, p1, Lnr0;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iput-wide v0, p1, Lnr0;->k:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 4
    iget-object v0, p1, Lnr0;->b:Lxr0;

    invoke-virtual {v0, p1}, Lxr0;->b(Lnr0;)V

    .line 5
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final O(Lgn0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzvq;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lt71;->f:Lnr0;

    .line 2
    iget-object v1, v0, Lnr0;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Lnr0;->a:Lb20;

    invoke-interface {v2}, Lb20;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lnr0;->j:J

    .line 4
    iget-object v0, v0, Lnr0;->b:Lxr0;

    .line 5
    iget-object v4, v0, Lxr0;->a:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v0, v0, Lxr0;->d:Ltr0;

    invoke-virtual {v0, p1, v2, v3}, Ltr0;->a(Lcom/google/android/gms/internal/ads/zzvq;J)V

    .line 7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 10
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final onAdClicked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lt71;->f:Lnr0;

    .line 2
    iget-object v1, v0, Lnr0;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-wide v2, v0, Lnr0;->k:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 4
    new-instance v2, Lmr0;

    invoke-direct {v2, v0}, Lmr0;-><init>(Lnr0;)V

    .line 5
    iget-object v3, v0, Lnr0;->a:Lb20;

    .line 6
    invoke-interface {v3}, Lb20;->b()J

    move-result-wide v3

    iput-wide v3, v2, Lmr0;->a:J

    .line 7
    iget-object v3, v0, Lnr0;->c:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-wide v2, v0, Lnr0;->i:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lnr0;->i:J

    .line 9
    iget-object v2, v0, Lnr0;->b:Lxr0;

    .line 10
    iget-object v3, v2, Lxr0;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    iget-object v2, v2, Lxr0;->d:Ltr0;

    .line 12
    iget-object v4, v2, Ltr0;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    iget v5, v2, Ltr0;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Ltr0;->i:I

    .line 14
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16
    :try_start_4
    iget-object v2, v0, Lnr0;->b:Lxr0;

    invoke-virtual {v2, v0}, Lxr0;->b(Lnr0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    .line 18
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 19
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public final onAdClosed()V
    .locals 8

    .line 1
    iget-object v0, p0, Lt71;->f:Lnr0;

    .line 2
    iget-object v1, v0, Lnr0;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-wide v2, v0, Lnr0;->k:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-object v2, v0, Lnr0;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, v0, Lnr0;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmr0;

    .line 5
    iget-wide v6, v2, Lmr0;->b:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    .line 6
    iget-object v3, v2, Lmr0;->c:Lnr0;

    .line 7
    iget-object v3, v3, Lnr0;->a:Lb20;

    .line 8
    invoke-interface {v3}, Lb20;->b()J

    move-result-wide v3

    iput-wide v3, v2, Lmr0;->b:J

    .line 9
    iget-object v2, v0, Lnr0;->b:Lxr0;

    invoke-virtual {v2, v0}, Lxr0;->b(Lnr0;)V

    .line 10
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onAdImpression()V
    .locals 7

    .line 1
    iget-object v0, p0, Lt71;->f:Lnr0;

    .line 2
    iget-object v1, v0, Lnr0;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-wide v2, v0, Lnr0;->k:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v2, v0, Lnr0;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 4
    iget-object v2, v0, Lnr0;->a:Lb20;

    invoke-interface {v2}, Lb20;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lnr0;->g:J

    .line 5
    iget-object v2, v0, Lnr0;->b:Lxr0;

    invoke-virtual {v2, v0}, Lxr0;->b(Lnr0;)V

    .line 6
    :cond_0
    iget-object v0, v0, Lnr0;->b:Lxr0;

    .line 7
    iget-object v2, v0, Lxr0;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    iget-object v0, v0, Lxr0;->d:Ltr0;

    .line 9
    iget-object v3, v0, Ltr0;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    iget v4, v0, Ltr0;->j:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Ltr0;->j:I

    .line 11
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    .line 15
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    .line 16
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdLoaded()V
    .locals 7

    .line 1
    iget-object v0, p0, Lt71;->f:Lnr0;

    .line 2
    iget-object v1, v0, Lnr0;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-wide v2, v0, Lnr0;->k:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 4
    iget-object v2, v0, Lnr0;->a:Lb20;

    invoke-interface {v2}, Lb20;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lnr0;->h:J

    .line 5
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onAdOpened()V
    .locals 0

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

.method public final t(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 0

    return-void
.end method
