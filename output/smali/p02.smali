.class public final Lp02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsz1<",
        "Lj41;",
        "Lvi0;",
        "Lg12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg51;

.field public c:Landroid/view/View;

.field public d:Log0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg51;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp02;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lp02;->b:Lg51;

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;Lmz1;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;,
            Lz22;
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->y4:Lo40;

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

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lsk2;->b0:Z

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object v0, p0, Lp02;->d:Log0;

    invoke-interface {v0}, Log0;->H()Lx20;

    move-result-object v0

    invoke-static {v0}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6
    iget-object v2, p0, Lp02;->d:Log0;

    invoke-interface {v2}, Log0;->shouldDelegateInterscrollerEffect()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v2

    new-instance v3, Lr02;

    invoke-direct {v3, p0, v0, p2}, Lr02;-><init>(Lp02;Landroid/view/View;Lsk2;)V

    sget-object v0, Lms0;->e:Lzv2;

    .line 8
    invoke-static {v2, v3, v0}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    .line 9
    :try_start_1
    check-cast v0, Lsu2;

    invoke-virtual {v0}, Lsu2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    :goto_0
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_0
    new-instance p1, Lpl2;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "BannerRtbAdapterWrapper interscrollerView should not be null"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 12
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 13
    :cond_1
    iget-object v0, p0, Lp02;->c:Landroid/view/View;

    .line 14
    :cond_2
    :goto_1
    iget-object v2, p0, Lp02;->b:Lg51;

    new-instance v3, Lv61;

    iget-object v4, p3, Lmz1;->a:Ljava/lang/String;

    invoke-direct {v3, p1, p2, v4}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance p1, Lq41;

    new-instance v4, Ls02;

    invoke-direct {v4, p3}, Ls02;-><init>(Lmz1;)V

    iget-object p2, p2, Lsk2;->t:Ljava/util/List;

    const/4 v5, 0x0

    .line 15
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk2;

    invoke-direct {p1, v0, v1, v4, p2}, Lq41;-><init>(Landroid/view/View;Lxw0;Lg61;Luk2;)V

    .line 16
    invoke-virtual {v2, v3, p1}, Lg51;->b(Lv61;Lq41;)Lm41;

    move-result-object p1

    .line 17
    move-object p2, p1

    check-cast p2, Le01;

    .line 18
    iget-object p2, p2, Le01;->T0:Lmb3;

    invoke-interface {p2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lrf1;

    .line 19
    invoke-virtual {p2, v0}, Lrf1;->G0(Landroid/view/View;)V

    .line 20
    iget-object p2, p3, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p1}, Lh61;->g()Lh42;

    move-result-object p3

    .line 21
    monitor-enter p2

    .line 22
    :try_start_2
    iput-object p3, p2, Lg12;->e:Lng0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    monitor-exit p2

    .line 24
    invoke-virtual {p1}, Lm41;->h()Lj41;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p2

    throw p1
.end method

.method public final b(Lhl2;Lsk2;Lmz1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            "Lmz1<",
            "Lvi0;",
            "Lg12;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lvi0;

    iget-object v1, p2, Lsk2;->T:Ljava/lang/String;

    invoke-interface {v0, v1}, Lvi0;->z1(Ljava/lang/String;)V

    .line 2
    sget-object v0, Ly40;->y4:Lo40;

    .line 3
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lsk2;->b0:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lvi0;

    iget-object v3, p2, Lsk2;->O:Ljava/lang/String;

    iget-object p2, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p1, Lhl2;->a:Lcl2;

    iget-object p2, p2, Lcl2;->a:Lll2;

    iget-object v5, p2, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p2, p0, Lp02;->a:Landroid/content/Context;

    .line 8
    new-instance v6, Ly20;

    invoke-direct {v6, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 9
    new-instance v7, Lt02;

    invoke-direct {v7, p0, p3, v1}, Lt02;-><init>(Lp02;Lmz1;Lu02;)V

    iget-object p2, p3, Lmz1;->c:Llb1;

    move-object v8, p2

    check-cast v8, Lng0;

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v9, p1, Lll2;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 10
    invoke-interface/range {v2 .. v9}, Lvi0;->x3(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Lii0;Lng0;Lcom/google/android/gms/internal/ads/zzvt;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lvi0;

    iget-object v3, p2, Lsk2;->O:Ljava/lang/String;

    iget-object p2, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p1, Lhl2;->a:Lcl2;

    iget-object p2, p2, Lcl2;->a:Lll2;

    iget-object v5, p2, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p2, p0, Lp02;->a:Landroid/content/Context;

    .line 13
    new-instance v6, Ly20;

    invoke-direct {v6, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 14
    new-instance v7, Lt02;

    invoke-direct {v7, p0, p3, v1}, Lt02;-><init>(Lp02;Lmz1;Lu02;)V

    iget-object p2, p3, Lmz1;->c:Llb1;

    move-object v8, p2

    check-cast v8, Lng0;

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v9, p1, Lll2;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 15
    invoke-interface/range {v2 .. v9}, Lvi0;->B2(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Lii0;Lng0;Lcom/google/android/gms/internal/ads/zzvt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
