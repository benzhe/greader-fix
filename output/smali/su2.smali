.class public Lsu2;
.super Lqw2;
.source "SourceFile"

# interfaces
.implements Law2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsu2$g;,
        Lsu2$e;,
        Lsu2$k;,
        Lsu2$c;,
        Lsu2$h;,
        Lsu2$b;,
        Lsu2$d;,
        Lsu2$f;,
        Lsu2$l;,
        Lsu2$i;,
        Lsu2$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lqw2;",
        "Law2<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final h:Z

.field public static final i:Ljava/util/logging/Logger;

.field public static final j:Lsu2$c;

.field public static final k:Ljava/lang/Object;


# instance fields
.field private volatile e:Ljava/lang/Object;

.field private volatile f:Lsu2$f;

.field private volatile g:Lsu2$l;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lsu2$l;

    :try_start_0
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    sput-boolean v1, Lsu2;->h:Z

    .line 5
    const-class v1, Lsu2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lsu2;->i:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    .line 6
    :try_start_1
    new-instance v2, Lsu2$k;

    invoke-direct {v2, v1}, Lsu2$k;-><init>(Lsu2$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v1

    move-object v9, v5

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 7
    :try_start_2
    new-instance v9, Lsu2$e;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "a"

    .line 8
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-string v3, "b"

    .line 9
    invoke-static {v0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lsu2;

    const-string v6, "g"

    .line 10
    invoke-static {v3, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lsu2;

    const-class v3, Lsu2$f;

    const-string v7, "f"

    .line 11
    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Lsu2;

    const-class v3, Ljava/lang/Object;

    const-string v8, "e"

    .line 12
    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lsu2$e;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v2

    move-object v2, v9

    move-object v9, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 13
    new-instance v3, Lsu2$g;

    invoke-direct {v3, v1}, Lsu2$g;-><init>(Lsu2$a;)V

    move-object v9, v0

    move-object v5, v2

    move-object v2, v3

    .line 14
    :goto_1
    sput-object v2, Lsu2;->j:Lsu2$c;

    if-eqz v9, :cond_0

    .line 15
    sget-object v6, Lsu2;->i:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "<clinit>"

    const-string v4, "UnsafeAtomicHelper is broken!"

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "com.google.common.util.concurrent.AbstractFuture"

    const-string v1, "<clinit>"

    const-string v8, "SafeAtomicHelper is broken!"

    move-object v4, v6

    move-object v5, v7

    move-object v6, v0

    move-object v7, v1

    .line 16
    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsu2;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqw2;-><init>()V

    return-void
.end method

.method public static c(Law2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 1
    instance-of v1, p0, Lsu2$j;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p0, Lsu2;

    iget-object p0, p0, Lsu2;->e:Ljava/lang/Object;

    .line 3
    instance-of v0, p0, Lsu2$b;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Lsu2$b;

    .line 5
    iget-boolean v1, v0, Lsu2$b;->a:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object p0, v0, Lsu2$b;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    .line 7
    new-instance p0, Lsu2$b;

    iget-object v0, v0, Lsu2$b;->b:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lsu2$b;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lsu2$b;->d:Lsu2$b;

    :cond_1
    :goto_0
    return-object p0

    .line 9
    :cond_2
    instance-of v1, p0, Lqw2;

    if-eqz v1, :cond_3

    .line 10
    move-object v1, p0

    check-cast v1, Lqw2;

    .line 11
    invoke-virtual {v1}, Lqw2;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    new-instance p0, Lsu2$d;

    invoke-direct {p0, v1}, Lsu2$d;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 13
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    .line 14
    sget-boolean v3, Lsu2;->h:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 15
    sget-object p0, Lsu2$b;->d:Lsu2$b;

    return-object p0

    .line 16
    :cond_4
    :try_start_0
    invoke-static {p0}, Lsu2;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 17
    new-instance v3, Lsu2$b;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lsu2$b;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 18
    sget-object p0, Lsu2;->k:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_6
    return-object v3

    :catchall_0
    move-exception p0

    .line 19
    new-instance v0, Lsu2$d;

    invoke-direct {v0, p0}, Lsu2$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v0

    if-nez v1, :cond_7

    .line 20
    new-instance v1, Lsu2$d;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4d

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-static {v3, v4, p0}, Ljo;->O(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lsu2$d;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 21
    :cond_7
    new-instance p0, Lsu2$b;

    invoke-direct {p0, v2, v0}, Lsu2$b;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception v3

    if-eqz v1, :cond_8

    .line 22
    new-instance v1, Lsu2$b;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x54

    invoke-static {v5, v0, p0}, Ljo;->O(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lsu2$b;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 23
    :cond_8
    new-instance p0, Lsu2$d;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lsu2$d;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic m(Lsu2;Lsu2$f;)Lsu2$f;
    .locals 0

    .line 1
    iput-object p1, p0, Lsu2;->f:Lsu2$f;

    return-object p1
.end method

.method public static synthetic n(Lsu2;Lsu2$l;)Lsu2$l;
    .locals 0

    .line 1
    iput-object p1, p0, Lsu2;->g:Lsu2$l;

    return-object p1
.end method

.method public static synthetic o(Lsu2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lsu2;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static q(Lsu2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsu2<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    iget-object v2, p0, Lsu2;->g:Lsu2$l;

    .line 2
    sget-object v3, Lsu2;->j:Lsu2$c;

    sget-object v4, Lsu2$l;->c:Lsu2$l;

    invoke-virtual {v3, p0, v2, v4}, Lsu2$c;->d(Lsu2;Lsu2$l;Lsu2$l;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v2, :cond_2

    .line 3
    iget-object v3, v2, Lsu2$l;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 4
    iput-object v0, v2, Lsu2$l;->a:Ljava/lang/Thread;

    .line 5
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 6
    :cond_1
    iget-object v2, v2, Lsu2$l;->b:Lsu2$l;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lsu2;->b()V

    .line 8
    :cond_3
    iget-object v2, p0, Lsu2;->f:Lsu2$f;

    .line 9
    sget-object v3, Lsu2;->j:Lsu2$c;

    sget-object v4, Lsu2$f;->d:Lsu2$f;

    invoke-virtual {v3, p0, v2, v4}, Lsu2$c;->c(Lsu2;Lsu2$f;Lsu2$f;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_4

    .line 10
    iget-object v2, v1, Lsu2$f;->c:Lsu2$f;

    .line 11
    iput-object p0, v1, Lsu2$f;->c:Lsu2$f;

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz p0, :cond_7

    .line 12
    iget-object v1, p0, Lsu2$f;->c:Lsu2$f;

    .line 13
    iget-object v2, p0, Lsu2$f;->a:Ljava/lang/Runnable;

    .line 14
    instance-of v3, v2, Lsu2$h;

    if-eqz v3, :cond_5

    .line 15
    check-cast v2, Lsu2$h;

    .line 16
    iget-object p0, v2, Lsu2$h;->e:Lsu2;

    .line 17
    iget-object v3, p0, Lsu2;->e:Ljava/lang/Object;

    if-ne v3, v2, :cond_6

    .line 18
    iget-object v3, v2, Lsu2$h;->f:Law2;

    invoke-static {v3}, Lsu2;->c(Law2;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    sget-object v4, Lsu2;->j:Lsu2$c;

    invoke-virtual {v4, p0, v2, v3}, Lsu2$c;->e(Lsu2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 20
    :cond_5
    iget-object p0, p0, Lsu2$f;->b:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lsu2;->r(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_6
    :goto_3
    move-object p0, v1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static r(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    .line 2
    sget-object v0, Lsu2;->i:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "RuntimeException while executing runnable "

    const-string v4, " with executor "

    invoke-static {v3, v2, p0, v4, p1}, Ljo;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lsu2$b;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p0, Lsu2$d;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lsu2;->k:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lsu2$d;

    iget-object p0, p0, Lsu2$d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_2
    check-cast p0, Lsu2$b;

    iget-object p0, p0, Lsu2$b;->b:Ljava/lang/Throwable;

    .line 6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0
.end method

.method public static synthetic u(Lsu2;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu2;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic v(Lsu2;)Lsu2$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu2;->g:Lsu2$l;

    return-object p0
.end method

.method public static synthetic w(Lsu2;)Lsu2$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lsu2;->f:Lsu2$f;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p0, Lsu2$j;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lsu2$d;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lsu2$d;

    iget-object v0, v0, Lsu2$d;->a:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public cancel(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    instance-of v4, v0, Lsu2$h;

    or-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 3
    sget-boolean v3, Lsu2;->h:Z

    if-eqz v3, :cond_1

    .line 4
    new-instance v3, Lsu2$b;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lsu2$b;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    sget-object v3, Lsu2$b;->c:Lsu2$b;

    goto :goto_1

    .line 6
    :cond_2
    sget-object v3, Lsu2$b;->d:Lsu2$b;

    :goto_1
    const/4 v5, 0x0

    move-object v4, p0

    .line 7
    :cond_3
    :goto_2
    sget-object v6, Lsu2;->j:Lsu2$c;

    invoke-virtual {v6, v4, v0, v3}, Lsu2$c;->e(Lsu2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {v4}, Lsu2;->e()V

    .line 9
    :cond_4
    invoke-static {v4}, Lsu2;->q(Lsu2;)V

    .line 10
    instance-of v4, v0, Lsu2$h;

    if-eqz v4, :cond_9

    .line 11
    check-cast v0, Lsu2$h;

    iget-object v0, v0, Lsu2$h;->f:Law2;

    .line 12
    instance-of v4, v0, Lsu2$j;

    if-eqz v4, :cond_6

    .line 13
    move-object v4, v0

    check-cast v4, Lsu2;

    .line 14
    iget-object v0, v4, Lsu2;->e:Ljava/lang/Object;

    if-nez v0, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 15
    :goto_3
    instance-of v6, v0, Lsu2$h;

    or-int/2addr v5, v6

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    .line 16
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 17
    :cond_7
    iget-object v0, v4, Lsu2;->e:Ljava/lang/Object;

    .line 18
    instance-of v6, v0, Lsu2$h;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_4
    return v1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public final f(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lsu2;->e:Ljava/lang/Object;

    .line 2
    instance-of v1, v1, Lsu2$b;

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lsu2;->l()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 46
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 47
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_0
    instance-of v4, v0, Lsu2$h;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 49
    invoke-static {v0}, Lsu2;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 50
    :cond_1
    iget-object v0, p0, Lsu2;->g:Lsu2$l;

    .line 51
    sget-object v3, Lsu2$l;->c:Lsu2$l;

    if-eq v0, v3, :cond_7

    .line 52
    new-instance v3, Lsu2$l;

    invoke-direct {v3}, Lsu2$l;-><init>()V

    .line 53
    :cond_2
    sget-object v4, Lsu2;->j:Lsu2$c;

    .line 54
    invoke-virtual {v4, v3, v0}, Lsu2$c;->a(Lsu2$l;Lsu2$l;)V

    .line 55
    invoke-virtual {v4, p0, v0, v3}, Lsu2$c;->d(Lsu2;Lsu2$l;Lsu2$l;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 56
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 58
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 59
    :goto_1
    instance-of v5, v0, Lsu2$h;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 60
    invoke-static {v0}, Lsu2;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 61
    :cond_5
    invoke-virtual {p0, v3}, Lsu2;->p(Lsu2$l;)V

    .line 62
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 63
    :cond_6
    iget-object v0, p0, Lsu2;->g:Lsu2$l;

    .line 64
    sget-object v4, Lsu2$l;->c:Lsu2$l;

    if-ne v0, v4, :cond_2

    .line 65
    :cond_7
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    invoke-static {v0}, Lsu2;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 66
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_16

    .line 3
    iget-object v2, p0, Lsu2;->e:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    instance-of v4, v2, Lsu2$h;

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v2}, Lsu2;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_1

    :cond_2
    move-wide v4, v2

    :goto_1
    const-wide/16 v6, 0x3e8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_a

    .line 7
    iget-object v8, p0, Lsu2;->g:Lsu2$l;

    .line 8
    sget-object v9, Lsu2$l;->c:Lsu2$l;

    if-eq v8, v9, :cond_9

    .line 9
    new-instance v9, Lsu2$l;

    invoke-direct {v9}, Lsu2$l;-><init>()V

    .line 10
    :cond_3
    sget-object v10, Lsu2;->j:Lsu2$c;

    .line 11
    invoke-virtual {v10, v9, v8}, Lsu2$c;->a(Lsu2$l;Lsu2$l;)V

    .line 12
    invoke-virtual {v10, p0, v8, v9}, Lsu2$c;->d(Lsu2;Lsu2$l;Lsu2$l;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_4
    const-wide v10, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 13
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 16
    :goto_2
    instance-of v8, v0, Lsu2$h;

    xor-int/lit8 v8, v8, 0x1

    and-int/2addr v1, v8

    if-eqz v1, :cond_6

    .line 17
    invoke-static {v0}, Lsu2;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    cmp-long v8, v0, v6

    if-gez v8, :cond_4

    .line 19
    invoke-virtual {p0, v9}, Lsu2;->p(Lsu2$l;)V

    goto :goto_3

    .line 20
    :cond_7
    invoke-virtual {p0, v9}, Lsu2;->p(Lsu2$l;)V

    .line 21
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 22
    :cond_8
    iget-object v8, p0, Lsu2;->g:Lsu2$l;

    .line 23
    sget-object v10, Lsu2$l;->c:Lsu2$l;

    if-ne v8, v10, :cond_3

    .line 24
    :cond_9
    iget-object p1, p0, Lsu2;->e:Ljava/lang/Object;

    invoke-static {p1}, Lsu2;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_3
    cmp-long v8, v0, v2

    if-lez v8, :cond_e

    .line 25
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    .line 26
    :goto_4
    instance-of v8, v0, Lsu2$h;

    xor-int/lit8 v8, v8, 0x1

    and-int/2addr v1, v8

    if-eqz v1, :cond_c

    .line 27
    invoke-static {v0}, Lsu2;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 28
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_3

    .line 30
    :cond_d
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 31
    :cond_e
    invoke-virtual {p0}, Lsu2;->toString()Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1c

    invoke-static {v8, v9}, Ljo;->x(Ljava/lang/String;I)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Waited "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-long v8, v0, v6

    cmp-long v10, v8, v2

    if-gez v10, :cond_14

    .line 34
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v8, " (plus "

    invoke-virtual {p2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    neg-long v0, v0

    .line 35
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 36
    invoke-virtual {p3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    sub-long/2addr v0, v10

    cmp-long p3, v8, v2

    if-eqz p3, :cond_10

    cmp-long v2, v0, v6

    if-lez v2, :cond_f

    goto :goto_5

    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-lez p3, :cond_12

    .line 37
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    invoke-static {v5, p3}, Ljo;->x(Ljava/lang/String;I)I

    move-result p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_11

    .line 38
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 39
    :cond_11
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_12
    if-eqz v2, :cond_13

    .line 40
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x21

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " nanoseconds "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 41
    :cond_13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "delay)"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    :cond_14
    invoke-virtual {p0}, Lsu2;->isDone()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 43
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, " but future completed as timeout expired"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_15
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const/4 p3, 0x5

    invoke-static {p2, p3}, Ljo;->x(Ljava/lang/String;I)I

    move-result p3

    invoke-static {v4, p3}, Ljo;->x(Ljava/lang/String;I)I

    move-result p3

    const-string v0, " for "

    invoke-static {p3, p2, v0, v4}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_16
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public h(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lsu2;->k:Ljava/lang/Object;

    .line 2
    :cond_0
    sget-object v0, Lsu2;->j:Lsu2$c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lsu2$c;->e(Lsu2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lsu2;->q(Lsu2;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const-string v0, "Runnable was null."

    .line 1
    invoke-static {p1, v0}, Lc50;->y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 2
    invoke-static {p2, v0}, Lc50;->y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lsu2;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lsu2;->f:Lsu2$f;

    .line 5
    sget-object v1, Lsu2$f;->d:Lsu2$f;

    if-eq v0, v1, :cond_2

    .line 6
    new-instance v1, Lsu2$f;

    invoke-direct {v1, p1, p2}, Lsu2$f;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    :cond_0
    iput-object v0, v1, Lsu2$f;->c:Lsu2$f;

    .line 8
    sget-object v2, Lsu2;->j:Lsu2$c;

    invoke-virtual {v2, p0, v0, v1}, Lsu2$c;->c(Lsu2;Lsu2$f;Lsu2$f;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lsu2;->f:Lsu2$f;

    .line 10
    sget-object v2, Lsu2$f;->d:Lsu2$f;

    if-ne v0, v2, :cond_0

    .line 11
    :cond_2
    invoke-static {p1, p2}, Lsu2;->r(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lsu2$b;

    return v0
.end method

.method public isDone()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    instance-of v0, v0, Lsu2$h;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method public j(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    new-instance v0, Lsu2$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Lsu2$d;-><init>(Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Lsu2;->j:Lsu2$c;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lsu2$c;->e(Lsu2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p0}, Lsu2;->q(Lsu2;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k(Law2;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lsu2;->c(Law2;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v0, Lsu2;->j:Lsu2$c;

    invoke-virtual {v0, p0, v3, p1}, Lsu2$c;->e(Lsu2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p0}, Lsu2;->q(Lsu2;)V

    return v2

    :cond_0
    return v1

    .line 7
    :cond_1
    new-instance v0, Lsu2$h;

    invoke-direct {v0, p0, p1}, Lsu2$h;-><init>(Lsu2;Law2;)V

    .line 8
    sget-object v4, Lsu2;->j:Lsu2$c;

    invoke-virtual {v4, p0, v3, v0}, Lsu2$c;->e(Lsu2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    :try_start_0
    sget-object v1, Llv2;->e:Llv2;

    invoke-interface {p1, v0, v1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    new-instance v1, Lsu2$d;

    invoke-direct {v1, p1}, Lsu2$d;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 11
    :catchall_1
    sget-object v1, Lsu2$d;->b:Lsu2$d;

    .line 12
    :goto_0
    sget-object p1, Lsu2;->j:Lsu2$c;

    invoke-virtual {p1, p0, v0, v1}, Lsu2$c;->e(Lsu2;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return v2

    .line 13
    :cond_2
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    .line 14
    :cond_3
    instance-of v2, v0, Lsu2$b;

    if-eqz v2, :cond_4

    .line 15
    check-cast v0, Lsu2$b;

    iget-boolean v0, v0, Lsu2$b;->a:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    return v1
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsu2;->e:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lsu2$b;

    if-eqz v1, :cond_0

    check-cast v0, Lsu2$b;

    iget-boolean v0, v0, Lsu2$b;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p(Lsu2$l;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lsu2$l;->a:Ljava/lang/Thread;

    .line 2
    :cond_0
    :goto_0
    iget-object p1, p0, Lsu2;->g:Lsu2$l;

    .line 3
    sget-object v1, Lsu2$l;->c:Lsu2$l;

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 4
    iget-object v2, p1, Lsu2$l;->b:Lsu2$l;

    .line 5
    iget-object v3, p1, Lsu2$l;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    move-object v1, p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    iput-object v2, v1, Lsu2$l;->b:Lsu2$l;

    .line 7
    iget-object p1, v1, Lsu2$l;->a:Ljava/lang/Thread;

    if-nez p1, :cond_4

    goto :goto_0

    .line 8
    :cond_3
    sget-object v3, Lsu2;->j:Lsu2$c;

    invoke-virtual {v3, p0, p1, v2}, Lsu2$c;->d(Lsu2;Lsu2$l;Lsu2$l;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_4
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final s(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 1
    :try_start_0
    invoke-static {p0}, Lsu2;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-ne v1, p0, :cond_1

    const-string v1, "this future"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_1
    const-string v0, "CANCELLED"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x40

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lsu2;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_1

    const-string v1, "CANCELLED"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 8
    :cond_1
    invoke-virtual {p0}, Lsu2;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lsu2;->s(Ljava/lang/StringBuilder;)V

    goto/16 :goto_8

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v3, p0, Lsu2;->e:Ljava/lang/Object;

    .line 13
    instance-of v4, v3, Lsu2$h;

    const-string v5, "Exception thrown from implementation: "

    if-eqz v4, :cond_4

    const-string v4, ", setFuture=["

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    check-cast v3, Lsu2$h;

    iget-object v3, v3, Lsu2$h;->f:Law2;

    if-ne v3, p0, :cond_3

    :try_start_0
    const-string v3, "this future"

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 18
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 20
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lsu2;->g()Ljava/lang/String;

    move-result-object v3

    .line 21
    sget v4, Lat2;->a:I

    if-eqz v3, :cond_6

    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_7

    const/4 v3, 0x0

    goto :goto_6

    :catch_2
    move-exception v3

    goto :goto_5

    :catch_3
    move-exception v3

    .line 23
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-static {v4, v5, v3}, Ljo;->O(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    const-string v4, ", info=["

    .line 24
    invoke-static {v0, v4, v3, v2}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_8
    :goto_7
    invoke-virtual {p0}, Lsu2;->isDone()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v0}, Lsu2;->s(Ljava/lang/StringBuilder;)V

    .line 28
    :cond_9
    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
