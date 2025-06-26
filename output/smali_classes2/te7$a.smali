.class public final Lte7$a;
.super Lji7;
.source "SourceFile"

# interfaces
.implements Lpb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lte7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lji7<",
        "TR;>;",
        "Lpb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lx38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx38<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:I

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public j:Ly38;

.field public k:Lnd7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnd7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile l:Z

.field public volatile m:Z

.field public final n:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lx38;Luc7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;",
            "Luc7<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lji7;-><init>()V

    .line 2
    iput-object p1, p0, Lte7$a;->e:Lx38;

    .line 3
    iput-object p2, p0, Lte7$a;->f:Luc7;

    .line 4
    iput p3, p0, Lte7$a;->g:I

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    .line 5
    iput p3, p0, Lte7$a;->h:I

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lte7$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lte7$a;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lte7$a;->l:Z

    .line 3
    invoke-virtual {p0}, Lte7$a;->j()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lte7$a;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lte7$a;->l:Z

    .line 3
    invoke-virtual {p0}, Lte7$a;->j()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lte7$a;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lte7$a;->m:Z

    .line 3
    iget-object v0, p0, Lte7$a;->j:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lte7$a;->k:Lnd7;

    invoke-interface {v0}, Lnd7;->clear()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lte7$a;->o:Ljava/util/Iterator;

    .line 2
    iget-object v0, p0, Lte7$a;->k:Lnd7;

    invoke-interface {v0}, Lnd7;->clear()V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lte7$a;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lte7$a;->q:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lte7$a;->k:Lnd7;

    invoke-interface {v0, p1}, Lnd7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Llc7;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Llc7;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lte7$a;->b(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lte7$a;->j()V

    return-void
.end method

.method public e(Ly38;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lte7$a;->j:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lte7$a;->j:Ly38;

    .line 3
    instance-of v0, p1, Lkd7;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lkd7;

    const/4 v1, 0x3

    .line 5
    invoke-interface {v0, v1}, Ljd7;->i(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    iput v1, p0, Lte7$a;->q:I

    .line 7
    iput-object v0, p0, Lte7$a;->k:Lnd7;

    .line 8
    iput-boolean v2, p0, Lte7$a;->l:Z

    .line 9
    iget-object p1, p0, Lte7$a;->e:Lx38;

    invoke-interface {p1, p0}, Lx38;->e(Ly38;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 10
    iput v1, p0, Lte7$a;->q:I

    .line 11
    iput-object v0, p0, Lte7$a;->k:Lnd7;

    .line 12
    iget-object v0, p0, Lte7$a;->e:Lx38;

    invoke-interface {v0, p0}, Lx38;->e(Ly38;)V

    .line 13
    iget v0, p0, Lte7$a;->g:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    return-void

    .line 14
    :cond_1
    new-instance v0, Lth7;

    iget v1, p0, Lte7$a;->g:I

    invoke-direct {v0, v1}, Lth7;-><init>(I)V

    iput-object v0, p0, Lte7$a;->k:Lnd7;

    .line 15
    iget-object v0, p0, Lte7$a;->e:Lx38;

    invoke-interface {v0, p0}, Lx38;->e(Ly38;)V

    .line 16
    iget v0, p0, Lte7$a;->g:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_2
    return-void
.end method

.method public g(ZZLx38;Lnd7;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lx38<",
            "*>;",
            "Lnd7<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lte7$a;->m:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lte7$a;->o:Ljava/util/Iterator;

    .line 3
    invoke-interface {p4}, Lnd7;->clear()V

    return v2

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    .line 6
    iput-object v1, p0, Lte7$a;->o:Ljava/util/Iterator;

    .line 7
    invoke-interface {p4}, Lnd7;->clear()V

    .line 8
    invoke-interface {p3, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return v2

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p3}, Lx38;->a()V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public h(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget p1, p0, Lte7$a;->p:I

    add-int/lit8 p1, p1, 0x1

    .line 2
    iget v0, p0, Lte7$a;->h:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lte7$a;->p:I

    .line 4
    iget-object v0, p0, Lte7$a;->j:Ly38;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Ly38;->l(J)V

    goto :goto_0

    .line 5
    :cond_0
    iput p1, p0, Lte7$a;->p:I

    :cond_1
    :goto_0
    return-void
.end method

.method public i(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lte7$a;->q:I

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lte7$a;->o:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lte7$a;->k:Lnd7;

    invoke-interface {v0}, Lnd7;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v1, Lte7$a;->e:Lx38;

    .line 3
    iget-object v3, v1, Lte7$a;->k:Lnd7;

    .line 4
    iget v0, v1, Lte7$a;->q:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v6, v1, Lte7$a;->o:Ljava/util/Iterator;

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_1
    if-nez v6, :cond_5

    .line 6
    iget-boolean v9, v1, Lte7$a;->l:Z

    .line 7
    :try_start_0
    invoke-interface {v3}, Lnd7;->poll()Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 8
    :goto_2
    invoke-virtual {v1, v9, v11, v2, v3}, Lte7$a;->g(ZZLx38;Lnd7;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-void

    :cond_3
    if-eqz v10, :cond_5

    .line 9
    :try_start_1
    iget-object v6, v1, Lte7$a;->f:Luc7;

    invoke-interface {v6, v10}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_4

    .line 12
    invoke-virtual {v1, v0}, Lte7$a;->h(Z)V

    move-object v6, v7

    goto :goto_1

    .line 13
    :cond_4
    iput-object v6, v1, Lte7$a;->o:Ljava/util/Iterator;

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 15
    iget-object v3, v1, Lte7$a;->j:Ly38;

    invoke-interface {v3}, Ly38;->cancel()V

    .line 16
    iget-object v3, v1, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 17
    iget-object v0, v1, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 18
    invoke-interface {v2, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 19
    invoke-static {v4}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 20
    iget-object v0, v1, Lte7$a;->j:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 21
    iget-object v0, v1, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v4}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 22
    iget-object v0, v1, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 23
    iput-object v7, v1, Lte7$a;->o:Ljava/util/Iterator;

    .line 24
    invoke-interface {v3}, Lnd7;->clear()V

    .line 25
    invoke-interface {v2, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_3
    if-eqz v6, :cond_d

    .line 26
    iget-object v9, v1, Lte7$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    move-wide v13, v11

    :goto_4
    cmp-long v15, v13, v9

    if-eqz v15, :cond_9

    .line 27
    iget-boolean v15, v1, Lte7$a;->l:Z

    invoke-virtual {v1, v15, v4, v2, v3}, Lte7$a;->g(ZZLx38;Lnd7;)Z

    move-result v15

    if-eqz v15, :cond_6

    return-void

    .line 28
    :cond_6
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    const-string v5, "The iterator returned a null value"

    .line 29
    invoke-static {v15, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 30
    invoke-interface {v2, v15}, Lx38;->d(Ljava/lang/Object;)V

    .line 31
    iget-boolean v5, v1, Lte7$a;->l:Z

    invoke-virtual {v1, v5, v4, v2, v3}, Lte7$a;->g(ZZLx38;Lnd7;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    :cond_7
    const-wide/16 v16, 0x1

    add-long v13, v13, v16

    .line 32
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v5, :cond_8

    .line 33
    invoke-virtual {v1, v0}, Lte7$a;->h(Z)V

    .line 34
    iput-object v7, v1, Lte7$a;->o:Ljava/util/Iterator;

    move-object v6, v7

    goto :goto_5

    :cond_8
    const/4 v5, 0x1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 35
    invoke-static {v3}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 36
    iput-object v7, v1, Lte7$a;->o:Ljava/util/Iterator;

    .line 37
    iget-object v0, v1, Lte7$a;->j:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 38
    iget-object v0, v1, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v3}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 39
    iget-object v0, v1, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 40
    invoke-interface {v2, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v0

    .line 41
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 42
    iput-object v7, v1, Lte7$a;->o:Ljava/util/Iterator;

    .line 43
    iget-object v3, v1, Lte7$a;->j:Ly38;

    invoke-interface {v3}, Ly38;->cancel()V

    .line 44
    iget-object v3, v1, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 45
    iget-object v0, v1, Lte7$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 46
    invoke-interface {v2, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    :goto_5
    cmp-long v5, v13, v9

    if-nez v5, :cond_b

    .line 47
    iget-boolean v5, v1, Lte7$a;->l:Z

    .line 48
    invoke-interface {v3}, Lnd7;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_a

    if-nez v6, :cond_a

    const/4 v15, 0x1

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    .line 49
    :goto_6
    invoke-virtual {v1, v5, v15, v2, v3}, Lte7$a;->g(ZZLx38;Lnd7;)Z

    move-result v5

    if-eqz v5, :cond_b

    return-void

    :cond_b
    cmp-long v5, v13, v11

    if-eqz v5, :cond_c

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v5, v9, v11

    if-eqz v5, :cond_c

    .line 50
    iget-object v5, v1, Lte7$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v9, v13

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_c
    if-nez v6, :cond_d

    goto :goto_7

    :cond_d
    neg-int v5, v8

    .line 51
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v8

    if-nez v8, :cond_e

    return-void

    :cond_e
    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_1
.end method

.method public l(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lpi7;->y(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lte7$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Ln56;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lte7$a;->j()V

    :cond_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lte7$a;->o:Ljava/util/Iterator;

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lte7$a;->k:Lnd7;

    invoke-interface {v0}, Lnd7;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v2, p0, Lte7$a;->f:Luc7;

    invoke-interface {v2, v0}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_1
    iput-object v0, p0, Lte7$a;->o:Ljava/util/Iterator;

    .line 6
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The iterator returned a null value"

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iput-object v1, p0, Lte7$a;->o:Ljava/util/Iterator;

    :cond_3
    return-object v2
.end method
