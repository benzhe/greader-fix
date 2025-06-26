.class public final Laj7;
.super Lyi7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laj7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lyi7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Luh7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luh7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public volatile i:Z

.field public j:Ljava/lang/Throwable;

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lx38<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field public volatile l:Z

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Lji7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lji7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public p:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lyi7;-><init>()V

    .line 2
    new-instance v0, Luh7;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Led7;->a(ILjava/lang/String;)I

    invoke-direct {v0, p1}, Luh7;-><init>(I)V

    iput-object v0, p0, Laj7;->f:Luh7;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Laj7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Laj7;->h:Z

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Laj7;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Laj7$a;

    invoke-direct {p1, p0}, Laj7$a;-><init>(Laj7;)V

    iput-object p1, p0, Laj7;->n:Lji7;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Laj7;->o:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Laj7;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Laj7;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laj7;->i:Z

    .line 3
    invoke-virtual {p0}, Laj7;->x()V

    .line 4
    invoke-virtual {p0}, Laj7;->y()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Laj7;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Laj7;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Laj7;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Laj7;->i:Z

    .line 5
    invoke-virtual {p0}, Laj7;->x()V

    .line 6
    invoke-virtual {p0}, Laj7;->y()V

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Laj7;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Laj7;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Laj7;->f:Luh7;

    invoke-virtual {v0, p1}, Luh7;->offer(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Laj7;->y()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ly38;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Laj7;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Laj7;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p1}, Ly38;->cancel()V

    :goto_1
    return-void
.end method

.method public t(Lx38;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Laj7;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laj7;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Laj7;->n:Lji7;

    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 3
    iget-object v0, p0, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Laj7;->l:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Laj7;->y()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This processor allows only a single Subscriber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v1, Lmi7;->e:Lmi7;

    invoke-interface {p1, v1}, Lx38;->e(Ly38;)V

    .line 9
    invoke-interface {p1, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public w(ZZZLx38;Luh7;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lx38<",
            "-TT;>;",
            "Luh7<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laj7;->l:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p5}, Luh7;->clear()V

    .line 3
    iget-object p1, p0, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Laj7;->j:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p5}, Luh7;->clear()V

    .line 6
    iget-object p1, p0, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Laj7;->j:Ljava/lang/Throwable;

    invoke-interface {p4, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p3, :cond_3

    .line 8
    iget-object p1, p0, Laj7;->j:Ljava/lang/Throwable;

    .line 9
    iget-object p2, p0, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p4, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {p4}, Lx38;->a()V

    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Laj7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 18

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Laj7;->n:Lji7;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v6, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx38;

    const/4 v7, 0x1

    move-object v8, v0

    const/4 v0, 0x1

    :goto_0
    if-eqz v8, :cond_e

    .line 3
    iget-boolean v0, v6, Laj7;->p:Z

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, v6, Laj7;->f:Luh7;

    .line 5
    iget-boolean v1, v6, Laj7;->h:Z

    xor-int/2addr v1, v7

    .line 6
    :cond_1
    iget-boolean v2, v6, Laj7;->l:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 7
    iget-object v0, v6, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 8
    :cond_2
    iget-boolean v2, v6, Laj7;->i:Z

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 9
    iget-object v4, v6, Laj7;->j:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v0}, Luh7;->clear()V

    .line 11
    iget-object v0, v6, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v6, Laj7;->j:Ljava/lang/Throwable;

    invoke-interface {v8, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 13
    :cond_3
    invoke-interface {v8, v3}, Lx38;->d(Ljava/lang/Object;)V

    if-eqz v2, :cond_5

    .line 14
    iget-object v0, v6, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v6, Laj7;->j:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 16
    invoke-interface {v8, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 17
    :cond_4
    invoke-interface {v8}, Lx38;->a()V

    goto/16 :goto_5

    .line 18
    :cond_5
    iget-object v2, v6, Laj7;->n:Lji7;

    neg-int v3, v7

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_5

    .line 19
    :cond_6
    iget-object v9, v6, Laj7;->f:Luh7;

    .line 20
    iget-boolean v0, v6, Laj7;->h:Z

    xor-int/lit8 v10, v0, 0x1

    const/4 v11, 0x1

    .line 21
    :goto_1
    iget-object v0, v6, Laj7;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    const-wide/16 v4, 0x0

    :goto_2
    cmp-long v16, v12, v4

    if-eqz v16, :cond_a

    .line 22
    iget-boolean v2, v6, Laj7;->i:Z

    .line 23
    invoke-virtual {v9}, Luh7;->poll()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    const/16 v17, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, p0

    move v1, v10

    move-object v7, v3

    move/from16 v3, v17

    move-wide v14, v4

    move-object v4, v8

    move-object v5, v9

    .line 24
    invoke-virtual/range {v0 .. v5}, Laj7;->w(ZZZLx38;Luh7;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v17, :cond_9

    goto :goto_4

    .line 25
    :cond_9
    invoke-interface {v8, v7}, Lx38;->d(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    add-long v4, v14, v0

    const/4 v7, 0x1

    goto :goto_2

    :cond_a
    move-wide v14, v4

    :goto_4
    if-nez v16, :cond_b

    .line 26
    iget-boolean v2, v6, Laj7;->i:Z

    invoke-virtual {v9}, Luh7;->isEmpty()Z

    move-result v3

    move-object/from16 v0, p0

    move v1, v10

    move-object v4, v8

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Laj7;->w(ZZZLx38;Luh7;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v2, v14, v0

    if-eqz v2, :cond_c

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, v12, v0

    if-eqz v2, :cond_c

    .line 27
    iget-object v0, v6, Laj7;->o:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 28
    :cond_c
    iget-object v0, v6, Laj7;->n:Lji7;

    neg-int v1, v11

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v11

    if-nez v11, :cond_d

    :goto_5
    return-void

    :cond_d
    const/4 v7, 0x1

    goto :goto_1

    .line 29
    :cond_e
    iget-object v1, v6, Laj7;->n:Lji7;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 30
    :cond_f
    iget-object v1, v6, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lx38;

    const/4 v7, 0x1

    goto/16 :goto_0
.end method
