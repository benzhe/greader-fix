.class public final Lxq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$a;
.implements Li00$b;


# instance fields
.field public a:Ltr2;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lgl1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lxq2;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lxq2;->c:Ljava/lang/String;

    .line 4
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lxq2;->e:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance p3, Ltr2;

    .line 7
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x8c6180

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Ltr2;-><init>(Landroid/content/Context;Landroid/os/Looper;Li00$a;Li00$b;I)V

    iput-object p3, p0, Lxq2;->a:Ltr2;

    .line 8
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lxq2;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 9
    iget-object p1, p0, Lxq2;->a:Ltr2;

    invoke-virtual {p1}, Li00;->checkAvailabilityAndConnect()V

    return-void
.end method

.method public static b()Lgl1;
    .locals 3

    .line 1
    invoke-static {}, Lgl1;->V()Lgl1$b;

    move-result-object v0

    const-wide/32 v1, 0x8000

    .line 2
    invoke-virtual {v0, v1, v2}, Lgl1$b;->r(J)Lgl1$b;

    .line 3
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object v0

    check-cast v0, Ls63;

    check-cast v0, Lgl1;

    return-object v0
.end method


# virtual methods
.method public final Z(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lxq2;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lxq2;->b()Lgl1;

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
    iget-object v0, p0, Lxq2;->a:Ltr2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li00;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lxq2;->a:Ltr2;

    invoke-virtual {v0}, Li00;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lxq2;->a:Ltr2;

    invoke-virtual {v0}, Li00;->disconnect()V

    :cond_1
    return-void
.end method

.method public final g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lxq2;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lxq2;->b()Lgl1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 4

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lxq2;->a:Ltr2;

    invoke-virtual {v0}, Ltr2;->p()Lyr2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwh;

    iget-object v2, p0, Lxq2;->b:Ljava/lang/String;

    iget-object v3, p0, Lxq2;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdwh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Lyr2;->n3(Lcom/google/android/gms/internal/ads/zzdwh;)Lcom/google/android/gms/internal/ads/zzdwj;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdwj;->f:Lgl1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    .line 5
    :try_start_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdwj;->g:[B

    .line 6
    invoke-static {}, Le63;->a()Le63;

    move-result-object v2

    invoke-static {v1, v2}, Lgl1;->x([BLe63;)Lgl1;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdwj;->f:Lgl1;

    .line 7
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdwj;->g:[B
    :try_end_2
    .catch Le73; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 8
    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_1
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwj;->n()V

    .line 10
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdwj;->f:Lgl1;

    .line 11
    iget-object v0, p0, Lxq2;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    invoke-virtual {p0}, Lxq2;->a()V

    .line 13
    iget-object p1, p0, Lxq2;->e:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    .line 14
    :catchall_0
    :try_start_4
    iget-object p1, p0, Lxq2;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lxq2;->b()Lgl1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 15
    invoke-virtual {p0}, Lxq2;->a()V

    .line 16
    iget-object v0, p0, Lxq2;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 17
    throw p1

    .line 18
    :catch_3
    :goto_4
    invoke-virtual {p0}, Lxq2;->a()V

    .line 19
    iget-object p1, p0, Lxq2;->e:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    return-void
.end method
