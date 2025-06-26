.class public final Lfz2;
.super Llu2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Llu2;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static k(Ljava/lang/String;Landroid/content/Context;ZI)Lfz2;
    .locals 7

    .line 1
    const-class v0, Llu2;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Llu2;->H:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sput-wide v3, Llu2;->I:J

    .line 4
    invoke-static {p1, p2}, Llu2;->h(Landroid/content/Context;Z)Lxb3;

    move-result-object v1

    sput-object v1, Lis2;->x:Lxb3;

    .line 5
    sput-boolean v2, Llu2;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :cond_0
    monitor-exit v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_1
    sget-object v1, Llu2;->C:Lrn2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 9
    monitor-exit v0

    goto/16 :goto_1

    .line 10
    :cond_1
    :try_start_2
    invoke-static {p3}, Llu2;->j(I)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    .line 11
    monitor-exit v0

    goto :goto_1

    .line 12
    :cond_2
    :try_start_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "Null clientVersion"

    .line 13
    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_3

    .line 15
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " shouldGetAdvertisingId"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-nez v1, :cond_4

    .line 16
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, " isGooglePlayServicesAvailable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required properties:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_6
    new-instance v1, Luq2;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    .line 21
    invoke-direct {v1, p0, v3, v2, v4}, Luq2;-><init>(Ljava/lang/String;ZZLwq2;)V

    .line 22
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 23
    invoke-static {p1, v3}, Lpq2;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lpq2;

    move-result-object v3

    sput-object v3, Llu2;->E:Lpq2;

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 25
    invoke-static {p1, v3, v1, v4}, Lrn2;->a(Landroid/content/Context;Lpq2;Lsq2;Ljava/util/concurrent/Executor;)Lrn2;

    move-result-object v1

    .line 26
    sput-object v1, Llu2;->C:Lrn2;

    .line 27
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 28
    sput-object v1, Llu2;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lmt2;

    invoke-direct {v2}, Lmt2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    monitor-exit v0

    .line 30
    :goto_1
    new-instance v0, Lfz2;

    invoke-direct {v0, p1, p0, p2, p3}, Lfz2;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    .line 32
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final e(Lxb3;Landroid/content/Context;Lgl1$b;Lfh1;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb3;",
            "Landroid/content/Context;",
            "Lgl1$b;",
            "Lfh1;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p4, p1, Lxb3;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 2
    iget-boolean p4, p0, Llu2;->y:Z

    if-nez p4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lxb3;->h()I

    move-result v6

    .line 4
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-super {p0, p1, p2, p3, v0}, Llu2;->e(Lxb3;Landroid/content/Context;Lgl1$b;Lfh1;)Ljava/util/List;

    move-result-object p2

    .line 6
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    new-instance p2, Lqc3;

    const-string v3, "+TO/Mpw5B9Ysegk2ohW075Jqflr1OZ9qfpBhm7dfWn/YVCIrMVqb+Yemq/MJcA7W"

    const-string v4, "NFKeWWLJ9pOo7U7UIrMCAjT+FIdaFD6BH0lqisOKm88="

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    .line 8
    invoke-direct/range {v1 .. v6}, Lqc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 9
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p4

    .line 10
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, v0}, Llu2;->e(Lxb3;Landroid/content/Context;Lgl1$b;Lfh1;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
