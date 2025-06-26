.class public final Lq21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lua1;
.implements Lva1;
.implements Lem3;


# instance fields
.field public final e:Ll21;

.field public final f:Lo21;

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lxw0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Luf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luf0<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Lb20;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ls21;

.field public m:Z

.field public n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqf0;Lo21;Ljava/util/concurrent/Executor;Ll21;Lb20;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lq21;->g:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lq21;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ls21;

    invoke-direct {v0}, Ls21;-><init>()V

    iput-object v0, p0, Lq21;->l:Ls21;

    .line 5
    iput-boolean v1, p0, Lq21;->m:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lq21;->n:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p4, p0, Lq21;->e:Ll21;

    .line 8
    sget-object p4, Lgf0;->b:Ldf0;

    .line 9
    invoke-virtual {p1}, Lqf0;->a()V

    .line 10
    new-instance v0, Luf0;

    iget-object p1, p1, Lqf0;->b:Law2;

    const-string v1, "google.afma.activeView.handleUpdate"

    invoke-direct {v0, p1, v1, p4, p4}, Luf0;-><init>(Law2;Ljava/lang/String;Lef0;Lbf0;)V

    .line 11
    iput-object v0, p0, Lq21;->h:Luf0;

    .line 12
    iput-object p2, p0, Lq21;->f:Lo21;

    .line 13
    iput-object p3, p0, Lq21;->i:Ljava/util/concurrent/Executor;

    .line 14
    iput-object p5, p0, Lq21;->j:Lb20;

    return-void
.end method


# virtual methods
.method public final declared-synchronized c0(Lfm3;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lq21;->l:Ls21;

    iget-boolean v1, p1, Lfm3;->j:Z

    iput-boolean v1, v0, Ls21;->a:Z

    .line 2
    iput-object p1, v0, Ls21;->e:Lfm3;

    .line 3
    invoke-virtual {p0}, Lq21;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lq21;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lq21;->t()V

    .line 4
    iput-boolean v1, p0, Lq21;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_3
    monitor-exit p0

    throw v0

    .line 8
    :cond_1
    iget-boolean v0, p0, Lq21;->m:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lq21;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 9
    :try_start_4
    iget-object v0, p0, Lq21;->l:Ls21;

    iget-object v1, p0, Lq21;->j:Lb20;

    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v1

    iput-wide v1, v0, Ls21;->c:J

    .line 10
    iget-object v0, p0, Lq21;->f:Lo21;

    iget-object v1, p0, Lq21;->l:Ls21;

    invoke-virtual {v0, v1}, Lo21;->a(Ls21;)Lorg/json/JSONObject;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lq21;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxw0;

    .line 12
    iget-object v3, p0, Lq21;->i:Ljava/util/concurrent/Executor;

    new-instance v4, Lt21;

    invoke-direct {v4, v2, v0}, Lt21;-><init>(Lxw0;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v1, p0, Lq21;->h:Luf0;

    .line 14
    iget-object v2, v1, Luf0;->d:Law2;

    new-instance v3, Lxf0;

    invoke-direct {v3, v1, v0}, Lxf0;-><init>(Luf0;Ljava/lang/Object;)V

    .line 15
    sget-object v0, Lms0;->f:Lzv2;

    .line 16
    invoke-static {v2, v3, v0}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v1

    const-string v2, "ActiveViewListener.callActiveViewJs"

    .line 17
    new-instance v3, Lvs0;

    invoke-direct {v3, v2}, Lvs0;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v2, Lsv2;

    invoke-direct {v2, v1, v3}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    check-cast v1, Lsu2;

    invoke-virtual {v1, v2, v0}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "Failed to call ActiveViewJS"

    .line 20
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 21
    :cond_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdImpression()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lq21;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lq21;->e:Ll21;

    invoke-virtual {v0, p0}, Ll21;->a(Lq21;)V

    .line 3
    invoke-virtual {p0}, Lq21;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lq21;->l:Ls21;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ls21;->b:Z

    .line 2
    invoke-virtual {p0}, Lq21;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lq21;->l:Ls21;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ls21;->b:Z

    .line 2
    invoke-virtual {p0}, Lq21;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized r(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lq21;->l:Ls21;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ls21;->b:Z

    .line 2
    invoke-virtual {p0}, Lq21;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized s(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lq21;->l:Ls21;

    const-string v0, "u"

    iput-object v0, p1, Ls21;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lq21;->d()V

    .line 3
    invoke-virtual {p0}, Lq21;->t()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lq21;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final t()V
    .locals 7

    .line 1
    iget-object v0, p0, Lq21;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "/untrackActiveViewUnit"

    const-string v3, "/updateActiveView"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw0;

    .line 2
    iget-object v4, p0, Lq21;->e:Ll21;

    .line 3
    iget-object v5, v4, Ll21;->e:Lkb0;

    invoke-interface {v1, v3, v5}, Lxw0;->n(Ljava/lang/String;Lkb0;)V

    .line 4
    iget-object v3, v4, Ll21;->f:Lkb0;

    invoke-interface {v1, v2, v3}, Lxw0;->n(Ljava/lang/String;Lkb0;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lq21;->e:Ll21;

    .line 6
    iget-object v1, v0, Ll21;->b:Lqf0;

    iget-object v4, v0, Ll21;->e:Lkb0;

    .line 7
    iget-object v5, v1, Lqf0;->b:Law2;

    new-instance v6, Lvf0;

    invoke-direct {v6, v3, v4}, Lvf0;-><init>(Ljava/lang/String;Lkb0;)V

    .line 8
    sget-object v3, Lms0;->f:Lzv2;

    .line 9
    invoke-static {v5, v6, v3}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v4

    iput-object v4, v1, Lqf0;->b:Law2;

    .line 10
    iget-object v1, v0, Ll21;->b:Lqf0;

    iget-object v0, v0, Ll21;->f:Lkb0;

    .line 11
    iget-object v4, v1, Lqf0;->b:Law2;

    new-instance v5, Lvf0;

    invoke-direct {v5, v2, v0}, Lvf0;-><init>(Ljava/lang/String;Lkb0;)V

    .line 12
    invoke-static {v4, v5, v3}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    iput-object v0, v1, Lqf0;->b:Law2;

    return-void
.end method

.method public final declared-synchronized x(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lq21;->l:Ls21;

    const/4 v0, 0x0

    iput-boolean v0, p1, Ls21;->b:Z

    .line 2
    invoke-virtual {p0}, Lq21;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 0

    return-void
.end method

.method public final zzvz()V
    .locals 0

    return-void
.end method
