.class public final Lv77;
.super Lr87;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr87<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field public final synthetic A:Lj47;

.field public final synthetic B:Lx27;

.field public final synthetic C:Ll37;

.field public final synthetic D:Lq77$h;


# direct methods
.method public constructor <init>(Lq77$h;Lj47;Li47;Lx27;Lr87$x;Ll37;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v13, p0

    move-object v0, p1

    move-object/from16 v1, p4

    .line 1
    iput-object v0, v13, Lv77;->D:Lq77$h;

    move-object/from16 v2, p2

    iput-object v2, v13, Lv77;->A:Lj47;

    iput-object v1, v13, Lv77;->B:Lx27;

    move-object/from16 v3, p6

    iput-object v3, v13, Lv77;->C:Ll37;

    .line 2
    iget-object v0, v0, Lq77$h;->a:Lq77;

    .line 3
    iget-object v3, v0, Lq77;->T:Lr87$q;

    .line 4
    iget-wide v4, v0, Lq77;->U:J

    .line 5
    iget-wide v6, v0, Lq77;->V:J

    .line 6
    iget-object v8, v1, Lx27;->b:Ljava/util/concurrent/Executor;

    if-nez v8, :cond_0

    .line 7
    iget-object v8, v0, Lq77;->h:Ljava/util/concurrent/Executor;

    .line 8
    :cond_0
    iget-object v0, v0, Lq77;->f:Lb67;

    .line 9
    invoke-interface {v0}, Lb67;->x0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    sget-object v0, Lv87;->d:Lx27$a;

    .line 10
    invoke-virtual {v1, v0}, Lx27;->a(Lx27$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ls87$a;

    sget-object v0, Lv87;->e:Lx27$a;

    .line 11
    invoke-virtual {v1, v0}, Lx27;->a(Lx27$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lw67$a;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v12, p5

    .line 12
    invoke-direct/range {v0 .. v12}, Lr87;-><init>(Lj47;Li47;Lr87$q;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ls87$a;Lw67$a;Lr87$x;)V

    return-void
.end method


# virtual methods
.method public v(Le37$a;Li47;)Ly57;
    .locals 3

    .line 1
    iget-object v0, p0, Lv77;->B:Lx27;

    invoke-virtual {v0, p1}, Lx27;->f(Le37$a;)Lx27;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lv77;->D:Lq77$h;

    new-instance v1, Ll87;

    iget-object v2, p0, Lv77;->A:Lj47;

    invoke-direct {v1, v2, p2, p1}, Ll87;-><init>(Lj47;Li47;Lx27;)V

    .line 3
    invoke-virtual {v0, v1}, Lq77$h;->a(Lc47$f;)La67;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lv77;->C:Ll37;

    invoke-virtual {v1}, Ll37;->b()Ll37;

    move-result-object v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lv77;->A:Lj47;

    invoke-interface {v0, v2, p2, p1}, La67;->g(Lj47;Li47;Lx27;)Ly57;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p2, p0, Lv77;->C:Ll37;

    invoke-virtual {p2, v1}, Ll37;->i(Ll37;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lv77;->C:Ll37;

    invoke-virtual {p2, v1}, Ll37;->i(Ll37;)V

    throw p1
.end method

.method public w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv77;->D:Lq77$h;

    iget-object v0, v0, Lq77$h;->a:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->E:Lq77$v;

    .line 3
    iget-object v1, v0, Lq77$v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v0, Lq77$v;->b:Ljava/util/Collection;

    invoke-interface {v2, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, v0, Lq77$v;->b:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, v0, Lq77$v;->c:Lx47;

    .line 7
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lq77$v;->b:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 9
    iget-object v0, v0, Lq77$v;->d:Lq77;

    .line 10
    iget-object v0, v0, Lq77;->D:Lh67;

    .line 11
    invoke-virtual {v0, v2}, Lh67;->b(Lx47;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public x()Lx47;
    .locals 3

    .line 1
    iget-object v0, p0, Lv77;->D:Lq77$h;

    iget-object v0, v0, Lq77$h;->a:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->E:Lq77$v;

    .line 3
    iget-object v1, v0, Lq77$v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v0, Lq77$v;->c:Lx47;

    if-eqz v2, :cond_0

    .line 5
    monitor-exit v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lq77$v;->b:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 7
    monitor-exit v1

    :goto_0
    return-object v2

    :catchall_0
    move-exception v0

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
