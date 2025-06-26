.class public final Lv52;
.super Lzs3;
.source "SourceFile"


# instance fields
.field public final e:Lw62;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsy0;Lnl2;Ldk1;Lus3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lzs3;-><init>()V

    .line 2
    new-instance v0, Ly62;

    .line 3
    invoke-virtual {p2}, Lsy0;->d()Lpp2;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Ly62;-><init>(Ldk1;Lpp2;)V

    .line 4
    iget-object p4, v0, Ly62;->b:Lw52;

    .line 5
    iget-object p4, p4, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p4, p5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    new-instance p4, Le72;

    invoke-direct {p4, p2, p1, v0, p3}, Le72;-><init>(Lsy0;Landroid/content/Context;Ly62;Lnl2;)V

    .line 7
    new-instance p1, Lw62;

    .line 8
    iget-object p2, p3, Lnl2;->d:Ljava/lang/String;

    .line 9
    invoke-direct {p1, p4, p2}, Lw62;-><init>(La72;Ljava/lang/String;)V

    iput-object p1, p0, Lv52;->e:Lw62;

    return-void
.end method


# virtual methods
.method public final declared-synchronized D6(Lcom/google/android/gms/internal/ads/zzvq;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv52;->e:Lw62;

    invoke-virtual {v0, p1, p2}, Lw62;->a(Lcom/google/android/gms/internal/ads/zzvq;I)V
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

.method public final M0(Lcom/google/android/gms/internal/ads/zzvq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv52;->e:Lw62;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lw62;->a(Lcom/google/android/gms/internal/ads/zzvq;I)V

    return-void
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv52;->e:Lw62;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 3
    :try_start_1
    iget-object v2, v0, Lw62;->c:Lru3;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lru3;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "#007 Could not call remote method."

    .line 4
    invoke-static {v3, v2}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6
    :goto_0
    monitor-exit p0

    return-object v1

    .line 7
    :goto_1
    :try_start_5
    monitor-exit v0

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv52;->e:Lw62;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, v0, Lw62;->a:La72;

    invoke-interface {v1}, La72;->isLoading()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkl()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv52;->e:Lw62;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 3
    :try_start_1
    iget-object v2, v0, Lw62;->c:Lru3;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lru3;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "#007 Could not call remote method."

    .line 4
    invoke-static {v3, v2}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6
    :goto_0
    monitor-exit p0

    return-object v1

    .line 7
    :goto_1
    :try_start_5
    monitor-exit v0

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
