.class public abstract Lwv2;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/Runnable;

.field public static final f:Ljava/lang/Runnable;

.field public static final g:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lxv2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxv2;-><init>(Lyv2;)V

    sput-object v0, Lwv2;->e:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Lxv2;

    invoke-direct {v0, v1}, Lxv2;-><init>(Lyv2;)V

    sput-object v0, Lwv2;->f:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lxv2;

    invoke-direct {v0, v1}, Lxv2;-><init>(Lyv2;)V

    sput-object v0, Lwv2;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    sget-object v1, Lwv2;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    sget-object v1, Lwv2;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 5
    sget-object v2, Lwv2;->g:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_0

    .line 6
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 7
    sget-object v2, Lwv2;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 8
    sget-object v3, Lwv2;->g:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_1

    .line 9
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 10
    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final run()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lwv2;->b()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lwv2;->d()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v6

    .line 5
    sget-object v7, Lwv2;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 7
    :goto_0
    sget-object v10, Lwv2;->f:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_2

    sget-object v11, Lwv2;->g:Ljava/lang/Runnable;

    if-ne v7, v11, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_8

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5

    :cond_2
    :goto_1
    add-int/2addr v9, v3

    if-le v9, v4, :cond_6

    .line 9
    sget-object v11, Lwv2;->g:Ljava/lang/Runnable;

    if-eq v7, v11, :cond_3

    invoke-virtual {p0, v10, v11}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 10
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v8, 0x1

    .line 11
    :goto_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_4

    .line 12
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 13
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_0

    :cond_8
    :goto_5
    if-eqz v2, :cond_12

    .line 14
    invoke-virtual {p0, v1, v6}, Lwv2;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_9
    move-object v6, v1

    .line 15
    :goto_6
    sget-object v7, Lwv2;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 17
    :goto_7
    sget-object v10, Lwv2;->f:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_b

    sget-object v11, Lwv2;->g:Ljava/lang/Runnable;

    if-ne v7, v11, :cond_a

    goto :goto_8

    :cond_a
    if-eqz v8, :cond_11

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_c

    :cond_b
    :goto_8
    add-int/2addr v9, v3

    if-le v9, v4, :cond_f

    .line 19
    sget-object v11, Lwv2;->g:Ljava/lang/Runnable;

    if-eq v7, v11, :cond_c

    invoke-virtual {p0, v10, v11}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 20
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz v8, :cond_d

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v8, 0x1

    .line 21
    :goto_a
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_b

    .line 22
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 23
    :cond_10
    :goto_b
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_7

    :cond_11
    :goto_c
    if-eqz v2, :cond_12

    .line 24
    invoke-virtual {p0, v6, v1}, Lwv2;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2
    sget-object v1, Lwv2;->e:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_0

    const-string v0, "running=[DONE]"

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lwv2;->f:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_1

    const-string v0, "running=[INTERRUPTED]"

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Ljo;->x(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "running=[RUNNING ON "

    const-string v3, "]"

    invoke-static {v1, v2, v0, v3}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "running=[NOT STARTED YET]"

    .line 6
    :goto_0
    invoke-virtual {p0}, Lwv2;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ", "

    invoke-static {v2, v0, v3, v1}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
