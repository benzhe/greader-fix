.class public final Lri1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lek1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ldk1;

.field public final c:Lorg/json/JSONObject;

.field public final d:Lio1;

.field public final e:Lwj1;

.field public final f:Ld23;

.field public final g:Lqa1;

.field public final h:Lx91;

.field public final i:Lsk2;

.field public final j:Lcom/google/android/gms/internal/ads/zzbar;

.field public final k:Lll2;

.field public final l:Lq21;

.field public final m:Lwk1;

.field public final n:Lb20;

.field public final o:Lrf1;

.field public final p:Ljq2;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Landroid/graphics/Point;

.field public v:Landroid/graphics/Point;

.field public w:J

.field public x:J

.field public y:Lfu3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldk1;Lorg/json/JSONObject;Lio1;Lwj1;Ld23;Lqa1;Lx91;Lsk2;Lcom/google/android/gms/internal/ads/zzbar;Lll2;Lq21;Lwk1;Lb20;Lrf1;Ljq2;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lri1;->q:Z

    .line 3
    iput-boolean v1, v0, Lri1;->s:Z

    .line 4
    iput-boolean v1, v0, Lri1;->t:Z

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lri1;->u:Landroid/graphics/Point;

    .line 6
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lri1;->v:Landroid/graphics/Point;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, v0, Lri1;->w:J

    .line 8
    iput-wide v1, v0, Lri1;->x:J

    move-object v1, p1

    .line 9
    iput-object v1, v0, Lri1;->a:Landroid/content/Context;

    move-object v1, p2

    .line 10
    iput-object v1, v0, Lri1;->b:Ldk1;

    move-object v1, p3

    .line 11
    iput-object v1, v0, Lri1;->c:Lorg/json/JSONObject;

    move-object v1, p4

    .line 12
    iput-object v1, v0, Lri1;->d:Lio1;

    move-object v1, p5

    .line 13
    iput-object v1, v0, Lri1;->e:Lwj1;

    move-object v1, p6

    .line 14
    iput-object v1, v0, Lri1;->f:Ld23;

    move-object v1, p7

    .line 15
    iput-object v1, v0, Lri1;->g:Lqa1;

    move-object v1, p8

    .line 16
    iput-object v1, v0, Lri1;->h:Lx91;

    move-object v1, p9

    .line 17
    iput-object v1, v0, Lri1;->i:Lsk2;

    move-object v1, p10

    .line 18
    iput-object v1, v0, Lri1;->j:Lcom/google/android/gms/internal/ads/zzbar;

    move-object v1, p11

    .line 19
    iput-object v1, v0, Lri1;->k:Lll2;

    move-object v1, p12

    .line 20
    iput-object v1, v0, Lri1;->l:Lq21;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Lri1;->m:Lwk1;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lri1;->n:Lb20;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Lri1;->o:Lrf1;

    move-object/from16 v1, p16

    .line 24
    iput-object v1, v0, Lri1;->p:Ljq2;

    return-void
.end method


# virtual methods
.method public final L(Liu3;)V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lri1;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-object v1, p0, Lri1;->e:Lwj1;

    invoke-virtual {v1}, Lwj1;->m()Llv3;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iput-boolean v0, p0, Lri1;->s:Z

    .line 4
    iget-object p1, p0, Lri1;->p:Ljq2;

    iget-object v0, p0, Lri1;->e:Lwj1;

    invoke-virtual {v0}, Lwj1;->m()Llv3;

    move-result-object v0

    .line 5
    iget-object v0, v0, Llv3;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Ljq2;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lri1;->l()V

    return-void

    .line 8
    :cond_1
    iput-boolean v0, p0, Lri1;->s:Z

    .line 9
    iget-object v0, p0, Lri1;->p:Ljq2;

    invoke-interface {p1}, Liu3;->y6()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljq2;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lri1;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 11
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lri1;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lri1;->m:Lwk1;

    .line 3
    iget-object v1, v0, Lwk1;->g:Lu90;

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Lwk1;->j:Ljava/lang/Long;

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lwk1;->a()V

    .line 6
    :try_start_0
    iget-object v0, v0, Lwk1;->g:Lu90;

    invoke-interface {v0}, Lu90;->onUnconfirmedClickCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 7
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 2
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
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lri1;->u:Landroid/graphics/Point;

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lri1;->v:Landroid/graphics/Point;

    .line 3
    iget-boolean v0, p0, Lri1;->r:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lri1;->o:Lrf1;

    invoke-virtual {v0, p1}, Lrf1;->G0(Landroid/view/View;)V

    .line 5
    iput-boolean v1, p0, Lri1;->r:Z

    .line 6
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lri1;->l:Lq21;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lq21;->n:Ljava/lang/ref/WeakReference;

    .line 12
    iget-object p1, p0, Lri1;->j:Lcom/google/android/gms/internal/ads/zzbar;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzdn(I)Z

    move-result p1

    if-eqz p2, :cond_3

    .line 14
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 18
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    .line 19
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_4

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const/4 p5, 0x0

    .line 22
    invoke-virtual {p3, p5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "Touch event data is null. No touch event is reported."

    .line 1
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "touch_reporting"

    .line 2
    invoke-virtual {p0, v0}, Lri1;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events."

    .line 3
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "x"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "y"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "duration_ms"

    .line 6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 7
    iget-object v2, p0, Lri1;->f:Ld23;

    .line 8
    iget-object v2, v2, Ld23;->b:Lws2;

    .line 9
    invoke-interface {v2, v0, v1, p1}, Lws2;->zza(III)V

    return-void
.end method

.method public final b0(Lu90;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lri1;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    .line 2
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lri1;->m:Lwk1;

    .line 4
    iput-object p1, v0, Lwk1;->g:Lu90;

    .line 5
    iget-object v1, v0, Lwk1;->h:Lkb0;

    const-string v2, "/unconfirmedClick"

    if-eqz v1, :cond_1

    .line 6
    iget-object v3, v0, Lwk1;->e:Lio1;

    invoke-virtual {v3, v2, v1}, Lio1;->d(Ljava/lang/String;Lkb0;)V

    .line 7
    :cond_1
    new-instance v1, Lzk1;

    invoke-direct {v1, v0, p1}, Lzk1;-><init>(Lwk1;Lu90;)V

    iput-object v1, v0, Lwk1;->h:Lkb0;

    .line 8
    iget-object p1, v0, Lwk1;->e:Lio1;

    invoke-virtual {p1, v2, v1}, Lio1;->a(Ljava/lang/String;Lkb0;)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lri1;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    .line 2
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lri1;->m:Lwk1;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 6
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lwk1;->k:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public final d(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lri1;->u:Landroid/graphics/Point;

    .line 2
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lri1;->v:Landroid/graphics/Point;

    .line 3
    iget-object p2, p0, Lri1;->o:Lrf1;

    .line 4
    monitor-enter p2

    .line 5
    :try_start_0
    iget-object v0, p2, Lrf1;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p2, Lrf1;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam3;

    .line 7
    iget-object v0, v0, Lam3;->q:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p2, Lrf1;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p2

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lri1;->r:Z

    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p2

    throw p1
.end method

.method public final destroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lri1;->d:Lio1;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lio1;->l:Law2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    new-instance v2, Lno1;

    invoke-direct {v2}, Lno1;-><init>()V

    iget-object v3, v0, Lio1;->f:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v4, Lsv2;

    invoke-direct {v4, v1, v2}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {v1, v4, v3}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lio1;->l:Law2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 13

    if-nez p1, :cond_0

    const-string p1, "Click data is null. No click is reported."

    .line 1
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "click_reporting"

    .line 2
    invoke-virtual {p0, v0}, Lri1;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events."

    .line 3
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "click_signal"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "asset_id"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v1

    .line 6
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    .line 7
    invoke-virtual/range {v2 .. v12}, Lri1;->p(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final e0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lri1;->t:Z

    return-void
.end method

.method public final f(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lri1;->u:Landroid/graphics/Point;

    .line 2
    iget-object p1, p0, Lri1;->n:Lb20;

    invoke-interface {p1}, Lb20;->a()J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lri1;->x:J

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iput-wide v0, p0, Lri1;->w:J

    .line 6
    iget-object p1, p0, Lri1;->u:Landroid/graphics/Point;

    iput-object p1, p0, Lri1;->v:Landroid/graphics/Point;

    .line 7
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lri1;->u:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 9
    iget-object p2, p0, Lri1;->f:Ld23;

    .line 10
    iget-object p2, p2, Ld23;->b:Lws2;

    invoke-interface {p2, p1}, Lws2;->zza(Landroid/view/MotionEvent;)V

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final g(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 12
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

    move-object v11, p0

    move-object v0, p2

    move-object v1, p3

    .line 1
    iget-object v2, v11, Lri1;->a:Landroid/content/Context;

    move-object/from16 v3, p4

    .line 2
    invoke-static {v2, p3, v3, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3
    iget-object v2, v11, Lri1;->a:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 5
    iget-object v5, v11, Lri1;->a:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v6, p1

    .line 6
    invoke-virtual {p0, p1, p3}, Lri1;->s(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 7
    iget-object v1, v11, Lri1;->a:Landroid/content/Context;

    iget-object v8, v11, Lri1;->v:Landroid/graphics/Point;

    iget-object v9, v11, Lri1;->u:Landroid/graphics/Point;

    .line 8
    invoke-static {v7, v1, v8, v9}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v8

    .line 9
    sget-object v1, Ly40;->O1:Lo40;

    .line 10
    sget-object v9, Los3;->j:Los3;

    iget-object v9, v9, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v9, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v9, p5

    .line 13
    invoke-virtual/range {v0 .. v10}, Lri1;->p(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final h(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
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
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lri1;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3
    iget-object p2, p0, Lri1;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 5
    iget-object p2, p0, Lri1;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 6
    sget-object p2, Ly40;->N1:Lo40;

    .line 7
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 8
    invoke-virtual {p3, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    :goto_0
    move-object v6, p3

    goto :goto_1

    .line 10
    :cond_0
    :try_start_0
    iget-object p2, p0, Lri1;->f:Ld23;

    .line 11
    iget-object p2, p2, Ld23;->b:Lws2;

    .line 12
    iget-object v0, p0, Lri1;->a:Landroid/content/Context;

    invoke-interface {p2, v0, p1, p3}, Lws2;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, p1

    goto :goto_1

    :catch_0
    const-string p1, "Exception getting data."

    .line 13
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :goto_1
    iget-object p1, p0, Lri1;->a:Landroid/content/Context;

    iget-object p2, p0, Lri1;->i:Lsk2;

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Lsk2;)Z

    move-result v8

    const/4 v7, 0x0

    move-object v1, p0

    .line 16
    invoke-virtual/range {v1 .. v8}, Lri1;->q(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    return-void
.end method

.method public final i()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v7}, Lri1;->q(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    return-void
.end method

.method public final j(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
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
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lri1;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lri1;->a:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p3

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lri1;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "asset_view_signal"

    .line 7
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 8
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 9
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 10
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string p2, "Unable to create native ad view signals JSON."

    .line 11
    invoke-static {p2, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final j0(Lfu3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lri1;->y:Lfu3;

    return-void
.end method

.method public final k(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 12
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

    move-object v11, p0

    move-object v1, p1

    move-object v0, p2

    .line 1
    iget-boolean v2, v11, Lri1;->t:Z

    if-nez v2, :cond_0

    const-string v0, "Custom click reporting failed. enableCustomClickGesture is not set."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lri1;->r()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "Custom click reporting failed. Ad unit id not in the allow list."

    .line 4
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v2, v11, Lri1;->a:Landroid/content/Context;

    move-object v3, p3

    .line 6
    invoke-static {v2, p2, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 7
    iget-object v2, v11, Lri1;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 9
    iget-object v5, v11, Lri1;->a:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    .line 10
    invoke-virtual {p0, v6, p2}, Lri1;->s(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-object v0, v11, Lri1;->a:Landroid/content/Context;

    iget-object v7, v11, Lri1;->v:Landroid/graphics/Point;

    iget-object v8, v11, Lri1;->u:Landroid/graphics/Point;

    .line 12
    invoke-static {v6, v0, v7, v8}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p4

    .line 13
    invoke-virtual/range {v0 .. v10}, Lri1;->p(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final k0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lri1;->r()Z

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lri1;->y:Lfu3;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lfu3;->onAdMuted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 1
    invoke-virtual/range {v0 .. v10}, Lri1;->p(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final n()V
    .locals 3

    const-string v0, "recordDownloadedImpression must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    .line 3
    iget-object v2, p0, Lri1;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lri1;->d:Lio1;

    const-string v2, "google.afma.nativeAds.handleDownloadedImpression"

    .line 5
    invoke-virtual {v1, v2, v0}, Lio1;->e(Ljava/lang/String;Lorg/json/JSONObject;)Law2;

    move-result-object v0

    const-string v1, "Error during performing handleDownloadedImpression"

    .line 6
    invoke-static {v0, v1}, Lc50;->e2(Law2;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 7
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o(Landroid/os/Bundle;)Z
    .locals 10

    const-string v0, "impression_reporting"

    .line 1
    invoke-virtual {p0, v0}, Lri1;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events."

    .line 2
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 4
    invoke-virtual/range {v2 .. v9}, Lri1;->q(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p1

    return p1
.end method

.method public final p(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V
    .locals 4

    const-string v0, "has_custom_click_handler"

    const-string v1, "performClick must be called on the main UI thread."

    .line 1
    invoke-static {v1}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    .line 3
    iget-object v3, p0, Lri1;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "asset_view_signal"

    .line 4
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ad_view_signal"

    .line 5
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_signal"

    .line 6
    invoke-virtual {v1, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 7
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 8
    invoke-virtual {v1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object p2, p0, Lri1;->b:Ldk1;

    iget-object p3, p0, Lri1;->e:Lwj1;

    .line 10
    invoke-virtual {p3}, Lwj1;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ldk1;->a(Ljava/lang/String;)La90;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "provided_signals"

    .line 12
    invoke-virtual {v1, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "asset_id"

    .line 14
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "template"

    .line 15
    iget-object p6, p0, Lri1;->e:Lwj1;

    invoke-virtual {p6}, Lwj1;->k()I

    move-result p6

    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "view_aware_api_used"

    .line 16
    invoke-virtual {p2, p5, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_requested"

    .line 17
    iget-object p6, p0, Lri1;->k:Lll2;

    iget-object p6, p6, Lll2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    if-eqz p6, :cond_1

    iget-boolean p6, p6, Lcom/google/android/gms/internal/ads/zzaei;->k:Z

    if-eqz p6, :cond_1

    const/4 p6, 0x1

    goto :goto_1

    :cond_1
    const/4 p6, 0x0

    .line 18
    :goto_1
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_enabled"

    .line 19
    iget-object p6, p0, Lri1;->e:Lwj1;

    invoke-virtual {p6}, Lwj1;->g()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_2

    iget-object p6, p0, Lri1;->e:Lwj1;

    .line 20
    invoke-virtual {p6}, Lwj1;->m()Llv3;

    move-result-object p6

    if-eqz p6, :cond_2

    const/4 p6, 0x1

    goto :goto_2

    :cond_2
    const/4 p6, 0x0

    .line 21
    :goto_2
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 22
    iget-object p5, p0, Lri1;->m:Lwk1;

    .line 23
    iget-object p5, p5, Lwk1;->g:Lu90;

    if-eqz p5, :cond_3

    .line 24
    iget-object p5, p0, Lri1;->c:Lorg/json/JSONObject;

    const-string p6, "custom_one_point_five_click_enabled"

    .line 25
    invoke-virtual {p5, p6, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p5, "custom_one_point_five_click_eligible"

    .line 26
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string p5, "timestamp"

    .line 27
    iget-object p6, p0, Lri1;->n:Lb20;

    invoke-interface {p6}, Lb20;->a()J

    move-result-wide p6

    invoke-virtual {p2, p5, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    iget-boolean p5, p0, Lri1;->t:Z

    if-eqz p5, :cond_4

    invoke-virtual {p0}, Lri1;->r()Z

    move-result p5

    if-eqz p5, :cond_4

    const-string p5, "custom_click_gesture_eligible"

    .line 29
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    if-eqz p10, :cond_5

    const-string p5, "is_custom_click_gesture"

    .line 30
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 31
    :cond_5
    iget-object p5, p0, Lri1;->b:Ldk1;

    iget-object p6, p0, Lri1;->e:Lwj1;

    .line 32
    invoke-virtual {p6}, Lwj1;->c()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ldk1;->a(Ljava/lang/String;)La90;

    move-result-object p5

    if-eqz p5, :cond_6

    const/4 p3, 0x1

    .line 33
    :cond_6
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "click_signals"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    :try_start_1
    iget-object p5, p0, Lri1;->c:Lorg/json/JSONObject;

    const-string p6, "tracking_urls_and_actions"

    invoke-virtual {p5, p6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    if-nez p5, :cond_7

    .line 35
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    const-string p6, "click_string"

    .line 36
    invoke-virtual {p5, p6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 37
    iget-object p6, p0, Lri1;->f:Ld23;

    .line 38
    iget-object p6, p6, Ld23;->b:Lws2;

    .line 39
    iget-object p7, p0, Lri1;->a:Landroid/content/Context;

    invoke-interface {p6, p7, p5, p1}, Lws2;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    const-string p5, "Exception obtaining click signals"

    .line 40
    invoke-static {p5, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 41
    :goto_3
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    sget-object p1, Ly40;->B2:Lo40;

    .line 43
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 44
    invoke-virtual {p3, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "open_chrome_custom_tab"

    .line 46
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 47
    :cond_8
    sget-object p1, Ly40;->c5:Lo40;

    .line 48
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 49
    invoke-virtual {p3, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lbi;->K()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "try_fallback_for_deep_link"

    .line 51
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 52
    :cond_9
    sget-object p1, Ly40;->d5:Lo40;

    .line 53
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 54
    invoke-virtual {p3, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lbi;->K()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "in_app_link_handling_for_android_11_enabled"

    .line 56
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_a
    const-string p1, "click"

    .line 57
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 59
    iget-object p2, p0, Lri1;->n:Lb20;

    invoke-interface {p2}, Lb20;->a()J

    move-result-wide p2

    const-string p4, "time_from_last_touch_down"

    .line 60
    iget-wide p5, p0, Lri1;->w:J

    sub-long p5, p2, p5

    invoke-virtual {p1, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p4, "time_from_last_touch"

    .line 61
    iget-wide p5, p0, Lri1;->x:J

    sub-long/2addr p2, p5

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "touch_signal"

    .line 62
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object p1, p0, Lri1;->d:Lio1;

    const-string p2, "google.afma.nativeAds.handleClick"

    .line 64
    invoke-virtual {p1, p2, v1}, Lio1;->e(Ljava/lang/String;Lorg/json/JSONObject;)Law2;

    move-result-object p1

    const-string p2, "Error during performing handleClick"

    .line 65
    invoke-static {p1, p2}, Lc50;->e2(Law2;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "Unable to create click JSON."

    .line 66
    invoke-static {p2, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final q(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z
    .locals 3

    const-string v0, "recordImpression must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    .line 3
    iget-object v2, p0, Lri1;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asset_view_signal"

    .line 4
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 5
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 6
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 7
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "provided_signals"

    .line 8
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    sget-object p1, Ly40;->N1:Lo40;

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

    if-eqz p1, :cond_0

    const-string p1, "view_signals"

    .line 13
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "policy_validator_enabled"

    .line 14
    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "screen"

    .line 15
    iget-object p2, p0, Lri1;->a:Landroid/content/Context;

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzbn(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    .line 17
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    sget-object p1, Ly40;->Y4:Lo40;

    .line 19
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 20
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Lri1;->d:Lio1;

    const-string p3, "/clickRecorded"

    new-instance p4, Lsi1;

    invoke-direct {p4, p0, p2}, Lsi1;-><init>(Lri1;Lqi1;)V

    invoke-virtual {p1, p3, p4}, Lio1;->a(Ljava/lang/String;Lkb0;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lri1;->d:Lio1;

    const-string p3, "/logScionEvent"

    new-instance p4, Lti1;

    invoke-direct {p4, p0, p2}, Lti1;-><init>(Lri1;Lqi1;)V

    invoke-virtual {p1, p3, p4}, Lio1;->a(Ljava/lang/String;Lkb0;)V

    .line 24
    :goto_0
    iget-object p1, p0, Lri1;->d:Lio1;

    const-string p3, "/nativeImpression"

    new-instance p4, Lvi1;

    invoke-direct {p4, p0, p2}, Lvi1;-><init>(Lri1;Lqi1;)V

    invoke-virtual {p1, p3, p4}, Lio1;->a(Ljava/lang/String;Lkb0;)V

    .line 25
    iget-object p1, p0, Lri1;->d:Lio1;

    const-string p2, "google.afma.nativeAds.handleImpression"

    .line 26
    invoke-virtual {p1, p2, v0}, Lio1;->e(Ljava/lang/String;Lorg/json/JSONObject;)Law2;

    move-result-object p1

    const-string p2, "Error during performing handleImpression"

    .line 27
    invoke-static {p1, p2}, Lc50;->e2(Law2;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget-boolean p1, p0, Lri1;->q:Z

    if-nez p1, :cond_2

    iget-object p2, p0, Lri1;->i:Lsk2;

    iget-object p2, p2, Lsk2;->B:Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzam;

    move-result-object p2

    iget-object p3, p0, Lri1;->a:Landroid/content/Context;

    iget-object p4, p0, Lri1;->j:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    iget-object p5, p0, Lri1;->i:Lsk2;

    iget-object p5, p5, Lsk2;->B:Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lri1;->k:Lll2;

    iget-object p6, p6, Lll2;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/google/android/gms/ads/internal/util/zzam;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lri1;->q:Z

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Unable to create impression JSON."

    .line 32
    invoke-static {p2, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final r()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lri1;->c:Lorg/json/JSONObject;

    const-string v1, "allow_custom_click_gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final s(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p0, Lri1;->e:Lwj1;

    invoke-virtual {p1}, Lwj1;->k()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const-string p1, "3099"

    return-object p1

    :cond_3
    const-string p1, "2099"

    return-object p1

    :cond_4
    const-string p1, "1099"

    return-object p1
.end method

.method public final t(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lri1;->c:Lorg/json/JSONObject;

    const-string v1, "allow_pub_event_reporting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
