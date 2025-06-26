.class public Lcq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyp7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcq7$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lcq7;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public c(Lrk7$b;)Lrk7$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lrk7$a;",
            ">(",
            "Lrk7$b<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ln56;->A0(Lrk7$a;Lrk7$b;)Lrk7$a;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;Leq7;Lbq7;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Leq7;",
            "Lbq7<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcq7$b;

    invoke-direct {v0, p3, p3, p0, p1}, Lcq7$b;-><init>(Lsq7;Lsq7;Lcq7;Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Lsq7;->c(Lvq7;)Lsq7;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p2, Lsq7;->_prev:Ljava/lang/Object;

    check-cast p1, Lsq7;

    .line 3
    :goto_1
    invoke-virtual {p1}, Lsq7;->g()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4
    :goto_2
    sget-object v1, Lsq7;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    sget-object v1, Lsq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iput-object p2, v0, Lsq7$a;->b:Lsq7;

    .line 7
    invoke-virtual {v1, p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_3

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lnq7;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x2

    :goto_3
    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_4

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2

    .line 9
    :cond_5
    iget-object p1, p1, Lsq7;->_prev:Ljava/lang/Object;

    check-cast p1, Lsq7;

    goto :goto_1
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcq7;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lvq7;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Lvq7;

    invoke-virtual {v0, p0}, Lvq7;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final f(ZZLpl7;)Llp7;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lpl7<",
            "-",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;)",
            "Llp7;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcq7;->e()Ljava/lang/Object;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lmp7;

    if-eqz v3, :cond_4

    .line 3
    move-object v3, v2

    check-cast v3, Lmp7;

    .line 4
    iget-boolean v4, v3, Lmp7;->e:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p3, p1}, Lcq7;->h(Lpl7;Z)Lbq7;

    move-result-object v1

    .line 6
    :goto_1
    sget-object v3, Lcq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 7
    :cond_2
    new-instance v2, Leq7;

    invoke-direct {v2}, Leq7;-><init>()V

    .line 8
    iget-boolean v4, v3, Lmp7;->e:Z

    if-eqz v4, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    new-instance v4, Ltp7;

    invoke-direct {v4, v2}, Ltp7;-><init>(Leq7;)V

    move-object v2, v4

    .line 10
    :goto_2
    sget-object v4, Lcq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_4
    instance-of v3, v2, Lup7;

    if-eqz v3, :cond_c

    .line 12
    move-object v3, v2

    check-cast v3, Lup7;

    invoke-interface {v3}, Lup7;->a()Leq7;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>"

    .line 13
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lbq7;

    .line 14
    new-instance v5, Leq7;

    invoke-direct {v5}, Leq7;-><init>()V

    .line 15
    sget-object v2, Lsq7;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object v2, Lsq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    :cond_5
    invoke-virtual {v4}, Lsq7;->e()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v4, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    sget-object v2, Lsq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v4, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    invoke-virtual {v5, v4}, Lsq7;->d(Lsq7;)V

    .line 20
    :goto_3
    invoke-virtual {v4}, Lsq7;->f()Lsq7;

    move-result-object v2

    .line 21
    sget-object v3, Lcq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_a

    .line 22
    instance-of v4, v2, Lcq7$a;

    if-eqz v4, :cond_a

    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    move-object v4, v2

    check-cast v4, Lcq7$a;

    if-eqz v1, :cond_8

    goto :goto_4

    .line 25
    :cond_8
    invoke-virtual {p0, p3, p1}, Lcq7;->h(Lpl7;Z)Lbq7;

    move-result-object v1

    .line 26
    :goto_4
    invoke-virtual {p0, v2, v3, v1}, Lcq7;->d(Ljava/lang/Object;Leq7;Lbq7;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_9

    monitor-exit v2

    goto/16 :goto_0

    .line 27
    :cond_9
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v2

    throw p1

    :cond_a
    if-eqz v1, :cond_b

    goto :goto_5

    .line 29
    :cond_b
    invoke-virtual {p0, p3, p1}, Lcq7;->h(Lpl7;Z)Lbq7;

    move-result-object v1

    .line 30
    :goto_5
    invoke-virtual {p0, v2, v3, v1}, Lcq7;->d(Ljava/lang/Object;Leq7;Lbq7;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_c
    if-eqz p2, :cond_f

    .line 31
    instance-of p1, v2, Luo7;

    if-nez p1, :cond_d

    move-object v2, v0

    :cond_d
    check-cast v2, Luo7;

    if-eqz v2, :cond_e

    iget-object v0, v2, Luo7;->a:Ljava/lang/Throwable;

    .line 32
    :cond_e
    invoke-interface {p3, v0}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_f
    sget-object p1, Lfq7;->e:Lfq7;

    return-object p1
.end method

.method public final g()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcq7;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcq7$a;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_0

    check-cast v0, Lcq7$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_0
    instance-of v1, v0, Lup7;

    if-nez v1, :cond_2

    .line 5
    instance-of v1, v0, Luo7;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Luo7;

    iget-object v0, v0, Luo7;->a:Ljava/lang/Throwable;

    .line 6
    invoke-virtual {p0, v0, v2}, Lcq7;->i(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lzp7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-class v3, Lcq7;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lzp7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lyp7;)V

    :goto_0
    return-object v0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getKey()Lrk7$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrk7$b<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lyp7;->d:Lyp7$a;

    return-object v0
.end method

.method public final h(Lpl7;Z)Lbq7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl7<",
            "-",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;Z)",
            "Lbq7<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    instance-of p2, p1, Laq7;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Laq7;

    if-eqz v0, :cond_1

    sget-boolean p1, Lfp7;->a:Z

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Lwp7;

    invoke-direct {v0, p0, p1}, Lwp7;-><init>(Lyp7;Lpl7;)V

    goto :goto_2

    .line 3
    :cond_2
    instance-of p2, p1, Lbq7;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    check-cast v0, Lbq7;

    if-eqz v0, :cond_4

    sget-boolean p1, Lfp7;->a:Z

    goto :goto_2

    .line 4
    :cond_4
    new-instance v0, Lxp7;

    invoke-direct {v0, p0, p1}, Lxp7;-><init>(Lyp7;Lpl7;)V

    :goto_2
    return-object v0
.end method

.method public final i(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Lzp7;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "Job was cancelled"

    :goto_1
    invoke-direct {v0, p2, p1, p0}, Lzp7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lyp7;)V

    :goto_2
    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcq7;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lup7;

    if-eqz v1, :cond_0

    check-cast v0, Lup7;

    invoke-interface {v0}, Lup7;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Ljava/lang/Object;Ltl7;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ltl7<",
            "-TR;-",
            "Lrk7$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Ln56;->x0(Lrk7$a;Ljava/lang/Object;Ltl7;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final start()Z
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcq7;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lmp7;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 3
    move-object v1, v0

    check-cast v1, Lmp7;

    .line 4
    iget-boolean v1, v1, Lmp7;->e:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-object v1, Lcq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v5, Ldq7;->a:Lmp7;

    invoke-virtual {v1, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 6
    :cond_1
    instance-of v1, v0, Ltp7;

    if-eqz v1, :cond_3

    .line 7
    sget-object v1, Lcq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v5, v0

    check-cast v5, Ltp7;

    .line 8
    iget-object v5, v5, Ltp7;->e:Leq7;

    .line 9
    invoke-virtual {v1, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    const-class v2, Lcq7;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcq7;->e()Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lcq7$a;

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lcq7$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    instance-of v3, v2, Lup7;

    if-eqz v3, :cond_2

    check-cast v2, Lup7;

    invoke-interface {v2}, Lup7;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const-string v2, "Active"

    goto :goto_1

    :cond_1
    const-string v2, "New"

    goto :goto_1

    .line 8
    :cond_2
    instance-of v2, v2, Luo7;

    if-eqz v2, :cond_3

    const-string v2, "Cancelled"

    goto :goto_1

    :cond_3
    const-string v2, "Completed"

    .line 9
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ln56;->L0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
