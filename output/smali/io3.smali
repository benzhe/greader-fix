.class public final Lio3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/lang/Object;

.field public c:Loo3;

.field public d:Landroid/content/Context;

.field public e:Lso3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lko3;

    invoke-direct {v0, p0}, Lko3;-><init>(Lio3;)V

    iput-object v0, p0, Lio3;->a:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio3;->b:Ljava/lang/Object;

    return-void
.end method

.method public static d(Lio3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio3;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio3;->c:Loo3;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Li00;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio3;->c:Loo3;

    invoke-virtual {v1}, Li00;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    iget-object v1, p0, Lio3;->c:Loo3;

    invoke-virtual {v1}, Li00;->disconnect()V

    :cond_2
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lio3;->c:Loo3;

    .line 7
    iput-object v1, p0, Lio3;->e:Lso3;

    .line 8
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 9
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio3;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio3;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio3;->c:Loo3;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lmo3;

    invoke-direct {v1, p0}, Lmo3;-><init>(Lio3;)V

    .line 4
    new-instance v2, Llo3;

    invoke-direct {v2, p0}, Llo3;-><init>(Lio3;)V

    .line 5
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    new-instance v3, Loo3;

    iget-object v4, p0, Lio3;->d:Landroid/content/Context;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlj()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzaai()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Loo3;-><init>(Landroid/content/Context;Landroid/os/Looper;Li00$a;Li00$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit p0

    .line 9
    iput-object v3, p0, Lio3;->c:Loo3;

    .line 10
    invoke-virtual {v3}, Li00;->checkAvailabilityAndConnect()V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit p0

    throw v1

    .line 13
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lio3;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio3;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio3;->d:Landroid/content/Context;

    .line 5
    sget-object p1, Ly40;->k2:Lo40;

    .line 6
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v1, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lio3;->a()V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Ly40;->j2:Lo40;

    .line 11
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 12
    invoke-virtual {v1, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    new-instance p1, Ljo3;

    invoke-direct {p1, p0}, Ljo3;-><init>(Lio3;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lvm3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lvm3;->d(Lan3;)V

    .line 16
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;
    .locals 2

    .line 1
    iget-object v0, p0, Lio3;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio3;->e:Lso3;

    if-nez v1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzth;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzth;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio3;->c:Loo3;

    invoke-virtual {v1}, Loo3;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lio3;->e:Lso3;

    invoke-interface {v1, p1}, Lso3;->D1(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    .line 6
    :cond_1
    :try_start_3
    iget-object v1, p0, Lio3;->e:Lso3;

    invoke-interface {v1, p1}, Lso3;->B5(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    .line 7
    invoke-static {v1, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzth;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzth;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
