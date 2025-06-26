.class public final Lhf7$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lpb7<",
        "TT;>;",
        "Lic7;"
    }
.end annotation


# static fields
.field public static final o:[Lhf7$a;

.field public static final p:[Lhf7$a;


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhf7$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ly38;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lhf7$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final i:I

.field public volatile j:Lnd7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnd7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public k:I

.field public volatile l:Z

.field public m:Ljava/lang/Throwable;

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lhf7$a;

    .line 1
    sput-object v1, Lhf7$b;->o:[Lhf7$a;

    new-array v0, v0, [Lhf7$a;

    .line 2
    sput-object v0, Lhf7$b;->p:[Lhf7$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhf7$b<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lhf7$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lhf7$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lhf7$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput p2, p0, Lhf7$b;->i:I

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lhf7$b;->o:[Lhf7$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lhf7$b;->l:Z

    .line 2
    invoke-virtual {p0}, Lhf7$b;->g()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhf7$b;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lhf7$b;->m:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lhf7$b;->l:Z

    .line 5
    invoke-virtual {p0}, Lhf7$b;->g()V

    :goto_0
    return-void
.end method

.method public c(ZZ)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    iget-object p1, p0, Lhf7$b;->m:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lhf7$b;->j(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lhf7$b;->p:[Lhf7$a;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lhf7$a;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 4
    invoke-virtual {v1}, Lhf7$a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object v1, v1, Lhf7$a;->e:Lx38;

    invoke-interface {v1}, Lx38;->a()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lhf7$b;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lhf7$b;->j:Lnd7;

    invoke-interface {v0, p1}, Lnd7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Llc7;

    const-string v0, "Prefetch queue is full?!"

    invoke-direct {p1, v0}, Llc7;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lhf7$b;->b(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lhf7$b;->g()V

    return-void
.end method

.method public e(Ly38;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lhf7$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lpi7;->x(Ljava/util/concurrent/atomic/AtomicReference;Ly38;)Z

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
    iput v1, p0, Lhf7$b;->k:I

    .line 6
    iput-object v0, p0, Lhf7$b;->j:Lnd7;

    .line 7
    iput-boolean v2, p0, Lhf7$b;->l:Z

    .line 8
    invoke-virtual {p0}, Lhf7$b;->g()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9
    iput v1, p0, Lhf7$b;->k:I

    .line 10
    iput-object v0, p0, Lhf7$b;->j:Lnd7;

    .line 11
    iget v0, p0, Lhf7$b;->i:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Lth7;

    iget v1, p0, Lhf7$b;->i:I

    invoke-direct {v0, v1}, Lth7;-><init>(I)V

    iput-object v0, p0, Lhf7$b;->j:Lnd7;

    .line 13
    iget v0, p0, Lhf7$b;->i:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Lhf7$b;->j:Lnd7;

    .line 3
    iget v2, v1, Lhf7$b;->n:I

    .line 4
    iget v3, v1, Lhf7$b;->i:I

    shr-int/lit8 v4, v3, 0x2

    sub-int/2addr v3, v4

    .line 5
    iget v4, v1, Lhf7$b;->k:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x1

    move/from16 v20, v2

    move-object v2, v0

    move/from16 v0, v20

    :cond_2
    :goto_1
    if-eqz v2, :cond_e

    const-wide v8, 0x7fffffffffffffffL

    .line 6
    iget-object v10, v1, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lhf7$a;

    .line 7
    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v11, :cond_4

    aget-object v14, v10, v12

    .line 8
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v15

    const-wide/high16 v17, -0x8000000000000000L

    cmp-long v19, v15, v17

    if-eqz v19, :cond_3

    .line 9
    iget-wide v13, v14, Lhf7$a;->g:J

    sub-long v13, v15, v13

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const/4 v13, 0x1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v11, 0x0

    if-nez v13, :cond_5

    move-wide v8, v11

    :cond_5
    :goto_3
    cmp-long v13, v8, v11

    if-eqz v13, :cond_d

    .line 10
    iget-boolean v13, v1, Lhf7$b;->l:Z

    .line 11
    :try_start_0
    invoke-interface {v2}, Lnd7;->poll()Ljava/lang/Object;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_6

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    .line 12
    :goto_4
    invoke-virtual {v1, v13, v15}, Lhf7$b;->c(ZZ)Z

    move-result v13

    if-eqz v13, :cond_7

    return-void

    :cond_7
    if-eqz v15, :cond_8

    goto :goto_6

    .line 13
    :cond_8
    array-length v13, v10

    const/4 v15, 0x0

    :goto_5
    const-wide/16 v16, 0x1

    if-ge v15, v13, :cond_a

    aget-object v5, v10, v15

    .line 14
    invoke-virtual {v5}, Lhf7$a;->a()Z

    move-result v19

    if-nez v19, :cond_9

    .line 15
    iget-object v11, v5, Lhf7$a;->e:Lx38;

    invoke-interface {v11, v14}, Lx38;->d(Ljava/lang/Object;)V

    .line 16
    iget-wide v11, v5, Lhf7$a;->g:J

    add-long v11, v11, v16

    iput-wide v11, v5, Lhf7$a;->g:J

    :cond_9
    add-int/lit8 v15, v15, 0x1

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_b

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_b

    .line 17
    iget-object v0, v1, Lhf7$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly38;

    int-to-long v11, v3

    invoke-interface {v0, v11, v12}, Ly38;->l(J)V

    const/4 v0, 0x0

    :cond_b
    sub-long v8, v8, v16

    .line 18
    iget-object v5, v1, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v10, v5, :cond_c

    goto/16 :goto_1

    :cond_c
    const-wide/16 v11, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 19
    invoke-static {v3}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 20
    iget-object v0, v1, Lhf7$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 21
    invoke-interface {v2}, Lnd7;->clear()V

    .line 22
    iput-boolean v6, v1, Lhf7$b;->l:Z

    .line 23
    invoke-virtual {v1, v3}, Lhf7$b;->j(Ljava/lang/Throwable;)V

    return-void

    .line 24
    :cond_d
    :goto_6
    iget-boolean v5, v1, Lhf7$b;->l:Z

    invoke-interface {v2}, Lnd7;->isEmpty()Z

    move-result v8

    invoke-virtual {v1, v5, v8}, Lhf7$b;->c(ZZ)Z

    move-result v5

    if-eqz v5, :cond_e

    return-void

    .line 25
    :cond_e
    iput v0, v1, Lhf7$b;->n:I

    neg-int v5, v7

    .line 26
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_f

    return-void

    :cond_f
    if-nez v2, :cond_2

    .line 27
    iget-object v2, v1, Lhf7$b;->j:Lnd7;

    goto/16 :goto_1
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lhf7$b;->p:[Lhf7$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Lhf7$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhf7$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhf7$a;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 3
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 4
    sget-object v1, Lhf7$b;->o:[Lhf7$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 5
    new-array v5, v5, [Lhf7$a;

    .line 6
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    .line 7
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 8
    :goto_2
    iget-object v2, p0, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_3
    return-void
.end method

.method public j(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lhf7$b;->p:[Lhf7$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhf7$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lhf7$a;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    iget-object v3, v3, Lhf7$a;->e:Lx38;

    invoke-interface {v3, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lhf7$b;->p:[Lhf7$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lhf7$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lhf7$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lpi7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method
