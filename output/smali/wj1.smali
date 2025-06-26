.class public final Lwj1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lsu3;

.field public c:Lm70;

.field public d:Landroid/view/View;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llv3;",
            ">;"
        }
    .end annotation
.end field

.field public g:Llv3;

.field public h:Landroid/os/Bundle;

.field public i:Lxw0;

.field public j:Lxw0;

.field public k:Lx20;

.field public l:Landroid/view/View;

.field public m:Lx20;

.field public n:D

.field public o:Lu70;

.field public p:Lu70;

.field public q:Ljava/lang/String;

.field public r:Lm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4<",
            "Ljava/lang/String;",
            "Lh70;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:F

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm4;

    invoke-direct {v0}, Lm4;-><init>()V

    iput-object v0, p0, Lwj1;->r:Lm4;

    .line 3
    new-instance v0, Lm4;

    invoke-direct {v0}, Lm4;-><init>()V

    iput-object v0, p0, Lwj1;->s:Lm4;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lwj1;->f:Ljava/util/List;

    return-void
.end method

.method public static i(Lsu3;Lbh0;)Ltj1;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ltj1;

    invoke-direct {v0, p0, p1}, Ltj1;-><init>(Lsu3;Lbh0;)V

    return-object v0
.end method

.method public static j(Lsu3;Lm70;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lx20;Ljava/lang/String;Ljava/lang/String;DLu70;Ljava/lang/String;F)Lwj1;
    .locals 4

    .line 1
    new-instance v1, Lwj1;

    invoke-direct {v1}, Lwj1;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, v1, Lwj1;->a:I

    move-object v0, p0

    .line 3
    iput-object v0, v1, Lwj1;->b:Lsu3;

    move-object v0, p1

    .line 4
    iput-object v0, v1, Lwj1;->c:Lm70;

    move-object v0, p2

    .line 5
    iput-object v0, v1, Lwj1;->d:Landroid/view/View;

    const-string v0, "headline"

    move-object v2, p3

    .line 6
    invoke-virtual {v1, v0, p3}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p4

    .line 7
    iput-object v0, v1, Lwj1;->e:Ljava/util/List;

    const-string v0, "body"

    move-object v2, p5

    .line 8
    invoke-virtual {v1, v0, p5}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p6

    .line 9
    iput-object v0, v1, Lwj1;->h:Landroid/os/Bundle;

    const-string v0, "call_to_action"

    move-object v2, p7

    .line 10
    invoke-virtual {v1, v0, p7}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p8

    .line 11
    iput-object v0, v1, Lwj1;->l:Landroid/view/View;

    move-object v0, p9

    .line 12
    iput-object v0, v1, Lwj1;->m:Lx20;

    const-string v0, "store"

    move-object v2, p10

    .line 13
    invoke-virtual {v1, v0, p10}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    move-object v2, p11

    .line 14
    invoke-virtual {v1, v0, p11}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v2, p12

    .line 15
    iput-wide v2, v1, Lwj1;->n:D

    move-object/from16 v0, p14

    .line 16
    iput-object v0, v1, Lwj1;->o:Lu70;

    const-string v0, "advertiser"

    move-object/from16 v2, p15

    .line 17
    invoke-virtual {v1, v0, v2}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    monitor-enter v1

    move/from16 v0, p16

    .line 19
    :try_start_0
    iput v0, v1, Lwj1;->t:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v1

    return-object v1

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
.end method

.method public static r(Lx20;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx20;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lbh0;)Lwj1;
    .locals 18

    .line 1
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lbh0;->getVideoController()Lsu3;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lwj1;->i(Lsu3;Lbh0;)Ltj1;

    move-result-object v0

    .line 2
    invoke-interface/range {p0 .. p0}, Lbh0;->f()Lm70;

    move-result-object v2

    .line 3
    invoke-interface/range {p0 .. p0}, Lbh0;->C()Lx20;

    move-result-object v3

    invoke-static {v3}, Lwj1;->r(Lx20;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4
    invoke-interface/range {p0 .. p0}, Lbh0;->d()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface/range {p0 .. p0}, Lbh0;->i()Ljava/util/List;

    move-result-object v5

    .line 6
    invoke-interface/range {p0 .. p0}, Lbh0;->g()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-interface/range {p0 .. p0}, Lbh0;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 8
    invoke-interface/range {p0 .. p0}, Lbh0;->e()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-interface/range {p0 .. p0}, Lbh0;->z()Lx20;

    move-result-object v9

    invoke-static {v9}, Lwj1;->r(Lx20;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 10
    invoke-interface/range {p0 .. p0}, Lbh0;->o()Lx20;

    move-result-object v10

    .line 11
    invoke-interface/range {p0 .. p0}, Lbh0;->s()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-interface/range {p0 .. p0}, Lbh0;->k()Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-interface/range {p0 .. p0}, Lbh0;->q()D

    move-result-wide v13

    .line 14
    invoke-interface/range {p0 .. p0}, Lbh0;->p()Lu70;

    move-result-object v15

    .line 15
    invoke-interface/range {p0 .. p0}, Lbh0;->r()Ljava/lang/String;

    move-result-object v16

    .line 16
    invoke-interface/range {p0 .. p0}, Lbh0;->V0()F

    move-result v17

    move-object v1, v0

    .line 17
    invoke-static/range {v1 .. v17}, Lwj1;->j(Lsu3;Lm70;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lx20;Ljava/lang/String;Ljava/lang/String;DLu70;Ljava/lang/String;F)Lwj1;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad assets from unified ad mapper"

    .line 18
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "body"

    .line 1
    invoke-virtual {p0, v0}, Lwj1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "call_to_action"

    .line 1
    invoke-virtual {p0, v0}, Lwj1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Landroid/os/Bundle;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->h:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lwj1;->h:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Lwj1;->h:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "headline"

    .line 1
    invoke-virtual {p0, v0}, Lwj1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Llv3;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->f:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Lsu3;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->b:Lsu3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lwj1;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Lu70;
    .locals 3

    .line 1
    iget-object v0, p0, Lwj1;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lwj1;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v2, v0, Landroid/os/IBinder;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lh70;->W6(Landroid/os/IBinder;)Lu70;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final declared-synchronized m()Llv3;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->g:Llv3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n()Landroid/view/View;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->l:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o()Lxw0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->i:Lxw0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()Lxw0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->j:Lxw0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()Lx20;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->k:Lx20;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->s:Lm4;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    iget-object p2, p0, Lwj1;->s:Lm4;

    invoke-virtual {p2, p1}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lwj1;->s:Lm4;

    invoke-virtual {v0, p1, p2}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized v()Lm70;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->c:Lm70;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w()Lx20;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwj1;->m:Lx20;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
