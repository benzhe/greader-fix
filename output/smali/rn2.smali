.class public final Lrn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws2;


# static fields
.field public static q:Lrn2;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lbs2;

.field public final g:Les2;

.field public final h:Lhs2;

.field public final i:Lsb3;

.field public final j:Lpq2;

.field public final k:Ljava/util/concurrent/Executor;

.field public final l:Lkd3;

.field public final m:Ltp2;

.field public volatile n:J

.field public final o:Ljava/lang/Object;

.field public volatile p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpq2;Lbs2;Les2;Lhs2;Lsb3;Ljava/util/concurrent/Executor;Loq2;Lkd3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lrn2;->n:J

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrn2;->o:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lrn2;->e:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lrn2;->j:Lpq2;

    .line 6
    iput-object p3, p0, Lrn2;->f:Lbs2;

    .line 7
    iput-object p4, p0, Lrn2;->g:Les2;

    .line 8
    iput-object p5, p0, Lrn2;->h:Lhs2;

    .line 9
    iput-object p6, p0, Lrn2;->i:Lsb3;

    .line 10
    iput-object p7, p0, Lrn2;->k:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p9, p0, Lrn2;->l:Lkd3;

    .line 12
    new-instance p1, Ltp2;

    invoke-direct {p1, p8}, Ltp2;-><init>(Loq2;)V

    iput-object p1, p0, Lrn2;->m:Ltp2;

    return-void
.end method

.method public static a(Landroid/content/Context;Lpq2;Lsq2;Ljava/util/concurrent/Executor;)Lrn2;
    .locals 12

    .line 1
    new-instance v9, Lcr2;

    new-instance v5, Lgr2;

    invoke-direct {v5}, Lgr2;-><init>()V

    new-instance v6, Lfr2;

    invoke-direct {v6}, Lfr2;-><init>()V

    move-object v0, v9

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcr2;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lpq2;Lsq2;Lgr2;Lfr2;)V

    .line 2
    invoke-virtual {p2}, Lsq2;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lbr2;

    invoke-direct {v0, v9}, Lbr2;-><init>(Lcr2;)V

    .line 4
    iget-object v1, v9, Lcr2;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Lc50;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le45;

    move-result-object v0

    iget-object v1, v9, Lcr2;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Ldr2;

    invoke-direct {v2, v9}, Ldr2;-><init>(Lcr2;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Le45;->e(Ljava/util/concurrent/Executor;La45;)Le45;

    .line 6
    iput-object v0, v9, Lcr2;->g:Le45;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v9, Lcr2;->e:Lir2;

    invoke-interface {v0}, Lir2;->b()Lgl1;

    move-result-object v0

    invoke-static {v0}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object v0

    iput-object v0, v9, Lcr2;->g:Le45;

    .line 8
    :goto_0
    new-instance v0, Ler2;

    invoke-direct {v0, v9}, Ler2;-><init>(Lcr2;)V

    .line 9
    iget-object v1, v9, Lcr2;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Lc50;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le45;

    move-result-object v0

    iget-object v1, v9, Lcr2;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Ldr2;

    invoke-direct {v2, v9}, Ldr2;-><init>(Lcr2;)V

    .line 10
    invoke-virtual {v0, v1, v2}, Le45;->e(Ljava/util/concurrent/Executor;La45;)Le45;

    .line 11
    iput-object v0, v9, Lcr2;->h:Le45;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v1, Ldc3;

    invoke-direct {v1, p0, v0}, Ldc3;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfa;)V

    .line 14
    new-instance v6, Lsb3;

    invoke-direct {v6, p2, v9, v1, v0}, Lsb3;-><init>(Lsq2;Lcr2;Ldc3;Lcom/google/android/gms/internal/ads/zzfa;)V

    .line 15
    new-instance v0, Lrr2;

    invoke-direct {v0, p0, p1}, Lrr2;-><init>(Landroid/content/Context;Lpq2;)V

    .line 16
    invoke-virtual {v0}, Lrr2;->b()Lkd3;

    move-result-object v9

    .line 17
    new-instance v10, Loq2;

    invoke-direct {v10}, Loq2;-><init>()V

    .line 18
    new-instance v11, Lrn2;

    new-instance v3, Lbs2;

    invoke-direct {v3, p0, v9}, Lbs2;-><init>(Landroid/content/Context;Lkd3;)V

    new-instance v4, Les2;

    new-instance v0, Ltm2;

    invoke-direct {v0, p1}, Ltm2;-><init>(Lpq2;)V

    sget-object v1, Ly40;->s1:Lo40;

    .line 19
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 20
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v4, p0, v9, v0, v1}, Les2;-><init>(Landroid/content/Context;Lkd3;Lsr2;Z)V

    new-instance v5, Lhs2;

    invoke-direct {v5, p0, v6, p1, v10}, Lhs2;-><init>(Landroid/content/Context;Lgs2;Lpq2;Loq2;)V

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v7, p3

    move-object v8, v10

    invoke-direct/range {v0 .. v9}, Lrn2;-><init>(Landroid/content/Context;Lpq2;Lbs2;Les2;Lhs2;Lsb3;Ljava/util/concurrent/Executor;Loq2;Lkd3;)V

    return-object v11
.end method

.method public static declared-synchronized b(Ljava/lang/String;Landroid/content/Context;Z)Lrn2;
    .locals 4

    const-class v0, Lrn2;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lrn2;->q:Lrn2;

    if-nez v1, :cond_4

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "Null clientVersion"

    .line 3
    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, ""

    if-nez p2, :cond_0

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " shouldGetAdvertisingId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v1, :cond_1

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " isGooglePlayServicesAvailable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required properties:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance v1, Luq2;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11
    invoke-direct {v1, p0, p2, v2, v3}, Luq2;-><init>(Ljava/lang/String;ZZLwq2;)V

    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    .line 13
    invoke-static {p1, p0}, Lpq2;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lpq2;

    move-result-object p2

    .line 14
    invoke-static {p1, p2, v1, p0}, Lrn2;->a(Landroid/content/Context;Lpq2;Lsq2;Ljava/util/concurrent/Executor;)Lrn2;

    move-result-object p0

    .line 15
    sput-object p0, Lrn2;->q:Lrn2;

    invoke-virtual {p0}, Lrn2;->c()V

    .line 16
    sget-object p0, Lrn2;->q:Lrn2;

    invoke-virtual {p0}, Lrn2;->d()V

    .line 17
    :cond_4
    sget-object p0, Lrn2;->q:Lrn2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e(Lrn2;)V
    .locals 11

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v2}, Lrn2;->f(I)Lzr2;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, v3, Lzr2;->a:Lpd3;

    .line 5
    invoke-virtual {v4}, Lpd3;->E()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v3, v3, Lzr2;->a:Lpd3;

    .line 7
    invoke-virtual {v3}, Lpd3;->F()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move-object v7, v4

    goto :goto_0

    :cond_0
    move-object v7, v4

    move-object v8, v7

    .line 8
    :goto_0
    :try_start_0
    iget-object v5, p0, Lrn2;->e:Landroid/content/Context;

    iget-object v6, p0, Lrn2;->l:Lkd3;

    const-string v9, "1"

    iget-object v10, p0, Lrn2;->j:Lpq2;

    invoke-static/range {v5 .. v10}, Lc50;->s1(Landroid/content/Context;Lkd3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lpq2;)Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v3

    .line 9
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzdwt;->f:[B

    if-eqz v4, :cond_c

    array-length v5, v4
    :try_end_0
    .catch Le73; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 10
    :cond_1
    :try_start_1
    invoke-static {v4}, Lk53;->O([B)Lk53;

    move-result-object v4

    .line 11
    invoke-static {}, Le63;->a()Le63;

    move-result-object v5

    .line 12
    invoke-static {v4, v5}, Lmd3;->x(Lk53;Le63;)Lmd3;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Le73; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    :try_start_2
    invoke-virtual {v4}, Lmd3;->y()Lpd3;

    move-result-object v5

    invoke-virtual {v5}, Lpd3;->E()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_6

    .line 14
    invoke-virtual {v4}, Lmd3;->y()Lpd3;

    move-result-object v5

    invoke-virtual {v5}, Lpd3;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 15
    invoke-virtual {v4}, Lmd3;->A()Lk53;

    move-result-object v5

    invoke-virtual {v5}, Lk53;->d()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p0, v2}, Lrn2;->f(I)Lzr2;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    iget-object v5, v5, Lzr2;->a:Lpd3;

    if-nez v5, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v4}, Lmd3;->y()Lpd3;

    move-result-object v7

    invoke-virtual {v7}, Lpd3;->E()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lpd3;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 19
    invoke-virtual {v4}, Lmd3;->y()Lpd3;

    move-result-object v7

    invoke-virtual {v7}, Lpd3;->F()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lpd3;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    :goto_1
    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_7

    .line 20
    iget-object v2, p0, Lrn2;->j:Lpq2;

    const/16 v3, 0x1392

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 22
    invoke-virtual {v2, v3, v4, v5}, Lpq2;->f(IJ)Le45;

    goto/16 :goto_6

    .line 23
    :cond_7
    iget-object v5, p0, Lrn2;->m:Ltp2;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzdwt;->g:I

    .line 24
    sget-object v7, Ly40;->q1:Lo40;

    .line 25
    sget-object v8, Los3;->j:Los3;

    iget-object v8, v8, Los3;->f:Lu40;

    .line 26
    invoke-virtual {v8, v7}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v7

    .line 27
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x3

    if-ne v3, v7, :cond_8

    .line 28
    iget-object v3, p0, Lrn2;->g:Les2;

    invoke-virtual {v3, v4}, Les2;->b(Lmd3;)Z

    move-result v6

    goto :goto_4

    :cond_8
    const/4 v7, 0x4

    if-ne v3, v7, :cond_a

    .line 29
    iget-object v3, p0, Lrn2;->g:Les2;

    invoke-virtual {v3, v4, v5}, Les2;->c(Lmd3;Ltp2;)Z

    move-result v6

    goto :goto_4

    .line 30
    :cond_9
    iget-object v3, p0, Lrn2;->f:Lbs2;

    invoke-virtual {v3, v4, v5}, Lbs2;->a(Lmd3;Ltp2;)Z

    move-result v6

    :cond_a
    :goto_4
    if-nez v6, :cond_b

    .line 31
    iget-object v2, p0, Lrn2;->j:Lpq2;

    const/16 v3, 0xfa9

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 33
    invoke-virtual {v2, v3, v4, v5}, Lpq2;->f(IJ)Le45;

    goto :goto_6

    .line 34
    :cond_b
    invoke-virtual {p0, v2}, Lrn2;->f(I)Lzr2;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 35
    iget-object v3, p0, Lrn2;->h:Lhs2;

    invoke-virtual {v3, v2}, Lhs2;->d(Lzr2;)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lrn2;->n:J

    goto :goto_6

    .line 37
    :catch_0
    iget-object v2, p0, Lrn2;->j:Lpq2;

    const/16 v3, 0x7ee

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 39
    invoke-virtual {v2, v3, v4, v5}, Lpq2;->f(IJ)Le45;

    goto :goto_6

    .line 40
    :cond_c
    :goto_5
    iget-object v2, p0, Lrn2;->j:Lpq2;

    const/16 v3, 0x1391

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 42
    invoke-virtual {v2, v3, v4, v5}, Lpq2;->f(IJ)Le45;
    :try_end_2
    .catch Le73; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    .line 43
    iget-object p0, p0, Lrn2;->j:Lpq2;

    const/16 v3, 0xfa2

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 45
    invoke-virtual {p0, v3, v4, v5, v2}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    :cond_d
    :goto_6
    return-void
.end method


# virtual methods
.method public final declared-synchronized c()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Lrn2;->f(I)Lzr2;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Lrn2;->h:Lhs2;

    invoke-virtual {v0, v2}, Lhs2;->d(Lzr2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v2, p0, Lrn2;->j:Lpq2;

    const/16 v3, 0xfad

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Lpq2;->f(IJ)Le45;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lrn2;->p:Z

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lrn2;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lrn2;->p:Z

    if-nez v1, :cond_5

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v5, p0, Lrn2;->n:J

    sub-long/2addr v1, v5

    const-wide/16 v5, 0xe10

    cmp-long v7, v1, v5

    if-gez v7, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lrn2;->h:Lhs2;

    .line 7
    iget-object v2, v1, Lhs2;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v1, v1, Lhs2;->e:Las2;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, v1, Las2;->b:Lzr2;

    .line 10
    monitor-exit v2

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 12
    :try_start_2
    iget-object v1, v1, Lzr2;->a:Lpd3;

    invoke-virtual {v1}, Lpd3;->G()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v3

    sub-long/2addr v1, v7

    cmp-long v3, v1, v5

    if-gez v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 13
    :cond_3
    iget-object v1, p0, Lrn2;->l:Lkd3;

    invoke-static {v1}, Lrr2;->a(Lkd3;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    iget-object v1, p0, Lrn2;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lso2;

    invoke-direct {v2, p0}, Lso2;-><init>(Lrn2;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 15
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 16
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_6
    return-void
.end method

.method public final f(I)Lzr2;
    .locals 9

    .line 1
    iget-object v0, p0, Lrn2;->l:Lkd3;

    invoke-static {v0}, Lrr2;->a(Lkd3;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Ly40;->q1:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lrn2;->g:Les2;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 9
    sget-object v4, Les2;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 10
    :try_start_0
    invoke-virtual {v0, p1}, Les2;->g(I)Lpd3;

    move-result-object p1

    if-nez p1, :cond_1

    const/16 p1, 0xfb6

    .line 11
    invoke-virtual {v0, p1, v2, v3}, Les2;->a(IJ)V

    .line 12
    monitor-exit v4

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lpd3;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Les2;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 14
    new-instance v5, Ljava/io/File;

    const-string v6, "pcam.jar"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 16
    new-instance v5, Ljava/io/File;

    const-string v6, "pcam"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    :cond_2
    new-instance v6, Ljava/io/File;

    const-string v7, "pcbc"

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    new-instance v7, Ljava/io/File;

    const-string v8, "pcopt"

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x1398

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Les2;->a(IJ)V

    .line 20
    new-instance v1, Lzr2;

    invoke-direct {v1, p1, v5, v6, v7}, Lzr2;-><init>(Lpd3;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    monitor-exit v4

    :goto_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 22
    :cond_3
    iget-object v0, p0, Lrn2;->f:Lbs2;

    .line 23
    invoke-virtual {v0, p1}, Lbs2;->e(I)Lpd3;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 24
    :cond_4
    invoke-virtual {p1}, Lpd3;->E()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lbs2;->b()Ljava/io/File;

    move-result-object v2

    const-string v3, "pcam.jar"

    invoke-static {v1, v3, v2}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 27
    invoke-virtual {v0}, Lbs2;->b()Ljava/io/File;

    move-result-object v2

    const-string v3, "pcam"

    invoke-static {v1, v3, v2}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 28
    :cond_5
    invoke-virtual {v0}, Lbs2;->b()Ljava/io/File;

    move-result-object v3

    const-string v4, "pcopt"

    invoke-static {v1, v4, v3}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 29
    invoke-virtual {v0}, Lbs2;->b()Ljava/io/File;

    move-result-object v0

    const-string v4, "pcbc"

    invoke-static {v1, v4, v0}, Lc50;->C1(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 30
    new-instance v1, Lzr2;

    invoke-direct {v1, p1, v2, v0, v3}, Lzr2;-><init>(Lpd3;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    :goto_1
    return-object v1
.end method

.method public final zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7

    .line 27
    invoke-virtual {p0}, Lrn2;->d()V

    .line 28
    iget-object v0, p0, Lrn2;->h:Lhs2;

    invoke-virtual {v0}, Lhs2;->c()Lvq2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 30
    check-cast v0, Las2;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v3, v0, Las2;->c:Lgs2;

    check-cast v3, Lsb3;

    .line 33
    invoke-virtual {v3}, Lsb3;->a()Ljava/util/Map;

    move-result-object v3

    const-string v4, "f"

    const-string v5, "v"

    .line 34
    move-object v6, v3

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ctx"

    .line 35
    invoke-virtual {v6, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "aid"

    const/4 v4, 0x0

    .line 36
    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "view"

    .line 37
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "act"

    .line 38
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v0, v3}, Las2;->e(Ljava/util/Map;)[B

    move-result-object p1

    .line 40
    invoke-static {p1}, Las2;->f([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 41
    iget-object p2, p0, Lrn2;->j:Lpq2;

    const/16 p3, 0x138a

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 43
    invoke-virtual {p2, p3, v3, v4, p1}, Lpq2;->d(IJLjava/lang/String;)Le45;

    return-object p1

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v0

    throw p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, p2, p3, v0}, Lrn2;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7

    .line 6
    invoke-virtual {p0}, Lrn2;->d()V

    .line 7
    iget-object v0, p0, Lrn2;->h:Lhs2;

    invoke-virtual {v0}, Lhs2;->c()Lvq2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 9
    check-cast v0, Las2;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v3, v0, Las2;->c:Lgs2;

    check-cast v3, Lsb3;

    .line 12
    invoke-virtual {v3}, Lsb3;->a()Ljava/util/Map;

    move-result-object v4

    .line 13
    iget-object v3, v3, Lsb3;->c:Ldc3;

    invoke-virtual {v3}, Ldc3;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v5, v4

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "lts"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "f"

    const-string v5, "c"

    .line 14
    move-object v6, v4

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ctx"

    .line 15
    invoke-virtual {v6, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cs"

    .line 16
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "aid"

    const/4 p2, 0x0

    .line 17
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "view"

    .line 18
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "act"

    .line 19
    invoke-virtual {v6, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, v4}, Las2;->e(Ljava/util/Map;)[B

    move-result-object p1

    .line 21
    invoke-static {p1}, Las2;->f([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 22
    iget-object p2, p0, Lrn2;->j:Lpq2;

    const/16 p3, 0x1388

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 24
    invoke-virtual {p2, p3, v3, v4, p1}, Lpq2;->d(IJLjava/lang/String;)Le45;

    return-object p1

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0

    throw p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final zza(III)V
    .locals 0

    return-void
.end method

.method public final zza(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrn2;->h:Lhs2;

    invoke-virtual {v0}, Lhs2;->c()Lvq2;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    check-cast v0, Las2;

    invoke-virtual {v0, v1, p1}, Las2;->b(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lfs2; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lrn2;->j:Lpq2;

    .line 4
    iget v1, p1, Lfs2;->e:I

    const-wide/16 v2, -0x1

    .line 5
    invoke-virtual {v0, v1, v2, v3, p1}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    :cond_0
    return-void
.end method

.method public final zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 3
    invoke-virtual {p0}, Lrn2;->d()V

    .line 4
    iget-object v0, p0, Lrn2;->h:Lhs2;

    invoke-virtual {v0}, Lhs2;->c()Lvq2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    check-cast v0, Las2;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v3, v0, Las2;->c:Lgs2;

    check-cast v3, Lsb3;

    invoke-virtual {v3}, Lsb3;->b()Ljava/util/Map;

    move-result-object v3

    const-string v4, "f"

    const-string v5, "q"

    .line 9
    move-object v6, v3

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ctx"

    .line 10
    invoke-virtual {v6, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "aid"

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v3}, Las2;->e(Ljava/util/Map;)[B

    move-result-object p1

    .line 13
    invoke-static {p1}, Las2;->f([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 14
    iget-object v0, p0, Lrn2;->j:Lpq2;

    const/16 v3, 0x1389

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 16
    invoke-virtual {v0, v3, v4, v5, p1}, Lpq2;->d(IJLjava/lang/String;)Le45;

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0

    throw p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final zzb(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrn2;->i:Lsb3;

    .line 2
    iget-object v0, v0, Lsb3;->c:Ldc3;

    invoke-virtual {v0, p1}, Ldc3;->e(Landroid/view/View;)V

    return-void
.end method
