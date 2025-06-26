.class public final Lqe7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqe7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ly38;",
        ">;",
        "Lpb7<",
        "TU;>;",
        "Lic7;"
    }
.end annotation


# instance fields
.field public final e:J

.field public final f:Lqe7$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe7$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:I

.field public volatile i:Z

.field public volatile j:Lnd7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnd7<",
            "TU;>;"
        }
    .end annotation
.end field

.field public k:J

.field public l:I


# direct methods
.method public constructor <init>(Lqe7$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe7$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-wide p2, p0, Lqe7$a;->e:J

    .line 3
    iput-object p1, p0, Lqe7$a;->f:Lqe7$b;

    .line 4
    iget p1, p1, Lqe7$b;->i:I

    iput p1, p0, Lqe7$a;->h:I

    shr-int/lit8 p1, p1, 0x2

    .line 5
    iput p1, p0, Lqe7$a;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lqe7$a;->i:Z

    .line 2
    iget-object v0, p0, Lqe7$a;->f:Lqe7$b;

    invoke-virtual {v0}, Lqe7$b;->g()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lpi7;->e:Lpi7;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lqe7$a;->f:Lqe7$b;

    .line 3
    iget-object v1, v0, Lqe7$b;->l:Lsi7;

    .line 4
    invoke-static {v1, p1}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lqe7$a;->i:Z

    .line 6
    iget-boolean p1, v0, Lqe7$b;->g:Z

    if-nez p1, :cond_0

    .line 7
    iget-object p1, v0, Lqe7$b;->p:Ly38;

    invoke-interface {p1}, Ly38;->cancel()V

    .line 8
    iget-object p1, v0, Lqe7$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lqe7$b;->w:[Lqe7$a;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lqe7$a;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 9
    invoke-static {v3}, Lpi7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lqe7$b;->g()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public c(J)V
    .locals 3

    .line 1
    iget v0, p0, Lqe7$a;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-wide v0, p0, Lqe7$a;->k:J

    add-long/2addr v0, p1

    .line 3
    iget p1, p0, Lqe7$a;->g:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lqe7$a;->k:J

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly38;

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    goto :goto_0

    .line 6
    :cond_0
    iput-wide v0, p0, Lqe7$a;->k:J

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lqe7$a;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 2
    iget-object v0, p0, Lqe7$a;->f:Lqe7$b;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "Inner queue full?!"

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    iget-object v1, v0, Lqe7$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 5
    iget-object v1, p0, Lqe7$a;->j:Lnd7;

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Lnd7;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    :cond_0
    iget-object v1, v0, Lqe7$b;->e:Lx38;

    invoke-interface {v1, p1}, Lx38;->d(Ljava/lang/Object;)V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, v0, Lqe7$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    const-wide/16 v1, 0x1

    .line 9
    invoke-virtual {p0, v1, v2}, Lqe7$a;->c(J)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 10
    iget-object v1, p0, Lqe7$a;->j:Lnd7;

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Lth7;

    iget v3, v0, Lqe7$b;->i:I

    invoke-direct {v1, v3}, Lth7;-><init>(I)V

    .line 12
    iput-object v1, p0, Lqe7$a;->j:Lnd7;

    .line 13
    :cond_3
    invoke-interface {v1, p1}, Lnd7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    new-instance p1, Llc7;

    invoke-direct {p1, v2}, Llc7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lqe7$b;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 15
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, p0, Lqe7$a;->j:Lnd7;

    if-nez v1, :cond_6

    .line 17
    new-instance v1, Lth7;

    iget v3, v0, Lqe7$b;->i:I

    invoke-direct {v1, v3}, Lth7;-><init>(I)V

    .line 18
    iput-object v1, p0, Lqe7$a;->j:Lnd7;

    .line 19
    :cond_6
    invoke-interface {v1, p1}, Lnd7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 20
    new-instance p1, Llc7;

    invoke-direct {p1, v2}, Llc7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lqe7$b;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 21
    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 22
    :cond_8
    invoke-virtual {v0}, Lqe7$b;->h()V

    goto :goto_1

    .line 23
    :cond_9
    iget-object p1, p0, Lqe7$a;->f:Lqe7$b;

    invoke-virtual {p1}, Lqe7$b;->g()V

    :goto_1
    return-void
.end method

.method public e(Ly38;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lpi7;->x(Ljava/util/concurrent/atomic/AtomicReference;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lkd7;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lkd7;

    const/4 v1, 0x7

    .line 4
    invoke-interface {v0, v1}, Ljd7;->i(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iput v1, p0, Lqe7$a;->l:I

    .line 6
    iput-object v0, p0, Lqe7$a;->j:Lnd7;

    .line 7
    iput-boolean v2, p0, Lqe7$a;->i:Z

    .line 8
    iget-object p1, p0, Lqe7$a;->f:Lqe7$b;

    invoke-virtual {p1}, Lqe7$b;->g()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9
    iput v1, p0, Lqe7$a;->l:I

    .line 10
    iput-object v0, p0, Lqe7$a;->j:Lnd7;

    .line 11
    :cond_1
    iget v0, p0, Lqe7$a;->h:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_2
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {p0}, Lpi7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method
