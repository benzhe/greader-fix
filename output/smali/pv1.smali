.class public final Lpv1;
.super Lmv1;
.source "SourceFile"


# instance fields
.field public g:Ljava/lang/String;

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmv1;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lpv1;->h:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlj()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzaai()Landroid/os/Looper;

    move-result-object v0

    .line 4
    new-instance v1, Lcm0;

    invoke-direct {v1, p1, v0, p0, p0}, Lcm0;-><init>(Landroid/content/Context;Landroid/os/Looper;Li00$a;Li00$b;)V

    iput-object v1, p0, Lmv1;->f:Lcm0;

    return-void
.end method


# virtual methods
.method public final g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 1
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lmv1;->a:Lxs0;

    new-instance v0, Lyv1;

    sget-object v1, Ldm2;->e:Ldm2;

    invoke-direct {v0, v1}, Lyv1;-><init>(Ldm2;)V

    invoke-virtual {p1, v0}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    sget-object p1, Ldm2;->e:Ldm2;

    iget-object v0, p0, Lmv1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lmv1;->d:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lmv1;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget v1, p0, Lpv1;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lmv1;->f:Lcm0;

    .line 6
    invoke-virtual {v1}, Lcm0;->p()Lem0;

    move-result-object v1

    iget-object v2, p0, Lmv1;->e:Lcom/google/android/gms/internal/ads/zzauj;

    new-instance v3, Llv1;

    invoke-direct {v3, p0}, Llv1;-><init>(Lmv1;)V

    .line 7
    invoke-interface {v1, v2, v3}, Lem0;->W3(Lcom/google/android/gms/internal/ads/zzauj;Llm0;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 8
    iget-object v1, p0, Lmv1;->f:Lcm0;

    invoke-virtual {v1}, Lcm0;->p()Lem0;

    move-result-object v1

    iget-object v2, p0, Lpv1;->g:Ljava/lang/String;

    new-instance v3, Llv1;

    invoke-direct {v3, p0}, Llv1;-><init>(Lmv1;)V

    invoke-interface {v1, v2, v3}, Lem0;->n5(Ljava/lang/String;Llm0;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lmv1;->a:Lxs0;

    new-instance v2, Lyv1;

    invoke-direct {v2, p1}, Lyv1;-><init>(Ldm2;)V

    invoke-virtual {v1, v2}, Lxs0;->b(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 10
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v2

    const-string v3, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 11
    iget-object v4, v2, Lor0;->e:Landroid/content/Context;

    iget-object v2, v2, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v4, v2}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v2

    .line 12
    invoke-interface {v2, v1, v3}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lmv1;->a:Lxs0;

    new-instance v2, Lyv1;

    invoke-direct {v2, p1}, Lyv1;-><init>(Ldm2;)V

    invoke-virtual {v1, v2}, Lxs0;->b(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 14
    :catch_0
    iget-object v1, p0, Lmv1;->a:Lxs0;

    new-instance v2, Lyv1;

    invoke-direct {v2, p1}, Lyv1;-><init>(Ldm2;)V

    invoke-virtual {v1, v2}, Lxs0;->b(Ljava/lang/Throwable;)Z

    .line 15
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
