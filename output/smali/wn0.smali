.class public final Lwn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# instance fields
.field public final a:Ljn0;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/Object;

.field public final d:Lsn0;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljn0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Lsn0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsn0;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    iput-object v0, p0, Lwn0;->d:Lsn0;

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lb40;

    invoke-direct {p2}, Lb40;-><init>()V

    :cond_0
    iput-object p2, p0, Lwn0;->a:Ljn0;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lwn0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lzu3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v2, p0, Lwn0;->b:Landroid/content/Context;

    .line 5
    invoke-static {v2, p2}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p2

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzavt;

    invoke-direct {v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzavt;-><init>(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V

    .line 7
    invoke-interface {v1, v2}, Ljn0;->U6(Lcom/google/android/gms/internal/ads/zzavt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "#007 Could not call remote method."

    .line 8
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->d:Lsn0;

    const/4 v2, 0x0

    .line 3
    iput-object v2, v1, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    .line 4
    iget-object v1, p0, Lwn0;->a:Ljn0;

    if-nez v1, :cond_0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_1
    new-instance v3, Ly20;

    invoke-direct {v3, v2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-interface {v1, v3}, Ljn0;->A6(Lx20;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "#007 Could not call remote method."

    .line 8
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final destroy(Landroid/content/Context;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lwn0;->d:Lsn0;

    const/4 v2, 0x0

    .line 12
    iput-object v2, v1, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    .line 13
    iget-object v1, p0, Lwn0;->a:Ljn0;

    if-nez v1, :cond_0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 15
    :cond_0
    :try_start_1
    new-instance v2, Ly20;

    invoke-direct {v2, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-interface {v1, v2}, Ljn0;->A6(Lx20;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "#007 Could not call remote method."

    .line 17
    invoke-static {v1, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-interface {v1}, Ljn0;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 4
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final getCustomData()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->f:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lwn0;->a:Ljn0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljn0;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljn0;->zzkm()Lru3;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 3
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lru3;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .locals 2

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->d:Lsn0;

    .line 3
    iget-object v1, v1, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->e:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isLoaded()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 4
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljn0;->isLoaded()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    const-string v3, "#007 Could not call remote method."

    .line 5
    invoke-static {v3, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lzu3;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lwn0;->a(Ljava/lang/String;Lzu3;)V

    return-void
.end method

.method public final loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdt()Lzu3;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lwn0;->a(Ljava/lang/String;Lzu3;)V

    return-void
.end method

.method public final pause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_1
    new-instance v2, Ly20;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v1, v2}, Ljn0;->Y4(Lx20;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "#007 Could not call remote method."

    .line 6
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final pause(Landroid/content/Context;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;

    if-nez v1, :cond_0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 11
    :cond_0
    :try_start_1
    new-instance v2, Ly20;

    invoke-direct {v2, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-interface {v1, v2}, Ljn0;->Y4(Lx20;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "#007 Could not call remote method."

    .line 13
    invoke-static {v1, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final resume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_1
    new-instance v2, Ly20;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v1, v2}, Ljn0;->k4(Lx20;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "#007 Could not call remote method."

    .line 6
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final resume(Landroid/content/Context;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;

    if-nez v1, :cond_0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 11
    :cond_0
    :try_start_1
    new-instance v2, Ly20;

    invoke-direct {v2, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-interface {v1, v2}, Ljn0;->k4(Lx20;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "#007 Could not call remote method."

    .line 13
    invoke-static {v1, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setAdMetadataListener(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    new-instance v2, Llr3;

    invoke-direct {v2, p1}, Llr3;-><init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    invoke-interface {v1, v2}, Ljn0;->zza(Llt3;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setCustomData(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-interface {v1, p1}, Ljn0;->setCustomData(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lwn0;->f:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setImmersiveMode(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-interface {v1, p1}, Ljn0;->setImmersiveMode(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->d:Lsn0;

    .line 3
    iput-object p1, v1, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    .line 4
    iget-object p1, p0, Lwn0;->a:Ljn0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5
    :try_start_1
    invoke-interface {p1, v1}, Ljn0;->zza(Lpn0;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "#007 Could not call remote method."

    .line 6
    invoke-static {v1, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lwn0;->e:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lwn0;->a:Ljn0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    invoke-interface {v1, p1}, Ljn0;->setUserId(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwn0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwn0;->a:Ljn0;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljn0;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "#007 Could not call remote method."

    .line 5
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
