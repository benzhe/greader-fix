.class public final Lyq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$a;
.implements Li00$b;


# instance fields
.field public a:Ltr2;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lkd3;

.field public final e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzdwt;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/os/HandlerThread;

.field public final g:Lpq2;

.field public final h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkd3;Ljava/lang/String;Ljava/lang/String;Lpq2;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lyq2;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lyq2;->d:Lkd3;

    .line 4
    iput-object p4, p0, Lyq2;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lyq2;->g:Lpq2;

    .line 6
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassDGClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lyq2;->f:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lyq2;->h:J

    .line 9
    new-instance p3, Ltr2;

    .line 10
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Ltr2;-><init>(Landroid/content/Context;Landroid/os/Looper;Li00$a;Li00$b;I)V

    iput-object p3, p0, Lyq2;->a:Ltr2;

    .line 11
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lyq2;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    iget-object p1, p0, Lyq2;->a:Ltr2;

    invoke-virtual {p1}, Li00;->checkAvailabilityAndConnect()V

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/zzdwt;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwt;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwt;-><init>(I[BI)V

    return-object v0
.end method


# virtual methods
.method public final Z(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-wide v0, p0, Lyq2;->h:J

    const/16 p1, 0xfab

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lyq2;->c(IJLjava/lang/Exception;)V

    .line 3
    iget-object p1, p0, Lyq2;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lyq2;->b()Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyq2;->a:Ltr2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li00;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyq2;->a:Ltr2;

    invoke-virtual {v0}, Li00;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lyq2;->a:Ltr2;

    invoke-virtual {v0}, Li00;->disconnect()V

    :cond_1
    return-void
.end method

.method public final c(IJLjava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lyq2;->g:Lpq2;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 3
    invoke-virtual {v0, p1, v1, v2, p4}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    :cond_0
    return-void
.end method

.method public final g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 1
    :try_start_0
    iget-wide v0, p0, Lyq2;->h:J

    const/16 p1, 0xfac

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lyq2;->c(IJLjava/lang/Exception;)V

    .line 3
    iget-object p1, p0, Lyq2;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lyq2;->b()Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 6

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lyq2;->a:Ltr2;

    invoke-virtual {v0}, Ltr2;->p()Lyr2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwr;

    const/4 v2, 0x1

    iget-object v3, p0, Lyq2;->d:Lkd3;

    iget-object v4, p0, Lyq2;->b:Ljava/lang/String;

    iget-object v5, p0, Lyq2;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdwr;-><init>(ILkd3;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Lyr2;->I2(Lcom/google/android/gms/internal/ads/zzdwr;)Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Lyq2;->h:J

    const/16 v3, 0x1393

    .line 5
    invoke-virtual {p0, v3, v1, v2, p1}, Lyq2;->c(IJLjava/lang/Exception;)V

    .line 6
    iget-object p1, p0, Lyq2;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-virtual {p0}, Lyq2;->a()V

    .line 8
    iget-object p1, p0, Lyq2;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 p1, 0x7da

    .line 10
    iget-wide v1, p0, Lyq2;->h:J

    invoke-virtual {p0, p1, v1, v2, v0}, Lyq2;->c(IJLjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    invoke-virtual {p0}, Lyq2;->a()V

    .line 12
    iget-object p1, p0, Lyq2;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_1
    move-exception p1

    .line 13
    invoke-virtual {p0}, Lyq2;->a()V

    .line 14
    iget-object v0, p0, Lyq2;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 15
    throw p1

    :cond_0
    return-void
.end method
