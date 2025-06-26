.class public Lex5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lex5$c;,
        Lex5$b;,
        Lex5$d;
    }
.end annotation


# instance fields
.field public final a:Lex5$c;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lex5$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lex5$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lex5;->c:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lex5;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lex5$c;

    invoke-direct {v0, p0}, Lex5$c;-><init>(Lex5;)V

    iput-object v0, p0, Lex5;->a:Lex5$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Callable;)Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Le45<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lex5;->a:Lex5$c;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lf45;

    invoke-direct {v1}, Lf45;-><init>()V

    .line 4
    :try_start_0
    new-instance v2, Lhx5;

    invoke-direct {v2, v1, p1}, Lhx5;-><init>(Lf45;Ljava/util/concurrent/Callable;)V

    .line 5
    invoke-virtual {v0, v2}, Lex5$c;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    const-class p1, Lex5;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    sget-object v2, Lqx5$a;->f:Lqx5$a;

    const-string v3, "Refused to enqueue task after panic"

    invoke-static {v2, p1, v3, v0}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_0
    iget-object p1, v1, Lf45;->a:Le55;

    return-object p1
.end method

.method public b(Lex5$d;JLjava/lang/Runnable;)Lex5$b;
    .locals 9

    .line 1
    iget-object v0, p0, Lex5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p2, 0x0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v5, v0, p2

    .line 3
    new-instance v0, Lex5$b;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lex5$b;-><init>(Lex5;Lex5$d;JLjava/lang/Runnable;Lex5$a;)V

    .line 4
    iget-object p1, p0, Lex5;->a:Lex5$c;

    .line 5
    new-instance p4, Lfx5;

    invoke-direct {p4, v0}, Lfx5;-><init>(Lex5$b;)V

    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v2, p1, Lex5$c;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, p4, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 9
    iput-object p2, v0, Lex5$b;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 10
    iget-object p1, p0, Lex5;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception p2

    .line 11
    monitor-exit p1

    throw p2
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lex5;->a:Lex5$c;

    .line 2
    iget-object v0, v0, Lex5$c;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance v1, Ldx5;

    invoke-direct {v1, p1}, Ldx5;-><init>(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lex5;->a:Lex5$c;

    .line 3
    iget-object v1, v1, Lex5$c;->f:Ljava/lang/Thread;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lex5;->a:Lex5$c;

    .line 5
    iget-object v3, v3, Lex5$c;->f:Ljava/lang/Thread;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "We are running on the wrong thread. Expected to be on the AsyncQueue thread %s/%d but was %s/%d"

    .line 7
    invoke-static {v0, v2}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 v0, 0x0

    throw v0
.end method
