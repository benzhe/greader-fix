.class public final Lie7$b;
.super Lie7$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lie7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lie7$a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final q:Lx38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx38<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final r:Z


# direct methods
.method public constructor <init>(Lx38;Luc7;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;",
            "Luc7<",
            "-TT;+",
            "Lw38<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lie7$a;-><init>(Luc7;I)V

    .line 2
    iput-object p1, p0, Lie7$b;->q:Lx38;

    .line 3
    iput-boolean p4, p0, Lie7$b;->r:Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lie7$a;->n:Lsi7;

    .line 2
    invoke-static {v0, p1}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lie7$a;->l:Z

    .line 4
    invoke-virtual {p0}, Lie7$b;->h()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lie7$b;->q:Lx38;

    invoke-interface {v0, p1}, Lx38;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lie7$a;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lie7$a;->m:Z

    .line 3
    iget-object v0, p0, Lie7$a;->e:Lie7$d;

    invoke-virtual {v0}, Loi7;->cancel()V

    .line 4
    iget-object v0, p0, Lie7$a;->i:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lie7$a;->n:Lsi7;

    .line 2
    invoke-static {v0, p1}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p0, Lie7$b;->r:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lie7$a;->i:Ly38;

    invoke-interface {p1}, Ly38;->cancel()V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lie7$a;->l:Z

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lie7$a;->o:Z

    .line 7
    invoke-virtual {p0}, Lie7$b;->h()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_d

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lie7$a;->m:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lie7$a;->o:Z

    if-nez v0, :cond_c

    .line 4
    iget-boolean v0, p0, Lie7$a;->l:Z

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v1, p0, Lie7$b;->r:Z

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lie7$a;->n:Lsi7;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 7
    iget-object v0, p0, Lie7$b;->q:Lx38;

    iget-object v1, p0, Lie7$a;->n:Lsi7;

    .line 8
    invoke-static {v1}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    :try_start_0
    iget-object v1, p0, Lie7$a;->k:Lnd7;

    invoke-interface {v1}, Lnd7;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 11
    iget-object v0, p0, Lie7$a;->n:Lsi7;

    .line 12
    invoke-static {v0}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v1, p0, Lie7$b;->q:Lx38;

    invoke-interface {v1, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v0, p0, Lie7$b;->q:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    :goto_2
    return-void

    :cond_5
    if-nez v4, :cond_c

    .line 15
    :try_start_1
    iget-object v0, p0, Lie7$a;->f:Luc7;

    invoke-interface {v0, v1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    .line 16
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    check-cast v0, Lw38;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    iget v1, p0, Lie7$a;->p:I

    if-eq v1, v2, :cond_7

    .line 19
    iget v1, p0, Lie7$a;->j:I

    add-int/2addr v1, v2

    .line 20
    iget v4, p0, Lie7$a;->h:I

    if-ne v1, v4, :cond_6

    .line 21
    iput v3, p0, Lie7$a;->j:I

    .line 22
    iget-object v3, p0, Lie7$a;->i:Ly38;

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Ly38;->l(J)V

    goto :goto_3

    .line 23
    :cond_6
    iput v1, p0, Lie7$a;->j:I

    .line 24
    :cond_7
    :goto_3
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_b

    .line 25
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 26
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 27
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 28
    iget-object v1, p0, Lie7$a;->n:Lsi7;

    .line 29
    invoke-static {v1, v0}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 30
    iget-boolean v0, p0, Lie7$b;->r:Z

    if-nez v0, :cond_8

    .line 31
    iget-object v0, p0, Lie7$a;->i:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 32
    iget-object v0, p0, Lie7$b;->q:Lx38;

    iget-object v1, p0, Lie7$a;->n:Lsi7;

    .line 33
    invoke-static {v1}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_9

    goto/16 :goto_0

    .line 35
    :cond_9
    iget-object v1, p0, Lie7$a;->e:Lie7$d;

    .line 36
    iget-boolean v1, v1, Loi7;->l:Z

    if-eqz v1, :cond_a

    .line 37
    iget-object v1, p0, Lie7$b;->q:Lx38;

    invoke-interface {v1, v0}, Lx38;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 38
    :cond_a
    iput-boolean v2, p0, Lie7$a;->o:Z

    .line 39
    iget-object v1, p0, Lie7$a;->e:Lie7$d;

    new-instance v2, Lie7$f;

    iget-object v3, p0, Lie7$a;->e:Lie7$d;

    invoke-direct {v2, v0, v3}, Lie7$f;-><init>(Ljava/lang/Object;Lx38;)V

    invoke-virtual {v1, v2}, Loi7;->i(Ly38;)V

    goto :goto_5

    .line 40
    :cond_b
    iput-boolean v2, p0, Lie7$a;->o:Z

    .line 41
    iget-object v1, p0, Lie7$a;->e:Lie7$d;

    invoke-interface {v0, v1}, Lw38;->i(Lx38;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 42
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 43
    iget-object v1, p0, Lie7$a;->i:Ly38;

    invoke-interface {v1}, Ly38;->cancel()V

    .line 44
    iget-object v1, p0, Lie7$a;->n:Lsi7;

    .line 45
    invoke-static {v1, v0}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 46
    iget-object v0, p0, Lie7$b;->q:Lx38;

    iget-object v1, p0, Lie7$a;->n:Lsi7;

    .line 47
    invoke-static {v1}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 48
    invoke-interface {v0, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    .line 49
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 50
    iget-object v1, p0, Lie7$a;->i:Ly38;

    invoke-interface {v1}, Ly38;->cancel()V

    .line 51
    iget-object v1, p0, Lie7$a;->n:Lsi7;

    .line 52
    invoke-static {v1, v0}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 53
    iget-object v0, p0, Lie7$b;->q:Lx38;

    iget-object v1, p0, Lie7$a;->n:Lsi7;

    .line 54
    invoke-static {v1}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    .line 56
    :cond_c
    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lie7$b;->q:Lx38;

    invoke-interface {v0, p0}, Lx38;->e(Ly38;)V

    return-void
.end method

.method public l(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lie7$a;->e:Lie7$d;

    invoke-virtual {v0, p1, p2}, Loi7;->l(J)V

    return-void
.end method
