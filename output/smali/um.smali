.class public abstract Lum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lie5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lum$h;,
        Lum$f;,
        Lum$b;,
        Lum$g;,
        Lum$c;,
        Lum$d;,
        Lum$e;,
        Lum$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lie5<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final h:Z

.field public static final i:Ljava/util/logging/Logger;

.field public static final j:Lum$b;

.field public static final k:Ljava/lang/Object;


# instance fields
.field public volatile e:Ljava/lang/Object;

.field public volatile f:Lum$e;

.field public volatile g:Lum$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lum$i;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lum;->h:Z

    .line 4
    const-class v1, Lum;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lum;->i:Ljava/util/logging/Logger;

    .line 5
    :try_start_0
    new-instance v1, Lum$f;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "a"

    .line 6
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v2, "b"

    .line 7
    invoke-static {v0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v2, Lum;

    const-string v5, "g"

    .line 8
    invoke-static {v2, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v0, Lum;

    const-class v2, Lum$e;

    const-string v6, "f"

    .line 9
    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lum;

    const-class v2, Ljava/lang/Object;

    const-string v7, "e"

    .line 10
    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lum$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    new-instance v1, Lum$h;

    invoke-direct {v1}, Lum$h;-><init>()V

    .line 12
    :goto_0
    sput-object v1, Lum;->j:Lum$b;

    .line 13
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v0, :cond_0

    .line 14
    sget-object v1, Lum;->i:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lum;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lum;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lum<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v2, p0, Lum;->g:Lum$i;

    .line 2
    sget-object v3, Lum;->j:Lum$b;

    sget-object v4, Lum$i;->c:Lum$i;

    invoke-virtual {v3, p0, v2, v4}, Lum$b;->c(Lum;Lum$i;Lum$i;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    if-eqz v2, :cond_2

    .line 3
    iget-object v3, v2, Lum$i;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 4
    iput-object v0, v2, Lum$i;->a:Ljava/lang/Thread;

    .line 5
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 6
    :cond_1
    iget-object v2, v2, Lum$i;->b:Lum$i;

    goto :goto_1

    .line 7
    :cond_2
    iget-object v2, p0, Lum;->f:Lum$e;

    .line 8
    sget-object v3, Lum;->j:Lum$b;

    sget-object v4, Lum$e;->d:Lum$e;

    invoke-virtual {v3, p0, v2, v4}, Lum$b;->a(Lum;Lum$e;Lum$e;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_3

    .line 9
    iget-object v2, v1, Lum$e;->c:Lum$e;

    .line 10
    iput-object p0, v1, Lum$e;->c:Lum$e;

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz p0, :cond_6

    .line 11
    iget-object v1, p0, Lum$e;->c:Lum$e;

    .line 12
    iget-object v2, p0, Lum$e;->a:Ljava/lang/Runnable;

    .line 13
    instance-of v3, v2, Lum$g;

    if-eqz v3, :cond_4

    .line 14
    check-cast v2, Lum$g;

    .line 15
    iget-object p0, v2, Lum$g;->e:Lum;

    .line 16
    iget-object v3, p0, Lum;->e:Ljava/lang/Object;

    if-ne v3, v2, :cond_5

    .line 17
    iget-object v3, v2, Lum$g;->f:Lie5;

    invoke-static {v3}, Lum;->e(Lie5;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    sget-object v4, Lum;->j:Lum$b;

    invoke-virtual {v4, p0, v2, v3}, Lum$b;->b(Lum;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 19
    :cond_4
    iget-object p0, p0, Lum$e;->b:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lum;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    move-object p0, v1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public static c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lum;->i:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static e(Lie5;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lie5<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lum;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Lum;

    iget-object p0, p0, Lum;->e:Ljava/lang/Object;

    .line 3
    instance-of v0, p0, Lum$c;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Lum$c;

    .line 5
    iget-boolean v2, v0, Lum$c;->a:Z

    if-eqz v2, :cond_1

    .line 6
    iget-object p0, v0, Lum$c;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance p0, Lum$c;

    iget-object v0, v0, Lum$c;->b:Ljava/lang/Throwable;

    invoke-direct {p0, v1, v0}, Lum$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lum$c;->d:Lum$c;

    :cond_1
    :goto_0
    return-object p0

    .line 7
    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    .line 8
    sget-boolean v2, Lum;->h:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    .line 9
    sget-object p0, Lum$c;->d:Lum$c;

    return-object p0

    .line 10
    :cond_3
    :try_start_0
    invoke-static {p0}, Lum;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 11
    sget-object v2, Lum;->k:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object v2

    :catchall_0
    move-exception p0

    .line 12
    new-instance v0, Lum$d;

    invoke-direct {v0, p0}, Lum$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v2

    if-nez v0, :cond_5

    .line 13
    new-instance v0, Lum$d;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lum$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 14
    :cond_5
    new-instance p0, Lum$c;

    invoke-direct {p0, v1, v2}, Lum$c;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 15
    new-instance v0, Lum$d;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lum$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static f(Ljava/util/concurrent/Future;)Ljava/lang/Object;
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

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 1
    :try_start_0
    invoke-static {p0}, Lum;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_0

    const-string v1, "this future"

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    const-string v0, "CANCELLED"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public final cancel(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lum;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    instance-of v4, v0, Lum$g;

    or-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 3
    sget-boolean v3, Lum;->h:Z

    if-eqz v3, :cond_1

    new-instance v3, Lum$c;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lum$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lum$c;->c:Lum$c;

    goto :goto_1

    :cond_2
    sget-object v3, Lum$c;->d:Lum$c;

    :goto_1
    const/4 v5, 0x0

    move-object v4, p0

    .line 4
    :cond_3
    :goto_2
    sget-object v6, Lum;->j:Lum$b;

    invoke-virtual {v6, v4, v0, v3}, Lum$b;->b(Lum;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5
    invoke-static {v4}, Lum;->b(Lum;)V

    .line 6
    instance-of v4, v0, Lum$g;

    if-eqz v4, :cond_8

    .line 7
    check-cast v0, Lum$g;

    iget-object v0, v0, Lum$g;->f:Lie5;

    .line 8
    instance-of v4, v0, Lum;

    if-eqz v4, :cond_5

    .line 9
    move-object v4, v0

    check-cast v4, Lum;

    .line 10
    iget-object v0, v4, Lum;->e:Ljava/lang/Object;

    if-nez v0, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 11
    :goto_3
    instance-of v6, v0, Lum$g;

    or-int/2addr v5, v6

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_2

    .line 12
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 13
    :cond_6
    iget-object v0, v4, Lum;->e:Ljava/lang/Object;

    .line 14
    instance-of v6, v0, Lum$g;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    return v1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
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
    instance-of v0, p1, Lum$c;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Lum$d;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lum;->k:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lum$d;

    iget-object p1, p1, Lum$d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_2
    check-cast p1, Lum$c;

    iget-object p1, p1, Lum$c;->b:Ljava/lang/Throwable;

    .line 6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lum;->e:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lum$g;

    if-eqz v1, :cond_1

    const-string v1, "setFuture=["

    .line 3
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v0, Lum$g;

    iget-object v0, v0, Lum$g;->f:Lie5;

    if-ne v0, p0, :cond_0

    const-string v0, "this future"

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "]"

    .line 5
    invoke-static {v1, v0, v2}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    const-string v0, "remaining delay=["

    .line 7
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
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

    .line 45
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 46
    iget-object v0, p0, Lum;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_0
    instance-of v4, v0, Lum$g;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p0, v0}, Lum;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Lum;->g:Lum$i;

    .line 50
    sget-object v3, Lum$i;->c:Lum$i;

    if-eq v0, v3, :cond_7

    .line 51
    new-instance v3, Lum$i;

    invoke-direct {v3}, Lum$i;-><init>()V

    .line 52
    :cond_2
    sget-object v4, Lum;->j:Lum$b;

    invoke-virtual {v4, v3, v0}, Lum$b;->d(Lum$i;Lum$i;)V

    .line 53
    invoke-virtual {v4, p0, v0, v3}, Lum$b;->c(Lum;Lum$i;Lum$i;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 56
    iget-object v0, p0, Lum;->e:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 57
    :goto_1
    instance-of v5, v0, Lum$g;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 58
    invoke-virtual {p0, v0}, Lum;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_5
    invoke-virtual {p0, v3}, Lum;->h(Lum$i;)V

    .line 60
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 61
    :cond_6
    iget-object v0, p0, Lum;->g:Lum$i;

    .line 62
    sget-object v4, Lum$i;->c:Lum$i;

    if-ne v0, v4, :cond_2

    .line 63
    :cond_7
    iget-object v0, p0, Lum;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lum;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
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
    iget-object v2, p0, Lum;->e:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    instance-of v4, v2, Lum$g;

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Lum;->d(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v8, p0, Lum;->g:Lum$i;

    .line 8
    sget-object v9, Lum$i;->c:Lum$i;

    if-eq v8, v9, :cond_9

    .line 9
    new-instance v9, Lum$i;

    invoke-direct {v9}, Lum$i;-><init>()V

    .line 10
    :cond_3
    sget-object v10, Lum;->j:Lum$b;

    invoke-virtual {v10, v9, v8}, Lum$b;->d(Lum$i;Lum$i;)V

    .line 11
    invoke-virtual {v10, p0, v8, v9}, Lum$b;->c(Lum;Lum$i;Lum$i;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 12
    :cond_4
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    iget-object v0, p0, Lum;->e:Ljava/lang/Object;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 15
    :goto_2
    instance-of v8, v0, Lum$g;

    xor-int/lit8 v8, v8, 0x1

    and-int/2addr v1, v8

    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {p0, v0}, Lum;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    cmp-long v8, v0, v6

    if-gez v8, :cond_4

    .line 18
    invoke-virtual {p0, v9}, Lum;->h(Lum$i;)V

    goto :goto_3

    .line 19
    :cond_7
    invoke-virtual {p0, v9}, Lum;->h(Lum$i;)V

    .line 20
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 21
    :cond_8
    iget-object v8, p0, Lum;->g:Lum$i;

    .line 22
    sget-object v10, Lum$i;->c:Lum$i;

    if-ne v8, v10, :cond_3

    .line 23
    :cond_9
    iget-object p1, p0, Lum;->e:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lum;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_3
    cmp-long v8, v0, v2

    if-lez v8, :cond_e

    .line 24
    iget-object v0, p0, Lum;->e:Ljava/lang/Object;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    .line 25
    :goto_4
    instance-of v8, v0, Lum$g;

    xor-int/lit8 v8, v8, 0x1

    and-int/2addr v1, v8

    if-eqz v1, :cond_c

    .line 26
    invoke-virtual {p0, v0}, Lum;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_3

    .line 29
    :cond_d
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 30
    :cond_e
    invoke-virtual {p0}, Lum;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Waited "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-long v8, v0, v6

    cmp-long v10, v8, v2

    if-gez v10, :cond_14

    const-string v8, " (plus "

    .line 33
    invoke-static {p2, v8}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    neg-long v0, v0

    .line 34
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 35
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

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_11

    const-string p3, ","

    .line 37
    invoke-static {p2, p3}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    :cond_11
    invoke-static {p2, p1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_12
    if-eqz v2, :cond_13

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " nanoseconds "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_13
    const-string p1, "delay)"

    .line 40
    invoke-static {p2, p1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 41
    :cond_14
    invoke-virtual {p0}, Lum;->isDone()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 42
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p3, " but future completed as timeout expired"

    invoke-static {p2, p3}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_15
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p3, " for "

    invoke-static {p2, p3, v4}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_16
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public final h(Lum$i;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lum$i;->a:Ljava/lang/Thread;

    .line 2
    :goto_0
    iget-object p1, p0, Lum;->g:Lum$i;

    .line 3
    sget-object v1, Lum$i;->c:Lum$i;

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 4
    iget-object v2, p1, Lum$i;->b:Lum$i;

    .line 5
    iget-object v3, p1, Lum$i;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    move-object v1, p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    iput-object v2, v1, Lum$i;->b:Lum$i;

    .line 7
    iget-object p1, v1, Lum$i;->a:Ljava/lang/Thread;

    if-nez p1, :cond_3

    goto :goto_0

    .line 8
    :cond_2
    sget-object v3, Lum;->j:Lum$b;

    invoke-virtual {v3, p0, p1, v2}, Lum$b;->c(Lum;Lum$i;Lum$i;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lum;->f:Lum$e;

    .line 3
    sget-object v1, Lum$e;->d:Lum$e;

    if-eq v0, v1, :cond_2

    .line 4
    new-instance v1, Lum$e;

    invoke-direct {v1, p1, p2}, Lum$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 5
    :cond_0
    iput-object v0, v1, Lum$e;->c:Lum$e;

    .line 6
    sget-object v2, Lum;->j:Lum$b;

    invoke-virtual {v2, p0, v0, v1}, Lum$b;->a(Lum;Lum$e;Lum$e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lum;->f:Lum$e;

    .line 8
    sget-object v2, Lum$e;->d:Lum$e;

    if-ne v0, v2, :cond_0

    .line 9
    :cond_2
    invoke-static {p1, p2}, Lum;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lum;->e:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lum$c;

    return v0
.end method

.method public final isDone()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lum;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    instance-of v0, v0, Lum$g;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lum;->e:Ljava/lang/Object;

    .line 3
    instance-of v1, v1, Lum$c;

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lum;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lum;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lum;->g()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Exception thrown from implementation: "

    .line 8
    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PENDING, info=["

    .line 10
    invoke-static {v0, v3, v1, v2}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lum;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Lum;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    const-string v1, "PENDING"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
