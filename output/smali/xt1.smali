.class public final Lxt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lmt1;


# direct methods
.method public constructor <init>(Lmt1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxt1;->a:Lmt1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lxt1;->a:Lmt1;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lmt1;->c:Z

    const-string v0, "com.google.android.gms.ads.MobileAds"

    const/4 v1, 0x0

    const-string v2, "Internal Error."

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v3

    invoke-interface {v3}, Lb20;->b()J

    move-result-wide v3

    iget-object v5, p0, Lxt1;->a:Lmt1;

    .line 5
    iget-wide v5, v5, Lmt1;->d:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    .line 6
    iget-object p1, p1, Lmt1;->n:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lxt1;->a:Lmt1;

    .line 8
    iget-object p1, p1, Lmt1;->e:Lxs0;

    .line 9
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lxs0;->b(Ljava/lang/Throwable;)Z

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lxt1;->a:Lmt1;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lmt1;->c:Z

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const-string v3, ""

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v4

    invoke-interface {v4}, Lb20;->b()J

    move-result-wide v4

    iget-object v6, p0, Lxt1;->a:Lmt1;

    .line 6
    iget-wide v6, v6, Lmt1;->d:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 7
    iget-object v0, v0, Lmt1;->n:Ljava/util/Map;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lxt1;->a:Lmt1;

    .line 9
    iget-object v0, v0, Lmt1;->i:Ljava/util/concurrent/Executor;

    .line 10
    new-instance v1, Lwt1;

    invoke-direct {v1, p0, p1}, Lwt1;-><init>(Lxt1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
