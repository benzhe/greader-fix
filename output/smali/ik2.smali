.class public final Lik2;
.super Leo0;
.source "SourceFile"


# instance fields
.field public final f:Lzj2;

.field public final g:Lej2;

.field public final h:Ljava/lang/String;

.field public final i:Lgl2;

.field public final j:Landroid/content/Context;

.field public k:Ldp1;

.field public l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lzj2;Landroid/content/Context;Lej2;Lgl2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leo0;-><init>()V

    .line 2
    iput-object p1, p0, Lik2;->h:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lik2;->f:Lzj2;

    .line 4
    iput-object p4, p0, Lik2;->g:Lej2;

    .line 5
    iput-object p5, p0, Lik2;->i:Lgl2;

    .line 6
    iput-object p3, p0, Lik2;->j:Landroid/content/Context;

    .line 7
    sget-object p1, Ly40;->q0:Lo40;

    .line 8
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 9
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lik2;->l:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized E6(Lcom/google/android/gms/internal/ads/zzaww;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lik2;->i:Lgl2;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaww;->e:Ljava/lang/String;

    iput-object v1, v0, Lgl2;->a:Ljava/lang/String;

    .line 4
    sget-object v1, Ly40;->A0:Lo40;

    .line 5
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaww;->f:Ljava/lang/String;

    iput-object p1, v0, Lgl2;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized I5(Lcom/google/android/gms/internal/ads/zzvq;Lno0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lik2;->W6(Lcom/google/android/gms/internal/ads/zzvq;Lno0;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final J5(Lgo0;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lik2;->g:Lej2;

    .line 3
    iget-object v0, v0, Lej2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized S6(Lx20;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lik2;->k:Ldp1;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    .line 3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lik2;->g:Lej2;

    sget-object p2, Ldm2;->m:Ldm2;

    const/4 v0, 0x0

    .line 5
    invoke-static {p2, v0, v0}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lej2;->d(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 9
    iget-object v0, p0, Lik2;->k:Ldp1;

    invoke-virtual {v0, p2, p1}, Ldp1;->c(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized T4(Lcom/google/android/gms/internal/ads/zzvq;Lno0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lik2;->W6(Lcom/google/android/gms/internal/ads/zzvq;Lno0;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized W6(Lcom/google/android/gms/internal/ads/zzvq;Lno0;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lik2;->g:Lej2;

    .line 3
    iget-object v0, v0, Lej2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object p2, p0, Lik2;->j:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    if-nez p2, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 5
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lik2;->g:Lej2;

    sget-object p2, Ldm2;->h:Ldm2;

    const/4 p3, 0x0

    .line 7
    invoke-static {p2, p3, p3}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lej2;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object p2, p0, Lik2;->k:Ldp1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_1
    :try_start_2
    new-instance p2, Lbk2;

    invoke-direct {p2}, Lbk2;-><init>()V

    .line 13
    iget-object v0, p0, Lik2;->f:Lzj2;

    .line 14
    iget-object v1, v0, Lzj2;->g:Lnl2;

    .line 15
    iget-object v1, v1, Lnl2;->p:Lal2;

    .line 16
    iput p3, v1, Lal2;->a:I

    .line 17
    iget-object p3, p0, Lik2;->h:Ljava/lang/String;

    new-instance v1, Lkk2;

    invoke-direct {v1, p0}, Lkk2;-><init>(Lik2;)V

    invoke-virtual {v0, p1, p3, p2, v1}, Lzj2;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lz62;Lc72;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c2()Lbo0;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lik2;->k:Ldp1;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Ldp1;->o:Lbo0;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lik2;->k:Ldp1;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Ldp1;->m:Lrb1;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, v0, Lrb1;->f:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lik2;->k:Ldp1;

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

.method public final isLoaded()Z
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lik2;->k:Ldp1;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, v0, Ldp1;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r4(Llu3;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lik2;->g:Lej2;

    const/4 v0, 0x0

    .line 2
    iget-object p1, p1, Lej2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lik2;->g:Lej2;

    new-instance v1, Llk2;

    invoke-direct {v1, p0, p1}, Llk2;-><init>(Lik2;Llu3;)V

    .line 4
    iget-object p1, v0, Lej2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized setImmersiveMode(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lik2;->l:Z
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

.method public final t5(Loo0;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lik2;->g:Lej2;

    .line 3
    iget-object v0, v0, Lej2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lmu3;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lik2;->g:Lej2;

    .line 3
    iget-object v0, v0, Lej2;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized zze(Lx20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lik2;->l:Z

    invoke-virtual {p0, p1, v0}, Lik2;->S6(Lx20;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzkm()Lru3;
    .locals 2

    .line 1
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

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v0, p0, Lik2;->k:Ldp1;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lf61;->f:Lt91;

    return-object v0

    :cond_1
    return-object v1
.end method
