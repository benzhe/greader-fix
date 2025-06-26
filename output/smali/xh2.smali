.class public final synthetic Lxh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lyh2;

.field public final b:Lpi2;

.field public final c:Lni2;


# direct methods
.method public constructor <init>(Lyh2;Lpi2;Lni2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxh2;->a:Lyh2;

    iput-object p2, p0, Lxh2;->b:Lpi2;

    iput-object p3, p0, Lxh2;->c:Lni2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 10

    iget-object v0, p0, Lxh2;->a:Lyh2;

    iget-object v1, p0, Lxh2;->b:Lpi2;

    iget-object v2, p0, Lxh2;->c:Lni2;

    check-cast p1, Lji2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v3, p1, Lji2;->b:Lbn2;

    iget-object p1, p1, Lji2;->a:Lcom/google/android/gms/internal/ads/zzauj;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 3
    iget-object v5, v0, Lyh2;->a:Lsm2;

    check-cast v5, Lrm2;

    .line 4
    monitor-enter v5

    .line 5
    :try_start_0
    iget-object v6, v5, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpm2;

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {v6}, Lpm2;->b()Lcn2;

    move-result-object v7

    if-nez v7, :cond_0

    .line 7
    iget-object v8, v5, Lrm2;->c:Lum2;

    .line 8
    iget v9, v8, Lum2;->e:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lum2;->e:I

    .line 9
    :cond_0
    iget-object v6, v6, Lpm2;->d:Lqn2;

    .line 10
    iget-object v8, v6, Lqn2;->b:Lpn2;

    invoke-virtual {v8}, Lpn2;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpn2;

    .line 11
    iget-object v6, v6, Lqn2;->b:Lpn2;

    const/4 v9, 0x0

    .line 12
    iput-boolean v9, v6, Lpn2;->e:Z

    .line 13
    iput v9, v6, Lpn2;->f:I

    .line 14
    invoke-virtual {v5, v7, v8}, Lrm2;->b(Lcn2;Lpn2;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v6, v5, Lrm2;->c:Lum2;

    .line 16
    iget v7, v6, Lum2;->d:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lum2;->d:I

    .line 17
    invoke-virtual {v5, v4, v4}, Lrm2;->b(Lcn2;Lpn2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v4

    .line 18
    :goto_0
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v5

    throw p1

    :cond_2
    move-object v7, v4

    :goto_1
    if-nez v3, :cond_3

    .line 19
    invoke-static {v4}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    goto :goto_3

    :cond_3
    if-eqz v7, :cond_5

    if-eqz p1, :cond_5

    .line 20
    iget-object v1, v1, Lpi2;->b:Loi2;

    .line 21
    invoke-interface {v2, v1}, Lni2;->a(Loi2;)Lk91;

    move-result-object v1

    .line 22
    invoke-interface {v1}, Lk91;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll91;

    .line 23
    invoke-interface {v1}, Ll91;->d()Lh71;

    move-result-object v1

    .line 24
    iget-object v2, v1, Lh71;->c:Lzo2;

    sget-object v4, Lap2;->A:Lap2;

    iget-object v5, v1, Lh71;->h:Lbw1;

    .line 25
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzauj;->n:Ljava/lang/String;

    invoke-static {v6}, Lbc3;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 27
    new-instance v5, Lbu1;

    sget-object v6, Ldm2;->f:Ldm2;

    const-string v8, "Pool key missing from removeUrl call."

    invoke-direct {v5, v6, v8}, Lbu1;-><init>(Ldm2;Ljava/lang/String;)V

    .line 28
    new-instance v6, Lvv2$a;

    invoke-direct {v6, v5}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 29
    :cond_4
    sget-object v6, Lhw1;->a:Lcv2;

    .line 30
    new-instance v8, Lgw1;

    invoke-direct {v8, v5}, Lgw1;-><init>(Lbw1;)V

    new-instance v9, Ljw1;

    invoke-direct {v9, v5}, Ljw1;-><init>(Lbw1;)V

    invoke-virtual {v5, p1, v8, v9, v6}, Lbw1;->a(Lcom/google/android/gms/internal/ads/zzauj;Liw1;Liw1;Lcv2;)Law2;

    move-result-object v6

    .line 31
    :goto_2
    invoke-virtual {v2, v4, v6}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lqo2;->e()Llo2;

    move-result-object v2

    .line 33
    new-instance v4, Lk71;

    invoke-direct {v4, v1}, Lk71;-><init>(Lh71;)V

    iget-object v1, v1, Lh71;->j:Ljava/util/concurrent/Executor;

    .line 34
    new-instance v5, Lsv2;

    invoke-direct {v5, v2, v4}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-virtual {v2, v5, v1}, Llo2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 35
    iget-object v1, v0, Lyh2;->c:Lrv2;

    iget-object v0, v0, Lyh2;->b:Ljava/util/concurrent/Executor;

    .line 36
    invoke-static {v2, v1, v0}, Lvt2;->i(Law2;Lrv2;Ljava/util/concurrent/Executor;)V

    .line 37
    :cond_5
    new-instance v0, Lbi2;

    invoke-direct {v0, v3, p1, v7}, Lbi2;-><init>(Lbn2;Lcom/google/android/gms/internal/ads/zzauj;Lcn2;)V

    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    :goto_3
    return-object p1
.end method
