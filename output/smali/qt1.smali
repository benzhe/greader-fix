.class public final synthetic Lqt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmt1;


# direct methods
.method public constructor <init>(Lmt1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt1;->e:Lmt1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lqt1;->e:Lmt1;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, v0, Lmt1;->c:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.ads.MobileAds"

    const/4 v2, 0x0

    const-string v3, "Timeout."

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v4

    invoke-interface {v4}, Lb20;->b()J

    move-result-wide v4

    iget-wide v6, v0, Lmt1;->d:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 5
    iget-object v4, v0, Lmt1;->n:Ljava/util/Map;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v6, v1, v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v0, Lmt1;->e:Lxs0;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1, v2}, Lxs0;->b(Ljava/lang/Throwable;)Z

    .line 7
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
