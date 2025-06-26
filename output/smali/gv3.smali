.class public Lgv3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgv3$a;
    }
.end annotation


# static fields
.field public static i:Lgv3;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field public c:Lzt3;

.field public d:Z

.field public e:Z

.field public f:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field public g:Lcom/google/android/gms/ads/RequestConfiguration;

.field public h:Lcom/google/android/gms/ads/initialization/InitializationStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgv3;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lgv3;->d:Z

    .line 4
    iput-boolean v0, p0, Lgv3;->e:Z

    .line 5
    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lgv3;->g:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgv3;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static e(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajm;",
            ">;)",
            "Lcom/google/android/gms/ads/initialization/InitializationStatus;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajm;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajm;->e:Ljava/lang/String;

    new-instance v3, Luc0;

    .line 4
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzajm;->f:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->NOT_READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzajm;->h:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajm;->g:I

    invoke-direct {v3, v4, v5, v1}, Luc0;-><init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Lwc0;

    invoke-direct {p0, v0}, Lwc0;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static g()Lgv3;
    .locals 2

    .line 1
    const-class v0, Lgv3;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lgv3;->i:Lgv3;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lgv3;

    invoke-direct {v1}, Lgv3;-><init>()V

    sput-object v1, Lgv3;->i:Lgv3;

    .line 4
    :cond_0
    sget-object v1, Lgv3;->i:Lgv3;

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


# virtual methods
.method public final a()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 3

    .line 1
    iget-object v0, p0, Lgv3;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lgv3;->c:Lzt3;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v1, v2}, Lbi;->m(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lgv3;->h:Lcom/google/android/gms/ads/initialization/InitializationStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    .line 5
    :cond_1
    :try_start_3
    iget-object v1, p0, Lgv3;->c:Lzt3;

    invoke-interface {v1}, Lzt3;->E1()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lgv3;->e(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    :catch_0
    const-string v1, "Unable to get Initialization status."

    .line 6
    invoke-static {v1}, Lis0;->zzex(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 7
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final b(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 4

    .line 1
    iget-object v0, p0, Lgv3;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lgv3;->f:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Leg0;

    invoke-direct {v1}, Leg0;-><init>()V

    .line 5
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->b:Lwr3;

    .line 6
    new-instance v3, Lns3;

    invoke-direct {v3, v2, p1, v1}, Lns3;-><init>(Lwr3;Landroid/content/Context;Lhg0;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v3, p1, v1}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljn0;

    .line 9
    new-instance v2, Lwn0;

    invoke-direct {v2, p1, v1}, Lwn0;-><init>(Landroid/content/Context;Ljn0;)V

    iput-object v2, p0, Lgv3;->f:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 10
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lgv3;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lgv3;->c:Lzt3;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting version string."

    invoke-static {v1, v2}, Lbi;->m(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lgv3;->c:Lzt3;

    invoke-interface {v1}, Lzt3;->E3()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lc50;->n4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Unable to get version string."

    .line 5
    invoke-static {v2, v1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lgv3;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lgv3;->d:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 3
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object p1

    iget-object p1, p1, Lgv3;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    iget-boolean v1, p0, Lgv3;->e:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p0}, Lgv3;->a()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lgv3;->d:Z

    if-eqz p3, :cond_4

    .line 9
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v1

    iget-object v1, v1, Lgv3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_a

    .line 10
    :try_start_1
    sget-object v1, Lyf0;->b:Lyf0;

    if-nez v1, :cond_5

    .line 11
    new-instance v1, Lyf0;

    invoke-direct {v1}, Lyf0;-><init>()V

    sput-object v1, Lyf0;->b:Lyf0;

    .line 12
    :cond_5
    sget-object v1, Lyf0;->b:Lyf0;

    .line 13
    invoke-virtual {v1, p1, p2}, Lyf0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    .line 14
    invoke-virtual {p0, p1}, Lgv3;->f(Landroid/content/Context;)V

    if-eqz p3, :cond_6

    .line 15
    iget-object v1, p0, Lgv3;->c:Lzt3;

    new-instance v2, Lgv3$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lgv3$a;-><init>(Lgv3;Ljv3;)V

    invoke-interface {v1, v2}, Lzt3;->e4(Ltc0;)V

    .line 16
    :cond_6
    iget-object v1, p0, Lgv3;->c:Lzt3;

    new-instance v2, Leg0;

    invoke-direct {v2}, Leg0;-><init>()V

    invoke-interface {v1, v2}, Lzt3;->L4(Lhg0;)V

    .line 17
    iget-object v1, p0, Lgv3;->c:Lzt3;

    invoke-interface {v1}, Lzt3;->m0()V

    .line 18
    iget-object v1, p0, Lgv3;->c:Lzt3;

    new-instance v2, Lfv3;

    invoke-direct {v2, p0, p1}, Lfv3;-><init>(Lgv3;Landroid/content/Context;)V

    .line 19
    new-instance v3, Ly20;

    invoke-direct {v3, v2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 20
    invoke-interface {v1, p2, v3}, Lzt3;->J3(Ljava/lang/String;Lx20;)V

    .line 21
    iget-object p2, p0, Lgv3;->g:Lcom/google/android/gms/ads/RequestConfiguration;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    iget-object p2, p0, Lgv3;->g:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result p2

    if-eq p2, v1, :cond_8

    .line 23
    :cond_7
    iget-object p2, p0, Lgv3;->g:Lcom/google/android/gms/ads/RequestConfiguration;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    iget-object v1, p0, Lgv3;->c:Lzt3;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaat;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzaat;-><init>(Lcom/google/android/gms/ads/RequestConfiguration;)V

    invoke-interface {v1, v2}, Lzt3;->N2(Lcom/google/android/gms/internal/ads/zzaat;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_3
    const-string v1, "Unable to set request configuration parcel."

    .line 25
    invoke-static {v1, p2}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_8
    :goto_0
    invoke-static {p1}, Ly40;->a(Landroid/content/Context;)V

    .line 27
    sget-object p1, Ly40;->a3:Lo40;

    .line 28
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 29
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 31
    invoke-virtual {p0}, Lgv3;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    .line 32
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 33
    new-instance p1, Lhv3;

    invoke-direct {p1, p0}, Lhv3;-><init>(Lgv3;)V

    .line 34
    iput-object p1, p0, Lgv3;->h:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    if-eqz p3, :cond_9

    .line 35
    sget-object p1, Lzr0;->b:Landroid/os/Handler;

    new-instance p2, Liv3;

    invoke-direct {p2, p0, p3}, Liv3;-><init>(Lgv3;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    const-string p2, "MobileAdsSettingManager initialization failed"

    .line 36
    invoke-static {p2, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :cond_9
    :goto_1
    monitor-exit v0

    return-void

    .line 38
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final f(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lgv3;->c:Lzt3;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->b:Lwr3;

    .line 3
    new-instance v1, Lis3;

    invoke-direct {v1, v0, p1}, Lis3;-><init>(Lwr3;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, p1, v0}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lzt3;

    .line 6
    iput-object p1, p0, Lgv3;->c:Lzt3;

    :cond_0
    return-void
.end method
