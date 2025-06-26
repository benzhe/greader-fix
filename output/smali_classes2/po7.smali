.class public Lpo7;
.super Ljp7;
.source "SourceFile"

# interfaces
.implements Loo7;
.implements Lwk7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljp7<",
        "TT;>;",
        "Loo7<",
        "TT;>;",
        "Lwk7;"
    }
.end annotation


# static fields
.field public static final j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decision:I

.field public volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field public final h:Lrk7;

.field public final i:Lpk7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpk7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lpo7;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lpo7;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lpo7;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lpo7;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lpk7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpk7<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Ljp7;-><init>(I)V

    iput-object p1, p0, Lpo7;->i:Lpk7;

    .line 2
    invoke-interface {p1}, Lpk7;->getContext()Lrk7;

    move-result-object p1

    iput-object p1, p0, Lpo7;->h:Lrk7;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lpo7;->_decision:I

    .line 4
    sget-object p1, Llo7;->e:Llo7;

    iput-object p1, p0, Lpo7;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lpo7;->_parentHandle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lpl7;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl7<",
            "-",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    iget-object v2, p0, Lpo7;->_state:Ljava/lang/Object;

    .line 2
    instance-of v3, v2, Llo7;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v1, p1, Lno7;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lno7;

    goto :goto_0

    :cond_2
    new-instance v1, Lvp7;

    invoke-direct {v1, p1}, Lvp7;-><init>(Lpl7;)V

    .line 4
    :goto_0
    sget-object v3, Lpo7;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 5
    :cond_3
    instance-of v1, v2, Lno7;

    if-nez v1, :cond_8

    .line 6
    instance-of v1, v2, Lqo7;

    if-eqz v1, :cond_7

    .line 7
    move-object v1, v2

    check-cast v1, Lqo7;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v3, Luo7;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    :try_start_0
    instance-of v1, v2, Luo7;

    if-nez v1, :cond_4

    move-object v2, v0

    :cond_4
    check-cast v2, Luo7;

    if-eqz v2, :cond_5

    iget-object v0, v2, Luo7;->a:Ljava/lang/Throwable;

    .line 11
    :cond_5
    invoke-interface {p1, v0}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lpo7;->h:Lrk7;

    .line 13
    new-instance v1, Lyo7;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in cancellation handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lyo7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-static {v0, v1}, Ln56;->c1(Lrk7;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 15
    :cond_6
    invoke-virtual {p0, p1, v2}, Lpo7;->l(Lpl7;Ljava/lang/Object;)V

    throw v0

    :cond_7
    return-void

    .line 16
    :cond_8
    invoke-virtual {p0, p1, v2}, Lpo7;->l(Lpl7;Ljava/lang/Object;)V

    throw v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    instance-of p2, p1, Lwo7;

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    check-cast p1, Lwo7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lpo7;->h:Lrk7;

    .line 4
    new-instance v0, Lyo7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in cancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lyo7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p2, v0}, Ln56;->c1(Lrk7;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c()Lpk7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpk7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpo7;->i:Lpk7;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lvo7;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lvo7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p1, Lwo7;

    if-eqz v0, :cond_1

    check-cast p1, Lwo7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lpo7;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public g(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lpo7;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lgq7;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    new-instance v1, Lqo7;

    instance-of v3, v0, Lno7;

    invoke-direct {v1, p0, p1, v3}, Lqo7;-><init>(Lpk7;Ljava/lang/Throwable;Z)V

    .line 4
    sget-object v4, Lpo7;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 5
    :try_start_0
    check-cast v0, Lno7;

    invoke-virtual {v0, p1}, Lno7;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lpo7;->h:Lrk7;

    .line 7
    new-instance v1, Lyo7;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in cancellation handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lyo7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0, v1}, Ln56;->c1(Lrk7;Ljava/lang/Throwable;)V

    .line 9
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lpo7;->h()V

    .line 10
    invoke-virtual {p0, v2}, Lpo7;->i(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public getCallerFrame()Lwk7;
    .locals 2

    .line 1
    iget-object v0, p0, Lpo7;->i:Lpk7;

    instance-of v1, v0, Lwk7;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lwk7;

    return-object v0
.end method

.method public getContext()Lrk7;
    .locals 1

    .line 1
    iget-object v0, p0, Lpo7;->h:Lrk7;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpo7;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lpo7;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Llp7;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Llp7;->k()V

    .line 4
    :cond_0
    sget-object v0, Lfq7;->e:Lfq7;

    .line 5
    iput-object v0, p0, Lpo7;->_parentHandle:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final i(I)V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lpo7;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    sget-object v0, Lpo7;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-static {p0, p1}, Ln56;->p0(Ljp7;I)V

    return-void
.end method

.method public final j()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lpo7;->_state:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lgq7;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3
    iget v2, p0, Ljp7;->g:I

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lpo7;->i:Lpk7;

    instance-of v3, v2, Lhp7;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    check-cast v2, Lhp7;

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2, p0}, Lhp7;->g(Loo7;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Lpo7;->g(Ljava/lang/Throwable;)Z

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    iget-object v0, p0, Lpo7;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Llp7;

    if-eqz v0, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    iget-object v0, p0, Lpo7;->i:Lpk7;

    invoke-interface {v0}, Lpk7;->getContext()Lrk7;

    move-result-object v0

    sget-object v2, Lyp7;->d:Lyp7$a;

    invoke-interface {v0, v2}, Lrk7;->c(Lrk7$b;)Lrk7$a;

    move-result-object v0

    check-cast v0, Lyp7;

    if-eqz v0, :cond_6

    .line 9
    invoke-interface {v0}, Lyp7;->start()Z

    .line 10
    new-instance v2, Lro7;

    invoke-direct {v2, v0, p0}, Lro7;-><init>(Lyp7;Lpo7;)V

    .line 11
    invoke-interface {v0, v1, v1, v2}, Lyp7;->f(ZZLpl7;)Llp7;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lpo7;->_parentHandle:Ljava/lang/Object;

    .line 13
    iget-object v2, p0, Lpo7;->_state:Ljava/lang/Object;

    .line 14
    instance-of v2, v2, Lgq7;

    xor-int/2addr v2, v1

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {p0}, Lpo7;->k()Z

    move-result v2

    if-nez v2, :cond_6

    .line 16
    invoke-interface {v0}, Llp7;->k()V

    .line 17
    sget-object v0, Lfq7;->e:Lfq7;

    .line 18
    iput-object v0, p0, Lpo7;->_parentHandle:Ljava/lang/Object;

    .line 19
    :cond_6
    :goto_1
    iget v0, p0, Lpo7;->_decision:I

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    goto :goto_2

    .line 20
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_8
    sget-object v0, Lpo7;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_9

    .line 22
    sget-object v0, Lsk7;->e:Lsk7;

    return-object v0

    .line 23
    :cond_9
    iget-object v0, p0, Lpo7;->_state:Ljava/lang/Object;

    .line 24
    instance-of v2, v0, Luo7;

    if-eqz v2, :cond_b

    check-cast v0, Luo7;

    iget-object v0, v0, Luo7;->a:Ljava/lang/Throwable;

    .line 25
    sget-boolean v1, Lfp7;->b:Z

    if-eqz v1, :cond_a

    .line 26
    invoke-static {v0, p0}, Lxq7;->a(Ljava/lang/Throwable;Lwk7;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_a
    throw v0

    .line 27
    :cond_b
    iget v2, p0, Ljp7;->g:I

    if-ne v2, v1, :cond_d

    .line 28
    iget-object v1, p0, Lpo7;->h:Lrk7;

    .line 29
    sget-object v2, Lyp7;->d:Lyp7$a;

    invoke-interface {v1, v2}, Lrk7;->c(Lrk7$b;)Lrk7$a;

    move-result-object v1

    check-cast v1, Lyp7;

    if-eqz v1, :cond_d

    .line 30
    invoke-interface {v1}, Lyp7;->isActive()Z

    move-result v2

    if-nez v2, :cond_d

    .line 31
    invoke-interface {v1}, Lyp7;->g()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 32
    invoke-virtual {p0, v0, v1}, Lpo7;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 33
    sget-boolean v0, Lfp7;->b:Z

    if-eqz v0, :cond_c

    .line 34
    invoke-static {v1, p0}, Lxq7;->a(Ljava/lang/Throwable;Lwk7;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_c
    throw v1

    .line 35
    :cond_d
    invoke-virtual {p0, v0}, Lpo7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lpo7;->i:Lpk7;

    instance-of v1, v0, Lhp7;

    if-eqz v1, :cond_0

    check-cast v0, Lhp7;

    invoke-virtual {v0, p0}, Lhp7;->i(Lpo7;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l(Lpl7;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl7<",
            "-",
            "Ljava/lang/Throwable;",
            "Lyj7;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lsj7;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Luo7;

    .line 3
    sget-boolean v2, Lfp7;->b:Z

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v0, p0}, Lxq7;->a(Ljava/lang/Throwable;Lwk7;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_1
    const/4 v2, 0x2

    .line 5
    invoke-direct {p1, v0, v1, v2}, Luo7;-><init>(Ljava/lang/Throwable;ZI)V

    .line 6
    :goto_0
    iget v0, p0, Ljp7;->g:I

    .line 7
    :goto_1
    iget-object v2, p0, Lpo7;->_state:Ljava/lang/Object;

    .line 8
    instance-of v3, v2, Lgq7;

    if-eqz v3, :cond_3

    .line 9
    sget-object v3, Lpo7;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lpo7;->h()V

    .line 11
    invoke-virtual {p0, v0}, Lpo7;->i(I)V

    goto :goto_2

    .line 12
    :cond_3
    instance-of v0, v2, Lqo7;

    if-eqz v0, :cond_4

    .line 13
    check-cast v2, Lqo7;

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lqo7;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    return-void

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CancellableContinuation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpo7;->i:Lpk7;

    invoke-static {v1}, Ln56;->s2(Lpk7;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lpo7;->_state:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ln56;->L0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
