.class public final Lrk3;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lpi3;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final e:Lpi3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final f:Lmi3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmi3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:J

.field public i:Ljava/io/IOException;

.field public j:I

.field public volatile k:Ljava/lang/Thread;

.field public volatile l:Z

.field public final synthetic m:Lqk3;


# direct methods
.method public constructor <init>(Lqk3;Landroid/os/Looper;Lpi3;Lmi3;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lmi3<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lrk3;->m:Lqk3;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lrk3;->e:Lpi3;

    .line 4
    iput-object p4, p0, Lrk3;->f:Lmi3;

    .line 5
    iput p5, p0, Lrk3;->g:I

    .line 6
    iput-wide p6, p0, Lrk3;->h:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lrk3;->m:Lqk3;

    .line 2
    iget-object v0, v0, Lqk3;->b:Lrk3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lc50;->D(Z)V

    .line 4
    iget-object v0, p0, Lrk3;->m:Lqk3;

    .line 5
    iput-object p0, v0, Lqk3;->b:Lrk3;

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 6
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lrk3;->i:Ljava/io/IOException;

    .line 8
    iget-object p1, v0, Lqk3;->a:Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lrk3;->l:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lrk3;->i:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lrk3;->e:Lpi3;

    .line 7
    iput-boolean v3, v1, Lpi3;->f:Z

    .line 8
    iget-object v1, p0, Lrk3;->k:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lrk3;->k:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lrk3;->m:Lqk3;

    .line 11
    iput-object v0, p1, Lqk3;->b:Lrk3;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    iget-object p1, p0, Lrk3;->f:Lmi3;

    iget-object v0, p0, Lrk3;->e:Lpi3;

    invoke-virtual {p1, v0, v3}, Lmi3;->n(Lpi3;Z)V

    :cond_2
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lrk3;->l:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 3
    iput-object v3, v0, Lrk3;->i:Ljava/io/IOException;

    .line 4
    iget-object v1, v0, Lrk3;->m:Lqk3;

    .line 5
    iget-object v2, v1, Lqk3;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    iget-object v1, v1, Lqk3;->b:Lrk3;

    .line 7
    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v4, 0x4

    if-eq v2, v4, :cond_14

    .line 8
    iget-object v2, v0, Lrk3;->m:Lqk3;

    .line 9
    iput-object v3, v2, Lqk3;->b:Lrk3;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    iget-object v2, v0, Lrk3;->e:Lpi3;

    .line 12
    iget-boolean v2, v2, Lpi3;->f:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 13
    iget-object v1, v0, Lrk3;->f:Lmi3;

    iget-object v2, v0, Lrk3;->e:Lpi3;

    invoke-virtual {v1, v2, v4}, Lmi3;->n(Lpi3;Z)V

    return-void

    .line 14
    :cond_2
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_13

    const-wide/16 v6, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x2

    if-eq v2, v10, :cond_10

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    goto/16 :goto_6

    .line 15
    :cond_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/io/IOException;

    iput-object v1, v0, Lrk3;->i:Ljava/io/IOException;

    .line 16
    iget-object v2, v0, Lrk3;->f:Lmi3;

    iget-object v11, v0, Lrk3;->e:Lpi3;

    .line 17
    invoke-virtual {v2, v11}, Lmi3;->m(Lpi3;)V

    .line 18
    iget-object v12, v2, Lmi3;->h:Landroid/os/Handler;

    if-eqz v12, :cond_4

    iget-object v13, v2, Lmi3;->i:Lti3;

    if-eqz v13, :cond_4

    .line 19
    new-instance v13, Lqi3;

    invoke-direct {v13, v2, v1}, Lqi3;-><init>(Lmi3;Ljava/io/IOException;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    :cond_4
    instance-of v1, v1, Lmj3;

    if-eqz v1, :cond_5

    const/4 v4, 0x3

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {v2}, Lmi3;->q()I

    move-result v1

    .line 22
    iget v12, v2, Lmi3;->I:I

    if-le v1, v12, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-wide v12, v2, Lmi3;->F:J

    const-wide/16 v14, -0x1

    cmp-long v16, v12, v14

    if-nez v16, :cond_b

    iget-object v12, v2, Lmi3;->u:Lmg3;

    if-eqz v12, :cond_7

    .line 24
    invoke-interface {v12}, Lmg3;->g()J

    move-result-wide v12

    cmp-long v14, v12, v8

    if-nez v14, :cond_b

    .line 25
    :cond_7
    iput-wide v6, v2, Lmi3;->G:J

    .line 26
    iget-boolean v8, v2, Lmi3;->w:Z

    iput-boolean v8, v2, Lmi3;->y:Z

    .line 27
    iget-object v8, v2, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_a

    .line 28
    iget-object v12, v2, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lhj3;

    iget-boolean v13, v2, Lmi3;->w:Z

    if-eqz v13, :cond_9

    iget-object v13, v2, Lmi3;->C:[Z

    aget-boolean v13, v13, v9

    if-eqz v13, :cond_8

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v12, v13}, Lhj3;->o(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 29
    :cond_a
    iget-object v8, v11, Lpi3;->e:Lng3;

    iput-wide v6, v8, Lng3;->a:J

    .line 30
    iput-wide v6, v11, Lpi3;->h:J

    .line 31
    iput-boolean v5, v11, Lpi3;->g:Z

    .line 32
    :cond_b
    invoke-virtual {v2}, Lmi3;->q()I

    move-result v6

    iput v6, v2, Lmi3;->I:I

    if-eqz v1, :cond_c

    const/4 v4, 0x1

    :cond_c
    :goto_4
    if-ne v4, v3, :cond_d

    .line 33
    iget-object v1, v0, Lrk3;->m:Lqk3;

    iget-object v2, v0, Lrk3;->i:Ljava/io/IOException;

    .line 34
    iput-object v2, v1, Lqk3;->c:Ljava/io/IOException;

    return-void

    :cond_d
    if-eq v4, v10, :cond_f

    if-ne v4, v5, :cond_e

    const/4 v1, 0x1

    goto :goto_5

    .line 35
    :cond_e
    iget v1, v0, Lrk3;->j:I

    add-int/2addr v1, v5

    :goto_5
    iput v1, v0, Lrk3;->j:I

    sub-int/2addr v1, v5

    mul-int/lit16 v1, v1, 0x3e8

    const/16 v2, 0x1388

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v1, v1

    .line 37
    invoke-virtual {v0, v1, v2}, Lrk3;->a(J)V

    :cond_f
    :goto_6
    return-void

    .line 38
    :cond_10
    iget-object v1, v0, Lrk3;->f:Lmi3;

    iget-object v2, v0, Lrk3;->e:Lpi3;

    .line 39
    invoke-virtual {v1, v2}, Lmi3;->m(Lpi3;)V

    .line 40
    iput-boolean v5, v1, Lmi3;->J:Z

    .line 41
    iget-wide v4, v1, Lmi3;->B:J

    cmp-long v2, v4, v8

    if-nez v2, :cond_12

    .line 42
    invoke-virtual {v1}, Lmi3;->r()J

    move-result-wide v4

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v2, v4, v8

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    const-wide/16 v6, 0x2710

    add-long/2addr v6, v4

    .line 43
    :goto_7
    iput-wide v6, v1, Lmi3;->B:J

    .line 44
    iget-object v2, v1, Lmi3;->j:Lyi3;

    new-instance v4, Llj3;

    iget-wide v5, v1, Lmi3;->B:J

    iget-object v7, v1, Lmi3;->u:Lmg3;

    .line 45
    invoke-interface {v7}, Lmg3;->b()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Llj3;-><init>(JZ)V

    .line 46
    invoke-interface {v2, v4, v3}, Lyi3;->f(Lse3;Ljava/lang/Object;)V

    .line 47
    :cond_12
    iget-object v2, v1, Lmi3;->t:Lwi3;

    invoke-interface {v2, v1}, Lwi3;->e(Ljj3;)V

    return-void

    .line 48
    :cond_13
    iget-object v1, v0, Lrk3;->f:Lmi3;

    iget-object v2, v0, Lrk3;->e:Lpi3;

    invoke-virtual {v1, v2, v4}, Lmi3;->n(Lpi3;Z)V

    return-void

    .line 49
    :cond_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Error;

    throw v1
.end method

.method public final run()V
    .locals 6

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lrk3;->k:Ljava/lang/Thread;

    .line 2
    iget-object v3, p0, Lrk3;->e:Lpi3;

    .line 3
    iget-boolean v3, v3, Lpi3;->f:Z

    if-nez v3, :cond_1

    const-string v3, "load:"

    .line 4
    iget-object v4, p0, Lrk3;->e:Lpi3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-static {v3}, Lc50;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v3, p0, Lrk3;->e:Lpi3;

    invoke-virtual {v3}, Lpi3;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-static {}, Lc50;->R()V

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 7
    invoke-static {}, Lc50;->R()V

    .line 8
    throw v3

    .line 9
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lrk3;->l:Z

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    .line 11
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    iget-boolean v0, p0, Lrk3;->l:Z

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    :cond_3
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    .line 15
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    iget-boolean v0, p0, Lrk3;->l:Z

    if-nez v0, :cond_4

    .line 17
    new-instance v0, Ltk3;

    invoke-direct {v0, v1}, Ltk3;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void

    :catch_2
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    .line 18
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    iget-boolean v0, p0, Lrk3;->l:Z

    if-nez v0, :cond_5

    .line 20
    new-instance v0, Ltk3;

    invoke-direct {v0, v1}, Ltk3;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void

    .line 21
    :catch_3
    iget-object v0, p0, Lrk3;->e:Lpi3;

    .line 22
    iget-boolean v0, v0, Lpi3;->f:Z

    .line 23
    invoke-static {v0}, Lc50;->D(Z)V

    .line 24
    iget-boolean v0, p0, Lrk3;->l:Z

    if-nez v0, :cond_6

    .line 25
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    return-void

    :catch_4
    move-exception v0

    .line 26
    iget-boolean v1, p0, Lrk3;->l:Z

    if-nez v1, :cond_7

    .line 27
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    return-void
.end method
