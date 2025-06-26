.class public Lcom/google/android/gms/ads/MobileAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/MobileAds$Settings;
    }
.end annotation


# static fields
.field public static final ERROR_DOMAIN:Ljava/lang/String; = "com.google.android.gms.ads"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableMediationAdapterInitialization(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lgv3;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0, p0}, Lgv3;->f(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object p0, v0, Lgv3;->c:Lzt3;

    invoke-interface {p0}, Lzt3;->H0()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "Unable to disable mediation adapter initialization."

    .line 5
    invoke-static {p0}, Lis0;->zzex(Ljava/lang/String;)V

    .line 6
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 1

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    invoke-virtual {v0}, Lgv3;->a()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;
    .locals 1

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lgv3;->g:Lcom/google/android/gms/ads/RequestConfiguration;

    return-object v0
.end method

.method public static getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgv3;->b(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    invoke-virtual {v0}, Lgv3;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 2

    .line 5
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lgv3;->d(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p0, p1, v0}, Lgv3;->d(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public static openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lgv3;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Lgv3;->c:Lzt3;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "MobileAds.initialize() must be called prior to opening debug menu."

    invoke-static {v2, v3}, Lbi;->m(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v0, v0, Lgv3;->c:Lzt3;

    .line 5
    new-instance v2, Ly20;

    invoke-direct {v2, p0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-interface {v0, v2, p1}, Lzt3;->r0(Lx20;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "Unable to open debug menu."

    .line 7
    invoke-static {p1, p0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static registerRtbAdapter(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lgv3;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lgv3;->c:Lzt3;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lzt3;->B6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "Unable to register RtbAdapter"

    .line 4
    invoke-static {v0, p0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setAppMuted(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lgv3;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Lgv3;->c:Lzt3;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "MobileAds.initialize() must be called prior to setting app muted state."

    invoke-static {v2, v3}, Lbi;->m(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v0, v0, Lgv3;->c:Lzt3;

    invoke-interface {v0, p0}, Lzt3;->L1(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "Unable to set app mute state."

    .line 5
    invoke-static {v0, p0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static setAppVolume(F)V
    .locals 5

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpg-float v1, v1, p0

    if-gtz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "The app volume must be a value between 0 and 1 inclusive."

    .line 3
    invoke-static {v1, v4}, Lbi;->c(ZLjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lgv3;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v4, v0, Lgv3;->c:Lzt3;

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    const-string v3, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v2, v3}, Lbi;->m(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v0, v0, Lgv3;->c:Lzt3;

    invoke-interface {v0, p0}, Lzt3;->k5(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "Unable to set app volume."

    .line 7
    invoke-static {v0, p0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .locals 5

    .line 1
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Null passed to setRequestConfiguration."

    .line 3
    invoke-static {v1, v2}, Lbi;->c(ZLjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lgv3;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, v0, Lgv3;->g:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 6
    iput-object p0, v0, Lgv3;->g:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 7
    iget-object v3, v0, Lgv3;->c:Lzt3;

    if-nez v3, :cond_1

    .line 8
    monitor-exit v1

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_3

    .line 11
    :cond_2
    :try_start_1
    iget-object v0, v0, Lgv3;->c:Lzt3;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaat;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzaat;-><init>(Lcom/google/android/gms/ads/RequestConfiguration;)V

    invoke-interface {v0, v2}, Lzt3;->N2(Lcom/google/android/gms/internal/ads/zzaat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "Unable to set request configuration parcel."

    .line 12
    invoke-static {v0, p0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_3
    :goto_1
    monitor-exit v1

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
