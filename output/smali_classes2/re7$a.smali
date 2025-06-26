.class public final Lre7$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lre7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lre7$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lpb7<",
        "TT;>;",
        "Ly38;"
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

.field public final f:Z

.field public final g:I

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public final i:Lhc7;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Lsi7;

.field public final l:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Lvb7<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Luh7<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public n:Ly38;

.field public volatile o:Z


# direct methods
.method public constructor <init>(Lx38;Luc7;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;",
            "Luc7<",
            "-TT;+",
            "Lvb7<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lre7$a;->e:Lx38;

    .line 3
    iput-object p2, p0, Lre7$a;->l:Luc7;

    .line 4
    iput-boolean p3, p0, Lre7$a;->f:Z

    .line 5
    iput p4, p0, Lre7$a;->g:I

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lre7$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    new-instance p1, Lhc7;

    invoke-direct {p1}, Lhc7;-><init>()V

    iput-object p1, p0, Lre7$a;->i:Lhc7;

    .line 8
    new-instance p1, Lsi7;

    invoke-direct {p1}, Lsi7;-><init>()V

    iput-object p1, p0, Lre7$a;->k:Lsi7;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lre7$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lre7$a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lre7$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-virtual {p0}, Lre7$a;->g()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lre7$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    iget-object v0, p0, Lre7$a;->k:Lsi7;

    .line 3
    invoke-static {v0, p1}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean p1, p0, Lre7$a;->f:Z

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lre7$a;->i:Lhc7;

    invoke-virtual {p1}, Lhc7;->k()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lre7$a;->g()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lre7$a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luh7;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Luh7;->clear()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lre7$a;->o:Z

    .line 2
    iget-object v0, p0, Lre7$a;->n:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 3
    iget-object v0, p0, Lre7$a;->i:Lhc7;

    invoke-virtual {v0}, Lhc7;->k()V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lre7$a;->l:Luc7;

    invoke-interface {v0, p1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast p1, Lvb7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lre7$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 5
    new-instance v0, Lre7$a$a;

    invoke-direct {v0, p0}, Lre7$a$a;-><init>(Lre7$a;)V

    .line 6
    iget-boolean v1, p0, Lre7$a;->o:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lre7$a;->i:Lhc7;

    invoke-virtual {v1, v0}, Lhc7;->b(Lic7;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p1, v0}, Lvb7;->a(Ltb7;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lre7$a;->n:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 10
    invoke-virtual {p0, p1}, Lre7$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ly38;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lre7$a;->n:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lre7$a;->n:Ly38;

    .line 3
    iget-object v0, p0, Lre7$a;->e:Lx38;

    invoke-interface {v0, p0}, Lx38;->e(Ly38;)V

    .line 4
    iget v0, p0, Lre7$a;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 6
    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lre7$a;->h()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lre7$a;->e:Lx38;

    .line 2
    iget-object v2, v0, Lre7$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iget-object v3, v0, Lre7$a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 4
    :cond_0
    iget-object v6, v0, Lre7$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_0
    const/4 v12, 0x0

    cmp-long v13, v10, v6

    if-eqz v13, :cond_9

    .line 5
    iget-boolean v14, v0, Lre7$a;->o:Z

    if-eqz v14, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lre7$a;->c()V

    return-void

    .line 7
    :cond_1
    iget-boolean v14, v0, Lre7$a;->f:Z

    if-nez v14, :cond_2

    .line 8
    iget-object v14, v0, Lre7$a;->k:Lsi7;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Throwable;

    if-eqz v14, :cond_2

    .line 9
    iget-object v2, v0, Lre7$a;->k:Lsi7;

    .line 10
    invoke-static {v2}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    .line 11
    invoke-virtual/range {p0 .. p0}, Lre7$a;->c()V

    .line 12
    invoke-interface {v1, v2}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-nez v14, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    .line 14
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Luh7;

    if-eqz v15, :cond_4

    .line 15
    invoke-virtual {v15}, Luh7;->poll()Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    if-eqz v14, :cond_7

    if-eqz v16, :cond_7

    .line 16
    iget-object v2, v0, Lre7$a;->k:Lsi7;

    .line 17
    invoke-static {v2}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 18
    invoke-interface {v1, v2}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 19
    :cond_6
    invoke-interface {v1}, Lx38;->a()V

    :goto_4
    return-void

    :cond_7
    if-eqz v16, :cond_8

    goto :goto_5

    .line 20
    :cond_8
    invoke-interface {v1, v15}, Lx38;->d(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    goto :goto_0

    :cond_9
    :goto_5
    if-nez v13, :cond_10

    .line 21
    iget-boolean v6, v0, Lre7$a;->o:Z

    if-eqz v6, :cond_a

    .line 22
    invoke-virtual/range {p0 .. p0}, Lre7$a;->c()V

    return-void

    .line 23
    :cond_a
    iget-boolean v6, v0, Lre7$a;->f:Z

    if-nez v6, :cond_b

    .line 24
    iget-object v6, v0, Lre7$a;->k:Lsi7;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_b

    .line 25
    iget-object v2, v0, Lre7$a;->k:Lsi7;

    .line 26
    invoke-static {v2}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    .line 27
    invoke-virtual/range {p0 .. p0}, Lre7$a;->c()V

    .line 28
    invoke-interface {v1, v2}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    .line 29
    :cond_b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    .line 30
    :goto_6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Luh7;

    if-eqz v7, :cond_d

    .line 31
    invoke-virtual {v7}, Luh7;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    const/4 v12, 0x1

    :cond_e
    if-eqz v6, :cond_10

    if-eqz v12, :cond_10

    .line 32
    iget-object v2, v0, Lre7$a;->k:Lsi7;

    .line 33
    invoke-static {v2}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 34
    invoke-interface {v1, v2}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 35
    :cond_f
    invoke-interface {v1}, Lx38;->a()V

    :goto_7
    return-void

    :cond_10
    cmp-long v6, v10, v8

    if-eqz v6, :cond_11

    .line 36
    iget-object v6, v0, Lre7$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v6, v10, v11}, Ln56;->E1(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 37
    iget v6, v0, Lre7$a;->g:I

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_11

    .line 38
    iget-object v6, v0, Lre7$a;->n:Ly38;

    invoke-interface {v6, v10, v11}, Ly38;->l(J)V

    :cond_11
    neg-int v5, v5

    .line 39
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_0

    return-void
.end method

.method public i()Luh7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Luh7<",
            "TR;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lre7$a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luh7;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Luh7;

    .line 3
    sget v1, Lmb7;->e:I

    .line 4
    invoke-direct {v0, v1}, Luh7;-><init>(I)V

    .line 5
    iget-object v1, p0, Lre7$a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public l(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lpi7;->y(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lre7$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Ln56;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lre7$a;->g()V

    :cond_0
    return-void
.end method
