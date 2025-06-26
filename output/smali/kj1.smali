.class public final Lkj1;
.super Lf61;
.source "SourceFile"


# instance fields
.field public final A:Lo62;

.field public final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lam3;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Lwj1;

.field public final j:Lek1;

.field public final k:Ltk1;

.field public final l:Lak1;

.field public final m:Ldk1;

.field public final n:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Lao1;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Lyn1;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Lho1;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Lun1;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Lco1;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lxl1;

.field public t:Z

.field public u:Z

.field public final v:Lzp0;

.field public final w:Ld23;

.field public final x:Lcom/google/android/gms/internal/ads/zzbar;

.field public final y:Landroid/content/Context;

.field public final z:Lrj1;


# direct methods
.method public constructor <init>(Li61;Ljava/util/concurrent/Executor;Lwj1;Lek1;Ltk1;Lak1;Ldk1;Lxa3;Lxa3;Lxa3;Lxa3;Lxa3;Lzp0;Ld23;Lcom/google/android/gms/internal/ads/zzbar;Landroid/content/Context;Lrj1;Lo62;Lhm3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li61;",
            "Ljava/util/concurrent/Executor;",
            "Lwj1;",
            "Lek1;",
            "Ltk1;",
            "Lak1;",
            "Ldk1;",
            "Lxa3<",
            "Lao1;",
            ">;",
            "Lxa3<",
            "Lyn1;",
            ">;",
            "Lxa3<",
            "Lho1;",
            ">;",
            "Lxa3<",
            "Lun1;",
            ">;",
            "Lxa3<",
            "Lco1;",
            ">;",
            "Lzp0;",
            "Ld23;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Landroid/content/Context;",
            "Lrj1;",
            "Lo62;",
            "Lhm3;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1}, Lf61;-><init>(Li61;)V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lkj1;->u:Z

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lkj1;->h:Ljava/util/concurrent/Executor;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lkj1;->i:Lwj1;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lkj1;->j:Lek1;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lkj1;->k:Ltk1;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lkj1;->l:Lak1;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lkj1;->m:Ldk1;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lkj1;->n:Lxa3;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lkj1;->o:Lxa3;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lkj1;->p:Lxa3;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lkj1;->q:Lxa3;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lkj1;->r:Lxa3;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lkj1;->v:Lzp0;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lkj1;->w:Ld23;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lkj1;->x:Lcom/google/android/gms/internal/ads/zzbar;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lkj1;->y:Landroid/content/Context;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lkj1;->z:Lrj1;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lkj1;->A:Lo62;

    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lkj1;->B:Ljava/util/Map;

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lkj1;->C:Ljava/util/List;

    return-void
.end method

.method public static o(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkj1;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Llj1;

    invoke-direct {v1, p0}, Llj1;-><init>(Lkj1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lf61;->a()V
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

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkj1;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Ljj1;

    invoke-direct {v1, p0}, Ljj1;-><init>(Lkj1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lkj1;->i:Lwj1;

    invoke-virtual {v0}, Lwj1;->k()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lkj1;->h:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lkj1;->j:Lek1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v2, Lmj1;

    invoke-direct {v2, v1}, Lmj1;-><init>(Lek1;)V

    .line 5
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    invoke-super {p0}, Lf61;->b()V

    return-void
.end method

.method public final declared-synchronized c(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkj1;->k:Ltk1;

    iget-object v1, p0, Lkj1;->s:Lxl1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 3
    iget-object v2, v0, Ltk1;->e:Lbl1;

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Lxl1;->e2()Landroid/widget/FrameLayout;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Ltk1;->c:Lak1;

    invoke-virtual {v2}, Lak1;->c()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lxl1;->e2()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v0, v0, Ltk1;->e:Lbl1;

    invoke-virtual {v0}, Lbl1;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Lix0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "web view can not be obtained"

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lkj1;->j:Lek1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lek1;->g(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 9
    iget-boolean p1, p0, Lkj1;->u:Z

    if-eqz p1, :cond_4

    sget-object p1, Ly40;->V1:Lo40;

    .line 10
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 11
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lkj1;->i:Lwj1;

    .line 13
    invoke-virtual {p1}, Lwj1;->o()Lxw0;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lkj1;->i:Lwj1;

    .line 15
    invoke-virtual {p1}, Lwj1;->o()Lxw0;

    move-result-object p1

    const-string p2, "onSdkAdUserInteractionClick"

    new-instance p3, Lf4;

    invoke-direct {p3}, Lf4;-><init>()V

    .line 16
    invoke-interface {p1, p2, p3}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lxl1;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Ly40;->f1:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Loj1;

    invoke-direct {v1, p0, p1}, Loj1;-><init>(Lkj1;Lxl1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lkj1;->h(Lxl1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkj1;->i:Lwj1;

    invoke-virtual {v0}, Lwj1;->q()Lx20;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkj1;->i:Lwj1;

    invoke-virtual {v1}, Lwj1;->p()Lxw0;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lkj1;->l:Lak1;

    invoke-virtual {v2}, Lak1;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lrk0;->c(Lx20;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkj1;->i:Lwj1;

    invoke-virtual {v0}, Lwj1;->q()Lx20;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkj1;->l:Lak1;

    invoke-virtual {v1}, Lak1;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lrk0;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Ly40;->T2:Lo40;

    .line 7
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lrk0;->c:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iget-object v1, v1, Lrk0;->a:Lkq2;

    .line 12
    new-instance v2, Ly20;

    invoke-direct {v2, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-interface {v1, v0, v2}, Lkq2;->Q0(Lx20;Lx20;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v0, "#007 Could not call remote method."

    .line 14
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 15
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public final declared-synchronized g(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lkj1;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Ly40;->g1:Lo40;

    .line 4
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf61;->b:Lsk2;

    iget-boolean v0, v0, Lsk2;->f0:Z

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lkj1;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lkj1;->B:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 9
    monitor-exit p0

    return-void

    :cond_3
    if-eqz p4, :cond_4

    .line 10
    :try_start_2
    iget-object p4, p0, Lkj1;->k:Ltk1;

    iget-object v0, p0, Lkj1;->s:Lxl1;

    invoke-virtual {p4, v0}, Ltk1;->c(Lxl1;)V

    .line 11
    iget-object p4, p0, Lkj1;->j:Lek1;

    invoke-interface {p4, p1, p2, p3}, Lek1;->h(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    .line 12
    iput-boolean v1, p0, Lkj1;->t:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :cond_4
    if-nez p4, :cond_6

    .line 14
    :try_start_3
    sget-object p4, Ly40;->b2:Lo40;

    .line 15
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 16
    invoke-virtual {v0, p4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p4

    .line 17
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_6

    if-eqz p2, :cond_6

    .line 18
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_5

    .line 20
    invoke-static {v0}, Lkj1;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget-object p4, p0, Lkj1;->k:Ltk1;

    iget-object v0, p0, Lkj1;->s:Lxl1;

    invoke-virtual {p4, v0}, Ltk1;->c(Lxl1;)V

    .line 22
    iget-object p4, p0, Lkj1;->j:Lek1;

    invoke-interface {p4, p1, p2, p3}, Lek1;->h(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    .line 23
    iput-boolean v1, p0, Lkj1;->t:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    .line 25
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h(Lxl1;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lkj1;->s:Lxl1;

    .line 2
    iget-object v0, p0, Lkj1;->k:Ltk1;

    .line 3
    iget-object v1, v0, Ltk1;->g:Ljava/util/concurrent/Executor;

    new-instance v2, Lsk1;

    invoke-direct {v2, v0, p1}, Lsk1;-><init>(Ltk1;Lxl1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object v3, p0, Lkj1;->j:Lek1;

    .line 5
    invoke-interface {p1}, Lxl1;->y5()Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-interface {p1}, Lxl1;->z4()Ljava/util/Map;

    move-result-object v5

    .line 7
    invoke-interface {p1}, Lxl1;->s5()Ljava/util/Map;

    move-result-object v6

    move-object v7, p1

    move-object v8, p1

    .line 8
    invoke-interface/range {v3 .. v8}, Lek1;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    .line 9
    sget-object v0, Ly40;->A1:Lo40;

    .line 10
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lkj1;->w:Ld23;

    .line 14
    iget-object v0, v0, Ld23;->b:Lws2;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p1}, Lxl1;->y5()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lws2;->zzb(Landroid/view/View;)V

    .line 16
    :cond_0
    sget-object v0, Ly40;->g1:Lo40;

    .line 17
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 18
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf61;->b:Lsk2;

    iget-boolean v1, v0, Lsk2;->f0:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, v0, Lsk2;->e0:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lkj1;->s:Lxl1;

    invoke-interface {v2}, Lxl1;->L3()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 25
    iget-object v3, p0, Lkj1;->B:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 27
    iget-object v3, p0, Lkj1;->y:Landroid/content/Context;

    .line 28
    new-instance v4, Lam3;

    invoke-direct {v4, v3, v2}, Lam3;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    iget-object v2, p0, Lkj1;->C:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v2, Lpj1;

    invoke-direct {v2, p0, v1}, Lpj1;-><init>(Lkj1;Ljava/lang/String;)V

    .line 31
    iget-object v1, v4, Lam3;->q:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 32
    invoke-virtual {v4, v1}, Lam3;->d(I)V

    goto :goto_0

    .line 33
    :cond_3
    :goto_1
    invoke-interface {p1}, Lxl1;->Y2()Lam3;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 34
    invoke-interface {p1}, Lxl1;->Y2()Lam3;

    move-result-object p1

    iget-object v0, p0, Lkj1;->v:Lzp0;

    invoke-virtual {p1, v0}, Lam3;->c(Lem3;)V

    :cond_4
    return-void
.end method

.method public final declared-synchronized i(Lxl1;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Ly40;->f1:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Lnj1;

    invoke-direct {v1, p0, p1}, Lnj1;-><init>(Lkj1;Lxl1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lkj1;->j(Lxl1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(Lxl1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkj1;->j:Lek1;

    invoke-interface {p1}, Lxl1;->y5()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lxl1;->L3()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lek1;->d(Landroid/view/View;Ljava/util/Map;)V

    .line 2
    invoke-interface {p1}, Lxl1;->e2()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lxl1;->e2()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4
    invoke-interface {p1}, Lxl1;->e2()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    :cond_0
    invoke-interface {p1}, Lxl1;->Y2()Lam3;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Lxl1;->Y2()Lam3;

    move-result-object p1

    iget-object v0, p0, Lkj1;->v:Lzp0;

    .line 7
    iget-object p1, p1, Lam3;->q:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lkj1;->s:Lxl1;

    return-void
.end method

.method public final declared-synchronized k(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkj1;->j:Lek1;

    invoke-interface {v0, p1}, Lek1;->e(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkj1;->j:Lek1;

    invoke-interface {v0, p1}, Lek1;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized m(Landroid/os/Bundle;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lkj1;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2
    monitor-exit p0

    return p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lkj1;->j:Lek1;

    invoke-interface {v0, p1}, Lek1;->o(Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lkj1;->t:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final n(Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lkj1;->l:Lak1;

    invoke-virtual {v0}, Lak1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Lkj1;->i:Lwj1;

    invoke-virtual {v0}, Lwj1;->p()Lxw0;

    move-result-object v0

    .line 3
    iget-object v2, v1, Lkj1;->i:Lwj1;

    invoke-virtual {v2}, Lwj1;->o()Lxw0;

    move-result-object v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v5, :cond_4

    move-object v5, v0

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    const-string v0, "javascript"

    move-object v12, v0

    move-object v5, v2

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_1
    const/4 v12, 0x0

    .line 4
    :goto_2
    invoke-interface {v5}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "Webview is null in InternalNativeAd"

    .line 5
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v0

    iget-object v7, v1, Lkj1;->y:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lrk0;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Failed to initialize omid in InternalNativeAd"

    .line 7
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_7
    iget-object v0, v1, Lkj1;->x:Lcom/google/android/gms/internal/ads/zzbar;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzbar;->f:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    const/16 v8, 0x17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 9
    sget-object v0, Ly40;->W2:Lo40;

    .line 10
    sget-object v7, Los3;->j:Los3;

    iget-object v7, v7, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v7, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v7

    .line 12
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v3, :cond_8

    .line 13
    sget-object v7, Lsk0;->h:Lsk0;

    .line 14
    sget-object v9, Luk0;->g:Luk0;

    goto :goto_3

    .line 15
    :cond_8
    sget-object v7, Lsk0;->g:Lsk0;

    .line 16
    iget-object v9, v1, Lkj1;->i:Lwj1;

    invoke-virtual {v9}, Lwj1;->k()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    .line 17
    sget-object v9, Luk0;->i:Luk0;

    goto :goto_3

    .line 18
    :cond_9
    sget-object v9, Luk0;->h:Luk0;

    .line 19
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v10

    .line 20
    invoke-interface {v5}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const-string v13, ""

    const-string v14, "javascript"

    iget-object v15, v1, Lf61;->b:Lsk2;

    iget-object v15, v15, Lsk2;->g0:Ljava/lang/String;

    .line 21
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v16, Lrk0;->b:Ljava/lang/Object;

    monitor-enter v16

    .line 23
    :try_start_0
    sget-object v6, Ly40;->T2:Lo40;

    .line 24
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 25
    invoke-virtual {v4, v6}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    sget-boolean v4, Lrk0;->c:Z

    if-nez v4, :cond_a

    goto :goto_5

    .line 27
    :cond_a
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 29
    invoke-virtual {v4, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    move-object v7, v10

    move-object v9, v11

    move-object v10, v13

    move-object v11, v14

    move-object/from16 v13, p1

    .line 31
    invoke-virtual/range {v7 .. v13}, Lrk0;->b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx20;

    move-result-object v6

    goto :goto_7

    .line 32
    :cond_b
    :try_start_1
    iget-object v0, v10, Lrk0;->a:Lkq2;

    .line 33
    new-instance v4, Ly20;

    invoke-direct {v4, v11}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 34
    iget-object v6, v9, Luk0;->e:Ljava/lang/String;

    .line 35
    iget-object v11, v7, Lsk0;->e:Ljava/lang/String;

    move-object v7, v0

    move-object v9, v4

    move-object v10, v13

    move-object v0, v11

    move-object v11, v14

    move-object/from16 v13, p1

    move-object v14, v6

    move-object v4, v15

    move-object v15, v0

    move-object/from16 v16, v4

    .line 36
    invoke-interface/range {v7 .. v16}, Lkq2;->m2(Ljava/lang/String;Lx20;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx20;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_4
    const-string v4, "#007 Could not call remote method."

    .line 37
    invoke-static {v4, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 38
    :cond_c
    :goto_5
    :try_start_2
    monitor-exit v16

    :goto_6
    const/4 v6, 0x0

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 39
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 40
    :cond_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v7

    .line 41
    invoke-interface {v5}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    const-string v10, ""

    const-string v11, "javascript"

    move-object/from16 v13, p1

    .line 42
    invoke-virtual/range {v7 .. v13}, Lrk0;->b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx20;

    move-result-object v6

    :goto_7
    if-nez v6, :cond_e

    const-string v0, "Failed to create omid session in InternalNativeAd"

    .line 43
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_e
    iget-object v4, v1, Lkj1;->i:Lwj1;

    .line 45
    monitor-enter v4

    .line 46
    :try_start_3
    iput-object v6, v4, Lwj1;->k:Lx20;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    monitor-exit v4

    .line 48
    invoke-interface {v5, v6}, Lxw0;->u0(Lx20;)V

    if-eqz v3, :cond_10

    .line 49
    invoke-interface {v2}, Lxw0;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Lrk0;->c(Lx20;Landroid/view/View;)V

    :cond_f
    const/4 v2, 0x1

    .line 51
    iput-boolean v2, v1, Lkj1;->u:Z

    :cond_10
    if-eqz p2, :cond_11

    .line 52
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v0

    invoke-virtual {v0, v6}, Lrk0;->d(Lx20;)V

    .line 53
    sget-object v0, Ly40;->X2:Lo40;

    .line 54
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 55
    invoke-virtual {v2, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "onSdkLoaded"

    .line 57
    new-instance v2, Lf4;

    invoke-direct {v2}, Lf4;-><init>()V

    invoke-interface {v5, v0, v2}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_11
    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 58
    monitor-exit v4

    throw v2
.end method
