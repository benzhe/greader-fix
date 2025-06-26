.class public final Lev3;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/google/android/gms/ads/AdListener;

.field public final synthetic c:Lbv3;


# direct methods
.method public constructor <init>(Lbv3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lev3;->c:Lbv3;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lev3;->a:Ljava/lang/Object;

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lev3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lev3;->b:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lev3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lev3;->b:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private r(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lev3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lev3;->b:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private s(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lev3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lev3;->b:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lev3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lev3;->b:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lev3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lev3;->b:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lev3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lev3;->b:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bridge synthetic onAdClosed()V
    .locals 0

    invoke-direct {p0}, Lev3;->d()V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lev3;->c:Lbv3;

    .line 2
    iget-object v1, v0, Lbv3;->c:Lcom/google/android/gms/ads/VideoController;

    .line 3
    invoke-virtual {v0}, Lbv3;->r()Lsu3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lsu3;)V

    .line 4
    invoke-direct {p0, p1}, Lev3;->r(I)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lev3;->c:Lbv3;

    .line 6
    iget-object v1, v0, Lbv3;->c:Lcom/google/android/gms/ads/VideoController;

    .line 7
    invoke-virtual {v0}, Lbv3;->r()Lsu3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lsu3;)V

    .line 8
    invoke-direct {p0, p1}, Lev3;->s(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public bridge synthetic onAdImpression()V
    .locals 0

    invoke-direct {p0}, Lev3;->t()V

    return-void
.end method

.method public bridge synthetic onAdLeftApplication()V
    .locals 0

    invoke-direct {p0}, Lev3;->x()V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lev3;->c:Lbv3;

    .line 2
    iget-object v1, v0, Lbv3;->c:Lcom/google/android/gms/ads/VideoController;

    .line 3
    invoke-virtual {v0}, Lbv3;->r()Lsu3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lsu3;)V

    .line 4
    invoke-direct {p0}, Lev3;->z()V

    return-void
.end method

.method public bridge synthetic onAdOpened()V
    .locals 0

    invoke-direct {p0}, Lev3;->A()V

    return-void
.end method
