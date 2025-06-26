.class public final synthetic Ldu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lau1;

.field public final f:Lcom/google/android/gms/internal/ads/zzauj;


# direct methods
.method public constructor <init>(Lau1;Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldu1;->e:Lau1;

    iput-object p2, p0, Ldu1;->f:Lcom/google/android/gms/internal/ads/zzauj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Ldu1;->e:Lau1;

    iget-object v1, p0, Ldu1;->f:Lcom/google/android/gms/internal/ads/zzauj;

    .line 1
    iget-object v0, v0, Lau1;->c:Lkv1;

    .line 2
    iget-object v2, v0, Lmv1;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-boolean v3, v0, Lmv1;->c:Z

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, v0, Lmv1;->a:Lxs0;

    monitor-exit v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 5
    iput-boolean v3, v0, Lmv1;->c:Z

    .line 6
    iput-object v1, v0, Lmv1;->e:Lcom/google/android/gms/internal/ads/zzauj;

    .line 7
    iget-object v1, v0, Lmv1;->f:Lcm0;

    invoke-virtual {v1}, Li00;->checkAvailabilityAndConnect()V

    .line 8
    iget-object v1, v0, Lmv1;->a:Lxs0;

    new-instance v3, Ljv1;

    invoke-direct {v3, v0}, Ljv1;-><init>(Lkv1;)V

    .line 9
    sget-object v4, Lms0;->f:Lzv2;

    .line 10
    iget-object v1, v1, Lxs0;->e:Liw2;

    invoke-virtual {v1, v3, v4}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    iget-object v0, v0, Lmv1;->a:Lxs0;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    sget-object v1, Ly40;->h3:Lo40;

    .line 13
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 14
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lxs0;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
