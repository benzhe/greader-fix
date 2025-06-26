.class public final synthetic Lgw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liw1;


# instance fields
.field public final a:Lbw1;


# direct methods
.method public constructor <init>(Lbw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgw1;->a:Lbw1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)Law2;
    .locals 5

    iget-object v0, p0, Lgw1;->a:Lbw1;

    .line 1
    iget-object v0, v0, Lbw1;->b:Lpv1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauj;->n:Ljava/lang/String;

    .line 2
    iget-object v1, v0, Lmv1;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget v2, v0, Lpv1;->h:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    .line 4
    new-instance p1, Lyv1;

    sget-object v0, Ldm2;->f:Ldm2;

    invoke-direct {p1, v0}, Lyv1;-><init>(Ldm2;)V

    .line 5
    new-instance v0, Lvv2$a;

    invoke-direct {v0, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    .line 6
    monitor-exit v1

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v2, v0, Lmv1;->c:Z

    if-eqz v2, :cond_1

    .line 8
    iget-object v0, v0, Lmv1;->a:Lxs0;

    monitor-exit v1

    goto :goto_0

    .line 9
    :cond_1
    iput v3, v0, Lpv1;->h:I

    .line 10
    iput-boolean v4, v0, Lmv1;->c:Z

    .line 11
    iput-object p1, v0, Lpv1;->g:Ljava/lang/String;

    .line 12
    iget-object p1, v0, Lmv1;->f:Lcm0;

    invoke-virtual {p1}, Li00;->checkAvailabilityAndConnect()V

    .line 13
    iget-object p1, v0, Lmv1;->a:Lxs0;

    new-instance v2, Lrv1;

    invoke-direct {v2, v0}, Lrv1;-><init>(Lpv1;)V

    .line 14
    sget-object v3, Lms0;->f:Lzv2;

    .line 15
    iget-object p1, p1, Lxs0;->e:Liw2;

    invoke-virtual {p1, v2, v3}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 16
    iget-object v0, v0, Lmv1;->a:Lxs0;

    monitor-exit v1

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
