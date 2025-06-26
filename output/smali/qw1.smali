.class public final synthetic Lqw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lvz0;


# direct methods
.method public constructor <init>(Lvz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqw1;->a:Lvz0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lqw1;->a:Lvz0;

    move-object/from16 v2, p1

    check-cast v2, Landroid/os/Bundle;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v3

    .line 4
    new-instance v4, Ldf2;

    .line 5
    new-instance v5, Ljr0;

    invoke-direct {v5}, Ljr0;-><init>()V

    .line 6
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v6

    iget-object v7, v1, Lvz0;->a:Lof2;

    invoke-static {v7}, Lrf2;->a(Lof2;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Ldf2;-><init>(Lgr0;Lzv2;Ljava/lang/String;)V

    .line 7
    iget-object v5, v1, Lvz0;->u:Lpz0;

    .line 8
    iget-object v5, v5, Lpz0;->m:Lmb3;

    .line 9
    invoke-interface {v5}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    new-instance v6, Lec2;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v4, v7, v8, v5}, Lec2;-><init>(Lqd2;JLjava/util/concurrent/ScheduledExecutorService;)V

    .line 11
    new-instance v4, Lnf2;

    .line 12
    new-instance v5, Lal0;

    invoke-direct {v5}, Lal0;-><init>()V

    .line 13
    iget-object v9, v1, Lvz0;->u:Lpz0;

    .line 14
    iget-object v9, v9, Lpz0;->m:Lmb3;

    .line 15
    invoke-interface {v9}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, v1, Lvz0;->u:Lpz0;

    .line 16
    iget-object v10, v10, Lpz0;->b:Lry0;

    .line 17
    invoke-static {v10}, Luy0;->a(Lry0;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v5, v9, v10}, Lnf2;-><init>(Lfl0;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V

    .line 18
    iget-object v5, v1, Lvz0;->u:Lpz0;

    .line 19
    iget-object v5, v5, Lpz0;->m:Lmb3;

    .line 20
    invoke-interface {v5}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    new-instance v9, Lec2;

    sget-object v10, Ly40;->i2:Lo40;

    .line 22
    sget-object v11, Los3;->j:Los3;

    iget-object v11, v11, Los3;->f:Lu40;

    .line 23
    invoke-virtual {v11, v10}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v10

    .line 24
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v4, v10, v11, v5}, Lec2;-><init>(Lqd2;JLjava/util/concurrent/ScheduledExecutorService;)V

    .line 25
    new-instance v4, Lee2;

    .line 26
    new-instance v13, Lir0;

    invoke-direct {v13}, Lir0;-><init>()V

    .line 27
    iget-object v5, v1, Lvz0;->u:Lpz0;

    .line 28
    iget-object v5, v5, Lpz0;->b:Lry0;

    .line 29
    invoke-static {v5}, Luy0;->a(Lry0;)Landroid/content/Context;

    move-result-object v14

    iget-object v5, v1, Lvz0;->u:Lpz0;

    .line 30
    iget-object v5, v5, Lpz0;->m:Lmb3;

    .line 31
    invoke-interface {v5}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v16

    iget-object v5, v1, Lvz0;->a:Lof2;

    .line 32
    iget v5, v5, Lof2;->b:I

    move-object v12, v4

    move/from16 v17, v5

    .line 33
    invoke-direct/range {v12 .. v17}, Lee2;-><init>(Lkr0;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;I)V

    .line 34
    iget-object v5, v1, Lvz0;->u:Lpz0;

    .line 35
    iget-object v5, v5, Lpz0;->m:Lmb3;

    .line 36
    invoke-interface {v5}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    new-instance v10, Lec2;

    invoke-direct {v10, v4, v7, v8, v5}, Lec2;-><init>(Lqd2;JLjava/util/concurrent/ScheduledExecutorService;)V

    .line 38
    new-instance v4, Lxf2;

    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v5

    invoke-direct {v4, v5}, Lxf2;-><init>(Lzv2;)V

    .line 39
    iget-object v5, v1, Lvz0;->u:Lpz0;

    .line 40
    iget-object v5, v5, Lpz0;->m:Lmb3;

    .line 41
    invoke-interface {v5}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    new-instance v11, Lec2;

    invoke-direct {v11, v4, v7, v8, v5}, Lec2;-><init>(Lqd2;JLjava/util/concurrent/ScheduledExecutorService;)V

    .line 43
    sget-object v4, Luf2;->a:Lqd2;

    .line 44
    new-instance v5, Loe2;

    const/4 v7, 0x0

    iget-object v8, v1, Lvz0;->u:Lpz0;

    .line 45
    iget-object v8, v8, Lpz0;->b:Lry0;

    .line 46
    invoke-static {v8}, Luy0;->a(Lry0;)Landroid/content/Context;

    move-result-object v8

    iget-object v12, v1, Lvz0;->a:Lof2;

    invoke-static {v12}, Lrf2;->a(Lof2;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v13

    invoke-direct {v5, v7, v8, v12, v13}, Loe2;-><init>(Lqm0;Landroid/content/Context;Ljava/lang/String;Lzv2;)V

    const/4 v7, 0x5

    new-array v12, v7, [Lqd2;

    const/4 v7, 0x0

    .line 47
    new-instance v8, Lye2;

    .line 48
    new-instance v13, Luo3;

    invoke-direct {v13}, Luo3;-><init>()V

    .line 49
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v14

    iget-object v15, v1, Lvz0;->u:Lpz0;

    .line 50
    iget-object v15, v15, Lpz0;->b:Lry0;

    .line 51
    invoke-static {v15}, Luy0;->a(Lry0;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v8, v13, v14, v15}, Lye2;-><init>(Lpo3;Lzv2;Landroid/content/Context;)V

    aput-object v8, v12, v7

    .line 52
    invoke-virtual {v1}, Lvz0;->a()Lhf2;

    move-result-object v7

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v7, 0x2

    invoke-virtual {v1}, Lvz0;->b()Lje2;

    move-result-object v8

    aput-object v8, v12, v7

    const/4 v7, 0x3

    .line 53
    new-instance v8, Lse2;

    .line 54
    new-instance v15, Lir0;

    invoke-direct {v15}, Lir0;-><init>()V

    .line 55
    iget-object v14, v1, Lvz0;->a:Lof2;

    .line 56
    iget v14, v14, Lof2;->b:I

    .line 57
    iget-object v13, v1, Lvz0;->u:Lpz0;

    .line 58
    iget-object v13, v13, Lpz0;->b:Lry0;

    .line 59
    invoke-static {v13}, Luy0;->a(Lry0;)Landroid/content/Context;

    move-result-object v17

    iget-object v13, v1, Lvz0;->u:Lpz0;

    .line 60
    iget-object v13, v13, Lpz0;->R:Lmb3;

    .line 61
    invoke-interface {v13}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v18, v13

    check-cast v18, Lor0;

    iget-object v13, v1, Lvz0;->u:Lpz0;

    .line 62
    iget-object v13, v13, Lpz0;->m:Lmb3;

    .line 63
    invoke-interface {v13}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v19, v13

    check-cast v19, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v20

    move v13, v14

    move-object v14, v8

    move/from16 v16, v13

    invoke-direct/range {v14 .. v20}, Lse2;-><init>(Lkr0;ILandroid/content/Context;Lor0;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    aput-object v8, v12, v7

    const/4 v7, 0x4

    .line 64
    iget-object v1, v1, Lvz0;->u:Lpz0;

    .line 65
    iget-object v1, v1, Lpz0;->o0:Lmb3;

    .line 66
    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd2;

    aput-object v1, v12, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v12}, Lqt2;->s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lqt2;

    move-result-object v1

    .line 67
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzc(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqd2;

    .line 70
    invoke-interface {v5}, Lqd2;->a()Law2;

    move-result-object v6

    .line 71
    sget-object v7, Lq60;->a:Le60;

    invoke-virtual {v7}, Le60;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v7

    invoke-interface {v7}, Lb20;->b()J

    move-result-wide v7

    .line 73
    new-instance v9, Lsd2;

    invoke-direct {v9, v5, v7, v8}, Lsd2;-><init>(Lqd2;J)V

    .line 74
    sget-object v5, Lms0;->f:Lzv2;

    .line 75
    invoke-interface {v6, v9, v5}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 76
    :cond_0
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v4}, Lnt2;->y(Ljava/lang/Iterable;)Lnt2;

    move-result-object v1

    .line 78
    new-instance v5, Lrd2;

    invoke-direct {v5, v4, v2}, Lrd2;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 79
    new-instance v2, Lgv2;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4, v3, v5}, Lgv2;-><init>(Lit2;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method
