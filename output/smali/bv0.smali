.class public final synthetic Lbv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lzu0;


# direct methods
.method public constructor <init>(Lzu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbv0;->e:Lzu0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lbv0;->e:Lzu0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lio3;

    move-result-object v1

    iget-object v0, v0, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    .line 3
    iget-object v2, v1, Lio3;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, v1, Lio3;->e:Lso3;

    const-wide/16 v4, -0x2

    if-nez v3, :cond_0

    .line 5
    monitor-exit v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, v1, Lio3;->c:Loo3;

    invoke-virtual {v3}, Loo3;->q()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 7
    :try_start_1
    iget-object v1, v1, Lio3;->e:Lso3;

    invoke-interface {v1, v0}, Lso3;->w1(Lcom/google/android/gms/internal/ads/zzti;)J

    move-result-wide v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to call into cache service."

    .line 8
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
