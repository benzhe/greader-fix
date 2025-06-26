.class public final Lu52;
.super Lht3;
.source "SourceFile"

# interfaces
.implements Loc1;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lih2;

.field public final g:Ljava/lang/String;

.field public final h:Lw52;

.field public i:Lcom/google/android/gms/internal/ads/zzvt;

.field public final j:Lnl2;

.field public k:Lj41;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lih2;Lw52;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lht3;-><init>()V

    .line 2
    iput-object p1, p0, Lu52;->e:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lu52;->f:Lih2;

    .line 4
    iput-object p2, p0, Lu52;->i:Lcom/google/android/gms/internal/ads/zzvt;

    .line 5
    iput-object p3, p0, Lu52;->g:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lu52;->h:Lw52;

    .line 7
    iget-object p1, p4, Lih2;->i:Lnl2;

    .line 8
    iput-object p1, p0, Lu52;->j:Lnl2;

    .line 9
    iget-object p1, p4, Lih2;->h:Lkc1;

    iget-object p2, p4, Lih2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p0, p2}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized W6(Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lu52;->j:Lnl2;

    .line 2
    iput-object p1, v0, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 3
    iget-object p1, p0, Lu52;->i:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzvt;->r:Z

    .line 4
    iput-boolean p1, v0, Lnl2;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized X6(Lcom/google/android/gms/internal/ads/zzvq;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lu52;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    if-nez v0, :cond_1

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 3
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lu52;->h:Lw52;

    if-eqz p1, :cond_0

    .line 5
    sget-object v0, Ldm2;->h:Ldm2;

    .line 6
    invoke-static {v0, v1, v1}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lw52;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    monitor-exit p0

    return p1

    .line 9
    :cond_1
    :try_start_1
    iget-object v0, p0, Lu52;->e:Landroid/content/Context;

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    invoke-static {v0, v2}, Lc50;->Q3(Landroid/content/Context;Z)V

    .line 10
    iget-object v0, p0, Lu52;->f:Lih2;

    iget-object v2, p0, Lu52;->g:Ljava/lang/String;

    new-instance v3, Lx52;

    invoke-direct {v3, p0}, Lx52;-><init>(Lu52;)V

    invoke-virtual {v0, p1, v2, v1, v3}, Lih2;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lz62;Lc72;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lu52;->k:Lj41;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lf61;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lu52;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lu52;->k:Lj41;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lf61;->f:Lt91;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lt91;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getVideoController()Lsu3;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "getVideoController must be called from the main thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lu52;->k:Lj41;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lj41;->c()Lsu3;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lu52;->f:Lih2;

    invoke-virtual {v0}, Lih2;->isLoading()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized j3()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lu52;->f:Lih2;

    .line 2
    iget-object v0, v0, Lih2;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    check-cast v0, Landroid/view/View;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lu52;->j:Lnl2;

    .line 7
    iget-object v0, v0, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 8
    iget-object v1, p0, Lu52;->k:Lj41;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lj41;->g()Luk2;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lu52;->j:Lnl2;

    .line 9
    iget-boolean v1, v1, Lnl2;->q:Z

    if-eqz v1, :cond_1

    .line 10
    iget-object v0, p0, Lu52;->e:Landroid/content/Context;

    iget-object v1, p0, Lu52;->k:Lj41;

    .line 11
    invoke-virtual {v1}, Lj41;->g()Luk2;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lc50;->V2(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    .line 13
    :cond_1
    invoke-virtual {p0, v0}, Lu52;->W6(Lcom/google/android/gms/internal/ads/zzvt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object v0, p0, Lu52;->j:Lnl2;

    .line 15
    iget-object v0, v0, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 16
    invoke-virtual {p0, v0}, Lu52;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    const-string v0, "Failed to refresh the banner ad."

    .line 18
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_2
    :try_start_3
    iget-object v0, p0, Lu52;->f:Lih2;

    .line 21
    iget-object v0, v0, Lih2;->h:Lkc1;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lkc1;->G0(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lu52;->k:Lj41;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lf61;->c:Lxa1;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lxa1;->G0(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lu52;->k:Lj41;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lf61;->c:Lxa1;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lxa1;->H0(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setManualImpressionsEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lu52;->j:Lnl2;

    .line 3
    iput-boolean p1, v0, Lnl2;->f:Z
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

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaaz;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setVideoOptions must be called on the main UI thread."

    .line 22
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lu52;->j:Lnl2;

    .line 24
    iput-object p1, v0, Lnl2;->e:Lcom/google/android/gms/internal/ads/zzaaz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvq;Lvs3;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "setAdSize must be called on the main UI thread."

    .line 9
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lu52;->j:Lnl2;

    .line 11
    iput-object p1, v0, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 12
    iput-object p1, p0, Lu52;->i:Lcom/google/android/gms/internal/ads/zzvt;

    .line 13
    iget-object v0, p0, Lu52;->k:Lj41;

    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lu52;->f:Lih2;

    .line 15
    iget-object v1, v1, Lih2;->f:Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v0, v1, p1}, Lj41;->d(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwc;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzj;)V
    .locals 0

    return-void
.end method

.method public final zza(Lgl0;)V
    .locals 0

    return-void
.end method

.method public final zza(Ljl0;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Llt3;)V
    .locals 0

    const-string p1, "setAdMetadataListener must be called on the main UI thread."

    .line 39
    invoke-static {p1}, Lbi;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lmu3;)V
    .locals 1

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    .line 36
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lu52;->h:Lw52;

    .line 38
    iget-object v0, v0, Lw52;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lpn0;)V
    .locals 0

    return-void
.end method

.method public final zza(Lps3;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 26
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lu52;->f:Lih2;

    .line 28
    iget-object v0, v0, Lih2;->e:Lq62;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iput-object p1, v0, Lq62;->e:Lps3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final zza(Lpt3;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    .line 6
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lu52;->h:Lw52;

    .line 8
    iget-object v0, v0, Lw52;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized zza(Lt50;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    .line 32
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lu52;->f:Lih2;

    .line 34
    iput-object p1, v0, Lih2;->g:Lt50;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lus3;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 3
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lu52;->h:Lw52;

    .line 5
    iget-object v0, v0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized zza(Lwt3;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    .line 18
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lu52;->j:Lnl2;

    .line 20
    iput-object p1, v0, Lnl2;->c:Lwt3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lyn3;)V
    .locals 0

    return-void
.end method

.method public final zza(Lyt3;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvq;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lu52;->i:Lcom/google/android/gms/internal/ads/zzvt;

    invoke-virtual {p0, v0}, Lu52;->W6(Lcom/google/android/gms/internal/ads/zzvt;)V

    .line 2
    invoke-virtual {p0, p1}, Lu52;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zze(Lx20;)V
    .locals 0

    return-void
.end method

.method public final zzki()Lx20;
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lu52;->f:Lih2;

    .line 3
    iget-object v0, v0, Lih2;->f:Landroid/view/ViewGroup;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final declared-synchronized zzkj()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "recordManualImpression must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lu52;->k:Lj41;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lj41;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkk()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lu52;->k:Lj41;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lu52;->e:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Lj41;->e()Luk2;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lc50;->V2(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lu52;->j:Lnl2;

    .line 7
    iget-object v0, v0, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkl()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lu52;->k:Lj41;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lf61;->f:Lt91;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lt91;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkm()Lru3;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Ly40;->m4:Lo40;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    monitor-exit p0

    return-object v1

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lu52;->k:Lj41;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    .line 7
    :cond_1
    :try_start_2
    iget-object v0, v0, Lf61;->f:Lt91;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzkn()Lpt3;
    .locals 2

    .line 1
    iget-object v0, p0, Lu52;->h:Lw52;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lw52;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpt3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final zzko()Lus3;
    .locals 1

    .line 1
    iget-object v0, p0, Lu52;->h:Lw52;

    invoke-virtual {v0}, Lw52;->r()Lus3;

    move-result-object v0

    return-object v0
.end method
