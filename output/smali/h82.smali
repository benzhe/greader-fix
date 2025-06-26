.class public final Lh82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcv2<",
        "Lcom/google/android/gms/internal/ads/zzauj;",
        "Li82;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/Executor;

.field public b:Lyu1;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lyu1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh82;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lh82;->b:Lyu1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 2
    iget-object v0, p0, Lh82;->b:Lyu1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzauj;->h:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lyv1;

    sget-object v2, Ldm2;->e:Ldm2;

    invoke-direct {v1, v2}, Lyv1;-><init>(Ldm2;)V

    .line 7
    new-instance v2, Lvv2$a;

    invoke-direct {v2, v1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, v0, Lyu1;->c:Lov1;

    .line 9
    iget-object v2, v1, Lmv1;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_0
    iget-boolean v3, v1, Lmv1;->c:Z

    if-eqz v3, :cond_1

    .line 11
    iget-object v1, v1, Lmv1;->a:Lxs0;

    monitor-exit v2

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 12
    iput-boolean v3, v1, Lmv1;->c:Z

    .line 13
    iput-object p1, v1, Lmv1;->e:Lcom/google/android/gms/internal/ads/zzauj;

    .line 14
    iget-object v3, v1, Lmv1;->f:Lcm0;

    invoke-virtual {v3}, Li00;->checkAvailabilityAndConnect()V

    .line 15
    iget-object v3, v1, Lmv1;->a:Lxs0;

    new-instance v4, Lnv1;

    invoke-direct {v4, v1}, Lnv1;-><init>(Lov1;)V

    .line 16
    sget-object v5, Lms0;->f:Lzv2;

    .line 17
    iget-object v3, v3, Lxs0;->e:Liw2;

    invoke-virtual {v3, v4, v5}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 18
    iget-object v1, v1, Lmv1;->a:Lxs0;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 19
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 20
    invoke-static {v2}, Lnv2;->A(Law2;)Lnv2;

    move-result-object v2

    sget-object v3, Ly40;->h3:Lo40;

    .line 21
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 22
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, v0, Lyu1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, v3, v4, v5, v6}, Lnv2;->x(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnv2;

    move-result-object v2

    const-class v3, Ljava/lang/Throwable;

    new-instance v4, Lxu1;

    invoke-direct {v4, v0, p1, v1}, Lxu1;-><init>(Lyu1;Lcom/google/android/gms/internal/ads/zzauj;I)V

    iget-object v0, v0, Lyu1;->b:Lzv2;

    .line 24
    new-instance v1, Lru2;

    invoke-direct {v1, v2, v3, v4}, Lru2;-><init>(Law2;Ljava/lang/Class;Lcv2;)V

    .line 25
    invoke-static {v0, v1}, Lvt2;->g(Ljava/util/concurrent/Executor;Lsu2;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 26
    new-instance v0, Lf82;

    invoke-direct {v0, p1}, Lf82;-><init>(Lcom/google/android/gms/internal/ads/zzauj;)V

    iget-object p1, p0, Lh82;->a:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, p1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
