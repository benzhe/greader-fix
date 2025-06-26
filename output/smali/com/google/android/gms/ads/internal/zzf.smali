.class public final Lcom/google/android/gms/ads/internal/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws2;
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lws2;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lws2;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public final i:Z

.field public final j:Z

.field public final k:Ljava/util/concurrent/Executor;

.field public final l:Lpq2;

.field public m:Landroid/content/Context;

.field public final n:Landroid/content/Context;

.field public o:Lcom/google/android/gms/internal/ads/zzbar;

.field public final p:Lcom/google/android/gms/internal/ads/zzbar;

.field public q:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->q:Ljava/util/concurrent/CountDownLatch;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf;->m:Landroid/content/Context;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf;->n:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf;->o:Lcom/google/android/gms/internal/ads/zzbar;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf;->p:Lcom/google/android/gms/internal/ads/zzbar;

    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf;->k:Ljava/util/concurrent/Executor;

    .line 11
    invoke-static {p1, p2}, Lpq2;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lpq2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf;->l:Lpq2;

    .line 12
    sget-object p2, Ly40;->r1:Lo40;

    .line 13
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 14
    invoke-virtual {v0, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Z

    .line 16
    sget-object p2, Ly40;->t1:Lo40;

    .line 17
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 18
    invoke-virtual {v0, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 20
    iput p2, p0, Lcom/google/android/gms/ads/internal/zzf;->h:I

    goto :goto_0

    .line 21
    :cond_0
    iput v1, p0, Lcom/google/android/gms/ads/internal/zzf;->h:I

    .line 22
    :goto_0
    new-instance p2, Lrr2;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->m:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lrr2;-><init>(Landroid/content/Context;Lpq2;)V

    .line 23
    new-instance p1, Lfx;

    invoke-direct {p1, p0}, Lfx;-><init>(Lcom/google/android/gms/ads/internal/zzf;)V

    .line 24
    new-instance v0, Les2;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->m:Landroid/content/Context;

    .line 25
    invoke-virtual {p2}, Lrr2;->b()Lkd3;

    move-result-object p2

    sget-object v3, Ly40;->s1:Lo40;

    .line 26
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 27
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v0, v2, p2, p1, v3}, Les2;-><init>(Landroid/content/Context;Lkd3;Lsr2;Z)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 30
    sget-object v2, Les2;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 31
    :try_start_0
    invoke-virtual {v0, v1}, Les2;->g(I)Lpd3;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v1, 0xfb9

    .line 32
    invoke-virtual {v0, v1, p1, p2}, Les2;->a(IJ)V

    .line 33
    monitor-exit v2

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v3}, Lpd3;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Les2;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 35
    new-instance v4, Ljava/io/File;

    const-string v5, "pcam.jar"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v1, 0xfba

    .line 37
    invoke-virtual {v0, v1, p1, p2}, Les2;->a(IJ)V

    .line 38
    monitor-exit v2

    goto :goto_1

    .line 39
    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v5, "pcbc"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v1, 0xfbb

    .line 41
    invoke-virtual {v0, v1, p1, p2}, Les2;->a(IJ)V

    .line 42
    monitor-exit v2

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v3, 0x139b

    .line 43
    invoke-virtual {v0, v3, p1, p2}, Les2;->a(IJ)V

    .line 44
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzf;->i:Z

    .line 46
    sget-object p1, Ly40;->H1:Lo40;

    .line 47
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 48
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 50
    sget-object p1, Lms0;->a:Lzv2;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 51
    :cond_4
    sget-object p1, Los3;->j:Los3;

    iget-object p1, p1, Los3;->a:Lzr0;

    .line 52
    invoke-static {}, Lzr0;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 53
    sget-object p1, Lms0;->a:Lzv2;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 54
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lws2;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzf;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzf;->h:I

    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lws2;

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lws2;

    return-object v0
.end method

.method public final c()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->a()Lws2;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 5
    aget-object v2, v2, v4

    check-cast v2, Landroid/view/MotionEvent;

    invoke-interface {v0, v2}, Lws2;->zza(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6
    :cond_2
    array-length v3, v2

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    .line 7
    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v4, v2}, Lws2;->zza(III)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final run()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->o:Lcom/google/android/gms/internal/ads/zzbar;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->h:Z

    .line 2
    sget-object v2, Ly40;->F0:Lo40;

    .line 3
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzf;->i:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget v2, p0, Lcom/google/android/gms/ads/internal/zzf;->h:I

    :goto_1
    if-ne v2, v3, :cond_2

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->o:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzf;->m:Landroid/content/Context;

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzf;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzf;->h:I

    .line 10
    invoke-static {v2, v3, v1, v4}, Lfz2;->k(Ljava/lang/String;Landroid/content/Context;ZI)Lfz2;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzf;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    iget v2, p0, Lcom/google/android/gms/ads/internal/zzf;->h:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->k:Ljava/util/concurrent/Executor;

    new-instance v3, Lex;

    invoke-direct {v3, p0, v1}, Lex;-><init>(Lcom/google/android/gms/ads/internal/zzf;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->o:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzf;->m:Landroid/content/Context;

    .line 16
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/zzf;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 17
    invoke-static {v2, v6, v1}, Lrn2;->b(Ljava/lang/String;Landroid/content/Context;Z)Lrn2;

    move-result-object v2

    .line 18
    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzf;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 19
    :try_start_2
    iput v3, p0, Lcom/google/android/gms/ads/internal/zzf;->h:I

    .line 20
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzf;->o:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzf;->m:Landroid/content/Context;

    .line 21
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/zzf;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/google/android/gms/ads/internal/zzf;->h:I

    .line 22
    invoke-static {v3, v6, v1, v7}, Lfz2;->k(Ljava/lang/String;Landroid/content/Context;ZI)Lfz2;

    move-result-object v1

    .line 23
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzf;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->l:Lpq2;

    const/16 v3, 0x7ef

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 26
    invoke-virtual {v1, v3, v6, v7, v2}, Lpq2;->b(IJLjava/lang/Exception;)Le45;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->q:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 28
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->m:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->o:Lcom/google/android/gms/internal/ads/zzbar;

    return-void

    :catchall_0
    move-exception v1

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->q:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->m:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->o:Lcom/google/android/gms/internal/ads/zzbar;

    .line 33
    throw v1
.end method

.method public final zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->a()Lws2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2, p3}, Lws2;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzf;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->q:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Interrupted during GADSignals creation."

    .line 2
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->a()Lws2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->c()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v1

    .line 6
    :goto_1
    invoke-interface {v0, p1, p2, p3, p4}, Lws2;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zza(III)V
    .locals 3

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->a()Lws2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->c()V

    .line 16
    invoke-interface {v0, p1, p2, p3}, Lws2;->zza(III)V

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->e:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Landroid/view/MotionEvent;)V
    .locals 3

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->a()Lws2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->c()V

    .line 12
    invoke-interface {v0, p1}, Lws2;->zza(Landroid/view/MotionEvent;)V

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->e:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->q:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Interrupted during GADSignals creation."

    .line 2
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->a()Lws2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->c()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v1

    .line 6
    :goto_1
    invoke-interface {v0, p1}, Lws2;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zzb(Landroid/view/View;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->a()Lws2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Lws2;->zzb(Landroid/view/View;)V

    :cond_0
    return-void
.end method
