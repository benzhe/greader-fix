.class public final Lw52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.implements Lca1;
.implements Lda1;
.implements Lra1;
.implements Lva1;
.implements Lob1;
.implements Lhc1;
.implements Lsc1;
.implements Ler3;


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lus3;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lpt3;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lmu3;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lvs3;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lyt3;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Lpp2;

.field public final l:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpp2;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lw52;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lw52;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lw52;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lw52;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lw52;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v1, Ly40;->i5:Lo40;

    .line 9
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 10
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lw52;->l:Ljava/util/concurrent/BlockingQueue;

    .line 12
    iput-object p1, p0, Lw52;->k:Lpp2;

    return-void
.end method


# virtual methods
.method public final M(Lhl2;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lw52;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final O(Lgn0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lc62;

    invoke-direct {v1, p1}, Lc62;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 2
    iget-object v0, p0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lf62;

    invoke-direct {v1, p1}, Lf62;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 3
    iget-object v0, p0, Lw52;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Le62;

    invoke-direct {v1, p1}, Le62;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 4
    iget-object p1, p0, Lw52;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object p1, p0, Lw52;->l:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw52;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    check-cast v0, Lyt3;

    .line 4
    invoke-interface {v0, p1}, Lyt3;->G(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 5
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lz52;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ly52;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 2
    iget-object v0, p0, Lw52;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    check-cast v0, Lyt3;

    invoke-interface {v0}, Lyt3;->T()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, La62;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    check-cast v0, Lus3;

    invoke-interface {v0}, Lus3;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized onAdLoaded()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Li62;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 2
    iget-object v0, p0, Lw52;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lk62;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 3
    iget-object v0, p0, Lw52;->l:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 4
    iget-object v2, p0, Lw52;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ld62;

    invoke-direct {v3, v1}, Ld62;-><init>(Landroid/util/Pair;)V

    invoke-static {v2, v3}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lw52;->l:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 6
    iget-object v0, p0, Lw52;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onAdOpened()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lj62;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 2
    iget-object v0, p0, Lw52;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lm62;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 3
    iget-object v0, p0, Lw52;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    check-cast v0, Lyt3;

    invoke-interface {v0}, Lyt3;->onAdImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 6
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lw52;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lw52;->l:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The queue for app events is full, dropping the new event."

    .line 3
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lw52;->k:Lpp2;

    if-eqz v0, :cond_0

    const-string v1, "dae_action"

    .line 5
    invoke-static {v1}, Lqp2;->c(Ljava/lang/String;)Lqp2;

    move-result-object v1

    const-string v2, "dae_name"

    .line 6
    iget-object v3, v1, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dae_data"

    .line 7
    iget-object v2, v1, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v1}, Lpp2;->b(Lqp2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_1
    iget-object v0, p0, Lw52;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lb62;

    invoke-direct {v1, p1, p2}, Lb62;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onRewardedVideoCompleted()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized r()Lus3;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzvv;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw52;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    check-cast v0, Lmu3;

    .line 4
    invoke-interface {v0, p1}, Lmu3;->x4(Lcom/google/android/gms/internal/ads/zzvv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 5
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final t(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 0

    return-void
.end method
