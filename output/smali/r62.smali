.class public final Lr62;
.super Lht3;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/internal/ads/zzvt;

.field public final f:Landroid/content/Context;

.field public final g:Lui2;

.field public final h:Ljava/lang/String;

.field public final i:Lw52;

.field public final j:Lej2;

.field public k:Lqg1;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lui2;Lw52;Lej2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lht3;-><init>()V

    .line 2
    iput-object p2, p0, Lr62;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 3
    iput-object p3, p0, Lr62;->h:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lr62;->f:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lr62;->g:Lui2;

    .line 6
    iput-object p5, p0, Lr62;->i:Lw52;

    .line 7
    iput-object p6, p0, Lr62;->j:Lej2;

    .line 8
    sget-object p1, Ly40;->q0:Lo40;

    .line 9
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 10
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr62;->l:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized W6()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lr62;->k:Lqg1;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lqg1;->l:Lc71;

    .line 3
    iget-object v0, v0, Lc71;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lr62;->k:Lqg1;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lf61;->c:Lxa1;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lxa1;->I0(Landroid/content/Context;)V
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
    iget-object v0, p0, Lr62;->h:Ljava/lang/String;
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
    iget-object v0, p0, Lr62;->k:Lqg1;

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

.method public final getVideoController()Lsu3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lr62;->g:Lui2;

    invoke-virtual {v0}, Lui2;->isLoading()Z

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

.method public final declared-synchronized isReady()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "isLoaded must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lr62;->W6()Z

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

.method public final declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lr62;->k:Lqg1;

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
    iget-object v0, p0, Lr62;->k:Lqg1;

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

.method public final declared-synchronized setImmersiveMode(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lr62;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized showInterstitial()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "showInterstitial must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lr62;->k:Lqg1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lr62;->l:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lqg1;->c(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaaz;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvq;Lvs3;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lr62;->i:Lw52;

    .line 15
    iget-object v0, v0, Lw52;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p1}, Lr62;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 0

    return-void
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

    .line 32
    invoke-static {p1}, Lbi;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lmu3;)V
    .locals 1

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    .line 29
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lr62;->i:Lw52;

    .line 31
    iget-object v0, v0, Lw52;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lpn0;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lr62;->j:Lej2;

    .line 34
    iget-object v0, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lps3;)V
    .locals 0

    return-void
.end method

.method public final zza(Lpt3;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    .line 22
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lr62;->i:Lw52;

    .line 24
    iget-object v0, v0, Lw52;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized zza(Lt50;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    .line 25
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lr62;->g:Lui2;

    .line 27
    iput-object p1, v0, Lui2;->f:Lt50;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
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

    .line 19
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lr62;->i:Lw52;

    .line 21
    iget-object v0, v0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lwt3;)V
    .locals 0

    return-void
.end method

.method public final zza(Lyn3;)V
    .locals 0

    return-void
.end method

.method public final zza(Lyt3;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lr62;->i:Lw52;

    .line 18
    iget-object v0, v0, Lw52;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvq;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lr62;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    if-nez v0, :cond_1

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 3
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lr62;->i:Lw52;

    if-eqz p1, :cond_0

    .line 5
    sget-object v0, Ldm2;->h:Ldm2;

    .line 6
    invoke-static {v0, v2, v2}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lw52;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return v1

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lr62;->W6()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 10
    monitor-exit p0

    return v1

    .line 11
    :cond_2
    :try_start_2
    iget-object v0, p0, Lr62;->f:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    invoke-static {v0, v1}, Lc50;->Q3(Landroid/content/Context;Z)V

    .line 12
    iput-object v2, p0, Lr62;->k:Lqg1;

    .line 13
    iget-object v0, p0, Lr62;->g:Lui2;

    iget-object v1, p0, Lr62;->h:Ljava/lang/String;

    new-instance v2, Lvi2;

    iget-object v3, p0, Lr62;->e:Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v2, v3}, Lvi2;-><init>(Lcom/google/android/gms/internal/ads/zzvt;)V

    new-instance v3, Lu62;

    invoke-direct {v3, p0}, Lu62;-><init>(Lr62;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lui2;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lz62;Lc72;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

.method public final declared-synchronized zze(Lx20;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lr62;->k:Lqg1;

    if-nez v0, :cond_0

    const-string p1, "Interstitial can not be shown before loaded."

    .line 2
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lr62;->i:Lw52;

    sget-object v0, Ldm2;->m:Ldm2;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lw52;->d(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 8
    iget-object v0, p0, Lr62;->k:Lqg1;

    iget-boolean v1, p0, Lr62;->l:Z

    invoke-virtual {v0, v1, p1}, Lqg1;->c(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzki()Lx20;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkj()V
    .locals 0

    return-void
.end method

.method public final zzkk()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkl()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lr62;->k:Lqg1;

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
    iget-object v0, p0, Lr62;->k:Lqg1;
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
    iget-object v0, p0, Lr62;->i:Lw52;

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
    iget-object v0, p0, Lr62;->i:Lw52;

    invoke-virtual {v0}, Lw52;->r()Lus3;

    move-result-object v0

    return-object v0
.end method
