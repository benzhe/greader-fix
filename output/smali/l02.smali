.class public final Ll02;
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
        "Lzl2;",
        "Lg12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg51;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg51;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll02;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ll02;->b:Lg51;

    .line 4
    iput-object p3, p0, Ll02;->c:Ljava/util/concurrent/Executor;

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

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lsk2;->b0:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :try_start_0
    iget-object v0, v0, Lzl2;->a:Lig0;

    invoke-interface {v0}, Lig0;->F6()Log0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 8
    :try_start_1
    invoke-interface {v0}, Log0;->H()Lx20;

    move-result-object v2

    invoke-static {v2}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 9
    invoke-interface {v0}, Log0;->shouldDelegateInterscrollerEffect()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    new-instance v3, Ln02;

    invoke-direct {v3, p0, v2, p2}, Ln02;-><init>(Ll02;Landroid/view/View;Lsk2;)V

    sget-object v2, Lms0;->e:Lzv2;

    .line 11
    invoke-static {v0, v3, v2}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    .line 12
    :try_start_2
    check-cast v0, Lsu2;

    invoke-virtual {v0}, Lsu2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    :goto_0
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 14
    :cond_0
    new-instance p1, Lpl2;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "BannerAdapterWrapper interscrollerView should not be null"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 15
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const-string p1, "getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."

    .line 16
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 17
    new-instance p2, Lpl2;

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 18
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 19
    :cond_2
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :try_start_3
    iget-object v0, v0, Lzl2;->a:Lig0;

    invoke-interface {v0}, Lig0;->H()Lx20;

    move-result-object v0

    invoke-static {v0}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 22
    :cond_3
    :goto_1
    iget-object v0, p0, Ll02;->b:Lg51;

    new-instance v3, Lv61;

    iget-object v4, p3, Lmz1;->a:Ljava/lang/String;

    invoke-direct {v3, p1, p2, v4}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance p1, Lq41;

    iget-object v4, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v4, Lzl2;

    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v5, Lo02;

    invoke-direct {v5, v4}, Lo02;-><init>(Lzl2;)V

    .line 25
    iget-object p2, p2, Lsk2;->t:Ljava/util/List;

    const/4 v4, 0x0

    .line 26
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk2;

    invoke-direct {p1, v2, v1, v5, p2}, Lq41;-><init>(Landroid/view/View;Lxw0;Lg61;Luk2;)V

    .line 27
    invoke-virtual {v0, v3, p1}, Lg51;->b(Lv61;Lq41;)Lm41;

    move-result-object p1

    .line 28
    move-object p2, p1

    check-cast p2, Le01;

    .line 29
    iget-object p2, p2, Le01;->T0:Lmb3;

    invoke-interface {p2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lrf1;

    .line 30
    invoke-virtual {p2, v2}, Lrf1;->G0(Landroid/view/View;)V

    .line 31
    invoke-virtual {p1}, Lh61;->a()Lxa1;

    move-result-object p2

    .line 32
    new-instance v0, Le21;

    iget-object v1, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v1, Lzl2;

    invoke-direct {v0, v1}, Le21;-><init>(Lzl2;)V

    iget-object v1, p0, Ll02;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 33
    iget-object p2, p3, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p1}, Lh61;->f()Ln42;

    move-result-object p3

    .line 34
    monitor-enter p2

    .line 35
    :try_start_4
    iput-object p3, p2, Lg12;->e:Lng0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36
    monitor-exit p2

    .line 37
    invoke-virtual {p1}, Lm41;->h()Lj41;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 38
    monitor-exit p2

    throw p1

    :catchall_2
    move-exception p1

    .line 39
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Lhl2;Lsk2;Lmz1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            "Lmz1<",
            "Lzl2;",
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
    iget-object v0, p1, Lhl2;->a:Lcl2;

    iget-object v0, v0, Lcl2;->a:Lll2;

    iget-object v0, v0, Lll2;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvt;->r:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v2, p0, Ll02;->a:Landroid/content/Context;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    .line 4
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zza;->zzb(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    :goto_0
    move-object v4, v1

    goto :goto_1

    .line 5
    :cond_0
    sget-object v1, Ly40;->y4:Lo40;

    .line 6
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lsk2;->b0:Z

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v2, p0, Ll02;->a:Landroid/content/Context;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    .line 10
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zza;->zzc(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Ll02;->a:Landroid/content/Context;

    iget-object v1, p2, Lsk2;->t:Ljava/util/List;

    .line 12
    invoke-static {v0, v1}, Lc50;->V2(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v1

    goto :goto_0

    .line 13
    :goto_1
    sget-object v0, Ly40;->y4:Lo40;

    .line 14
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 15
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lsk2;->b0:Z

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    iget-object v1, p0, Ll02;->a:Landroid/content/Context;

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v5, p1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lsk2;->r:Lzk2;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lcom/google/android/gms/ads/internal/util/zzbm;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lmz1;->c:Llb1;

    move-object v8, p1

    check-cast v8, Lng0;

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :try_start_0
    iget-object v2, v0, Lzl2;->a:Lig0;

    .line 22
    new-instance v3, Ly20;

    invoke-direct {v3, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 23
    invoke-interface/range {v2 .. v8}, Lig0;->w2(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 24
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 25
    :cond_2
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    iget-object v1, p0, Ll02;->a:Landroid/content/Context;

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v5, p1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lsk2;->r:Lzk2;

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lcom/google/android/gms/ads/internal/util/zzbm;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lmz1;->c:Llb1;

    move-object v8, p1

    check-cast v8, Lng0;

    .line 28
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :try_start_1
    iget-object v2, v0, Lzl2;->a:Lig0;

    .line 30
    new-instance v3, Ly20;

    invoke-direct {v3, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 31
    invoke-interface/range {v2 .. v8}, Lig0;->s3(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 32
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
