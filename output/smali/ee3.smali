.class public final Lee3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lwi3;
.implements Lyi3;
.implements Lck3;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:J

.field public E:I

.field public F:Lje3;

.field public G:J

.field public H:Lhe3;

.field public I:Lhe3;

.field public J:Lhe3;

.field public K:Lse3;

.field public L:Z

.field public volatile M:I

.field public volatile N:I

.field public final e:[Loe3;

.field public final f:[Lxd3;

.field public final g:Lzj3;

.field public final h:Ldv0;

.field public final i:Ldl3;

.field public final j:Landroid/os/Handler;

.field public final k:Landroid/os/HandlerThread;

.field public final l:Landroid/os/Handler;

.field public final m:Lde3;

.field public final n:Lte3;

.field public final o:Lue3;

.field public p:Lge3;

.field public q:Lpe3;

.field public r:Loe3;

.field public s:Lxk3;

.field public t:Lzi3;

.field public u:[Loe3;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>([Loe3;Lzj3;Ldv0;ZLandroid/os/Handler;Lge3;Lde3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lee3;->e:[Loe3;

    .line 3
    iput-object p2, p0, Lee3;->g:Lzj3;

    .line 4
    iput-object p3, p0, Lee3;->h:Ldv0;

    .line 5
    iput-boolean p4, p0, Lee3;->w:Z

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lee3;->A:I

    .line 7
    iput-object p5, p0, Lee3;->l:Landroid/os/Handler;

    const/4 p4, 0x1

    .line 8
    iput p4, p0, Lee3;->z:I

    .line 9
    iput-object p6, p0, Lee3;->p:Lge3;

    .line 10
    iput-object p7, p0, Lee3;->m:Lde3;

    .line 11
    array-length p4, p1

    new-array p4, p4, [Lxd3;

    iput-object p4, p0, Lee3;->f:[Lxd3;

    const/4 p4, 0x0

    .line 12
    :goto_0
    array-length p5, p1

    if-ge p4, p5, :cond_0

    .line 13
    aget-object p5, p1, p4

    invoke-interface {p5, p4}, Loe3;->i(I)V

    .line 14
    iget-object p5, p0, Lee3;->f:[Lxd3;

    aget-object p6, p1, p4

    invoke-interface {p6}, Loe3;->k()Lxd3;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ldl3;

    invoke-direct {p1}, Ldl3;-><init>()V

    iput-object p1, p0, Lee3;->i:Ldl3;

    new-array p1, p3, [Loe3;

    .line 16
    iput-object p1, p0, Lee3;->u:[Loe3;

    .line 17
    new-instance p1, Lte3;

    invoke-direct {p1}, Lte3;-><init>()V

    iput-object p1, p0, Lee3;->n:Lte3;

    .line 18
    new-instance p1, Lue3;

    invoke-direct {p1}, Lue3;-><init>()V

    iput-object p1, p0, Lee3;->o:Lue3;

    .line 19
    iput-object p0, p2, Lzj3;->a:Lck3;

    .line 20
    sget-object p1, Lpe3;->d:Lpe3;

    iput-object p1, p0, Lee3;->q:Lpe3;

    .line 21
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lee3;->k:Landroid/os/HandlerThread;

    .line 22
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 23
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lee3;->j:Landroid/os/Handler;

    return-void
.end method

.method public static h(Lhe3;)V
    .locals 0

    :goto_0
    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lhe3;->a()V

    .line 2
    iget-object p0, p0, Lhe3;->l:Lhe3;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static i(Loe3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Loe3;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Loe3;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lee3;->K:Lse3;

    iget-object v1, p0, Lee3;->o:Lue3;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lse3;->e(ILue3;Z)Lue3;

    .line 3
    iget-object v0, p0, Lee3;->K:Lse3;

    iget-object v1, p0, Lee3;->n:Lte3;

    .line 4
    invoke-virtual {v0, v2, v1}, Lse3;->c(ILte3;)Lte3;

    .line 5
    iget-object v0, p0, Lee3;->K:Lse3;

    iget-object v1, p0, Lee3;->o:Lue3;

    iget-object v3, p0, Lee3;->n:Lte3;

    iget v4, p0, Lee3;->A:I

    .line 6
    invoke-virtual {v0, p1, v1, v3, v4}, Lse3;->b(ILue3;Lte3;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method public final a(I)V
    .locals 3

    .line 1
    iget v0, p0, Lee3;->z:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lee3;->z:I

    .line 3
    iget-object v0, p0, Lee3;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final b(ILse3;Lse3;)I
    .locals 6

    .line 1
    invoke-virtual {p2}, Lse3;->h()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_0

    if-ne v3, v1, :cond_0

    .line 2
    iget-object v3, p0, Lee3;->o:Lue3;

    iget-object v4, p0, Lee3;->n:Lte3;

    iget v5, p0, Lee3;->A:I

    invoke-virtual {p2, p1, v3, v4, v5}, Lse3;->b(ILue3;Lte3;I)I

    move-result p1

    .line 3
    iget-object v3, p0, Lee3;->o:Lue3;

    const/4 v4, 0x1

    .line 4
    invoke-virtual {p2, p1, v3, v4}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object v3

    iget-object v3, v3, Lue3;->b:Ljava/lang/Object;

    .line 5
    invoke-virtual {p3, v3}, Lse3;->f(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final c(Lje3;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lje3;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lje3;->a:Lse3;

    .line 2
    invoke-virtual {v0}, Lse3;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lee3;->K:Lse3;

    .line 4
    :cond_0
    :try_start_0
    iget v3, p1, Lje3;->b:I

    iget-wide v4, p1, Lje3;->c:J

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 5
    invoke-virtual/range {v1 .. v7}, Lee3;->d(Lse3;IJJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v1, p0, Lee3;->K:Lse3;

    if-ne v1, v0, :cond_1

    return-object p1

    .line 7
    :cond_1
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lee3;->o:Lue3;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object v2

    iget-object v2, v2, Lue3;->b:Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, v2}, Lse3;->f(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lee3;->K:Lse3;

    invoke-virtual {p0, p1, v0, v1}, Lee3;->b(ILse3;Lse3;)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 12
    iget-object v0, p0, Lee3;->K:Lse3;

    iget-object v1, p0, Lee3;->o:Lue3;

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, p1, v1, v2}, Lse3;->e(ILue3;Z)Lue3;

    .line 14
    invoke-virtual {p0}, Lee3;->p()Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 15
    :catch_0
    new-instance v0, Lle3;

    iget-object v1, p0, Lee3;->K:Lse3;

    iget v2, p1, Lje3;->b:I

    iget-wide v3, p1, Lje3;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lle3;-><init>(Lse3;IJ)V

    throw v0
.end method

.method public final d(Lse3;IJJ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse3;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lse3;->g()I

    move-result v0

    invoke-static {p2, v0}, Lc50;->r3(II)I

    .line 2
    iget-object v3, p0, Lee3;->n:Lte3;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Lse3;->d(ILte3;ZJ)Lte3;

    const-wide/16 p5, 0x0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    move-wide p3, p5

    :cond_0
    add-long/2addr p3, p5

    .line 3
    iget-object p2, p0, Lee3;->o:Lue3;

    const/4 p5, 0x0

    .line 4
    invoke-virtual {p1, p5, p2, p5}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object p1

    .line 5
    iget-wide p1, p1, Lue3;->c:J

    cmp-long p6, p1, v0

    if-eqz p6, :cond_1

    cmp-long p6, p3, p1

    .line 6
    :cond_1
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(Ljj3;)V
    .locals 2

    .line 1
    check-cast p1, Lxi3;

    .line 2
    iget-object v0, p0, Lee3;->j:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final f(Lse3;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lee3;->j:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final g(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lee3;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 3
    iget-object p1, p0, Lee3;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 4
    :cond_0
    iget-object p3, p0, Lee3;->j:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    .line 1
    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lyd3; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x4

    const/4 v6, -0x1

    const/4 v14, 0x7

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    const/4 v15, 0x3

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    .line 2
    :pswitch_0
    :try_start_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 3
    iput v1, v8, Lee3;->A:I

    .line 4
    iget-object v2, v8, Lee3;->J:Lhe3;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v8, Lee3;->H:Lhe3;

    :goto_0
    if-eqz v2, :cond_9

    .line 6
    iget-object v3, v8, Lee3;->I:Lhe3;

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_1
    iget-object v4, v8, Lee3;->H:Lhe3;

    if-ne v2, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 8
    :goto_2
    iget-object v11, v8, Lee3;->K:Lse3;

    iget v12, v2, Lhe3;->g:I

    iget-object v14, v8, Lee3;->o:Lue3;

    iget-object v15, v8, Lee3;->n:Lte3;

    invoke-virtual {v11, v12, v14, v15, v1}, Lse3;->b(ILue3;Lte3;I)I

    move-result v11

    .line 9
    iget-object v12, v2, Lhe3;->l:Lhe3;

    if-eqz v12, :cond_5

    if-eq v11, v6, :cond_5

    iget v14, v12, Lhe3;->g:I

    if-ne v14, v11, :cond_5

    .line 10
    iget-object v2, v8, Lee3;->I:Lhe3;

    if-ne v12, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    or-int/2addr v3, v2

    .line 11
    iget-object v2, v8, Lee3;->H:Lhe3;

    if-ne v12, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    or-int/2addr v4, v2

    move-object v2, v12

    goto :goto_2

    :cond_5
    if-eqz v12, :cond_6

    .line 12
    invoke-static {v12}, Lee3;->h(Lhe3;)V

    .line 13
    iput-object v5, v2, Lhe3;->l:Lhe3;

    .line 14
    :cond_6
    iget v5, v2, Lhe3;->g:I

    invoke-virtual {v8, v5}, Lee3;->A(I)Z

    move-result v5

    iput-boolean v5, v2, Lhe3;->i:Z

    if-nez v4, :cond_7

    .line 15
    iput-object v2, v8, Lee3;->H:Lhe3;

    :cond_7
    if-nez v3, :cond_8

    .line 16
    iget-object v2, v8, Lee3;->J:Lhe3;

    if-eqz v2, :cond_8

    .line 17
    iget v2, v2, Lhe3;->g:I

    .line 18
    iget-object v3, v8, Lee3;->p:Lge3;

    iget-wide v3, v3, Lge3;->c:J

    invoke-virtual {v8, v2, v3, v4}, Lee3;->m(IJ)J

    move-result-wide v3

    .line 19
    new-instance v5, Lge3;

    invoke-direct {v5, v2, v3, v4}, Lge3;-><init>(IJ)V

    iput-object v5, v8, Lee3;->p:Lge3;

    .line 20
    :cond_8
    iget v2, v8, Lee3;->z:I

    if-ne v2, v13, :cond_9

    if-eqz v1, :cond_9

    .line 21
    invoke-virtual {v8, v7}, Lee3;->a(I)V

    :cond_9
    return v10

    .line 22
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lbe3;
    :try_end_1
    .catch Lyd3; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 23
    :try_start_2
    array-length v2, v1

    :goto_5
    if-ge v9, v2, :cond_a

    aget-object v3, v1, v9

    .line 24
    iget-object v4, v3, Lbe3;->a:Lce3;

    iget v5, v3, Lbe3;->b:I

    iget-object v3, v3, Lbe3;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lce3;->b(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 25
    :cond_a
    iget-object v1, v8, Lee3;->t:Lzi3;

    if-eqz v1, :cond_b

    .line 26
    iget-object v1, v8, Lee3;->j:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :cond_b
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Lyd3; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 28
    :try_start_4
    iget v1, v8, Lee3;->C:I

    add-int/2addr v1, v10

    iput v1, v8, Lee3;->C:I

    .line 29
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 30
    monitor-exit p0

    return v10

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 31
    monitor-enter p0
    :try_end_5
    .catch Lyd3; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 32
    :try_start_6
    iget v2, v8, Lee3;->C:I

    add-int/2addr v2, v10

    iput v2, v8, Lee3;->C:I

    .line 33
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 34
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 35
    :try_start_7
    throw v1
    :try_end_7
    .catch Lyd3; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 36
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1

    .line 37
    :pswitch_2
    iget-object v1, v8, Lee3;->J:Lhe3;

    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    :goto_6
    if-eqz v1, :cond_1b

    .line 38
    iget-boolean v3, v1, Lhe3;->j:Z

    if-nez v3, :cond_c

    goto/16 :goto_d

    .line 39
    :cond_c
    invoke-virtual {v1}, Lhe3;->g()Z

    move-result v3

    if-nez v3, :cond_e

    .line 40
    iget-object v3, v8, Lee3;->I:Lhe3;

    if-ne v1, v3, :cond_d

    const/4 v2, 0x0

    .line 41
    :cond_d
    iget-object v1, v1, Lhe3;->l:Lhe3;

    goto :goto_6

    :cond_e
    if-eqz v2, :cond_18

    .line 42
    iget-object v2, v8, Lee3;->I:Lhe3;

    iget-object v3, v8, Lee3;->J:Lhe3;

    if-eq v2, v3, :cond_f

    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    .line 43
    :goto_7
    iget-object v3, v3, Lhe3;->l:Lhe3;

    invoke-static {v3}, Lee3;->h(Lhe3;)V

    .line 44
    iget-object v3, v8, Lee3;->J:Lhe3;

    iput-object v5, v3, Lhe3;->l:Lhe3;

    .line 45
    iput-object v3, v8, Lee3;->H:Lhe3;

    .line 46
    iput-object v3, v8, Lee3;->I:Lhe3;

    .line 47
    iget-object v4, v8, Lee3;->e:[Loe3;

    array-length v4, v4

    new-array v4, v4, [Z

    .line 48
    iget-object v6, v8, Lee3;->p:Lge3;

    iget-wide v11, v6, Lge3;->c:J

    invoke-virtual {v3, v11, v12, v2, v4}, Lhe3;->b(JZ[Z)J

    move-result-wide v2

    .line 49
    iget-object v6, v8, Lee3;->p:Lge3;

    iget-wide v11, v6, Lge3;->c:J

    cmp-long v6, v2, v11

    if-eqz v6, :cond_10

    .line 50
    iget-object v6, v8, Lee3;->p:Lge3;

    iput-wide v2, v6, Lge3;->c:J

    .line 51
    invoke-virtual {v8, v2, v3}, Lee3;->q(J)V

    .line 52
    :cond_10
    iget-object v2, v8, Lee3;->e:[Loe3;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 53
    :goto_8
    iget-object v11, v8, Lee3;->e:[Loe3;

    array-length v12, v11

    if-ge v3, v12, :cond_17

    .line 54
    aget-object v11, v11, v3

    .line 55
    invoke-interface {v11}, Loe3;->getState()I

    move-result v12

    if-eqz v12, :cond_11

    const/4 v12, 0x1

    goto :goto_9

    :cond_11
    const/4 v12, 0x0

    :goto_9
    aput-boolean v12, v2, v3

    .line 56
    iget-object v12, v8, Lee3;->J:Lhe3;

    iget-object v12, v12, Lhe3;->d:[Lri3;

    aget-object v12, v12, v3

    if-eqz v12, :cond_12

    add-int/lit8 v6, v6, 0x1

    .line 57
    :cond_12
    aget-boolean v13, v2, v3

    if-eqz v13, :cond_16

    .line 58
    invoke-interface {v11}, Loe3;->u()Lri3;

    move-result-object v13

    if-eq v12, v13, :cond_15

    .line 59
    iget-object v13, v8, Lee3;->r:Loe3;

    if-ne v11, v13, :cond_14

    if-nez v12, :cond_13

    .line 60
    iget-object v12, v8, Lee3;->i:Ldl3;

    iget-object v13, v8, Lee3;->s:Lxk3;

    invoke-virtual {v12, v13}, Ldl3;->b(Lxk3;)V

    .line 61
    :cond_13
    iput-object v5, v8, Lee3;->s:Lxk3;

    .line 62
    iput-object v5, v8, Lee3;->r:Loe3;

    .line 63
    :cond_14
    invoke-static {v11}, Lee3;->i(Loe3;)V

    .line 64
    invoke-interface {v11}, Loe3;->s()V

    goto :goto_a

    .line 65
    :cond_15
    aget-boolean v12, v4, v3

    if-eqz v12, :cond_16

    .line 66
    iget-wide v12, v8, Lee3;->G:J

    invoke-interface {v11, v12, v13}, Loe3;->l(J)V

    :cond_16
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 67
    :cond_17
    iget-object v3, v8, Lee3;->l:Landroid/os/Handler;

    iget-object v1, v1, Lhe3;->m:Lbk3;

    invoke-virtual {v3, v15, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 69
    invoke-virtual {v8, v2, v6}, Lee3;->l([ZI)V

    goto :goto_c

    .line 70
    :cond_18
    iput-object v1, v8, Lee3;->H:Lhe3;

    .line 71
    iget-object v1, v1, Lhe3;->l:Lhe3;

    :goto_b
    if-eqz v1, :cond_19

    .line 72
    invoke-virtual {v1}, Lhe3;->a()V

    .line 73
    iget-object v1, v1, Lhe3;->l:Lhe3;

    goto :goto_b

    .line 74
    :cond_19
    iget-object v1, v8, Lee3;->H:Lhe3;

    iput-object v5, v1, Lhe3;->l:Lhe3;

    .line 75
    iget-boolean v2, v1, Lhe3;->j:Z

    if-eqz v2, :cond_1a

    .line 76
    iget-wide v2, v1, Lhe3;->h:J

    iget-wide v4, v8, Lee3;->G:J

    .line 77
    invoke-virtual {v1}, Lhe3;->e()J

    move-result-wide v11

    sub-long/2addr v4, v11

    .line 78
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 79
    iget-object v3, v8, Lee3;->H:Lhe3;

    invoke-virtual {v3, v1, v2}, Lhe3;->c(J)J

    .line 80
    :cond_1a
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lee3;->x()V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lee3;->u()V

    .line 82
    iget-object v1, v8, Lee3;->j:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1b
    :goto_d
    return v10

    .line 83
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lxi3;

    .line 84
    iget-object v2, v8, Lee3;->H:Lhe3;

    if-eqz v2, :cond_1d

    iget-object v2, v2, Lhe3;->a:Lxi3;

    if-eq v2, v1, :cond_1c

    goto :goto_e

    .line 85
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lee3;->x()V

    :cond_1d
    :goto_e
    return v10

    .line 86
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lxi3;

    .line 87
    iget-object v2, v8, Lee3;->H:Lhe3;

    if-eqz v2, :cond_20

    iget-object v3, v2, Lhe3;->a:Lxi3;

    if-eq v3, v1, :cond_1e

    goto :goto_f

    .line 88
    :cond_1e
    iput-boolean v10, v2, Lhe3;->j:Z

    .line 89
    invoke-virtual {v2}, Lhe3;->g()Z

    .line 90
    iget-wide v3, v2, Lhe3;->h:J

    invoke-virtual {v2, v3, v4}, Lhe3;->c(J)J

    move-result-wide v3

    iput-wide v3, v2, Lhe3;->h:J

    .line 91
    iget-object v1, v8, Lee3;->J:Lhe3;

    if-nez v1, :cond_1f

    .line 92
    iget-object v1, v8, Lee3;->H:Lhe3;

    iput-object v1, v8, Lee3;->I:Lhe3;

    .line 93
    iget-wide v1, v1, Lhe3;->h:J

    invoke-virtual {v8, v1, v2}, Lee3;->q(J)V

    .line 94
    iget-object v1, v8, Lee3;->I:Lhe3;

    invoke-virtual {v8, v1}, Lee3;->n(Lhe3;)V

    .line 95
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lee3;->x()V

    :cond_20
    :goto_f
    return v10

    .line 96
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 97
    iget-object v2, v8, Lee3;->K:Lse3;

    .line 98
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lse3;

    iput-object v3, v8, Lee3;->K:Lse3;

    .line 99
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_24

    .line 100
    iget v4, v8, Lee3;->E:I

    if-lez v4, :cond_22

    .line 101
    iget-object v3, v8, Lee3;->F:Lje3;

    invoke-virtual {v8, v3}, Lee3;->c(Lje3;)Landroid/util/Pair;

    move-result-object v3

    .line 102
    iget v4, v8, Lee3;->E:I

    .line 103
    iput v9, v8, Lee3;->E:I

    .line 104
    iput-object v5, v8, Lee3;->F:Lje3;

    if-nez v3, :cond_21

    .line 105
    invoke-virtual {v8, v1, v4}, Lee3;->k(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 106
    :cond_21
    new-instance v7, Lge3;

    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v7, v11, v12, v13}, Lge3;-><init>(IJ)V

    iput-object v7, v8, Lee3;->p:Lge3;

    goto :goto_10

    .line 107
    :cond_22
    iget-object v4, v8, Lee3;->p:Lge3;

    iget-wide v13, v4, Lge3;->b:J

    cmp-long v4, v13, v11

    if-nez v4, :cond_24

    .line 108
    invoke-virtual {v3}, Lse3;->a()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 109
    invoke-virtual {v8, v1, v9}, Lee3;->k(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 110
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lee3;->p()Landroid/util/Pair;

    move-result-object v3

    .line 111
    new-instance v4, Lge3;

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v4, v7, v11, v12}, Lge3;-><init>(IJ)V

    iput-object v4, v8, Lee3;->p:Lge3;

    :cond_24
    const/4 v4, 0x0

    .line 112
    :goto_10
    iget-object v3, v8, Lee3;->J:Lhe3;

    if-eqz v3, :cond_25

    goto :goto_11

    .line 113
    :cond_25
    iget-object v3, v8, Lee3;->H:Lhe3;

    :goto_11
    if-eqz v3, :cond_2f

    .line 114
    iget-object v7, v8, Lee3;->K:Lse3;

    iget-object v11, v3, Lhe3;->b:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lse3;->f(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v6, :cond_29

    .line 115
    iget v5, v3, Lhe3;->g:I

    iget-object v7, v8, Lee3;->K:Lse3;

    invoke-virtual {v8, v5, v2, v7}, Lee3;->b(ILse3;Lse3;)I

    move-result v2

    if-ne v2, v6, :cond_26

    .line 116
    invoke-virtual {v8, v1, v4}, Lee3;->k(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 117
    :cond_26
    iget-object v5, v8, Lee3;->K:Lse3;

    iget-object v7, v8, Lee3;->o:Lue3;

    .line 118
    invoke-virtual {v5, v2, v7, v9}, Lse3;->e(ILue3;Z)Lue3;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lee3;->p()Landroid/util/Pair;

    move-result-object v2

    .line 120
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 121
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 122
    iget-object v2, v8, Lee3;->K:Lse3;

    iget-object v7, v8, Lee3;->o:Lue3;

    invoke-virtual {v2, v5, v7, v10}, Lse3;->e(ILue3;Z)Lue3;

    .line 123
    iget-object v2, v8, Lee3;->o:Lue3;

    iget-object v2, v2, Lue3;->b:Ljava/lang/Object;

    .line 124
    iput v6, v3, Lhe3;->g:I

    .line 125
    :goto_12
    iget-object v3, v3, Lhe3;->l:Lhe3;

    if-eqz v3, :cond_28

    .line 126
    iget-object v7, v3, Lhe3;->b:Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    move v7, v5

    goto :goto_13

    :cond_27
    const/4 v7, -0x1

    .line 127
    :goto_13
    iput v7, v3, Lhe3;->g:I

    goto :goto_12

    .line 128
    :cond_28
    invoke-virtual {v8, v5, v11, v12}, Lee3;->m(IJ)J

    move-result-wide v2

    .line 129
    new-instance v6, Lge3;

    invoke-direct {v6, v5, v2, v3}, Lge3;-><init>(IJ)V

    iput-object v6, v8, Lee3;->p:Lge3;

    goto/16 :goto_17

    .line 130
    :cond_29
    invoke-virtual {v8, v7}, Lee3;->A(I)Z

    move-result v2

    invoke-virtual {v3, v7, v2}, Lhe3;->d(IZ)V

    .line 131
    iget-object v2, v8, Lee3;->I:Lhe3;

    if-ne v3, v2, :cond_2a

    const/4 v2, 0x1

    goto :goto_14

    :cond_2a
    const/4 v2, 0x0

    .line 132
    :goto_14
    iget-object v11, v8, Lee3;->p:Lge3;

    iget v12, v11, Lge3;->a:I

    if-eq v7, v12, :cond_2b

    .line 133
    new-instance v12, Lge3;

    iget-wide v13, v11, Lge3;->b:J

    invoke-direct {v12, v7, v13, v14}, Lge3;-><init>(IJ)V

    .line 134
    iget-wide v13, v11, Lge3;->c:J

    iput-wide v13, v12, Lge3;->c:J

    .line 135
    iget-wide v13, v11, Lge3;->d:J

    iput-wide v13, v12, Lge3;->d:J

    .line 136
    iput-object v12, v8, Lee3;->p:Lge3;

    .line 137
    :cond_2b
    :goto_15
    iget-object v11, v3, Lhe3;->l:Lhe3;

    if-eqz v11, :cond_2f

    .line 138
    iget-object v12, v8, Lee3;->K:Lse3;

    iget-object v13, v8, Lee3;->o:Lue3;

    iget-object v14, v8, Lee3;->n:Lte3;

    iget v15, v8, Lee3;->A:I

    invoke-virtual {v12, v7, v13, v14, v15}, Lse3;->b(ILue3;Lte3;I)I

    move-result v7

    if-eq v7, v6, :cond_2d

    .line 139
    iget-object v12, v11, Lhe3;->b:Ljava/lang/Object;

    iget-object v13, v8, Lee3;->K:Lse3;

    iget-object v14, v8, Lee3;->o:Lue3;

    .line 140
    invoke-virtual {v13, v7, v14, v10}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object v13

    iget-object v13, v13, Lue3;->b:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 141
    invoke-virtual {v8, v7}, Lee3;->A(I)Z

    move-result v3

    invoke-virtual {v11, v7, v3}, Lhe3;->d(IZ)V

    .line 142
    iget-object v3, v8, Lee3;->I:Lhe3;

    if-ne v11, v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_16

    :cond_2c
    const/4 v3, 0x0

    :goto_16
    or-int/2addr v2, v3

    move-object v3, v11

    goto :goto_15

    :cond_2d
    if-nez v2, :cond_2e

    .line 143
    iget-object v2, v8, Lee3;->J:Lhe3;

    iget v2, v2, Lhe3;->g:I

    .line 144
    iget-object v3, v8, Lee3;->p:Lge3;

    iget-wide v5, v3, Lge3;->c:J

    invoke-virtual {v8, v2, v5, v6}, Lee3;->m(IJ)J

    move-result-wide v5

    .line 145
    new-instance v3, Lge3;

    invoke-direct {v3, v2, v5, v6}, Lge3;-><init>(IJ)V

    iput-object v3, v8, Lee3;->p:Lge3;

    goto :goto_17

    .line 146
    :cond_2e
    iput-object v3, v8, Lee3;->H:Lhe3;

    .line 147
    iput-object v5, v3, Lhe3;->l:Lhe3;

    .line 148
    invoke-static {v11}, Lee3;->h(Lhe3;)V

    .line 149
    :cond_2f
    :goto_17
    invoke-virtual {v8, v1, v4}, Lee3;->o(Ljava/lang/Object;I)V

    :goto_18
    return v10

    .line 150
    :pswitch_6
    invoke-virtual {v8, v10}, Lee3;->z(Z)V

    .line 151
    iget-object v1, v8, Lee3;->h:Ldv0;

    invoke-virtual {v1}, Ldv0;->c()V

    .line 152
    invoke-virtual {v8, v10}, Lee3;->a(I)V

    .line 153
    monitor-enter p0
    :try_end_9
    .catch Lyd3; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 154
    :try_start_a
    iput-boolean v10, v8, Lee3;->v:Z

    .line 155
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit p0

    return v10

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1

    .line 157
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lee3;->v()V

    return v10

    .line 158
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lpe3;

    .line 159
    iget-object v2, v8, Lee3;->s:Lxk3;

    if-eqz v2, :cond_30

    .line 160
    invoke-interface {v2, v1}, Lxk3;->d(Lpe3;)Lpe3;

    move-result-object v1

    goto :goto_19

    .line 161
    :cond_30
    iget-object v2, v8, Lee3;->i:Ldl3;

    invoke-virtual {v2, v1}, Ldl3;->d(Lpe3;)Lpe3;

    .line 162
    :goto_19
    iput-object v1, v8, Lee3;->q:Lpe3;

    .line 163
    iget-object v2, v8, Lee3;->l:Landroid/os/Handler;

    invoke-virtual {v2, v14, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return v10

    .line 164
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lje3;

    .line 165
    iget-object v2, v8, Lee3;->K:Lse3;

    if-nez v2, :cond_31

    .line 166
    iget v2, v8, Lee3;->E:I

    add-int/2addr v2, v10

    iput v2, v8, Lee3;->E:I

    .line 167
    iput-object v1, v8, Lee3;->F:Lje3;

    goto/16 :goto_1e

    .line 168
    :cond_31
    invoke-virtual {v8, v1}, Lee3;->c(Lje3;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_32

    .line 169
    new-instance v1, Lge3;

    invoke-direct {v1, v9, v3, v4}, Lge3;-><init>(IJ)V

    iput-object v1, v8, Lee3;->p:Lge3;

    .line 170
    iget-object v2, v8, Lee3;->l:Landroid/os/Handler;

    invoke-virtual {v2, v13, v10, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 171
    new-instance v1, Lge3;

    invoke-direct {v1, v9, v11, v12}, Lge3;-><init>(IJ)V

    iput-object v1, v8, Lee3;->p:Lge3;

    .line 172
    invoke-virtual {v8, v13}, Lee3;->a(I)V

    .line 173
    invoke-virtual {v8, v9}, Lee3;->z(Z)V

    goto :goto_1e

    .line 174
    :cond_32
    iget-wide v3, v1, Lje3;->c:J

    cmp-long v1, v3, v11

    if-nez v1, :cond_33

    const/4 v1, 0x1

    goto :goto_1a

    :cond_33
    const/4 v1, 0x0

    .line 175
    :goto_1a
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 176
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_b
    .catch Lyd3; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 177
    :try_start_c
    iget-object v2, v8, Lee3;->p:Lge3;

    iget v6, v2, Lge3;->a:I

    if-ne v3, v6, :cond_35

    const-wide/16 v16, 0x3e8

    div-long v6, v4, v16

    iget-wide v11, v2, Lge3;->c:J

    div-long v11, v11, v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    cmp-long v2, v6, v11

    if-nez v2, :cond_35

    .line 178
    :try_start_d
    new-instance v2, Lge3;

    invoke-direct {v2, v3, v4, v5}, Lge3;-><init>(IJ)V

    iput-object v2, v8, Lee3;->p:Lge3;

    .line 179
    iget-object v3, v8, Lee3;->l:Landroid/os/Handler;

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_1b

    :cond_34
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v3, v13, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_d
    .catch Lyd3; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_1e

    .line 181
    :cond_35
    :try_start_e
    invoke-virtual {v8, v3, v4, v5}, Lee3;->m(IJ)J

    move-result-wide v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    cmp-long v2, v4, v6

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    goto :goto_1c

    :cond_36
    const/4 v2, 0x0

    :goto_1c
    or-int/2addr v1, v2

    .line 182
    :try_start_f
    new-instance v2, Lge3;

    invoke-direct {v2, v3, v6, v7}, Lge3;-><init>(IJ)V

    iput-object v2, v8, Lee3;->p:Lge3;

    .line 183
    iget-object v3, v8, Lee3;->l:Landroid/os/Handler;

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_1d

    :cond_37
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v3, v13, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_1e
    return v10

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 185
    new-instance v6, Lge3;

    invoke-direct {v6, v3, v4, v5}, Lge3;-><init>(IJ)V

    iput-object v6, v8, Lee3;->p:Lge3;

    .line 186
    iget-object v3, v8, Lee3;->l:Landroid/os/Handler;

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    goto :goto_1f

    :cond_38
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v3, v13, v1, v9, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 188
    throw v2

    :pswitch_a
    const-wide/16 v16, 0x3e8

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 190
    iget-object v1, v8, Lee3;->K:Lse3;

    if-nez v1, :cond_39

    .line 191
    iget-object v1, v8, Lee3;->t:Lzi3;

    invoke-interface {v1}, Lzi3;->d()V

    move-wide v13, v5

    goto/16 :goto_31

    .line 192
    :cond_39
    iget-object v1, v8, Lee3;->H:Lhe3;

    if-nez v1, :cond_3a

    .line 193
    iget-object v1, v8, Lee3;->p:Lge3;

    iget v1, v1, Lge3;->a:I

    goto :goto_20

    .line 194
    :cond_3a
    iget v2, v1, Lhe3;->g:I

    .line 195
    iget-boolean v7, v1, Lhe3;->i:Z

    if-nez v7, :cond_43

    invoke-virtual {v1}, Lhe3;->f()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, v8, Lee3;->K:Lse3;

    iget-object v7, v8, Lee3;->o:Lue3;

    .line 196
    invoke-virtual {v1, v2, v7, v9}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object v1

    .line 197
    iget-wide v13, v1, Lue3;->c:J

    cmp-long v1, v13, v11

    if-nez v1, :cond_3b

    goto/16 :goto_26

    .line 198
    :cond_3b
    iget-object v1, v8, Lee3;->J:Lhe3;

    if-eqz v1, :cond_3c

    .line 199
    iget-object v7, v8, Lee3;->H:Lhe3;

    iget v7, v7, Lhe3;->c:I

    iget v1, v1, Lhe3;->c:I

    sub-int/2addr v7, v1

    const/16 v1, 0x64

    if-eq v7, v1, :cond_43

    .line 200
    :cond_3c
    iget-object v1, v8, Lee3;->K:Lse3;

    iget-object v7, v8, Lee3;->o:Lue3;

    iget-object v13, v8, Lee3;->n:Lte3;

    iget v14, v8, Lee3;->A:I

    invoke-virtual {v1, v2, v7, v13, v14}, Lse3;->b(ILue3;Lte3;I)I

    move-result v1

    .line 201
    :goto_20
    iget-object v2, v8, Lee3;->K:Lse3;

    invoke-virtual {v2}, Lse3;->h()I

    move-result v2

    if-lt v1, v2, :cond_3d

    .line 202
    iget-object v1, v8, Lee3;->t:Lzi3;

    invoke-interface {v1}, Lzi3;->d()V

    goto/16 :goto_26

    .line 203
    :cond_3d
    iget-object v2, v8, Lee3;->H:Lhe3;

    if-nez v2, :cond_3e

    .line 204
    iget-object v2, v8, Lee3;->p:Lge3;

    iget-wide v3, v2, Lge3;->c:J

    goto :goto_21

    .line 205
    :cond_3e
    iget-object v2, v8, Lee3;->K:Lse3;

    iget-object v7, v8, Lee3;->o:Lue3;

    .line 206
    invoke-virtual {v2, v1, v7, v9}, Lse3;->e(ILue3;Z)Lue3;

    .line 207
    iget-object v2, v8, Lee3;->K:Lse3;

    iget-object v7, v8, Lee3;->n:Lte3;

    .line 208
    invoke-virtual {v2, v9, v7}, Lse3;->c(ILte3;)Lte3;

    if-eqz v1, :cond_3f

    :goto_21
    move-wide v13, v5

    const/4 v15, 0x2

    goto :goto_22

    .line 209
    :cond_3f
    iget-object v1, v8, Lee3;->H:Lhe3;

    invoke-virtual {v1}, Lhe3;->e()J

    move-result-wide v1

    iget-object v7, v8, Lee3;->K:Lse3;

    iget-object v13, v8, Lee3;->H:Lhe3;

    iget v13, v13, Lhe3;->g:I

    iget-object v14, v8, Lee3;->o:Lue3;

    .line 210
    invoke-virtual {v7, v13, v14, v9}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object v7

    .line 211
    iget-wide v13, v7, Lue3;->c:J

    add-long/2addr v1, v13

    .line 212
    iget-wide v13, v8, Lee3;->G:J

    sub-long/2addr v1, v13

    .line 213
    iget-object v7, v8, Lee3;->K:Lse3;

    const/4 v13, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 214
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v13

    move-wide v13, v5

    move-wide/from16 v4, v18

    const/4 v15, 0x2

    move-wide/from16 v6, v20

    .line 215
    invoke-virtual/range {v1 .. v7}, Lee3;->d(Lse3;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 216
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 217
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v1, v2

    .line 218
    :goto_22
    iget-object v2, v8, Lee3;->H:Lhe3;

    if-nez v2, :cond_40

    const-wide/32 v5, 0x3938700

    add-long/2addr v5, v3

    :goto_23
    move-wide/from16 v22, v5

    goto :goto_24

    .line 219
    :cond_40
    invoke-virtual {v2}, Lhe3;->e()J

    move-result-wide v5

    iget-object v2, v8, Lee3;->K:Lse3;

    iget-object v7, v8, Lee3;->H:Lhe3;

    iget v7, v7, Lhe3;->g:I

    iget-object v15, v8, Lee3;->o:Lue3;

    .line 220
    invoke-virtual {v2, v7, v15, v9}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object v2

    .line 221
    iget-wide v11, v2, Lue3;->c:J

    add-long/2addr v5, v11

    goto :goto_23

    .line 222
    :goto_24
    iget-object v2, v8, Lee3;->H:Lhe3;

    if-nez v2, :cond_41

    const/16 v28, 0x0

    goto :goto_25

    :cond_41
    iget v2, v2, Lhe3;->c:I

    add-int/2addr v2, v10

    move/from16 v28, v2

    .line 223
    :goto_25
    invoke-virtual {v8, v1}, Lee3;->A(I)Z

    move-result v30

    .line 224
    iget-object v2, v8, Lee3;->K:Lse3;

    iget-object v5, v8, Lee3;->o:Lue3;

    invoke-virtual {v2, v1, v5, v10}, Lse3;->e(ILue3;Z)Lue3;

    .line 225
    new-instance v2, Lhe3;

    iget-object v5, v8, Lee3;->e:[Loe3;

    iget-object v6, v8, Lee3;->f:[Lxd3;

    iget-object v7, v8, Lee3;->g:Lzj3;

    iget-object v11, v8, Lee3;->h:Ldv0;

    iget-object v12, v8, Lee3;->t:Lzi3;

    iget-object v15, v8, Lee3;->o:Lue3;

    iget-object v15, v15, Lue3;->b:Ljava/lang/Object;

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v15

    move/from16 v29, v1

    move-wide/from16 v31, v3

    invoke-direct/range {v19 .. v32}, Lhe3;-><init>([Loe3;[Lxd3;JLzj3;Ldv0;Lzi3;Ljava/lang/Object;IIZJ)V

    .line 226
    iget-object v1, v8, Lee3;->H:Lhe3;

    if-eqz v1, :cond_42

    .line 227
    iput-object v2, v1, Lhe3;->l:Lhe3;

    .line 228
    :cond_42
    iput-object v2, v8, Lee3;->H:Lhe3;

    .line 229
    iget-object v1, v2, Lhe3;->a:Lxi3;

    invoke-interface {v1, v8, v3, v4}, Lxi3;->k(Lwi3;J)V

    .line 230
    invoke-virtual {v8, v10}, Lee3;->y(Z)V

    goto :goto_27

    :cond_43
    :goto_26
    move-wide v13, v5

    .line 231
    :cond_44
    :goto_27
    iget-object v1, v8, Lee3;->H:Lhe3;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lhe3;->f()Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_28

    .line 232
    :cond_45
    iget-object v1, v8, Lee3;->H:Lhe3;

    if-eqz v1, :cond_47

    iget-boolean v1, v8, Lee3;->y:Z

    if-nez v1, :cond_47

    .line 233
    invoke-virtual/range {p0 .. p0}, Lee3;->x()V

    goto :goto_29

    .line 234
    :cond_46
    :goto_28
    invoke-virtual {v8, v9}, Lee3;->y(Z)V

    .line 235
    :cond_47
    :goto_29
    iget-object v1, v8, Lee3;->J:Lhe3;

    if-eqz v1, :cond_51

    .line 236
    :goto_2a
    iget-object v1, v8, Lee3;->J:Lhe3;

    iget-object v2, v8, Lee3;->I:Lhe3;

    if-eq v1, v2, :cond_48

    iget-wide v3, v8, Lee3;->G:J

    iget-object v5, v1, Lhe3;->l:Lhe3;

    iget-wide v5, v5, Lhe3;->f:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_48

    .line 237
    invoke-virtual {v1}, Lhe3;->a()V

    .line 238
    iget-object v1, v8, Lee3;->J:Lhe3;

    iget-object v1, v1, Lhe3;->l:Lhe3;

    invoke-virtual {v8, v1}, Lee3;->n(Lhe3;)V

    .line 239
    new-instance v1, Lge3;

    iget-object v2, v8, Lee3;->J:Lhe3;

    iget v3, v2, Lhe3;->g:I

    iget-wide v4, v2, Lhe3;->h:J

    invoke-direct {v1, v3, v4, v5}, Lge3;-><init>(IJ)V

    iput-object v1, v8, Lee3;->p:Lge3;

    .line 240
    invoke-virtual/range {p0 .. p0}, Lee3;->u()V

    .line 241
    iget-object v1, v8, Lee3;->l:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, v8, Lee3;->p:Lge3;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2a

    .line 242
    :cond_48
    iget-boolean v1, v2, Lhe3;->i:Z

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    .line 243
    :goto_2b
    iget-object v2, v8, Lee3;->e:[Loe3;

    array-length v3, v2

    if-ge v1, v3, :cond_51

    .line 244
    aget-object v2, v2, v1

    .line 245
    iget-object v3, v8, Lee3;->I:Lhe3;

    iget-object v3, v3, Lhe3;->d:[Lri3;

    aget-object v3, v3, v1

    if-eqz v3, :cond_49

    .line 246
    invoke-interface {v2}, Loe3;->u()Lri3;

    move-result-object v4

    if-ne v4, v3, :cond_49

    .line 247
    invoke-interface {v2}, Loe3;->w()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 248
    invoke-interface {v2}, Loe3;->q()V

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_4a
    const/4 v1, 0x0

    .line 249
    :goto_2c
    iget-object v2, v8, Lee3;->e:[Loe3;

    array-length v3, v2

    if-ge v1, v3, :cond_4c

    .line 250
    aget-object v2, v2, v1

    .line 251
    iget-object v3, v8, Lee3;->I:Lhe3;

    iget-object v3, v3, Lhe3;->d:[Lri3;

    aget-object v3, v3, v1

    .line 252
    invoke-interface {v2}, Loe3;->u()Lri3;

    move-result-object v4

    if-ne v4, v3, :cond_51

    if-eqz v3, :cond_4b

    .line 253
    invoke-interface {v2}, Loe3;->w()Z

    move-result v2

    if-nez v2, :cond_4b

    goto/16 :goto_31

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 254
    :cond_4c
    iget-object v1, v8, Lee3;->I:Lhe3;

    iget-object v2, v1, Lhe3;->l:Lhe3;

    if-eqz v2, :cond_51

    iget-boolean v3, v2, Lhe3;->j:Z

    if-eqz v3, :cond_51

    .line 255
    iget-object v1, v1, Lhe3;->m:Lbk3;

    .line 256
    iput-object v2, v8, Lee3;->I:Lhe3;

    .line 257
    iget-object v3, v2, Lhe3;->m:Lbk3;

    .line 258
    iget-object v2, v2, Lhe3;->a:Lxi3;

    .line 259
    invoke-interface {v2}, Lxi3;->c()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    goto :goto_2d

    :cond_4d
    const/4 v2, 0x0

    :goto_2d
    const/4 v4, 0x0

    .line 260
    :goto_2e
    iget-object v5, v8, Lee3;->e:[Loe3;

    array-length v6, v5

    if-ge v4, v6, :cond_51

    .line 261
    aget-object v5, v5, v4

    .line 262
    iget-object v6, v1, Lbk3;->b:Lak3;

    invoke-virtual {v6, v4}, Lak3;->a(I)Lyj3;

    move-result-object v6

    if-eqz v6, :cond_50

    if-nez v2, :cond_4f

    .line 263
    invoke-interface {v5}, Loe3;->r()Z

    move-result v6

    if-nez v6, :cond_50

    .line 264
    iget-object v6, v3, Lbk3;->b:Lak3;

    invoke-virtual {v6, v4}, Lak3;->a(I)Lyj3;

    move-result-object v6

    .line 265
    iget-object v7, v1, Lbk3;->d:[Lqe3;

    aget-object v7, v7, v4

    .line 266
    iget-object v11, v3, Lbk3;->d:[Lqe3;

    aget-object v11, v11, v4

    if-eqz v6, :cond_4f

    .line 267
    invoke-virtual {v11, v7}, Lqe3;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 268
    invoke-interface {v6}, Lyj3;->length()I

    move-result v7

    new-array v11, v7, [Lcom/google/android/gms/internal/ads/zzht;

    const/4 v12, 0x0

    :goto_2f
    if-ge v12, v7, :cond_4e

    .line 269
    invoke-interface {v6, v12}, Lyj3;->c(I)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v15

    aput-object v15, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2f

    .line 270
    :cond_4e
    iget-object v6, v8, Lee3;->I:Lhe3;

    iget-object v7, v6, Lhe3;->d:[Lri3;

    aget-object v7, v7, v4

    .line 271
    invoke-virtual {v6}, Lhe3;->e()J

    move-result-wide v9

    .line 272
    invoke-interface {v5, v11, v7, v9, v10}, Loe3;->o([Lcom/google/android/gms/internal/ads/zzht;Lri3;J)V

    goto :goto_30

    .line 273
    :cond_4f
    invoke-interface {v5}, Loe3;->q()V

    :cond_50
    :goto_30
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_2e

    .line 274
    :cond_51
    :goto_31
    iget-object v1, v8, Lee3;->J:Lhe3;

    const-wide/16 v2, 0xa

    if-nez v1, :cond_52

    .line 275
    invoke-virtual/range {p0 .. p0}, Lee3;->w()V

    .line 276
    invoke-virtual {v8, v13, v14, v2, v3}, Lee3;->g(JJ)V

    :goto_32
    const/4 v1, 0x1

    goto/16 :goto_41

    :cond_52
    const-string v1, "doSomeWork"

    .line 277
    invoke-static {v1}, Lc50;->g(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lee3;->u()V

    .line 279
    iget-object v1, v8, Lee3;->J:Lhe3;

    iget-object v1, v1, Lhe3;->a:Lxi3;

    iget-object v4, v8, Lee3;->p:Lge3;

    iget-wide v4, v4, Lge3;->c:J

    invoke-interface {v1, v4, v5}, Lxi3;->g(J)V

    .line 280
    iget-object v1, v8, Lee3;->u:[Loe3;

    array-length v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_33
    if-ge v7, v4, :cond_58

    aget-object v9, v1, v7

    .line 281
    iget-wide v10, v8, Lee3;->G:J

    iget-wide v2, v8, Lee3;->D:J

    invoke-interface {v9, v10, v11, v2, v3}, Loe3;->n(JJ)V

    if-eqz v6, :cond_53

    .line 282
    invoke-interface {v9}, Loe3;->j()Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v6, 0x1

    goto :goto_34

    :cond_53
    const/4 v6, 0x0

    .line 283
    :goto_34
    invoke-interface {v9}, Loe3;->isReady()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-interface {v9}, Loe3;->j()Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_35

    :cond_54
    const/4 v2, 0x0

    goto :goto_36

    :cond_55
    :goto_35
    const/4 v2, 0x1

    :goto_36
    if-nez v2, :cond_56

    .line 284
    invoke-interface {v9}, Loe3;->p()V

    :cond_56
    if-eqz v5, :cond_57

    if-eqz v2, :cond_57

    const/4 v5, 0x1

    goto :goto_37

    :cond_57
    const/4 v5, 0x0

    :goto_37
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v2, 0xa

    goto :goto_33

    :cond_58
    if-nez v5, :cond_59

    .line 285
    invoke-virtual/range {p0 .. p0}, Lee3;->w()V

    .line 286
    :cond_59
    iget-object v1, v8, Lee3;->s:Lxk3;

    if-eqz v1, :cond_5a

    .line 287
    invoke-interface {v1}, Lxk3;->a()Lpe3;

    move-result-object v1

    .line 288
    iget-object v2, v8, Lee3;->q:Lpe3;

    invoke-virtual {v1, v2}, Lpe3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 289
    iput-object v1, v8, Lee3;->q:Lpe3;

    .line 290
    iget-object v2, v8, Lee3;->i:Ldl3;

    iget-object v3, v8, Lee3;->s:Lxk3;

    invoke-virtual {v2, v3}, Ldl3;->b(Lxk3;)V

    .line 291
    iget-object v2, v8, Lee3;->l:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 293
    :cond_5a
    iget-object v1, v8, Lee3;->K:Lse3;

    iget-object v2, v8, Lee3;->J:Lhe3;

    iget v2, v2, Lhe3;->g:I

    iget-object v3, v8, Lee3;->o:Lue3;

    const/4 v4, 0x0

    .line 294
    invoke-virtual {v1, v2, v3, v4}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object v1

    .line 295
    iget-wide v1, v1, Lue3;->c:J

    if-eqz v6, :cond_5c

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v3

    if-eqz v6, :cond_5b

    .line 296
    iget-object v3, v8, Lee3;->p:Lge3;

    iget-wide v3, v3, Lge3;->c:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_5c

    :cond_5b
    iget-object v3, v8, Lee3;->J:Lhe3;

    iget-boolean v3, v3, Lhe3;->i:Z

    if-eqz v3, :cond_5c

    const/4 v3, 0x4

    .line 297
    invoke-virtual {v8, v3}, Lee3;->a(I)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lee3;->t()V

    goto/16 :goto_3c

    .line 299
    :cond_5c
    iget v3, v8, Lee3;->z:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_63

    .line 300
    iget-object v3, v8, Lee3;->u:[Loe3;

    array-length v3, v3

    if-lez v3, :cond_62

    if-eqz v5, :cond_61

    .line 301
    iget-boolean v1, v8, Lee3;->x:Z

    .line 302
    iget-object v2, v8, Lee3;->H:Lhe3;

    iget-boolean v3, v2, Lhe3;->j:Z

    if-nez v3, :cond_5d

    .line 303
    iget-wide v2, v2, Lhe3;->h:J

    goto :goto_38

    .line 304
    :cond_5d
    iget-object v2, v2, Lhe3;->a:Lxi3;

    invoke-interface {v2}, Lxi3;->d()J

    move-result-wide v2

    :goto_38
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_5f

    .line 305
    iget-object v2, v8, Lee3;->H:Lhe3;

    iget-boolean v3, v2, Lhe3;->i:Z

    if-eqz v3, :cond_5e

    const/4 v1, 0x1

    goto :goto_39

    .line 306
    :cond_5e
    iget-object v3, v8, Lee3;->K:Lse3;

    iget v2, v2, Lhe3;->g:I

    iget-object v4, v8, Lee3;->o:Lue3;

    const/4 v5, 0x0

    .line 307
    invoke-virtual {v3, v2, v4, v5}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object v2

    .line 308
    iget-wide v2, v2, Lue3;->c:J

    .line 309
    :cond_5f
    iget-boolean v4, v8, Lee3;->L:Z

    if-eqz v4, :cond_60

    .line 310
    iget-object v2, v8, Lee3;->h:Ldv0;

    iget-object v3, v8, Lee3;->p:Lge3;

    iget-wide v3, v3, Lge3;->d:J

    iget-object v5, v8, Lee3;->H:Lhe3;

    iget-wide v6, v8, Lee3;->G:J

    .line 311
    invoke-virtual {v5}, Lhe3;->e()J

    move-result-wide v9

    sub-long/2addr v6, v9

    sub-long/2addr v3, v6

    .line 312
    invoke-virtual {v2, v3, v4, v1}, Ldv0;->a(JZ)Z

    move-result v1

    goto :goto_39

    .line 313
    :cond_60
    iget-object v4, v8, Lee3;->h:Ldv0;

    iget-object v5, v8, Lee3;->H:Lhe3;

    iget-wide v6, v8, Lee3;->G:J

    .line 314
    invoke-virtual {v5}, Lhe3;->e()J

    move-result-wide v9

    sub-long/2addr v6, v9

    sub-long/2addr v2, v6

    .line 315
    invoke-virtual {v4, v2, v3, v1}, Ldv0;->a(JZ)Z

    move-result v1

    :goto_39
    if-eqz v1, :cond_61

    const/4 v1, 0x1

    goto :goto_3a

    :cond_61
    const/4 v1, 0x0

    goto :goto_3a

    .line 316
    :cond_62
    invoke-virtual {v8, v1, v2}, Lee3;->r(J)Z

    move-result v1

    :goto_3a
    if-eqz v1, :cond_65

    const/4 v1, 0x3

    .line 317
    invoke-virtual {v8, v1}, Lee3;->a(I)V

    .line 318
    iget-boolean v1, v8, Lee3;->w:Z

    if-eqz v1, :cond_65

    .line 319
    invoke-virtual/range {p0 .. p0}, Lee3;->s()V

    goto :goto_3c

    :cond_63
    const/4 v4, 0x3

    if-ne v3, v4, :cond_65

    .line 320
    iget-object v3, v8, Lee3;->u:[Loe3;

    array-length v3, v3

    if-lez v3, :cond_64

    goto :goto_3b

    .line 321
    :cond_64
    invoke-virtual {v8, v1, v2}, Lee3;->r(J)Z

    move-result v5

    :goto_3b
    if-nez v5, :cond_65

    .line 322
    iget-boolean v1, v8, Lee3;->w:Z

    iput-boolean v1, v8, Lee3;->x:Z

    const/4 v1, 0x2

    .line 323
    invoke-virtual {v8, v1}, Lee3;->a(I)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lee3;->t()V

    .line 325
    :cond_65
    :goto_3c
    iget v1, v8, Lee3;->z:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_66

    .line 326
    iget-object v1, v8, Lee3;->u:[Loe3;

    array-length v2, v1

    const/4 v9, 0x0

    :goto_3d
    if-ge v9, v2, :cond_66

    aget-object v3, v1, v9

    .line 327
    invoke-interface {v3}, Loe3;->p()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 328
    :cond_66
    iget-boolean v1, v8, Lee3;->w:Z

    if-eqz v1, :cond_67

    iget v1, v8, Lee3;->z:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_68

    :cond_67
    iget v1, v8, Lee3;->z:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6a

    .line 329
    :cond_68
    iget v1, v8, Lee3;->M:I

    if-lez v1, :cond_69

    iget v1, v8, Lee3;->M:I

    int-to-long v2, v1

    goto :goto_3e

    :cond_69
    const-wide/16 v2, 0xa

    .line 330
    :goto_3e
    invoke-virtual {v8, v13, v14, v2, v3}, Lee3;->g(JJ)V

    goto :goto_40

    .line 331
    :cond_6a
    iget-object v1, v8, Lee3;->u:[Loe3;

    array-length v1, v1

    if-eqz v1, :cond_6c

    .line 332
    iget v1, v8, Lee3;->N:I

    if-lez v1, :cond_6b

    iget v1, v8, Lee3;->N:I

    int-to-long v1, v1

    goto :goto_3f

    :cond_6b
    move-wide/from16 v1, v16

    .line 333
    :goto_3f
    invoke-virtual {v8, v13, v14, v1, v2}, Lee3;->g(JJ)V

    goto :goto_40

    .line 334
    :cond_6c
    iget-object v1, v8, Lee3;->j:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 335
    :goto_40
    invoke-static {}, Lc50;->R()V

    goto/16 :goto_32

    :goto_41
    return v1

    .line 336
    :pswitch_b
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6d

    const/4 v1, 0x0

    const/4 v15, 0x1

    goto :goto_42

    :cond_6d
    const/4 v1, 0x0

    const/4 v15, 0x0

    .line 337
    :goto_42
    iput-boolean v1, v8, Lee3;->x:Z

    .line 338
    iput-boolean v15, v8, Lee3;->w:Z

    if-nez v15, :cond_6e

    .line 339
    invoke-virtual/range {p0 .. p0}, Lee3;->t()V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lee3;->u()V

    goto :goto_43

    .line 341
    :cond_6e
    iget v1, v8, Lee3;->z:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6f

    .line 342
    invoke-virtual/range {p0 .. p0}, Lee3;->s()V

    .line 343
    iget-object v1, v8, Lee3;->j:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_43

    :cond_6f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_70

    .line 344
    iget-object v1, v8, Lee3;->j:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_70
    :goto_43
    const/4 v1, 0x1

    return v1

    .line 345
    :pswitch_c
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lzi3;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_71

    const/4 v1, 0x1

    goto :goto_44

    :cond_71
    const/4 v1, 0x0

    .line 346
    :goto_44
    iget-object v3, v8, Lee3;->l:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v3, 0x1

    .line 347
    invoke-virtual {v8, v3}, Lee3;->z(Z)V

    .line 348
    iget-object v3, v8, Lee3;->h:Ldv0;

    invoke-virtual {v3}, Ldv0;->b()V

    if-eqz v1, :cond_72

    .line 349
    new-instance v1, Lge3;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v4, v5, v6}, Lge3;-><init>(IJ)V

    iput-object v1, v8, Lee3;->p:Lge3;

    .line 350
    :cond_72
    iput-object v2, v8, Lee3;->t:Lzi3;

    .line 351
    iget-object v1, v8, Lee3;->m:Lde3;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3, v8}, Lzi3;->a(Lde3;ZLyi3;)V

    const/4 v1, 0x2

    .line 352
    invoke-virtual {v8, v1}, Lee3;->a(I)V

    .line 353
    iget-object v2, v8, Lee3;->j:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f
    .catch Lyd3; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    return v3

    :catch_0
    move-exception v0

    goto :goto_45

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v1

    const/4 v1, 0x1

    const/16 v3, 0x8

    goto :goto_46

    :catch_2
    move-exception v0

    move-object v1, v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    .line 354
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    iget-object v2, v8, Lee3;->l:Landroid/os/Handler;

    invoke-static {v1}, Lyd3;->c(Ljava/lang/RuntimeException;)Lyd3;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lee3;->v()V

    const/4 v1, 0x1

    return v1

    :goto_45
    move-object v1, v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Source error."

    .line 358
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    iget-object v2, v8, Lee3;->l:Landroid/os/Handler;

    invoke-static {v1}, Lyd3;->a(Ljava/io/IOException;)Lyd3;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lee3;->v()V

    const/4 v1, 0x1

    return v1

    :catch_3
    move-exception v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    move-object v2, v0

    :goto_46
    const-string v4, "ExoPlayerImplInternal"

    const-string v5, "Renderer error."

    .line 361
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    iget-object v4, v8, Lee3;->l:Landroid/os/Handler;

    invoke-virtual {v4, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lee3;->v()V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lxi3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lee3;->j:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final k(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    new-instance v0, Lge3;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lge3;-><init>(IJ)V

    iput-object v0, p0, Lee3;->p:Lge3;

    .line 2
    iget-object v2, p0, Lee3;->l:Landroid/os/Handler;

    new-instance v3, Lie3;

    iget-object v4, p0, Lee3;->K:Lse3;

    invoke-direct {v3, v4, p1, v0, p2}, Lie3;-><init>(Lse3;Ljava/lang/Object;Lge3;I)V

    const/4 p1, 0x6

    invoke-virtual {v2, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4
    new-instance p1, Lge3;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2, v3}, Lge3;-><init>(IJ)V

    iput-object p1, p0, Lee3;->p:Lge3;

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Lee3;->a(I)V

    .line 6
    invoke-virtual {p0, v1}, Lee3;->z(Z)V

    return-void
.end method

.method public final l([ZI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-array v1, v1, [Loe3;

    iput-object v1, v0, Lee3;->u:[Loe3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, v0, Lee3;->e:[Loe3;

    array-length v5, v4

    if-ge v2, v5, :cond_7

    .line 3
    aget-object v4, v4, v2

    .line 4
    iget-object v5, v0, Lee3;->J:Lhe3;

    iget-object v5, v5, Lhe3;->m:Lbk3;

    iget-object v5, v5, Lbk3;->b:Lak3;

    .line 5
    iget-object v5, v5, Lak3;->b:[Lyj3;

    aget-object v5, v5, v2

    if-eqz v5, :cond_6

    .line 6
    iget-object v6, v0, Lee3;->u:[Loe3;

    add-int/lit8 v15, v3, 0x1

    aput-object v4, v6, v3

    .line 7
    invoke-interface {v4}, Loe3;->getState()I

    move-result v3

    if-nez v3, :cond_5

    .line 8
    iget-object v3, v0, Lee3;->J:Lhe3;

    iget-object v3, v3, Lhe3;->m:Lbk3;

    iget-object v3, v3, Lbk3;->d:[Lqe3;

    aget-object v7, v3, v2

    .line 9
    iget-boolean v3, v0, Lee3;->w:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lee3;->z:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_1
    aget-boolean v8, p1, v2

    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    .line 11
    :goto_2
    invoke-interface {v5}, Lyj3;->length()I

    move-result v6

    new-array v8, v6, [Lcom/google/android/gms/internal/ads/zzht;

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_2

    .line 12
    invoke-interface {v5, v9}, Lyj3;->c(I)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 13
    :cond_2
    iget-object v5, v0, Lee3;->J:Lhe3;

    iget-object v6, v5, Lhe3;->d:[Lri3;

    aget-object v9, v6, v2

    iget-wide v10, v0, Lee3;->G:J

    .line 14
    invoke-virtual {v5}, Lhe3;->e()J

    move-result-wide v13

    move-object v6, v4

    .line 15
    invoke-interface/range {v6 .. v14}, Loe3;->t(Lqe3;[Lcom/google/android/gms/internal/ads/zzht;Lri3;JZJ)V

    .line 16
    invoke-interface {v4}, Loe3;->m()Lxk3;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 17
    iget-object v6, v0, Lee3;->s:Lxk3;

    if-nez v6, :cond_3

    .line 18
    iput-object v5, v0, Lee3;->s:Lxk3;

    .line 19
    iput-object v4, v0, Lee3;->r:Loe3;

    .line 20
    iget-object v6, v0, Lee3;->q:Lpe3;

    invoke-interface {v5, v6}, Lxk3;->d(Lpe3;)Lpe3;

    goto :goto_4

    .line 21
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v2, Lyd3;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v1, v4}, Lyd3;-><init>(ILjava/lang/Throwable;I)V

    .line 23
    throw v2

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 24
    invoke-interface {v4}, Loe3;->start()V

    :cond_5
    move v3, v15

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final m(IJ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lee3;->t()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lee3;->x:Z

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Lee3;->a(I)V

    .line 4
    iget-object v2, p0, Lee3;->J:Lhe3;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    iget-object p1, p0, Lee3;->H:Lhe3;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lhe3;->a()V

    :cond_0
    move-object v4, v3

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 7
    iget v5, v2, Lhe3;->g:I

    if-ne v5, p1, :cond_2

    iget-boolean v5, v2, Lhe3;->j:Z

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v2}, Lhe3;->a()V

    .line 9
    :goto_1
    iget-object v2, v2, Lhe3;->l:Lhe3;

    goto :goto_0

    .line 10
    :cond_3
    :goto_2
    iget-object p1, p0, Lee3;->J:Lhe3;

    if-ne p1, v4, :cond_4

    iget-object v2, p0, Lee3;->I:Lhe3;

    if-eq p1, v2, :cond_6

    .line 11
    :cond_4
    iget-object p1, p0, Lee3;->u:[Loe3;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_5

    aget-object v6, p1, v5

    .line 12
    invoke-interface {v6}, Loe3;->s()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    new-array p1, v0, [Loe3;

    .line 13
    iput-object p1, p0, Lee3;->u:[Loe3;

    .line 14
    iput-object v3, p0, Lee3;->s:Lxk3;

    .line 15
    iput-object v3, p0, Lee3;->r:Loe3;

    .line 16
    iput-object v3, p0, Lee3;->J:Lhe3;

    :cond_6
    if-eqz v4, :cond_8

    .line 17
    iput-object v3, v4, Lhe3;->l:Lhe3;

    .line 18
    iput-object v4, p0, Lee3;->H:Lhe3;

    .line 19
    iput-object v4, p0, Lee3;->I:Lhe3;

    .line 20
    invoke-virtual {p0, v4}, Lee3;->n(Lhe3;)V

    .line 21
    iget-object p1, p0, Lee3;->J:Lhe3;

    iget-boolean v0, p1, Lhe3;->k:Z

    if-eqz v0, :cond_7

    .line 22
    iget-object p1, p1, Lhe3;->a:Lxi3;

    invoke-interface {p1, p2, p3}, Lxi3;->i(J)J

    move-result-wide p1

    move-wide p2, p1

    .line 23
    :cond_7
    invoke-virtual {p0, p2, p3}, Lee3;->q(J)V

    .line 24
    invoke-virtual {p0}, Lee3;->x()V

    goto :goto_4

    .line 25
    :cond_8
    iput-object v3, p0, Lee3;->H:Lhe3;

    .line 26
    iput-object v3, p0, Lee3;->I:Lhe3;

    .line 27
    iput-object v3, p0, Lee3;->J:Lhe3;

    .line 28
    invoke-virtual {p0, p2, p3}, Lee3;->q(J)V

    .line 29
    :goto_4
    iget-object p1, p0, Lee3;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method public final n(Lhe3;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lee3;->J:Lhe3;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lee3;->e:[Loe3;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lee3;->e:[Loe3;

    array-length v5, v4

    if-ge v2, v5, :cond_7

    .line 4
    aget-object v4, v4, v2

    .line 5
    invoke-interface {v4}, Loe3;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v0, v2

    .line 6
    iget-object v5, p1, Lhe3;->m:Lbk3;

    iget-object v5, v5, Lbk3;->b:Lak3;

    .line 7
    iget-object v5, v5, Lak3;->b:[Lyj3;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 8
    :cond_2
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_6

    if-eqz v5, :cond_3

    .line 9
    invoke-interface {v4}, Loe3;->r()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 10
    invoke-interface {v4}, Loe3;->u()Lri3;

    move-result-object v5

    iget-object v6, p0, Lee3;->J:Lhe3;

    iget-object v6, v6, Lhe3;->d:[Lri3;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_6

    .line 11
    :cond_3
    iget-object v5, p0, Lee3;->r:Loe3;

    if-ne v4, v5, :cond_4

    .line 12
    iget-object v5, p0, Lee3;->i:Ldl3;

    iget-object v6, p0, Lee3;->s:Lxk3;

    invoke-virtual {v5, v6}, Ldl3;->b(Lxk3;)V

    const/4 v5, 0x0

    .line 13
    iput-object v5, p0, Lee3;->s:Lxk3;

    .line 14
    iput-object v5, p0, Lee3;->r:Loe3;

    .line 15
    :cond_4
    invoke-interface {v4}, Loe3;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 16
    invoke-interface {v4}, Loe3;->stop()V

    .line 17
    :cond_5
    invoke-interface {v4}, Loe3;->s()V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_7
    iput-object p1, p0, Lee3;->J:Lhe3;

    .line 19
    iget-object v1, p0, Lee3;->l:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p1, p1, Lhe3;->m:Lbk3;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 20
    invoke-virtual {p0, v0, v3}, Lee3;->l([ZI)V

    return-void
.end method

.method public final o(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lee3;->l:Landroid/os/Handler;

    new-instance v1, Lie3;

    iget-object v2, p0, Lee3;->K:Lse3;

    iget-object v3, p0, Lee3;->p:Lge3;

    invoke-direct {v1, v2, p1, v3, p2}, Lie3;-><init>(Lse3;Ljava/lang/Object;Lge3;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final p()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lee3;->K:Lse3;

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lee3;->d(Lse3;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final q(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lee3;->J:Lhe3;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    add-long/2addr p1, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lhe3;->e()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 3
    :goto_0
    iput-wide p1, p0, Lee3;->G:J

    .line 4
    iget-object v0, p0, Lee3;->i:Ldl3;

    invoke-virtual {v0, p1, p2}, Ldl3;->e(J)V

    .line 5
    iget-object p1, p0, Lee3;->u:[Loe3;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 6
    iget-wide v2, p0, Lee3;->G:J

    invoke-interface {v1, v2, v3}, Loe3;->l(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final r(J)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 1
    iget-object v0, p0, Lee3;->p:Lge3;

    iget-wide v0, v0, Lge3;->c:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    iget-object p1, p0, Lee3;->J:Lhe3;

    iget-object p1, p1, Lhe3;->l:Lhe3;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lhe3;->j:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final s()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lee3;->x:Z

    .line 2
    iget-object v1, p0, Lee3;->i:Ldl3;

    .line 3
    iget-boolean v2, v1, Ldl3;->a:Z

    if-nez v2, :cond_0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Ldl3;->c:J

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v1, Ldl3;->a:Z

    .line 6
    :cond_0
    iget-object v1, p0, Lee3;->u:[Loe3;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 7
    invoke-interface {v3}, Loe3;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lee3;->i:Ldl3;

    .line 2
    iget-boolean v1, v0, Ldl3;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ldl3;->c()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ldl3;->e(J)V

    .line 4
    iput-boolean v2, v0, Ldl3;->a:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lee3;->u:[Loe3;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 6
    invoke-static {v3}, Lee3;->i(Loe3;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final u()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lee3;->J:Lhe3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lhe3;->a:Lxi3;

    invoke-interface {v0}, Lxi3;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0, v0, v1}, Lee3;->q(J)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lee3;->r:Loe3;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Loe3;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lee3;->s:Lxk3;

    invoke-interface {v0}, Lxk3;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lee3;->G:J

    .line 6
    iget-object v2, p0, Lee3;->i:Ldl3;

    invoke-virtual {v2, v0, v1}, Ldl3;->e(J)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lee3;->i:Ldl3;

    invoke-virtual {v0}, Ldl3;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lee3;->G:J

    .line 8
    :goto_0
    iget-object v0, p0, Lee3;->J:Lhe3;

    iget-wide v1, p0, Lee3;->G:J

    .line 9
    invoke-virtual {v0}, Lhe3;->e()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 10
    :goto_1
    iget-object v2, p0, Lee3;->p:Lge3;

    iput-wide v0, v2, Lge3;->c:J

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lee3;->D:J

    .line 12
    iget-object v0, p0, Lee3;->u:[Loe3;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    .line 13
    :cond_3
    iget-object v0, p0, Lee3;->J:Lhe3;

    iget-object v0, v0, Lhe3;->a:Lxi3;

    invoke-interface {v0}, Lxi3;->d()J

    move-result-wide v3

    .line 14
    :goto_2
    iget-object v0, p0, Lee3;->p:Lge3;

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    .line 15
    iget-object v1, p0, Lee3;->K:Lse3;

    iget-object v2, p0, Lee3;->J:Lhe3;

    iget v2, v2, Lhe3;->g:I

    iget-object v3, p0, Lee3;->o:Lue3;

    const/4 v4, 0x0

    .line 16
    invoke-virtual {v1, v2, v3, v4}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object v1

    .line 17
    iget-wide v3, v1, Lue3;->c:J

    .line 18
    :cond_4
    iput-wide v3, v0, Lge3;->d:J

    return-void
.end method

.method public final v()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lee3;->z(Z)V

    .line 2
    iget-object v1, p0, Lee3;->h:Ldv0;

    .line 3
    invoke-virtual {v1, v0}, Ldv0;->d(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lee3;->a(I)V

    return-void
.end method

.method public final w()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lee3;->H:Lhe3;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lhe3;->j:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lee3;->I:Lhe3;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lhe3;->l:Lhe3;

    if-ne v1, v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lee3;->u:[Loe3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Loe3;->w()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lee3;->H:Lhe3;

    iget-object v0, v0, Lhe3;->a:Lxi3;

    invoke-interface {v0}, Lxi3;->l()V

    :cond_3
    return-void
.end method

.method public final x()V
    .locals 11

    .line 1
    iget-object v0, p0, Lee3;->H:Lhe3;

    iget-boolean v1, v0, Lhe3;->j:Z

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lhe3;->a:Lxi3;

    invoke-interface {v0}, Lxi3;->a()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 3
    invoke-virtual {p0, v4}, Lee3;->y(Z)V

    return-void

    .line 4
    :cond_1
    iget-object v2, p0, Lee3;->H:Lhe3;

    iget-wide v5, p0, Lee3;->G:J

    .line 5
    invoke-virtual {v2}, Lhe3;->e()J

    move-result-wide v2

    sub-long/2addr v5, v2

    sub-long/2addr v0, v5

    .line 6
    iget-object v2, p0, Lee3;->h:Ldv0;

    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-wide v7, v2, Ldv0;->c:J

    const/4 v3, 0x2

    const/4 v9, 0x1

    cmp-long v10, v0, v7

    if-lez v10, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 9
    :cond_2
    iget-wide v7, v2, Ldv0;->b:J

    cmp-long v10, v0, v7

    if-gez v10, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 10
    :goto_1
    iget-object v1, v2, Ldv0;->a:Lik3;

    .line 11
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget v7, v1, Lik3;->e:I

    iget v8, v1, Lik3;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-int v7, v7, v8

    :try_start_2
    monitor-exit v1

    .line 13
    iget v1, v2, Ldv0;->f:I

    if-lt v7, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eq v0, v3, :cond_5

    if-ne v0, v9, :cond_6

    .line 14
    iget-boolean v0, v2, Ldv0;->g:Z

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    iput-boolean v4, v2, Ldv0;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    monitor-exit v2

    .line 16
    invoke-virtual {p0, v4}, Lee3;->y(Z)V

    if-eqz v4, :cond_7

    .line 17
    iget-object v0, p0, Lee3;->H:Lhe3;

    iget-object v0, v0, Lhe3;->a:Lxi3;

    invoke-interface {v0, v5, v6}, Lxi3;->b(J)Z

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final y(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lee3;->y:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lee3;->y:Z

    .line 3
    iget-object v0, p0, Lee3;->l:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final z(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lee3;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lee3;->x:Z

    .line 3
    iget-object v1, p0, Lee3;->i:Ldl3;

    .line 4
    iget-boolean v2, v1, Ldl3;->a:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ldl3;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldl3;->e(J)V

    .line 6
    iput-boolean v0, v1, Ldl3;->a:Z

    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lee3;->s:Lxk3;

    .line 8
    iput-object v1, p0, Lee3;->r:Loe3;

    const-wide/32 v2, 0x3938700

    .line 9
    iput-wide v2, p0, Lee3;->G:J

    .line 10
    iget-object v2, p0, Lee3;->u:[Loe3;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 11
    :try_start_0
    invoke-static {v5}, Lee3;->i(Loe3;)V

    .line 12
    invoke-interface {v5}, Loe3;->s()V
    :try_end_0
    .catch Lyd3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    .line 13
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array v2, v0, [Loe3;

    .line 14
    iput-object v2, p0, Lee3;->u:[Loe3;

    .line 15
    iget-object v2, p0, Lee3;->J:Lhe3;

    if-eqz v2, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    iget-object v2, p0, Lee3;->H:Lhe3;

    .line 17
    :goto_3
    invoke-static {v2}, Lee3;->h(Lhe3;)V

    .line 18
    iput-object v1, p0, Lee3;->H:Lhe3;

    .line 19
    iput-object v1, p0, Lee3;->I:Lhe3;

    .line 20
    iput-object v1, p0, Lee3;->J:Lhe3;

    .line 21
    invoke-virtual {p0, v0}, Lee3;->y(Z)V

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lee3;->t:Lzi3;

    if-eqz p1, :cond_3

    .line 23
    invoke-interface {p1}, Lzi3;->e()V

    .line 24
    iput-object v1, p0, Lee3;->t:Lzi3;

    .line 25
    :cond_3
    iput-object v1, p0, Lee3;->K:Lse3;

    :cond_4
    return-void
.end method
