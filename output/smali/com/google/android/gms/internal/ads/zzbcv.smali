.class public final Lcom/google/android/gms/internal/ads/zzbcv;
.super Lcom/google/android/gms/internal/ads/zzbbz;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lmv0;


# instance fields
.field public final g:Liu0;

.field public final h:Lhu0;

.field public final i:Z

.field public final j:Lfu0;

.field public k:Lrt0;

.field public l:Landroid/view/Surface;

.field public m:Lcv0;

.field public n:Ljava/lang/String;

.field public o:[Ljava/lang/String;

.field public p:Z

.field public q:I

.field public r:Lgu0;

.field public final s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhu0;Liu0;ZZLfu0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbz;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->q:I

    .line 3
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbcv;->i:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Liu0;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Lhu0;

    .line 6
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbcv;->s:Z

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Lfu0;

    .line 8
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 9
    invoke-virtual {p2, p0}, Lhu0;->c(Lcom/google/android/gms/internal/ads/zzbbz;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p0, v1}, Ljo;->x(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljo;->x(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p1, v1}, Ljo;->x(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "/"

    const-string v3, ":"

    invoke-static {v1, p0, v2, v0, v3}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcv0;->k:Lde3;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->l:Landroid/view/Surface;

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "cache:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Liu0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Liu0;->x0(Ljava/lang/String;)Lzv0;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lkw0;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 6
    move-object v2, v0

    check-cast v2, Lkw0;

    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iput-boolean v3, v2, Lkw0;->l:Z

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 10
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v2, Lkw0;->h:Lcv0;

    const/4 v3, 0x0

    .line 12
    iput-object v3, v0, Lcv0;->o:Lmv0;

    .line 13
    iput-object v3, v2, Lkw0;->h:Lcv0;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 15
    iget-object v0, v0, Lcv0;->k:Lde3;

    if-nez v0, :cond_9

    const-string v0, "Precached video player has been released."

    .line 16
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 18
    :cond_2
    instance-of v2, v0, Llw0;

    if-eqz v2, :cond_5

    .line 19
    check-cast v0, Llw0;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->z()Ljava/lang/String;

    move-result-object v2

    .line 21
    iget-object v4, v0, Llw0;->o:Ljava/lang/Object;

    monitor-enter v4

    .line 22
    :try_start_2
    iget-object v5, v0, Llw0;->m:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_3

    iget-boolean v6, v0, Llw0;->n:Z

    if-nez v6, :cond_3

    .line 23
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 24
    iput-boolean v3, v0, Llw0;->n:Z

    .line 25
    :cond_3
    iput-boolean v3, v0, Llw0;->j:Z

    .line 26
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    iget-object v4, v0, Llw0;->m:Ljava/nio/ByteBuffer;

    .line 28
    iget-boolean v5, v0, Llw0;->r:Z

    .line 29
    iget-object v0, v0, Llw0;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "Stream cache URL is null."

    .line 30
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 31
    :cond_4
    new-instance v6, Lcv0;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Liu0;

    invoke-interface {v7}, Liu0;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Lfu0;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Liu0;

    invoke-direct {v6, v7, v8, v9}, Lcv0;-><init>(Landroid/content/Context;Lfu0;Liu0;)V

    .line 32
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    new-array v3, v3, [Landroid/net/Uri;

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v6, v3, v2, v4, v5}, Lcv0;->m([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 34
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    const-string v0, "Stream cache miss: "

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_7
    new-instance v0, Lcv0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Liu0;

    invoke-interface {v2}, Liu0;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Lfu0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Liu0;

    invoke-direct {v0, v2, v3, v4}, Lcv0;-><init>(Landroid/content/Context;Lfu0;Liu0;)V

    .line 37
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->z()Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->o:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    .line 40
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbcv;->o:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_8

    .line 41
    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 42
    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 43
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v4, v1}, Lcv0;->m([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    .line 45
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 46
    iput-object p0, v0, Lcv0;->o:Lmv0;

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->l:Landroid/view/Surface;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbcv;->y(Landroid/view/Surface;Z)V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 49
    iget-object v0, v0, Lcv0;->k:Lde3;

    if-eqz v0, :cond_a

    .line 50
    iget v0, v0, Lde3;->k:I

    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->D()V

    :cond_a
    :goto_3
    return-void
.end method

.method public final D()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->t:Z

    .line 3
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Lnu0;

    invoke-direct {v1, p0}, Lnu0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->a()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Lhu0;

    invoke-virtual {v0}, Lhu0;->e()V

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->u:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->f()V

    :cond_1
    return-void
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcv0;->p(Z)V

    :cond_0
    return-void
.end method

.method public final F(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->x:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->x:F

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->f:Lju0;

    .line 2
    iget-boolean v1, v0, Lju0;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Lju0;->f:F

    .line 3
    :goto_0
    iget-boolean v0, v0, Lju0;->c:Z

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzbcv;->x(FZ)V

    return-void
.end method

.method public final b(ZJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Liu0;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lms0;->e:Lzv2;

    new-instance v1, Lyu0;

    invoke-direct {v1, p0, p1, p2, p3}, Lyu0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbcv;->w(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter exception: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lis0;->zzez(Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v0, Lqu0;

    invoke-direct {v0, p0, p1}, Lqu0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbcv;->w(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter error: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lis0;->zzez(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->p:Z

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Lfu0;

    iget-boolean p2, p2, Lfu0;->a:Z

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->E()V

    .line 6
    :cond_1
    sget-object p2, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v0, Lou0;

    invoke-direct {v0, p0, p1}, Lou0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Lfu0;

    iget-boolean v0, v0, Lfu0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->E()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 5
    iget-object v0, v0, Lcv0;->k:Lde3;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lde3;->g(Z)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Lhu0;

    .line 8
    iput-boolean v1, v0, Lhu0;->m:Z

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->f:Lju0;

    invoke-virtual {v0}, Lju0;->a()V

    .line 10
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Lru0;

    invoke-direct {v1, p0}, Lru0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->B()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Lfu0;

    iget-boolean v0, v0, Lfu0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcv0;->p(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 6
    iget-object v0, v0, Lcv0;->k:Lde3;

    .line 7
    invoke-virtual {v0, v1}, Lde3;->g(Z)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Lhu0;

    invoke-virtual {v0}, Lhu0;->b()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->f:Lju0;

    .line 10
    iput-boolean v1, v0, Lju0;->d:Z

    .line 11
    invoke-virtual {v0}, Lju0;->b()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->e:Lzt0;

    .line 13
    iput-boolean v1, v0, Lzt0;->c:Z

    .line 14
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Lsu0;

    invoke-direct {v1, p0}, Lsu0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 15
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->u:Z

    return-void
.end method

.method public final g(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->v:I

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->w:I

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcv;->F(II)V

    return-void
.end method

.method public final getCurrentPosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 3
    iget-object v0, v0, Lcv0;->k:Lde3;

    .line 4
    invoke-virtual {v0}, Lde3;->e()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 3
    iget-object v0, v0, Lcv0;->k:Lde3;

    .line 4
    invoke-virtual {v0}, Lde3;->b()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getTotalBytes()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcv0;->k()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->w:I

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->v:I

    return v0
.end method

.method public final h(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 3
    iget-object v0, v0, Lcv0;->k:Lde3;

    int-to-long v1, p1

    .line 4
    invoke-virtual {v0}, Lde3;->f()I

    move-result p1

    if-ltz p1, :cond_4

    .line 5
    iget-object v3, v0, Lde3;->o:Lse3;

    invoke-virtual {v3}, Lse3;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lde3;->o:Lse3;

    invoke-virtual {v3}, Lse3;->g()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 6
    :cond_0
    iget v3, v0, Lde3;->l:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lde3;->l:I

    .line 7
    iput p1, v0, Lde3;->u:I

    .line 8
    iget-object v3, v0, Lde3;->o:Lse3;

    invoke-virtual {v3}, Lse3;->a()Z

    move-result v3

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v3, :cond_2

    .line 9
    iget-object v3, v0, Lde3;->o:Lse3;

    iget-object v8, v0, Lde3;->g:Lte3;

    .line 10
    invoke-virtual {v3, p1, v8}, Lse3;->c(ILte3;)Lte3;

    cmp-long v3, v1, v6

    if-nez v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v1, v2}, Lzd3;->b(J)J

    .line 12
    :goto_0
    iget-object v3, v0, Lde3;->o:Lse3;

    iget-object v8, v0, Lde3;->h:Lue3;

    const/4 v9, 0x0

    .line 13
    invoke-virtual {v3, v9, v8, v9}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object v3

    .line 14
    iget-wide v8, v3, Lue3;->c:J

    cmp-long v3, v8, v6

    :cond_2
    const/4 v3, 0x3

    cmp-long v8, v1, v6

    if-nez v8, :cond_3

    .line 15
    iput-wide v4, v0, Lde3;->v:J

    .line 16
    iget-object v1, v0, Lde3;->e:Lee3;

    iget-object v0, v0, Lde3;->o:Lse3;

    .line 17
    iget-object v1, v1, Lee3;->j:Landroid/os/Handler;

    new-instance v2, Lje3;

    invoke-direct {v2, v0, p1, v6, v7}, Lje3;-><init>(Lse3;IJ)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 19
    :cond_3
    iput-wide v1, v0, Lde3;->v:J

    .line 20
    iget-object v4, v0, Lde3;->e:Lee3;

    iget-object v5, v0, Lde3;->o:Lse3;

    invoke-static {v1, v2}, Lzd3;->b(J)J

    move-result-wide v1

    .line 21
    iget-object v4, v4, Lee3;->j:Landroid/os/Handler;

    new-instance v6, Lje3;

    invoke-direct {v6, v5, p1, v1, v2}, Lje3;-><init>(Lse3;IJ)V

    invoke-virtual {v4, v3, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 23
    iget-object p1, v0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae3;

    .line 24
    invoke-interface {v0}, Lae3;->j()V

    goto :goto_1

    .line 25
    :cond_4
    new-instance v3, Lle3;

    iget-object v0, v0, Lde3;->o:Lse3;

    invoke-direct {v3, v0, p1, v1, v2}, Lle3;-><init>(Lse3;IJ)V

    throw v3

    :cond_5
    :goto_2
    return-void
.end method

.method public final i(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->q:I

    if-eq v0, p1, :cond_3

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->q:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Lfu0;

    iget-boolean p1, p1, Lfu0;->a:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->E()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Lhu0;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lhu0;->m:Z

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbz;->f:Lju0;

    invoke-virtual {p1}, Lju0;->a()V

    .line 8
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v0, Lmu0;

    invoke-direct {v0, p0}, Lmu0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->D()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 3
    iget-object v0, v0, Lcv0;->k:Lde3;

    .line 4
    iget-object v0, v0, Lde3;->e:Lee3;

    .line 5
    iget-object v0, v0, Lee3;->j:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzbcv;->y(Landroid/view/Surface;Z)V

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v3, :cond_0

    .line 9
    iput-object v0, v3, Lcv0;->o:Lmv0;

    .line 10
    invoke-virtual {v3}, Lcv0;->l()V

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    .line 12
    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->q:I

    .line 13
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->p:Z

    .line 14
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->t:Z

    .line 15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->u:Z

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Lhu0;

    .line 17
    iput-boolean v1, v0, Lhu0;->m:Z

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->f:Lju0;

    invoke-virtual {v0}, Lju0;->a()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Lhu0;

    invoke-virtual {v0}, Lhu0;->a()V

    return-void
.end method

.method public final k(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:Lgu0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lgu0;->e(FF)V

    :cond_0
    return-void
.end method

.method public final l(Lrt0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->k:Lrt0;

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    const-string v0, "ExoPlayer/3"

    .line 1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->s:Z

    if-eqz v1, :cond_0

    const-string v1, " spherical"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final n()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcv0;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget v0, v0, Lcv0;->p:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcv0;->q:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->x:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:Lgu0;

    if-nez v1, :cond_1

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v2, v1, v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    div-float/2addr v1, v0

    float-to-int p2, v1

    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    int-to-float p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:Lgu0;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1, p2}, Lgu0;->i(II)V

    :cond_2
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->s:Z

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lgu0;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lgu0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:Lgu0;

    .line 3
    iput p2, v0, Lgu0;->q:I

    .line 4
    iput p3, v0, Lgu0;->p:I

    .line 5
    iput-object p1, v0, Lgu0;->s:Landroid/graphics/SurfaceTexture;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:Lgu0;

    .line 8
    iget-object v1, v0, Lgu0;->s:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    iget-object v1, v0, Lgu0;->x:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    iget-object v0, v0, Lgu0;->r:Landroid/graphics/SurfaceTexture;

    :goto_0
    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:Lgu0;

    invoke-virtual {v0}, Lgu0;->c()V

    .line 12
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:Lgu0;

    .line 13
    :cond_2
    :goto_1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->l:Landroid/view/Surface;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-nez p1, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->C()V

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbcv;->y(Landroid/view/Surface;Z)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->j:Lfu0;

    iget-boolean v0, v0, Lfu0;->a:Z

    if-nez v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0, p1}, Lcv0;->p(Z)V

    .line 21
    :cond_4
    :goto_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->v:I

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->w:I

    if-nez v0, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbcv;->F(II)V

    goto :goto_4

    .line 23
    :cond_6
    :goto_3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbcv;->F(II)V

    .line 24
    :goto_4
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance p2, Luu0;

    invoke-direct {p2, p0}, Luu0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->e()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:Lgu0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lgu0;->c()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:Lgu0;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->E()V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->l:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 9
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->l:Landroid/view/Surface;

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbcv;->y(Landroid/view/Surface;Z)V

    .line 11
    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v0, Lwu0;

    invoke-direct {v0, p0}, Lwu0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->r:Lgu0;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3}, Lgu0;->i(II)V

    .line 3
    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v0, Ltu0;

    invoke-direct {v0, p0, p2, p3}, Ltu0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->h:Lhu0;

    invoke-virtual {v0, p0}, Lhu0;->d(Lcom/google/android/gms/internal/ads/zzbbz;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->e:Lzt0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->k:Lrt0;

    invoke-virtual {v0, p1, v1}, Lzt0;->a(Landroid/graphics/SurfaceTexture;Lrt0;)V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Lvu0;

    invoke-direct {v1, p0, p1}, Lvu0;-><init>(Lcom/google/android/gms/internal/ads/zzbcv;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final p(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcv;->setVideoPath(Ljava/lang/String;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Ljava/lang/String;

    .line 3
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->o:[Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->C()V

    :cond_1
    return-void
.end method

.method public final q(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcv0;->f:Ldv0;

    .line 3
    monitor-enter v0

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 4
    :try_start_0
    iput-wide v1, v0, Ldv0;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final r(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcv0;->f:Ldv0;

    .line 3
    monitor-enter v0

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 4
    :try_start_0
    iput-wide v1, v0, Ldv0;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final s(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcv0;->f:Ldv0;

    .line 3
    monitor-enter v0

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 4
    :try_start_0
    iput-wide v1, v0, Ldv0;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->n:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->o:[Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcv;->C()V

    :cond_0
    return-void
.end method

.method public final t(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcv0;->f:Ldv0;

    .line 3
    monitor-enter v0

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 4
    :try_start_0
    iput-wide v1, v0, Ldv0;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final u(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcv0;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxu0;

    if-eqz v1, :cond_0

    .line 4
    iput p1, v1, Lxu0;->o:I

    .line 5
    iget-object v2, v1, Lxu0;->p:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Socket;

    .line 6
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    :try_start_0
    iget v4, v1, Lxu0;->o:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to update receive buffer size."

    .line 8
    invoke-static {v4, v3}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final v()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcv0;->q()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final x(FZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, v0, Lcv0;->k:Lde3;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lbe3;

    iget-object v2, v0, Lcv0;->h:Loe3;

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lbe3;-><init>(Lce3;ILjava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, v0, Lcv0;->k:Lde3;

    new-array v0, v2, [Lbe3;

    aput-object v1, v0, p1

    invoke-virtual {p2, v0}, Lde3;->d([Lbe3;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, v0, Lcv0;->k:Lde3;

    new-array v0, v2, [Lbe3;

    aput-object v1, v0, p1

    invoke-virtual {p2, v0}, Lde3;->c([Lbe3;)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "Trying to set volume before player is initalized."

    .line 6
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void
.end method

.method public final y(Landroid/view/Surface;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->m:Lcv0;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, v0, Lcv0;->k:Lde3;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Lbe3;

    iget-object v0, v0, Lcv0;->g:Loe3;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, p1}, Lbe3;-><init>(Lce3;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    new-array p2, v3, [Lbe3;

    aput-object v2, p2, p1

    .line 4
    invoke-virtual {v1, p2}, Lde3;->d([Lbe3;)V

    goto :goto_0

    :cond_1
    new-array p2, v3, [Lbe3;

    aput-object v2, p2, p1

    .line 5
    invoke-virtual {v1, p2}, Lde3;->c([Lbe3;)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "Trying to set surface before player is initalized."

    .line 6
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Liu0;

    .line 2
    invoke-interface {v1}, Liu0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Liu0;

    invoke-interface {v2}, Liu0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
