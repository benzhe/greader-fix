.class public final Lzq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$a;
.implements Li00$b;


# instance fields
.field public final a:Ltr2;

.field public final b:Lnr2;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lnr2;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzq2;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lzq2;->d:Z

    .line 4
    iput-boolean v0, p0, Lzq2;->e:Z

    .line 5
    iput-object p3, p0, Lzq2;->b:Lnr2;

    .line 6
    new-instance p3, Ltr2;

    const v6, 0xc35000

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Ltr2;-><init>(Landroid/content/Context;Landroid/os/Looper;Li00$a;Li00$b;I)V

    iput-object p3, p0, Lzq2;->a:Ltr2;

    return-void
.end method


# virtual methods
.method public final Z(I)V
    .locals 0

    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzq2;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzq2;->a:Ltr2;

    invoke-virtual {v1}, Li00;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lzq2;->a:Ltr2;

    invoke-virtual {v1}, Li00;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lzq2;->a:Ltr2;

    invoke-virtual {v1}, Li00;->disconnect()V

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lzq2;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lzq2;->e:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p1

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lzq2;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lzq2;->a:Ltr2;

    .line 6
    invoke-virtual {v0}, Ltr2;->p()Lyr2;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwc;

    iget-object v2, p0, Lzq2;->b:Lnr2;

    .line 7
    invoke-virtual {v2}, Lb53;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdwc;-><init>([B)V

    invoke-interface {v0, v1}, Lyr2;->U0(Lcom/google/android/gms/internal/ads/zzdwc;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {p0}, Lzq2;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {p0}, Lzq2;->a()V

    .line 10
    throw v0

    .line 11
    :catch_0
    invoke-virtual {p0}, Lzq2;->a()V

    .line 12
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
