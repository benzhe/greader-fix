.class public final Lzg2;
.super Lht3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lqn3;


# instance fields
.field public final e:Lsy0;

.field public final f:Landroid/content/Context;

.field public g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/lang/String;

.field public final i:Lxg2;

.field public final j:Lmg2;

.field public k:J

.field public l:Lg31;

.field public m:Le41;


# direct methods
.method public constructor <init>(Lsy0;Landroid/content/Context;Ljava/lang/String;Lxg2;Lmg2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lht3;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lzg2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lzg2;->k:J

    .line 4
    iput-object p1, p0, Lzg2;->e:Lsy0;

    .line 5
    iput-object p2, p0, Lzg2;->f:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lzg2;->h:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lzg2;->i:Lxg2;

    .line 8
    iput-object p5, p0, Lzg2;->j:Lmg2;

    .line 9
    iget-object p1, p5, Lmg2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized W6(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lzg2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lzg2;->j:Lmg2;

    invoke-virtual {v0}, Lmg2;->a()V

    .line 3
    iget-object v0, p0, Lzg2;->l:Lg31;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lvm3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lvm3;->e(Lan3;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lzg2;->m:Le41;

    if-eqz v0, :cond_2

    .line 6
    iget-wide v0, p0, Lzg2;->k:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lzg2;->k:J

    sub-long v2, v0, v2

    .line 8
    :goto_0
    iget-object v0, p0, Lzg2;->m:Le41;

    .line 9
    iget-object v0, v0, Le41;->k:Lm31;

    invoke-virtual {v0, v2, v3, p1}, Lm31;->a(JI)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lzg2;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b2()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lzg2;->W6(I)V

    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lzg2;->m:Le41;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le41;->a()V
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

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lzg2;->h:Ljava/lang/String;
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
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized getVideoController()Lsu3;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lzg2;->i:Lxg2;

    invoke-virtual {v0}, Lgg2;->isLoading()Z

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

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onUserLeaveHint()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lzg2;->m:Le41;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lzg2;->k:J

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    .line 3
    iget-object v0, v0, Le41;->k:Lm31;

    invoke-virtual {v0, v1, v2, v3}, Lm31;->a(JI)V
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

.method public final declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
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
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized showInterstitial()V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 2

    .line 38
    sget-object v0, Lgh2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    .line 39
    invoke-virtual {p0, p1}, Lzg2;->W6(I)V

    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0, v0}, Lzg2;->W6(I)V

    return-void

    .line 41
    :cond_2
    invoke-virtual {p0, v0}, Lzg2;->W6(I)V

    return-void

    .line 42
    :cond_3
    invoke-virtual {p0, v1}, Lzg2;->W6(I)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaaz;)V
    .locals 0

    monitor-enter p0

    .line 48
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvq;Lvs3;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 45
    invoke-static {p1}, Lbi;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzg2;->i:Lxg2;

    .line 2
    iget-object v0, v0, Lgg2;->g:Lnl2;

    .line 3
    iput-object p1, v0, Lnl2;->j:Lcom/google/android/gms/internal/ads/zzwc;

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

    return-void
.end method

.method public final zza(Lmu3;)V
    .locals 0

    return-void
.end method

.method public final zza(Lpn0;)V
    .locals 0

    return-void
.end method

.method public final zza(Lps3;)V
    .locals 0

    return-void
.end method

.method public final zza(Lpt3;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lt50;)V
    .locals 0

    monitor-enter p0

    .line 49
    monitor-exit p0

    return-void
.end method

.method public final zza(Lus3;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lwt3;)V
    .locals 0

    monitor-enter p0

    .line 47
    monitor-exit p0

    return-void
.end method

.method public final zza(Lyn3;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lzg2;->j:Lmg2;

    .line 44
    iget-object v0, v0, Lmg2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lyt3;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvq;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 4
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lzg2;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    if-nez v0, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 6
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lzg2;->j:Lmg2;

    sget-object v0, Ldm2;->h:Ldm2;

    .line 8
    invoke-static {v0, v2, v2}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lmg2;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    monitor-exit p0

    return v1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lzg2;->isLoading()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 12
    monitor-exit p0

    return v1

    .line 13
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lzg2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    iget-object v0, p0, Lzg2;->i:Lxg2;

    iget-object v3, p0, Lzg2;->h:Ljava/lang/String;

    new-instance v4, Ldh2;

    invoke-direct {v4, p0}, Ldh2;-><init>(Lzg2;)V

    .line 15
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v5, "loadAd must be called on the main UI thread."

    .line 16
    invoke-static {v5}, Lbi;->f(Ljava/lang/String;)V

    if-nez v3, :cond_2

    const-string p1, "Ad unit ID should not be null for app open ad."

    .line 17
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 18
    iget-object p1, v0, Lgg2;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Ljg2;

    invoke-direct {v2, v0}, Ljg2;-><init>(Lgg2;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 20
    :cond_2
    :try_start_5
    iget-object v5, v0, Lgg2;->h:Law2;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_3

    .line 21
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 22
    :cond_3
    :try_start_7
    iget-object v1, v0, Lgg2;->a:Landroid/content/Context;

    iget-boolean v5, p1, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    invoke-static {v1, v5}, Lc50;->Q3(Landroid/content/Context;Z)V

    .line 23
    iget-object v1, v0, Lgg2;->g:Lnl2;

    .line 24
    iput-object v3, v1, Lnl2;->d:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->L0()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v3

    .line 26
    iput-object v3, v1, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 27
    iput-object p1, v1, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 28
    invoke-virtual {v1}, Lnl2;->a()Lll2;

    move-result-object p1

    .line 29
    new-instance v1, Lng2;

    invoke-direct {v1, v2}, Lng2;-><init>(Llg2;)V

    .line 30
    iput-object p1, v1, Lng2;->a:Lll2;

    .line 31
    iget-object p1, v0, Lgg2;->e:Lli2;

    new-instance v2, Lpi2;

    invoke-direct {v2, v1}, Lpi2;-><init>(Loi2;)V

    new-instance v3, Lhg2;

    invoke-direct {v3, v0}, Lhg2;-><init>(Lgg2;)V

    .line 32
    invoke-interface {p1, v2, v3}, Lli2;->a(Lpi2;Lni2;)Law2;

    move-result-object p1

    iput-object p1, v0, Lgg2;->h:Law2;

    .line 33
    new-instance v2, Llg2;

    invoke-direct {v2, v0, v4, v1}, Llg2;-><init>(Lgg2;Lc72;Lng2;)V

    iget-object v1, v0, Lgg2;->b:Ljava/util/concurrent/Executor;

    .line 34
    new-instance v3, Lsv2;

    invoke-direct {v3, p1, v2}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {p1, v3, v1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v1, 0x1

    .line 35
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 36
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 37
    :try_start_9
    monitor-exit v0

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkj()V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzkk()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkl()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkm()Lru3;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkn()Lpt3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzko()Lus3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzvz()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lzg2;->m:Le41;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lzg2;->k:J

    .line 4
    iget-object v0, p0, Lzg2;->m:Le41;

    .line 5
    iget v0, v0, Le41;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_1

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_2
    new-instance v1, Lg31;

    iget-object v2, p0, Lzg2;->e:Lsy0;

    .line 8
    invoke-virtual {v2}, Lsy0;->f()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lg31;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lb20;)V

    iput-object v1, p0, Lzg2;->l:Lg31;

    .line 9
    new-instance v2, Lbh2;

    invoke-direct {v2, p0}, Lbh2;-><init>(Lzg2;)V

    invoke-virtual {v1, v0, v2}, Lg31;->b(ILjava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
