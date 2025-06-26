.class public final Lcv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lae3;
.implements Lze3;
.implements Lti3;
.implements Lsk3;
.implements Lsl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae3;",
        "Lze3;",
        "Lti3;",
        "Lsk3<",
        "Lek3;",
        ">;",
        "Lsl3;"
    }
.end annotation


# static fields
.field public static x:I

.field public static y:I


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Ldv0;

.field public final g:Loe3;

.field public final h:Loe3;

.field public final i:Luj3;

.field public final j:Lfu0;

.field public k:Lde3;

.field public l:Ljava/nio/ByteBuffer;

.field public m:Z

.field public final n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Liu0;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lmv0;

.field public p:I

.field public q:I

.field public r:J

.field public final s:Ljava/lang/String;

.field public final t:I

.field public final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkk3;",
            ">;"
        }
    .end annotation
.end field

.field public volatile v:Lzu0;

.field public w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lxu0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfu0;Liu0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcv0;->w:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lcv0;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcv0;->j:Lfu0;

    .line 5
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcv0;->n:Ljava/lang/ref/WeakReference;

    .line 6
    new-instance p2, Ldv0;

    invoke-direct {p2}, Ldv0;-><init>()V

    iput-object p2, p0, Lcv0;->f:Ldv0;

    .line 7
    new-instance v0, Lml3;

    sget-object v1, Lwh3;->a:Lwh3;

    sget-object v2, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    invoke-direct {v0, p1, v1, v2, p0}, Lml3;-><init>(Landroid/content/Context;Lwh3;Landroid/os/Handler;Lsl3;)V

    .line 8
    iput-object v0, p0, Lcv0;->g:Loe3;

    .line 9
    new-instance p1, Lpf3;

    invoke-direct {p1, v1, v2, p0}, Lpf3;-><init>(Lwh3;Landroid/os/Handler;Lze3;)V

    .line 10
    iput-object p1, p0, Lcv0;->h:Loe3;

    .line 11
    new-instance v1, Ltj3;

    invoke-direct {v1}, Ltj3;-><init>()V

    .line 12
    iput-object v1, p0, Lcv0;->i:Luj3;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyz()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ExoPlayerAdapter initialize "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 15
    :cond_0
    sget v2, Lcv0;->x:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcv0;->x:I

    const/4 v2, 0x2

    new-array v2, v2, [Loe3;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    aput-object v0, v2, v3

    .line 16
    new-instance p1, Lde3;

    invoke-direct {p1, v2, v1, p2}, Lde3;-><init>([Loe3;Lzj3;Ldv0;)V

    .line 17
    iput-object p1, p0, Lcv0;->k:Lde3;

    .line 18
    iget-object p1, p1, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 19
    iput v4, p0, Lcv0;->p:I

    const-wide/16 p1, 0x0

    .line 20
    iput-wide p1, p0, Lcv0;->r:J

    .line 21
    iput v4, p0, Lcv0;->q:I

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcv0;->u:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcv0;->v:Lzu0;

    if-eqz p3, :cond_1

    .line 24
    invoke-interface {p3}, Liu0;->t0()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Liu0;->t0()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcv0;->s:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 25
    invoke-interface {p3}, Liu0;->O()I

    move-result v4

    :cond_2
    iput v4, p0, Lcv0;->t:I

    .line 26
    sget-object p1, Ly40;->l:Lo40;

    .line 27
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 28
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    iget-object p1, p0, Lcv0;->k:Lde3;

    .line 31
    iget-object p1, p1, Lde3;->e:Lee3;

    .line 32
    iput-boolean v3, p1, Lee3;->L:Z

    :cond_3
    if-eqz p3, :cond_4

    .line 33
    invoke-interface {p3}, Liu0;->C()I

    move-result p1

    if-lez p1, :cond_4

    .line 34
    iget-object p1, p0, Lcv0;->k:Lde3;

    invoke-interface {p3}, Liu0;->C()I

    move-result p2

    .line 35
    iget-object p1, p1, Lde3;->e:Lee3;

    .line 36
    iput p2, p1, Lee3;->M:I

    :cond_4
    if-eqz p3, :cond_5

    .line 37
    invoke-interface {p3}, Liu0;->M()I

    move-result p1

    if-lez p1, :cond_5

    .line 38
    iget-object p1, p0, Lcv0;->k:Lde3;

    invoke-interface {p3}, Liu0;->M()I

    move-result p2

    .line 39
    iget-object p1, p1, Lde3;->e:Lee3;

    .line 40
    iput p2, p1, Lee3;->N:I

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Lpe3;)V
    .locals 0

    return-void
.end method

.method public final b(Lse3;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final c(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcv0;->o:Lmv0;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lmv0;->i(I)V

    :cond_0
    return-void
.end method

.method public final d(Lnj3;Lak3;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final f(Ljava/lang/Object;Ljk3;)V
    .locals 2

    .line 1
    check-cast p1, Lek3;

    .line 2
    instance-of p2, p1, Lkk3;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcv0;->u:Ljava/util/ArrayList;

    check-cast p1, Lkk3;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    instance-of p2, p1, Lzu0;

    if-eqz p2, :cond_1

    .line 5
    check-cast p1, Lzu0;

    iput-object p1, p0, Lcv0;->v:Lzu0;

    .line 6
    iget-object p1, p0, Lcv0;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Liu0;

    .line 7
    sget-object p2, Ly40;->l1:Lo40;

    .line 8
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 9
    invoke-virtual {v0, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcv0;->v:Lzu0;

    .line 11
    iget-boolean p2, p2, Lzu0;->l:Z

    if-eqz p2, :cond_1

    .line 12
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 13
    iget-object v0, p0, Lcv0;->v:Lzu0;

    .line 14
    iget-boolean v0, v0, Lzu0;->n:Z

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcacheHit"

    .line 16
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcv0;->v:Lzu0;

    .line 18
    iget-boolean v0, v0, Lzu0;->o:Z

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcacheDownloaded"

    .line 20
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Lfv0;

    invoke-direct {v1, p1, p2}, Lfv0;-><init>(Liu0;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget v0, Lcv0;->x:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcv0;->x:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ExoPlayerAdapter finalize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final g(Lyd3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcv0;->o:Lmv0;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerError"

    .line 2
    invoke-interface {v0, v1, p1}, Lmv0;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iget p1, p0, Lcv0;->p:I

    add-int/2addr p1, p2

    iput p1, p0, Lcv0;->p:I

    return-void
.end method

.method public final i(Z)V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k()J
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcv0;->n()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    :goto_0
    iget-object v0, p0, Lcv0;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3
    iget-wide v0, p0, Lcv0;->r:J

    iget-object v2, p0, Lcv0;->u:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkk3;

    invoke-interface {v2}, Lkk3;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 5
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    .line 6
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "content-length"

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v7, 0xe

    if-ne v5, v6, :cond_1

    goto :goto_4

    .line 8
    :cond_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v7, v8, :cond_2

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    .line 9
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 10
    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_4

    or-int/lit8 v9, v9, 0x20

    add-int/lit8 v9, v9, -0x61

    int-to-char v9, v9

    const/16 v11, 0x1a

    if-ge v9, v11, :cond_3

    or-int/lit8 v10, v10, 0x20

    add-int/lit8 v10, v10, -0x61

    int-to-char v10, v10

    if-eq v9, v10, :cond_4

    :cond_3
    :goto_3
    const/4 v5, 0x0

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_0

    .line 11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 12
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    nop

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x0

    :goto_6
    add-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcv0;->r:J

    goto/16 :goto_0

    .line 14
    :cond_7
    iget-wide v0, p0, Lcv0;->r:J

    return-wide v0

    .line 15
    :cond_8
    iget-object v0, p0, Lcv0;->v:Lzu0;

    .line 16
    iget-object v1, v0, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    const-wide/16 v2, -0x1

    if-nez v1, :cond_9

    goto :goto_7

    .line 17
    :cond_9
    iget-object v1, v0, Lzu0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_a

    .line 18
    iget-object v0, v0, Lzu0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    goto :goto_7

    .line 19
    :cond_a
    monitor-enter v0

    .line 20
    :try_start_1
    iget-object v1, v0, Lzu0;->q:Law2;

    if-nez v1, :cond_b

    .line 21
    sget-object v1, Lms0;->a:Lzv2;

    new-instance v4, Lbv0;

    invoke-direct {v4, v0}, Lbv0;-><init>(Lzu0;)V

    .line 22
    invoke-interface {v1, v4}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v1

    iput-object v1, v0, Lzu0;->q:Law2;

    .line 23
    :cond_b
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    iget-object v1, v0, Lzu0;->q:Law2;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    .line 25
    :cond_c
    :try_start_2
    iget-object v1, v0, Lzu0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, v0, Lzu0;->q:Law2;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 26
    iget-object v0, v0, Lzu0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    :catch_1
    :goto_7
    return-wide v2

    :catchall_0
    move-exception v1

    .line 27
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcv0;->k:Lde3;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcv0;->k:Lde3;

    .line 4
    iget-object v1, v0, Lde3;->e:Lee3;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, v1, Lee3;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 7
    monitor-exit v1

    goto :goto_1

    .line 8
    :cond_0
    :try_start_1
    iget-object v2, v1, Lee3;->j:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    :goto_0
    iget-boolean v2, v1, Lee3;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 11
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v2, v1, Lee3;->k:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    monitor-exit v1

    .line 14
    :goto_1
    iget-object v0, v0, Lde3;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    iput-object v1, p0, Lcv0;->k:Lde3;

    .line 16
    sget v0, Lcv0;->y:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcv0;->y:I

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit v1

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public final m([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcv0;->k:Lde3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p3, p0, Lcv0;->l:Ljava/nio/ByteBuffer;

    .line 3
    iput-boolean p4, p0, Lcv0;->m:Z

    .line 4
    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 5
    aget-object p1, p1, p4

    invoke-virtual {p0, p1, p2}, Lcv0;->o(Landroid/net/Uri;Ljava/lang/String;)Lzi3;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_1
    array-length p3, p1

    new-array p3, p3, [Lzi3;

    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 8
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lcv0;->o(Landroid/net/Uri;Ljava/lang/String;)Lzi3;

    move-result-object v2

    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Laj3;

    invoke-direct {p1, p3}, Laj3;-><init>([Lzi3;)V

    .line 10
    :goto_1
    iget-object p2, p0, Lcv0;->k:Lde3;

    .line 11
    iget-object p3, p2, Lde3;->o:Lse3;

    invoke-virtual {p3}, Lse3;->a()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    iget-object p3, p2, Lde3;->p:Ljava/lang/Object;

    if-eqz p3, :cond_4

    .line 12
    :cond_3
    sget-object p3, Lse3;->a:Lse3;

    iput-object p3, p2, Lde3;->o:Lse3;

    .line 13
    iput-object v1, p2, Lde3;->p:Ljava/lang/Object;

    .line 14
    iget-object p3, p2, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae3;

    .line 15
    iget-object v3, p2, Lde3;->o:Lse3;

    iget-object v4, p2, Lde3;->p:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lae3;->b(Lse3;Ljava/lang/Object;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-boolean p3, p2, Lde3;->i:Z

    if-eqz p3, :cond_5

    .line 17
    iput-boolean p4, p2, Lde3;->i:Z

    .line 18
    sget-object p3, Lnj3;->d:Lnj3;

    iput-object p3, p2, Lde3;->q:Lnj3;

    .line 19
    iget-object p3, p2, Lde3;->c:Lak3;

    iput-object p3, p2, Lde3;->r:Lak3;

    .line 20
    iget-object p3, p2, Lde3;->b:Lzj3;

    invoke-virtual {p3, v1}, Lzj3;->b(Ljava/lang/Object;)V

    .line 21
    iget-object p3, p2, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae3;

    .line 22
    iget-object v2, p2, Lde3;->q:Lnj3;

    iget-object v3, p2, Lde3;->r:Lak3;

    invoke-interface {v1, v2, v3}, Lae3;->d(Lnj3;Lak3;)V

    goto :goto_3

    .line 23
    :cond_5
    iget p3, p2, Lde3;->m:I

    add-int/2addr p3, v0

    iput p3, p2, Lde3;->m:I

    .line 24
    iget-object p2, p2, Lde3;->e:Lee3;

    .line 25
    iget-object p2, p2, Lee3;->j:Landroid/os/Handler;

    invoke-virtual {p2, p4, v0, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 27
    sget p1, Lcv0;->y:I

    add-int/2addr p1, v0

    sput p1, Lcv0;->y:I

    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcv0;->v:Lzu0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv0;->v:Lzu0;

    .line 2
    iget-boolean v0, v0, Lzu0;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o(Landroid/net/Uri;Ljava/lang/String;)Lzi3;
    .locals 9

    .line 1
    new-instance v8, Lvi3;

    .line 2
    iget-boolean v0, p0, Lcv0;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv0;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object p2, p0, Lcv0;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    .line 4
    iget-object v0, p0, Lcv0;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    new-instance v0, Lev0;

    invoke-direct {v0, p2}, Lev0;-><init>([B)V

    :goto_0
    move-object v2, v0

    goto :goto_3

    .line 6
    :cond_0
    sget-object v0, Ly40;->n1:Lo40;

    .line 7
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ly40;->l1:Lo40;

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

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcv0;->j:Lfu0;

    iget-boolean v0, v0, Lfu0;->i:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 13
    :goto_1
    iget-object v1, p0, Lcv0;->j:Lfu0;

    iget v2, v1, Lfu0;->h:I

    if-lez v2, :cond_4

    .line 14
    new-instance v2, Lhv0;

    invoke-direct {v2, p0, p2, v0}, Lhv0;-><init>(Lcv0;Ljava/lang/String;Z)V

    goto :goto_2

    .line 15
    :cond_4
    new-instance v2, Lgv0;

    invoke-direct {v2, p0, p2, v0}, Lgv0;-><init>(Lcv0;Ljava/lang/String;Z)V

    .line 16
    :goto_2
    iget-boolean p2, v1, Lfu0;->i:Z

    if-eqz p2, :cond_5

    .line 17
    new-instance p2, Ljv0;

    invoke-direct {p2, p0, v2}, Ljv0;-><init>(Lcv0;Lhk3;)V

    move-object v2, p2

    .line 18
    :cond_5
    iget-object p2, p0, Lcv0;->l:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    if-lez p2, :cond_6

    .line 19
    iget-object p2, p0, Lcv0;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    .line 20
    iget-object v0, p0, Lcv0;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 21
    new-instance v0, Liv0;

    invoke-direct {v0, v2, p2}, Liv0;-><init>(Lhk3;[B)V

    goto :goto_0

    .line 22
    :cond_6
    :goto_3
    sget-object p2, Ly40;->k:Lo40;

    .line 23
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 24
    invoke-virtual {v0, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 25
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 26
    sget-object p2, Llv0;->a:Ljg3;

    goto :goto_4

    .line 27
    :cond_7
    sget-object p2, Lkv0;->a:Ljg3;

    :goto_4
    move-object v3, p2

    .line 28
    iget-object p2, p0, Lcv0;->j:Lfu0;

    iget v4, p2, Lfu0;->j:I

    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    iget v7, p2, Lfu0;->f:I

    move-object v0, v8

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lvi3;-><init>(Landroid/net/Uri;Lhk3;Ljg3;ILandroid/os/Handler;Lti3;I)V

    return-object v8
.end method

.method public final p(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcv0;->k:Lde3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcv0;->k:Lde3;

    .line 3
    iget-object v1, v1, Lde3;->a:[Loe3;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 4
    iget-object v1, p0, Lcv0;->i:Luj3;

    xor-int/lit8 v2, p1, 0x1

    .line 5
    iget-object v3, v1, Luj3;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v3, v1, Luj3;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7
    iget-object v1, v1, Lzj3;->a:Lck3;

    if-eqz v1, :cond_2

    .line 8
    check-cast v1, Lee3;

    .line 9
    iget-object v1, v1, Lee3;->j:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final q()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcv0;->n()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcv0;->v:Lzu0;

    .line 3
    iget-boolean v0, v0, Lzu0;->n:Z

    if-nez v0, :cond_1

    return-wide v1

    .line 4
    :cond_1
    iget v0, p0, Lcv0;->p:I

    int-to-long v0, v0

    .line 5
    iget-object v2, p0, Lcv0;->v:Lzu0;

    .line 6
    iget-wide v2, v2, Lzu0;->p:J

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method
