.class public final synthetic Lc22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lz12;

.field public final f:Law2;

.field public final g:Law2;

.field public final h:Lhl2;

.field public final i:Lsk2;

.field public final j:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lz12;Law2;Law2;Lhl2;Lsk2;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc22;->e:Lz12;

    iput-object p2, p0, Lc22;->f:Law2;

    iput-object p3, p0, Lc22;->g:Law2;

    iput-object p4, p0, Lc22;->h:Lhl2;

    iput-object p5, p0, Lc22;->i:Lsk2;

    iput-object p6, p0, Lc22;->j:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lc22;->e:Lz12;

    iget-object v1, p0, Lc22;->f:Law2;

    iget-object v2, p0, Lc22;->g:Law2;

    iget-object v3, p0, Lc22;->h:Lhl2;

    iget-object v4, p0, Lc22;->i:Lsk2;

    iget-object v5, p0, Lc22;->j:Lorg/json/JSONObject;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwj1;

    .line 3
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio1;

    .line 4
    iget-object v0, v0, Lz12;->a:Lji1;

    new-instance v6, Lv61;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v4, v7}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance v3, Ljk1;

    invoke-direct {v3, v1}, Ljk1;-><init>(Lwj1;)V

    new-instance v4, Lxi1;

    invoke-direct {v4, v5, v2}, Lxi1;-><init>(Lorg/json/JSONObject;Lio1;)V

    .line 5
    invoke-virtual {v0, v6, v3, v4}, Lji1;->b(Lv61;Ljk1;Lxi1;)Lyj1;

    move-result-object v0

    .line 6
    move-object v3, v0

    check-cast v3, Ltz0;

    .line 7
    new-instance v4, Ljo1;

    iget-object v5, v3, Ltz0;->Y0:Lqz0;

    .line 8
    iget-object v5, v5, Lqz0;->e:Lgi1;

    .line 9
    invoke-static {v5}, Lhi1;->a(Lgi1;)Ldk1;

    move-result-object v5

    iget-object v6, v3, Ltz0;->b:Ljk1;

    .line 10
    iget-object v6, v6, Ljk1;->a:Lwj1;

    const-string v7, "Cannot return null from a non-@Nullable @Provides method"

    .line 11
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v8, v3, Ltz0;->c:Lxi1;

    .line 13
    iget-object v8, v8, Lxi1;->b:Lio1;

    .line 14
    invoke-static {v8, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object v7, v3, Ltz0;->T0:Lmb3;

    invoke-static {v7}, Ldb3;->b(Lmb3;)Lxa3;

    move-result-object v7

    invoke-direct {v4, v5, v6, v8, v7}, Ljo1;-><init>(Ldk1;Lwj1;Lio1;Lxa3;)V

    .line 16
    iget-object v5, v4, Ljo1;->a:La90;

    if-nez v5, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v5, v4, Ljo1;->b:Lio1;

    const-string v6, "/nativeAdCustomClick"

    invoke-virtual {v5, v6, v4}, Lio1;->a(Ljava/lang/String;Lkb0;)V

    .line 18
    :goto_0
    iget-object v4, v3, Ltz0;->V0:Lmb3;

    invoke-interface {v4}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lto1;

    .line 19
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v5, v2, Lio1;->a:Lqo1;

    .line 21
    iget-object v6, v4, Lto1;->a:Lx91;

    iget-object v7, v4, Lto1;->c:Lrb1;

    iget-object v8, v4, Lto1;->d:Lwb1;

    iget-object v9, v4, Lto1;->e:Lld1;

    iget-object v10, v4, Lto1;->b:Ldb1;

    .line 22
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v11, Lso1;

    invoke-direct {v11, v10}, Lso1;-><init>(Ldb1;)V

    .line 24
    monitor-enter v5

    .line 25
    :try_start_0
    iput-object v6, v5, Lqo1;->e:Ler3;

    .line 26
    iput-object v7, v5, Lqo1;->f:Lra0;

    .line 27
    iput-object v8, v5, Lqo1;->g:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 28
    iput-object v9, v5, Lqo1;->h:Lta0;

    .line 29
    iput-object v11, v5, Lqo1;->i:Lcom/google/android/gms/ads/internal/overlay/zzx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    monitor-exit v5

    .line 31
    iget-object v5, v4, Lto1;->f:Lsk2;

    iget-object v4, v4, Lto1;->g:Lwk2;

    .line 32
    monitor-enter v2

    .line 33
    :try_start_1
    iget-object v6, v2, Lio1;->l:Law2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    .line 34
    monitor-exit v2

    goto :goto_1

    .line 35
    :cond_1
    :try_start_2
    new-instance v7, Lro1;

    invoke-direct {v7, v5, v4}, Lro1;-><init>(Lsk2;Lwk2;)V

    iget-object v4, v2, Lio1;->f:Ljava/util/concurrent/Executor;

    .line 36
    new-instance v5, Lsv2;

    invoke-direct {v5, v6, v7}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {v6, v5, v4}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    monitor-exit v2

    .line 38
    :goto_1
    iget-object v2, v3, Ltz0;->X0:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpn1;

    .line 39
    invoke-virtual {v1}, Lwj1;->o()Lxw0;

    move-result-object v1

    .line 40
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_2

    goto :goto_2

    .line 41
    :cond_2
    iget-object v3, v2, Lpn1;->c:Lrf1;

    invoke-interface {v1}, Lxw0;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrf1;->G0(Landroid/view/View;)V

    .line 42
    iget-object v3, v2, Lpn1;->c:Lrf1;

    new-instance v4, Lon1;

    invoke-direct {v4, v1}, Lon1;-><init>(Lxw0;)V

    iget-object v5, v2, Lpn1;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v5}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 43
    iget-object v3, v2, Lpn1;->c:Lrf1;

    new-instance v4, Lrn1;

    invoke-direct {v4, v1}, Lrn1;-><init>(Lxw0;)V

    iget-object v5, v2, Lpn1;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v5}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 44
    iget-object v3, v2, Lpn1;->c:Lrf1;

    iget-object v4, v2, Lpn1;->b:Ld31;

    iget-object v5, v2, Lpn1;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v5}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 45
    iget-object v3, v2, Lpn1;->b:Ld31;

    .line 46
    iput-object v1, v3, Ld31;->e:Lxw0;

    .line 47
    new-instance v3, Lqn1;

    invoke-direct {v3, v2}, Lqn1;-><init>(Lpn1;)V

    const-string v4, "/trackActiveViewUnit"

    invoke-interface {v1, v4, v3}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 48
    new-instance v3, Ltn1;

    invoke-direct {v3, v2}, Ltn1;-><init>(Lpn1;)V

    const-string v2, "/untrackActiveViewUnit"

    invoke-interface {v1, v2, v3}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 49
    :goto_2
    invoke-virtual {v0}, Lvj1;->h()Lkj1;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 50
    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    .line 51
    monitor-exit v5

    throw v0
.end method
