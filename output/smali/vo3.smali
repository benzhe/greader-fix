.class public final Lvo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzti;

.field public final synthetic b:Lxs0;

.field public final synthetic c:Lto3;


# direct methods
.method public constructor <init>(Lto3;Lcom/google/android/gms/internal/ads/zzti;Lxs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo3;->c:Lto3;

    iput-object p2, p0, Lvo3;->a:Lcom/google/android/gms/internal/ads/zzti;

    iput-object p3, p0, Lvo3;->b:Lxs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(I)V
    .locals 0

    return-void
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lvo3;->c:Lto3;

    .line 2
    iget-object p1, p1, Lto3;->d:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lvo3;->c:Lto3;

    .line 5
    iget-boolean v1, v0, Lto3;->b:Z

    if-eqz v1, :cond_0

    .line 6
    monitor-exit p1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lto3;->b:Z

    .line 8
    iget-object v0, v0, Lto3;->a:Loo3;

    if-nez v0, :cond_1

    .line 9
    monitor-exit p1

    return-void

    .line 10
    :cond_1
    sget-object v1, Lms0;->a:Lzv2;

    new-instance v2, Lyo3;

    iget-object v3, p0, Lvo3;->a:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v4, p0, Lvo3;->b:Lxs0;

    invoke-direct {v2, p0, v0, v3, v4}, Lyo3;-><init>(Lvo3;Loo3;Lcom/google/android/gms/internal/ads/zzti;Lxs0;)V

    .line 11
    invoke-interface {v1, v2}, Lzv2;->C(Ljava/lang/Runnable;)Law2;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lvo3;->b:Lxs0;

    new-instance v2, Lxo3;

    invoke-direct {v2, v1, v0}, Lxo3;-><init>(Lxs0;Ljava/util/concurrent/Future;)V

    .line 13
    sget-object v0, Lms0;->f:Lzv2;

    .line 14
    iget-object v1, v1, Lxs0;->e:Liw2;

    invoke-virtual {v1, v2, v0}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
