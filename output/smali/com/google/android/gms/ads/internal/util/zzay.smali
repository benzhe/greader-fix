.class public final Lcom/google/android/gms/ads/internal/util/zzay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lb80;

.field public static final b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzay;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzay;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzay;->a:Lb80;

    if-nez v1, :cond_2

    .line 5
    invoke-static {p1}, Ly40;->a(Landroid/content/Context;)V

    .line 6
    sget-object v1, Ly40;->t2:Lo40;

    .line 7
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzan;->zzbl(Landroid/content/Context;)Lb80;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_1
    new-instance v1, Lim0;

    new-instance v2, Lpu0;

    invoke-direct {v2}, Lpu0;-><init>()V

    invoke-direct {v1, v2}, Lim0;-><init>(Ltj0;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 13
    new-instance v2, Lh31;

    invoke-direct {v2, p1}, Lh31;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p1, Lb80;

    new-instance v3, Ldn0;

    invoke-direct {v3, v2}, Ldn0;-><init>(Lwq0;)V

    invoke-direct {p1, v3, v1}, Lb80;-><init>(Lhg3;Lfp3;)V

    .line 15
    invoke-virtual {p1}, Lb80;->a()V

    .line 16
    :goto_1
    sput-object p1, Lcom/google/android/gms/ads/internal/util/zzay;->a:Lb80;

    .line 17
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static zzeq(Ljava/lang/String;)Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Law2<",
            "Lpu3;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lxs0;

    invoke-direct {v0}, Lxs0;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzay;->a:Lb80;

    new-instance v2, Lcom/google/android/gms/ads/internal/util/zzbe;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/util/zzbe;-><init>(Ljava/lang/String;Lxs0;)V

    invoke-virtual {v1, v2}, Lb80;->c(Lj40;)Lj40;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/util/Map;[B)Law2;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Law2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lmw;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lmw;-><init>(Ljw;)V

    .line 2
    new-instance v4, Llw;

    invoke-direct {v4, p2, v8}, Llw;-><init>(Ljava/lang/String;Lmw;)V

    .line 3
    new-instance v9, Lds0;

    invoke-direct {v9, v0}, Lds0;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v10, Lkw;

    move-object v0, v10

    move v1, p1

    move-object v2, p2

    move-object v3, v8

    move-object v5, p4

    move-object v6, p3

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lkw;-><init>(ILjava/lang/String;Lmw;Lcc0;[BLjava/util/Map;Lds0;)V

    .line 5
    invoke-static {}, Lds0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "GET"

    .line 6
    invoke-virtual {v10}, Lkw;->getHeaders()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {v10}, Lkw;->zzg()[B

    move-result-object p4

    .line 7
    invoke-static {}, Lds0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcs0;

    invoke-direct {v0, p2, p1, p3, p4}, Lcs0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    const-string p1, "onNetworkRequest"

    invoke-virtual {v9, p1, v0}, Lds0;->c(Ljava/lang/String;Lgs0;)V
    :try_end_0
    .catch Leh3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 10
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzay;->a:Lb80;

    invoke-virtual {p1, v10}, Lb80;->c(Lj40;)Lj40;

    return-object v8
.end method

.method public final zzb(Ljava/lang/String;Ljava/util/Map;)Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Law2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/ads/internal/util/zzay;->zza(ILjava/lang/String;Ljava/util/Map;[B)Law2;

    move-result-object p1

    return-object p1
.end method
