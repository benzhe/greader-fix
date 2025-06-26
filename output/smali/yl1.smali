.class public final Lyl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lek1;


# instance fields
.field public final a:Lvg0;

.field public final b:Lwg0;

.field public final c:Lbh0;

.field public final d:Lqa1;

.field public final e:Lx91;

.field public final f:Landroid/content/Context;

.field public final g:Lsk2;

.field public final h:Lcom/google/android/gms/internal/ads/zzbar;

.field public final i:Lll2;

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lvg0;Lwg0;Lbh0;Lqa1;Lx91;Landroid/content/Context;Lsk2;Lcom/google/android/gms/internal/ads/zzbar;Lll2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lyl1;->j:Z

    .line 3
    iput-boolean v0, p0, Lyl1;->k:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lyl1;->l:Z

    .line 5
    iput-object p1, p0, Lyl1;->a:Lvg0;

    .line 6
    iput-object p2, p0, Lyl1;->b:Lwg0;

    .line 7
    iput-object p3, p0, Lyl1;->c:Lbh0;

    .line 8
    iput-object p4, p0, Lyl1;->d:Lqa1;

    .line 9
    iput-object p5, p0, Lyl1;->e:Lx91;

    .line 10
    iput-object p6, p0, Lyl1;->f:Landroid/content/Context;

    .line 11
    iput-object p7, p0, Lyl1;->g:Lsk2;

    .line 12
    iput-object p8, p0, Lyl1;->h:Lcom/google/android/gms/internal/ads/zzbar;

    .line 13
    iput-object p9, p0, Lyl1;->i:Lll2;

    return-void
.end method

.method public static q(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final L(Liu3;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 1
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void
.end method

.method public final N()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 0
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
    :try_start_0
    new-instance p4, Ly20;

    invoke-direct {p4, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lyl1;->r(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    iput-boolean p1, p0, Lyl1;->l:Z

    .line 3
    invoke-static {p2}, Lyl1;->q(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 4
    invoke-static {p3}, Lyl1;->q(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    .line 5
    iget-object p3, p0, Lyl1;->c:Lbh0;

    if-eqz p3, :cond_0

    .line 6
    new-instance p5, Ly20;

    invoke-direct {p5, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    new-instance p1, Ly20;

    invoke-direct {p1, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-interface {p3, p4, p5, p1}, Lbh0;->x(Lx20;Lx20;Lx20;)V

    return-void

    .line 9
    :cond_0
    iget-object p3, p0, Lyl1;->a:Lvg0;

    if-eqz p3, :cond_1

    .line 10
    new-instance p5, Ly20;

    invoke-direct {p5, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 11
    new-instance p1, Ly20;

    invoke-direct {p1, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-interface {p3, p4, p5, p1}, Lvg0;->x(Lx20;Lx20;Lx20;)V

    .line 13
    iget-object p1, p0, Lyl1;->a:Lvg0;

    invoke-interface {p1, p4}, Lvg0;->K(Lx20;)V

    return-void

    .line 14
    :cond_1
    iget-object p3, p0, Lyl1;->b:Lwg0;

    if-eqz p3, :cond_2

    .line 15
    new-instance p5, Ly20;

    invoke-direct {p5, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 16
    new-instance p1, Ly20;

    invoke-direct {p1, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 17
    invoke-interface {p3, p4, p5, p1}, Lwg0;->x(Lx20;Lx20;Lx20;)V

    .line 18
    iget-object p1, p0, Lyl1;->b:Lwg0;

    invoke-interface {p1, p4}, Lwg0;->K(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call trackView"

    .line 19
    invoke-static {p2, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final b0(Lu90;)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/view/View;Ljava/util/Map;)V
    .locals 0
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
    :try_start_0
    new-instance p2, Ly20;

    invoke-direct {p2, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lyl1;->c:Lbh0;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lbh0;->y(Lx20;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lyl1;->a:Lvg0;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, p2}, Lvg0;->y(Lx20;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lyl1;->b:Lwg0;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, p2}, Lwg0;->y(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call untrackView"

    .line 8
    invoke-static {p2, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final e0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lyl1;->k:Z

    return-void
.end method

.method public final f(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final g(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
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

    .line 1
    iget-boolean p2, p0, Lyl1;->k:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lyl1;->g:Lsk2;

    iget-boolean p2, p2, Lsk2;->G:Z

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lyl1;->p(Landroid/view/View;)V

    return-void
.end method

.method public final h(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
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
            ">;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lyl1;->j:Z

    if-nez p1, :cond_0

    iget-object p2, p0, Lyl1;->g:Lsk2;

    iget-object p2, p2, Lsk2;->B:Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzam;

    move-result-object p2

    iget-object p3, p0, Lyl1;->f:Landroid/content/Context;

    iget-object v0, p0, Lyl1;->h:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    iget-object v1, p0, Lyl1;->g:Lsk2;

    iget-object v1, v1, Lsk2;->B:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyl1;->i:Lll2;

    iget-object v2, v2, Lll2;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzam;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lyl1;->j:Z

    .line 5
    :cond_0
    iget-boolean p1, p0, Lyl1;->l:Z

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lyl1;->c:Lbh0;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Lbh0;->w()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lyl1;->c:Lbh0;

    invoke-interface {p1}, Lbh0;->recordImpression()V

    .line 9
    iget-object p1, p0, Lyl1;->d:Lqa1;

    invoke-virtual {p1}, Lqa1;->onAdImpression()V

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Lyl1;->a:Lvg0;

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Lvg0;->w()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lyl1;->a:Lvg0;

    invoke-interface {p1}, Lvg0;->recordImpression()V

    .line 13
    iget-object p1, p0, Lyl1;->d:Lqa1;

    invoke-virtual {p1}, Lqa1;->onAdImpression()V

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lyl1;->b:Lwg0;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lwg0;->w()Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    iget-object p1, p0, Lyl1;->b:Lwg0;

    invoke-interface {p1}, Lwg0;->recordImpression()V

    .line 16
    iget-object p1, p0, Lyl1;->d:Lqa1;

    invoke-virtual {p1}, Lqa1;->onAdImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call recordImpression"

    .line 17
    invoke-static {p2, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final j(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public final j0(Lfu3;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 1
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
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

    .line 1
    iget-boolean p2, p0, Lyl1;->k:Z

    if-nez p2, :cond_0

    const-string p1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    .line 2
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lyl1;->g:Lsk2;

    iget-boolean p2, p2, Lsk2;->G:Z

    if-nez p2, :cond_1

    const-string p1, "Custom click reporting for 3p ads failed. Ad unit id not in allow list."

    .line 4
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lyl1;->p(Landroid/view/View;)V

    return-void
.end method

.method public final k0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyl1;->g:Lsk2;

    iget-boolean v0, v0, Lsk2;->G:Z

    return v0
.end method

.method public final l()V
    .locals 1

    const-string v0, "Mute This Ad is not supported for 3rd party ads"

    .line 1
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final o(Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final p(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lyl1;->c:Lbh0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lbh0;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lyl1;->c:Lbh0;

    .line 3
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v1}, Lbh0;->v(Lx20;)V

    .line 5
    iget-object p1, p0, Lyl1;->e:Lx91;

    .line 6
    sget-object v0, Laa1;->a:Lzd1;

    invoke-virtual {p1, v0}, Lxd1;->D0(Lzd1;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lyl1;->a:Lvg0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lvg0;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lyl1;->a:Lvg0;

    .line 9
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 10
    invoke-interface {v0, v1}, Lvg0;->v(Lx20;)V

    .line 11
    iget-object p1, p0, Lyl1;->e:Lx91;

    .line 12
    sget-object v0, Laa1;->a:Lzd1;

    invoke-virtual {p1, v0}, Lxd1;->D0(Lzd1;)V

    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lyl1;->b:Lwg0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lwg0;->F()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lyl1;->b:Lwg0;

    .line 15
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-interface {v0, v1}, Lwg0;->v(Lx20;)V

    .line 17
    iget-object p1, p0, Lyl1;->e:Lx91;

    .line 18
    sget-object v0, Laa1;->a:Lzd1;

    invoke-virtual {p1, v0}, Lxd1;->D0(Lzd1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to call handleClick"

    .line 19
    invoke-static {v0, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final r(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyl1;->g:Lsk2;

    iget-object v0, v0, Lsk2;->e0:Lorg/json/JSONObject;

    .line 2
    sget-object v1, Ly40;->c1:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    if-nez p2, :cond_2

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 10
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 12
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    if-nez v4, :cond_4

    return v5

    .line 16
    :cond_4
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    return v5

    .line 17
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 18
    sget-object v6, Ly40;->d1:Lo40;

    .line 19
    sget-object v7, Los3;->j:Los3;

    iget-object v7, v7, Los3;->f:Lu40;

    .line 20
    invoke-virtual {v7, v6}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v6

    .line 21
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "3010"

    .line 22
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 23
    iget-object p2, p0, Lyl1;->c:Lbh0;

    const/4 v4, 0x0

    if-eqz p2, :cond_6

    .line 24
    :try_start_0
    invoke-interface {p2}, Lbh0;->z()Lx20;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 25
    :cond_6
    iget-object p2, p0, Lyl1;->a:Lvg0;

    if-eqz p2, :cond_7

    .line 26
    :try_start_1
    invoke-interface {p2}, Lvg0;->z()Lx20;

    move-result-object p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 27
    :cond_7
    iget-object p2, p0, Lyl1;->b:Lwg0;

    if-eqz p2, :cond_8

    .line 28
    :try_start_2
    invoke-interface {p2}, Lwg0;->z()Lx20;

    move-result-object p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_8
    move-object p2, v4

    :goto_1
    if-eqz p2, :cond_9

    .line 29
    :try_start_3
    invoke-static {p2}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_9
    if-nez v4, :cond_a

    return v5

    .line 30
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 31
    :cond_b
    :try_start_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {v3, p2}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v3, p0, Lyl1;->f:Landroid/content/Context;

    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 35
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/List;)Z

    move-result p2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    if-nez p2, :cond_3

    return v5

    :catch_1
    nop

    goto/16 :goto_0

    :cond_c
    :goto_2
    return v2
.end method
