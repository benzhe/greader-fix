.class public final Lnq1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhq1;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhg0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhq1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lnq1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Lnq1;->a:Lhq1;

    return-void
.end method


# virtual methods
.method public final a()Lhg0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnq1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Unexpected call to adapter creator."

    .line 2
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)Lzl2;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lzl2;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance p2, Lhh0;

    new-instance v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v1}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-direct {p2, v1}, Lhh0;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.google.ads.mediation.AdUrlAdapter"

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance p2, Lhh0;

    new-instance v1, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v1}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    invoke-direct {p2, v1}, Lhh0;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance p2, Lhh0;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaqt;-><init>()V

    invoke-direct {p2, v1}, Lhh0;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, p1, p2}, Lnq1;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lig0;

    move-result-object p2

    .line 9
    :goto_0
    invoke-direct {v0, p2}, Lzl2;-><init>(Lig0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 10
    iget-object p2, p0, Lnq1;->a:Lhq1;

    .line 11
    monitor-enter p2

    .line 12
    :try_start_1
    iget-object v1, p2, Lhq1;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_3

    .line 13
    monitor-exit p2

    goto :goto_1

    .line 14
    :cond_3
    :try_start_2
    iget-object v1, v0, Lzl2;->a:Lig0;

    invoke-interface {v1}, Lig0;->O()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :try_start_3
    iget-object v2, v0, Lzl2;->a:Lig0;

    invoke-interface {v2}, Lig0;->M()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    new-instance v3, Liq1;

    invoke-direct {v3, p1, v1, v2}, Liq1;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqr;Lcom/google/android/gms/internal/ads/zzaqr;)V

    .line 17
    iget-object v1, p2, Lhq1;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 18
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 19
    :try_start_5
    new-instance v1, Lpl2;

    invoke-direct {v1, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception p1

    .line 20
    new-instance v1, Lpl2;

    invoke-direct {v1, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Lpl2; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 21
    :catch_0
    monitor-exit p2

    :goto_1
    return-object v0

    :catchall_2
    move-exception p1

    monitor-exit p2

    throw p1

    :catchall_3
    move-exception p1

    .line 22
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c(Ljava/lang/String;)Lvi0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnq1;->a()Lhg0;

    move-result-object v0

    invoke-interface {v0, p1}, Lhg0;->h4(Ljava/lang/String;)Lvi0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lnq1;->a:Lhq1;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v1, Lhq1;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 5
    monitor-exit v1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lvi0;->O()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v2

    .line 7
    invoke-interface {v0}, Lvi0;->M()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    new-instance v4, Liq1;

    invoke-direct {v4, p1, v2, v3}, Liq1;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqr;Lcom/google/android/gms/internal/ads/zzaqr;)V

    .line 9
    iget-object v2, v1, Lhq1;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    monitor-exit v1

    goto :goto_0

    .line 11
    :catchall_0
    monitor-exit v1

    :goto_0
    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final d(Ljava/lang/String;Lorg/json/JSONObject;)Lig0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnq1;->a()Lhg0;

    move-result-object v0

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :try_start_0
    const-string v2, "class_name"

    .line 4
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-interface {v0, p2}, Lhg0;->W0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0, v3}, Lhg0;->B3(Ljava/lang/String;)Lig0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0, p2}, Lhg0;->V1(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v0, p2}, Lhg0;->B3(Ljava/lang/String;)Lig0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-interface {v0, v1}, Lhg0;->B3(Ljava/lang/String;)Lig0;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    const-string v1, "Invalid custom event."

    .line 10
    invoke-static {v1, p2}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_3
    invoke-interface {v0, p1}, Lhg0;->B3(Ljava/lang/String;)Lig0;

    move-result-object p1

    return-object p1
.end method
