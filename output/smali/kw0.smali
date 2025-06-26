.class public final Lkw0;
.super Lzv0;
.source "SourceFile"

# interfaces
.implements Lmv0;


# instance fields
.field public h:Lcv0;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/Exception;

.field public l:Z


# direct methods
.method public constructor <init>(Liu0;Lfu0;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lzv0;-><init>(Liu0;)V

    .line 2
    invoke-interface {p1}, Liu0;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Lcv0;

    iget-object v1, p0, Lzv0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liu0;

    invoke-direct {v0, p1, p2, v1}, Lcv0;-><init>(Landroid/content/Context;Lfu0;Liu0;)V

    .line 4
    iput-object v0, p0, Lkw0;->h:Lcv0;

    .line 5
    iput-object p0, v0, Lcv0;->o:Lmv0;

    return-void
.end method

.method public static t(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
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
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lkw0;->u(Ljava/lang/String;)V

    return-void
.end method

.method public final b(ZJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzv0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liu0;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lms0;->e:Lzv2;

    new-instance v2, Lnw0;

    invoke-direct {v2, v0, p1, p2, p3}, Lnw0;-><init>(Liu0;ZJ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    const-string p1, "Precache exception"

    .line 1
    invoke-static {p1, p2}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    sget-object v0, Ly40;->i:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ","

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "all"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    iput-object p2, p0, Lkw0;->k:Ljava/lang/Exception;

    const-string v0, "Precache error"

    .line 10
    invoke-static {v0, p2}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p0, p1}, Lkw0;->u(Ljava/lang/String;)V

    return-void
.end method

.method public final g(II)V
    .locals 0

    return-void
.end method

.method public final i(I)V
    .locals 0

    return-void
.end method

.method public final m(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkw0;->h:Lcv0;

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

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final n(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkw0;->h:Lcv0;

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

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final o(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkw0;->h:Lcv0;

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

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final p(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkw0;->h:Lcv0;

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

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final q(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 45

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    .line 1
    iput-object v13, v15, Lkw0;->i:Ljava/lang/String;

    .line 2
    invoke-virtual/range {p0 .. p1}, Lkw0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v18, "error"

    const/4 v11, 0x0

    .line 3
    :try_start_0
    array-length v1, v0

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-ge v2, v3, :cond_0

    .line 5
    :try_start_1
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_2
    iget-object v0, v15, Lkw0;->h:Lcv0;

    iget-object v2, v15, Lzv0;->f:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v11}, Lcv0;->m([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    .line 9
    iget-object v0, v15, Lzv0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liu0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v0, :cond_1

    .line 10
    :try_start_3
    invoke-interface {v0, v14, v15}, Liu0;->h(Ljava/lang/String;Lzv0;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_1
    move-object v1, v15

    move-object v4, v1

    move-object/from16 v2, v18

    const/16 v32, 0x0

    goto/16 :goto_14

    .line 11
    :cond_1
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v19

    .line 13
    sget-object v1, Ly40;->r:Lo40;

    .line 14
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 15
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 17
    sget-object v1, Ly40;->q:Lo40;

    .line 18
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 19
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v7, v1, v3

    .line 21
    sget-object v1, Ly40;->p:Lo40;

    .line 22
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 23
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v5, v1

    .line 25
    sget-object v1, Ly40;->l1:Lo40;

    .line 26
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 27
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const-wide/16 v22, -0x1

    move-object v1, v15

    move-wide/from16 v2, v22

    .line 29
    :goto_3
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 30
    :try_start_6
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v16

    sub-long v16, v16, v19

    cmp-long v4, v16, v7

    if-gtz v4, :cond_f

    .line 31
    iget-boolean v4, v1, Lkw0;->j:Z

    if-eqz v4, :cond_3

    .line 32
    iget-object v0, v1, Lkw0;->k:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    const-string v2, "badUrl"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 33
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_2
    :try_start_8
    const-string v2, "externalAbort"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 34
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Abort requested before buffering finished. "

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    :goto_4
    move-object/from16 v33, v14

    move-object v4, v15

    const/16 v32, 0x0

    goto/16 :goto_f

    .line 35
    :cond_3
    :try_start_a
    iget-boolean v4, v1, Lkw0;->l:Z

    const/16 v24, 0x1

    if-eqz v4, :cond_4

    .line 36
    monitor-exit p0

    move-object v4, v15

    goto/16 :goto_d

    .line 37
    :cond_4
    iget-object v4, v1, Lkw0;->h:Lcv0;

    .line 38
    iget-object v4, v4, Lcv0;->k:Lde3;

    if-eqz v4, :cond_e

    .line 39
    invoke-virtual {v4}, Lde3;->b()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v12, v25, v27

    if-lez v12, :cond_d

    .line 40
    invoke-virtual {v4}, Lde3;->a()J

    move-result-wide v29

    cmp-long v4, v29, v2

    if-eqz v4, :cond_a

    cmp-long v2, v29, v27

    if-lez v2, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    if-eqz v21, :cond_7

    .line 41
    iget-object v2, v1, Lkw0;->h:Lcv0;

    .line 42
    invoke-virtual {v2}, Lcv0;->n()Z

    move-result v3

    if-nez v3, :cond_6

    .line 43
    iget v2, v2, Lcv0;->p:I

    int-to-long v2, v2

    goto :goto_6

    :cond_6
    move-wide/from16 v2, v27

    :goto_6
    move-wide/from16 v31, v2

    goto :goto_7

    :cond_7
    move-wide/from16 v31, v22

    :goto_7
    if-eqz v21, :cond_8

    .line 44
    iget-object v2, v1, Lkw0;->h:Lcv0;

    invoke-virtual {v2}, Lcv0;->q()J

    move-result-wide v2

    move-wide/from16 v33, v2

    goto :goto_8

    :cond_8
    move-wide/from16 v33, v22

    :goto_8
    if-eqz v21, :cond_9

    .line 45
    iget-object v2, v1, Lkw0;->h:Lcv0;

    invoke-virtual {v2}, Lcv0;->k()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-wide/from16 v35, v1

    goto :goto_9

    :cond_9
    move-wide/from16 v35, v22

    .line 46
    :goto_9
    :try_start_b
    sget v17, Lcv0;->x:I

    .line 47
    sget v37, Lcv0;->y:I

    .line 48
    sget-object v12, Lzr0;->b:Landroid/os/Handler;

    new-instance v4, Lbw0;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 p2, v0

    move-object v0, v4

    move-object v4, v14

    move-wide/from16 v38, v5

    move-wide/from16 v5, v29

    move-wide/from16 v40, v7

    move-wide/from16 v7, v25

    move-wide/from16 v42, v9

    move-wide/from16 v9, v31

    move-object/from16 v31, v0

    move-object v0, v12

    const/16 v32, 0x0

    move-wide/from16 v11, v33

    move-object/from16 v33, v14

    move-wide/from16 v13, v35

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v37

    :try_start_c
    invoke-direct/range {v1 .. v17}, Lbw0;-><init>(Lzv0;Ljava/lang/String;Ljava/lang/String;JJJJJZII)V

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v2, v29

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v33, v14

    const/16 v32, 0x0

    :goto_a
    move-object/from16 v4, p0

    goto :goto_c

    :cond_a
    move-object/from16 p2, v0

    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-wide/from16 v42, v9

    move-object/from16 v33, v14

    const/16 v32, 0x0

    :goto_b
    cmp-long v0, v29, v25

    if-ltz v0, :cond_b

    .line 49
    sget-object v0, Lzr0;->b:Landroid/os/Handler;

    new-instance v7, Lcw0;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v33

    move-wide/from16 v5, v25

    invoke-direct/range {v1 .. v6}, Lcw0;-><init>(Lzv0;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v4, p0

    .line 50
    :try_start_d
    monitor-exit p0

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_a

    :goto_c
    move-object/from16 v1, p1

    move-object v2, v4

    move-object v15, v2

    move-object/from16 v14, v33

    goto/16 :goto_11

    :cond_b
    move-object/from16 v4, p0

    .line 51
    iget-object v0, v4, Lkw0;->h:Lcv0;

    .line 52
    iget v0, v0, Lcv0;->p:I

    int-to-long v0, v0

    cmp-long v5, v0, v38

    if-ltz v5, :cond_c

    cmp-long v0, v29, v27

    if-lez v0, :cond_c

    .line 53
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_d
    return v24

    :cond_c
    move-object v1, v4

    move-wide/from16 v5, v42

    goto :goto_e

    :catchall_3
    move-exception v0

    goto :goto_c

    :cond_d
    move-object/from16 p2, v0

    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-object/from16 v33, v14

    move-object v4, v15

    const/16 v32, 0x0

    move-wide v5, v9

    .line 54
    :goto_e
    :try_start_e
    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 55
    :try_start_f
    monitor-exit p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    move-object v15, v4

    move-wide v9, v5

    move-object/from16 v14, v33

    move-wide/from16 v5, v38

    move-wide/from16 v7, v40

    const/4 v11, 0x0

    goto/16 :goto_3

    :catch_1
    const-string v2, "interrupted"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 56
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Wait interrupted."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_e
    move-object/from16 v33, v14

    move-object v4, v15

    const/16 v32, 0x0

    :try_start_11
    const-string v2, "exoPlayerReleased"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 57
    :try_start_12
    new-instance v0, Ljava/io/IOException;

    const-string v3, "ExoPlayer was released during preloading."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :cond_f
    move-wide/from16 v40, v7

    move-object/from16 v33, v14

    move-object v4, v15

    const/16 v32, 0x0

    :try_start_13
    const-string v2, "downloadTimeout"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 58
    :try_start_14
    new-instance v0, Ljava/io/IOException;

    const/16 v3, 0x2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Timeout reached. Limit: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v40

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :catchall_4
    move-exception v0

    move-object/from16 v18, v2

    move-object v15, v4

    move-object/from16 v14, v33

    move-object v2, v1

    goto :goto_10

    :catchall_5
    move-exception v0

    goto :goto_f

    :catchall_6
    move-exception v0

    goto/16 :goto_4

    :goto_f
    move-object v2, v1

    move-object v15, v4

    move-object/from16 v14, v33

    :goto_10
    move-object/from16 v1, p1

    .line 59
    :goto_11
    :try_start_15
    monitor-exit v15
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :try_start_16
    throw v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    :catch_2
    move-exception v0

    move-object/from16 v44, v15

    move-object v15, v2

    move-object/from16 v2, v44

    goto :goto_13

    :catchall_7
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    move-object/from16 v33, v14

    move-object v4, v15

    const/16 v32, 0x0

    move-object v15, v1

    goto :goto_12

    :catch_4
    move-exception v0

    move-object/from16 v33, v14

    move-object v4, v15

    const/16 v32, 0x0

    :goto_12
    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v14, v33

    :goto_13
    move-object v13, v1

    move-object v1, v15

    move-object v15, v2

    move-object/from16 v2, v18

    .line 60
    :goto_14
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Failed to preload url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lis0;->zzez(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v15}, Lkw0;->release()V

    .line 62
    invoke-static {v2, v0}, Lkw0;->t(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v1, v13, v14, v2, v0}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v32
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-virtual {p0, p1, v0}, Lkw0;->q(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkw0;->h:Lcv0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcv0;->o:Lmv0;

    .line 3
    invoke-virtual {v0}, Lcv0;->l()V

    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "cache:"

    .line 1
    invoke-static {p1}, Lzr0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final u(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lkw0;->j:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 4
    invoke-virtual {p0}, Lkw0;->release()V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lkw0;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lkw0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lkw0;->k:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Lkw0;->i:Ljava/lang/String;

    const-string v3, "badUrl"

    .line 10
    invoke-static {p1, v1}, Lkw0;->t(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0, v2, v0, v3, p1}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lkw0;->i:Ljava/lang/String;

    const-string v1, "externalAbort"

    const-string v2, "Programmatic precache abort."

    invoke-virtual {p0, p1, v0, v1, v2}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
