.class public Lt17$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lt17;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lt17;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lt17$a;->a:Lt17;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "canceled"

    const-string v6, ""

    const-string v7, "Dispatcher"

    packed-switch v2, :pswitch_data_0

    .line 2
    :pswitch_0
    sget-object v2, Le27;->o:Landroid/os/Handler;

    new-instance v3, Lt17$a$a;

    invoke-direct {v3, v0, v1}, Lt17$a$a;-><init>(Lt17$a;Landroid/os/Message;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_10

    .line 3
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object v2, v0, Lt17$a;->a:Lt17;

    .line 5
    iget-object v4, v2, Lt17;->h:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_10

    .line 6
    :cond_0
    iget-object v4, v2, Lt17;->g:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll17;

    .line 8
    iget-object v6, v5, Ll17;->j:Ljava/lang/Object;

    .line 9
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_26

    .line 13
    iget-object v1, v2, Lt17;->j:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_10

    .line 14
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object v2, v0, Lt17$a;->a:Lt17;

    .line 16
    iget-object v3, v2, Lt17;->h:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_10

    .line 17
    :cond_4
    iget-object v3, v2, Lt17;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln17;

    .line 19
    iget-object v6, v4, Ln17;->f:Le27;

    .line 20
    iget-boolean v6, v6, Le27;->n:Z

    .line 21
    iget-object v10, v4, Ln17;->o:Ll17;

    .line 22
    iget-object v11, v4, Ln17;->p:Ljava/util/List;

    if-eqz v11, :cond_6

    .line 23
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    :goto_2
    if-nez v10, :cond_7

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    const-string v13, "\' was paused"

    const-string v14, "because tag \'"

    const-string v15, "paused"

    if-eqz v10, :cond_8

    .line 24
    iget-object v8, v10, Ll17;->j:Ljava/lang/Object;

    .line 25
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 26
    invoke-virtual {v4, v10}, Ln17;->d(Ll17;)V

    .line 27
    iget-object v8, v2, Lt17;->g:Ljava/util/Map;

    invoke-virtual {v10}, Ll17;->d()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_8

    .line 28
    iget-object v8, v10, Ll17;->b:Lh27;

    invoke-virtual {v8}, Lh27;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v15, v8, v9}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v12, :cond_b

    .line 29
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_3
    if-ltz v8, :cond_b

    .line 30
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ll17;

    .line 31
    iget-object v10, v9, Ll17;->j:Ljava/lang/Object;

    .line 32
    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_4

    .line 33
    :cond_9
    invoke-virtual {v4, v9}, Ln17;->d(Ll17;)V

    .line 34
    iget-object v10, v2, Lt17;->g:Ljava/util/Map;

    invoke-virtual {v9}, Ll17;->d()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_a

    .line 35
    iget-object v9, v9, Ll17;->b:Lh27;

    invoke-virtual {v9}, Lh27;->b()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v15, v9, v10}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 36
    :cond_b
    invoke-virtual {v4}, Ln17;->b()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    if-eqz v6, :cond_5

    .line 38
    invoke-static {v4}, Lp27;->c(Ln17;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "all actions paused"

    invoke-static {v7, v5, v4, v6}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 39
    :pswitch_3
    iget-object v2, v0, Lt17$a;->a:Lt17;

    iget v1, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 40
    :goto_5
    iput-boolean v8, v2, Lt17;->p:Z

    goto/16 :goto_10

    .line 41
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 42
    iget-object v2, v0, Lt17$a;->a:Lt17;

    .line 43
    iget-object v3, v2, Lt17;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v5, v3, Lg27;

    if-eqz v5, :cond_11

    .line 44
    check-cast v3, Lg27;

    .line 45
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    if-eqz v1, :cond_10

    .line 46
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_6

    .line 47
    :cond_d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eqz v8, :cond_f

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    const/4 v4, 0x6

    if-eq v8, v4, :cond_e

    const/16 v4, 0x9

    if-eq v8, v4, :cond_e

    .line 48
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 49
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    :cond_e
    const/4 v4, 0x4

    .line 50
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 51
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 52
    :cond_f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    .line 53
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 54
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    :pswitch_5
    const/4 v5, 0x1

    .line 55
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 56
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 57
    :pswitch_6
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 58
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 59
    :pswitch_7
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 60
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 61
    :cond_10
    :goto_6
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 62
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    :cond_11
    :goto_7
    if-eqz v1, :cond_26

    .line 63
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 64
    iget-object v1, v2, Lt17;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 65
    iget-object v1, v2, Lt17;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll17;

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 69
    iget-object v4, v3, Ll17;->a:Le27;

    .line 70
    iget-boolean v4, v4, Le27;->n:Z

    if-eqz v4, :cond_12

    .line 71
    iget-object v4, v3, Ll17;->b:Lh27;

    .line 72
    invoke-virtual {v4}, Lh27;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "replaying"

    .line 73
    invoke-static {v7, v5, v4, v6}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/4 v4, 0x0

    .line 74
    invoke-virtual {v2, v3, v4}, Lt17;->e(Ll17;Z)V

    goto :goto_8

    .line 75
    :pswitch_8
    iget-object v1, v0, Lt17$a;->a:Lt17;

    .line 76
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lt17;->m:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    iget-object v3, v1, Lt17;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 79
    iget-object v1, v1, Lt17;->j:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_10

    :cond_13
    const/4 v1, 0x0

    .line 81
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln17;

    .line 82
    iget-object v1, v1, Ln17;->f:Le27;

    .line 83
    iget-boolean v1, v1, Le27;->n:Z

    if-eqz v1, :cond_26

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln17;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_14

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_14
    invoke-static {v3}, Lp27;->c(Ln17;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 88
    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delivered"

    .line 89
    invoke-static {v7, v2, v1, v6}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 90
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ln17;

    .line 91
    iget-object v2, v0, Lt17$a;->a:Lt17;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lt17;->d(Ln17;Z)V

    goto/16 :goto_10

    .line 92
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ln17;

    .line 93
    iget-object v2, v0, Lt17$a;->a:Lt17;

    .line 94
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v4, v1, Ln17;->r:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_16

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    goto :goto_a

    :cond_16
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_17

    goto/16 :goto_10

    .line 96
    :cond_17
    iget-object v4, v2, Lt17;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v5, 0x0

    .line 97
    invoke-virtual {v2, v1, v5}, Lt17;->d(Ln17;Z)V

    goto/16 :goto_10

    :cond_18
    const/4 v5, 0x0

    .line 98
    iget-boolean v4, v2, Lt17;->o:Z

    if-eqz v4, :cond_19

    .line 99
    iget-object v3, v2, Lt17;->b:Landroid/content/Context;

    .line 100
    sget-object v4, Lp27;->a:Ljava/lang/StringBuilder;

    const-string v4, "connectivity"

    .line 101
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 103
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 104
    :cond_19
    iget-boolean v4, v2, Lt17;->p:Z

    .line 105
    iget v8, v1, Ln17;->v:I

    if-lez v8, :cond_1a

    const/4 v9, 0x1

    goto :goto_b

    :cond_1a
    const/4 v9, 0x0

    :goto_b
    if-nez v9, :cond_1b

    const/4 v4, 0x0

    goto :goto_c

    :cond_1b
    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 106
    iput v8, v1, Ln17;->v:I

    .line 107
    iget-object v8, v1, Ln17;->n:Lj27;

    invoke-virtual {v8, v4, v3}, Lj27;->g(ZLandroid/net/NetworkInfo;)Z

    move-result v4

    :goto_c
    if-eqz v4, :cond_1e

    .line 108
    iget-object v3, v1, Ln17;->f:Le27;

    .line 109
    iget-boolean v3, v3, Le27;->n:Z

    if-eqz v3, :cond_1c

    .line 110
    invoke-static {v1}, Lp27;->c(Ln17;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "retrying"

    .line 111
    invoke-static {v7, v4, v3, v6}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1c
    iget-object v3, v1, Ln17;->t:Ljava/lang/Exception;

    .line 113
    instance-of v3, v3, Lc27$a;

    if-eqz v3, :cond_1d

    .line 114
    iget v3, v1, Ln17;->m:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v1, Ln17;->m:I

    .line 115
    :cond_1d
    iget-object v2, v2, Lt17;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Ln17;->r:Ljava/util/concurrent/Future;

    goto/16 :goto_10

    .line 116
    :cond_1e
    iget-boolean v3, v2, Lt17;->o:Z

    if-eqz v3, :cond_1f

    .line 117
    iget-object v3, v1, Ln17;->n:Lj27;

    invoke-virtual {v3}, Lj27;->h()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_d

    :cond_1f
    const/4 v3, 0x0

    .line 118
    :goto_d
    invoke-virtual {v2, v1, v3}, Lt17;->d(Ln17;Z)V

    if-eqz v3, :cond_26

    .line 119
    iget-object v3, v1, Ln17;->o:Ll17;

    if-eqz v3, :cond_20

    .line 120
    invoke-virtual {v3}, Ll17;->d()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    const/4 v6, 0x1

    .line 121
    iput-boolean v6, v3, Ll17;->k:Z

    .line 122
    iget-object v6, v2, Lt17;->f:Ljava/util/Map;

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_20
    iget-object v1, v1, Ln17;->p:Ljava/util/List;

    if-eqz v1, :cond_26

    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v3, :cond_26

    .line 125
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll17;

    .line 126
    invoke-virtual {v4}, Ll17;->d()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_21

    const/4 v6, 0x1

    .line 127
    iput-boolean v6, v4, Ll17;->k:Z

    .line 128
    iget-object v6, v2, Lt17;->f:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :pswitch_b
    const/4 v5, 0x0

    .line 129
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ln17;

    .line 130
    iget-object v2, v0, Lt17$a;->a:Lt17;

    .line 131
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget v3, v1, Ln17;->l:I

    and-int/2addr v3, v4

    if-nez v3, :cond_22

    const/4 v8, 0x1

    goto :goto_f

    :cond_22
    const/4 v8, 0x0

    :goto_f
    if-eqz v8, :cond_23

    .line 133
    iget-object v3, v2, Lt17;->k:Lo17;

    .line 134
    iget-object v4, v1, Ln17;->j:Ljava/lang/String;

    .line 135
    iget-object v5, v1, Ln17;->q:Landroid/graphics/Bitmap;

    .line 136
    invoke-interface {v3, v4, v5}, Lo17;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 137
    :cond_23
    iget-object v3, v2, Lt17;->e:Ljava/util/Map;

    .line 138
    iget-object v4, v1, Ln17;->j:Ljava/lang/String;

    .line 139
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v2, v1}, Lt17;->a(Ln17;)V

    .line 141
    iget-object v2, v1, Ln17;->f:Le27;

    .line 142
    iget-boolean v2, v2, Le27;->n:Z

    if-eqz v2, :cond_26

    .line 143
    invoke-static {v1}, Lp27;->c(Ln17;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "batched"

    const-string v3, "for completion"

    invoke-static {v7, v2, v1, v3}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 144
    :pswitch_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ll17;

    .line 145
    iget-object v2, v0, Lt17$a;->a:Lt17;

    .line 146
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v3, v1, Ll17;->i:Ljava/lang/String;

    .line 148
    iget-object v4, v2, Lt17;->e:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln17;

    if-eqz v4, :cond_24

    .line 149
    invoke-virtual {v4, v1}, Ln17;->d(Ll17;)V

    .line 150
    invoke-virtual {v4}, Ln17;->b()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 151
    iget-object v4, v2, Lt17;->e:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v3, v1, Ll17;->a:Le27;

    .line 153
    iget-boolean v3, v3, Le27;->n:Z

    if-eqz v3, :cond_24

    .line 154
    iget-object v3, v1, Ll17;->b:Lh27;

    .line 155
    invoke-virtual {v3}, Lh27;->b()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {v7, v5, v3, v6}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_24
    iget-object v3, v2, Lt17;->h:Ljava/util/Set;

    .line 158
    iget-object v4, v1, Ll17;->j:Ljava/lang/Object;

    .line 159
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 160
    iget-object v3, v2, Lt17;->g:Ljava/util/Map;

    invoke-virtual {v1}, Ll17;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v3, v1, Ll17;->a:Le27;

    .line 162
    iget-boolean v3, v3, Le27;->n:Z

    if-eqz v3, :cond_25

    .line 163
    iget-object v3, v1, Ll17;->b:Lh27;

    .line 164
    invoke-virtual {v3}, Lh27;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "because paused request got canceled"

    invoke-static {v7, v5, v3, v4}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_25
    iget-object v2, v2, Lt17;->f:Ljava/util/Map;

    invoke-virtual {v1}, Ll17;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll17;

    if-eqz v1, :cond_26

    .line 166
    iget-object v2, v1, Ll17;->a:Le27;

    .line 167
    iget-boolean v2, v2, Le27;->n:Z

    if-eqz v2, :cond_26

    .line 168
    iget-object v1, v1, Ll17;->b:Lh27;

    .line 169
    invoke-virtual {v1}, Lh27;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "from replaying"

    invoke-static {v7, v5, v1, v2}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 170
    :pswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ll17;

    .line 171
    iget-object v2, v0, Lt17$a;->a:Lt17;

    const/4 v3, 0x1

    .line 172
    invoke-virtual {v2, v1, v3}, Lt17;->e(Ll17;Z)V

    :cond_26
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
