.class public final Lgf7$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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
.field public static final m:[Lgf7$b;

.field public static final n:[Lgf7$b;


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lgf7$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lgf7$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ly38;",
            ">;"
        }
    .end annotation
.end field

.field public volatile j:Ljava/lang/Object;

.field public k:I

.field public volatile l:Lnd7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnd7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lgf7$b;

    .line 1
    sput-object v1, Lgf7$c;->m:[Lgf7$b;

    new-array v0, v0, [Lgf7$b;

    .line 2
    sput-object v0, Lgf7$c;->n:[Lgf7$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lgf7$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lgf7$c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lgf7$c;->m:[Lgf7$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgf7$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-object p1, p0, Lgf7$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lgf7$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput p2, p0, Lgf7$c;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgf7$c;->j:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lwi7;->e:Lwi7;

    iput-object v0, p0, Lgf7$c;->j:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lgf7$c;->g()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgf7$c;->j:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lwi7$a;

    invoke-direct {v0, p1}, Lwi7$a;-><init>(Ljava/lang/Throwable;)V

    .line 3
    iput-object v0, p0, Lgf7$c;->j:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lgf7$c;->g()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    sget-object v1, Lwi7;->e:Lwi7;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz p2, :cond_5

    .line 2
    iget-object p1, p0, Lgf7$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lgf7$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lgf7$c;->n:[Lgf7$b;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lgf7$b;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 4
    iget-object v1, v1, Lgf7$b;->e:Lx38;

    invoke-interface {v1}, Lx38;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v2

    .line 5
    :cond_2
    check-cast p1, Lwi7$a;

    iget-object p1, p1, Lwi7$a;->e:Ljava/lang/Throwable;

    .line 6
    iget-object p2, p0, Lgf7$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    iget-object p2, p0, Lgf7$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lgf7$c;->n:[Lgf7$b;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lgf7$b;

    .line 8
    array-length v1, p2

    if-eqz v1, :cond_3

    .line 9
    array-length v1, p2

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v3, p2, v0

    .line 10
    iget-object v3, v3, Lgf7$b;->e:Lx38;

    invoke-interface {v3, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :cond_4
    return v2

    :cond_5
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
    iget v0, p0, Lgf7$c;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf7$c;->l:Lnd7;

    invoke-interface {v0, p1}, Lnd7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Llc7;

    const-string v0, "Prefetch queue is full?!"

    invoke-direct {p1, v0}, Llc7;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lgf7$c;->b(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lgf7$c;->g()V

    return-void
.end method

.method public e(Ly38;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgf7$c;->i:Ljava/util/concurrent/atomic/AtomicReference;

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
    iput v1, p0, Lgf7$c;->k:I

    .line 6
    iput-object v0, p0, Lgf7$c;->l:Lnd7;

    .line 7
    sget-object p1, Lwi7;->e:Lwi7;

    iput-object p1, p0, Lgf7$c;->j:Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lgf7$c;->g()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9
    iput v1, p0, Lgf7$c;->k:I

    .line 10
    iput-object v0, p0, Lgf7$c;->l:Lnd7;

    .line 11
    iget v0, p0, Lgf7$c;->f:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Lth7;

    iget v1, p0, Lgf7$c;->f:I

    invoke-direct {v0, v1}, Lth7;-><init>(I)V

    iput-object v0, p0, Lgf7$c;->l:Lnd7;

    .line 13
    iget v0, p0, Lgf7$c;->f:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 25

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v1, Lgf7$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgf7$b;

    const/4 v3, 0x1

    move-object v4, v0

    const/4 v5, 0x1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, v1, Lgf7$c;->j:Ljava/lang/Object;

    .line 5
    iget-object v6, v1, Lgf7$c;->l:Lnd7;

    if-eqz v6, :cond_3

    .line 6
    invoke-interface {v6}, Lnd7;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v8, 0x1

    .line 7
    :goto_2
    invoke-virtual {v1, v0, v8}, Lgf7$c;->c(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-nez v8, :cond_16

    .line 8
    array-length v0, v4

    .line 9
    array-length v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    :goto_3
    const-wide/high16 v16, -0x8000000000000000L

    if-ge v12, v9, :cond_6

    aget-object v7, v4, v12

    .line 10
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    cmp-long v20, v18, v16

    if-eqz v20, :cond_5

    .line 11
    iget-wide v10, v7, Lgf7$b;->g:J

    sub-long v10, v18, v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, 0x1

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    const-wide/16 v9, 0x1

    if-ne v0, v13, :cond_9

    .line 12
    iget-object v0, v1, Lgf7$c;->j:Ljava/lang/Object;

    .line 13
    :try_start_0
    invoke-interface {v6}, Lnd7;->poll()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 14
    invoke-static {v6}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 15
    iget-object v0, v1, Lgf7$c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 16
    new-instance v0, Lwi7$a;

    invoke-direct {v0, v6}, Lwi7$a;-><init>(Ljava/lang/Throwable;)V

    .line 17
    iput-object v0, v1, Lgf7$c;->j:Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    .line 18
    :goto_6
    invoke-virtual {v1, v0, v7}, Lgf7$c;->c(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 19
    :cond_8
    iget v0, v1, Lgf7$c;->k:I

    if-eq v0, v3, :cond_1

    .line 20
    iget-object v0, v1, Lgf7$c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly38;

    invoke-interface {v0, v9, v10}, Ly38;->l(J)V

    goto :goto_0

    :cond_9
    const/4 v11, 0x0

    :goto_7
    int-to-long v12, v11

    cmp-long v0, v12, v14

    if-gez v0, :cond_13

    .line 21
    iget-object v0, v1, Lgf7$c;->j:Ljava/lang/Object;

    .line 22
    :try_start_1
    invoke-interface {v6}, Lnd7;->poll()Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v8, v0

    .line 23
    invoke-static {v8}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 24
    iget-object v0, v1, Lgf7$c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 25
    new-instance v0, Lwi7$a;

    invoke-direct {v0, v8}, Lwi7$a;-><init>(Ljava/lang/Throwable;)V

    .line 26
    iput-object v0, v1, Lgf7$c;->j:Ljava/lang/Object;

    const/4 v8, 0x0

    :goto_8
    if-nez v8, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    .line 27
    :goto_9
    invoke-virtual {v1, v0, v7}, Lgf7$c;->c(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-eqz v7, :cond_c

    move v8, v7

    goto/16 :goto_d

    .line 28
    :cond_c
    array-length v0, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v12, v0, :cond_f

    aget-object v3, v4, v12

    .line 29
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v22

    cmp-long v24, v22, v16

    if-eqz v24, :cond_e

    const-wide v20, 0x7fffffffffffffffL

    cmp-long v24, v22, v20

    move-object/from16 v22, v6

    move/from16 v23, v7

    if-eqz v24, :cond_d

    .line 30
    iget-wide v6, v3, Lgf7$b;->g:J

    add-long/2addr v6, v9

    iput-wide v6, v3, Lgf7$b;->g:J

    .line 31
    :cond_d
    iget-object v3, v3, Lgf7$b;->e:Lx38;

    invoke-interface {v3, v8}, Lx38;->d(Ljava/lang/Object;)V

    goto :goto_b

    :cond_e
    move-object/from16 v22, v6

    move/from16 v23, v7

    const-wide v20, 0x7fffffffffffffffL

    const/4 v13, 0x1

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v22

    move/from16 v7, v23

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v22, v6

    move/from16 v23, v7

    const-wide v20, 0x7fffffffffffffffL

    add-int/lit8 v11, v11, 0x1

    .line 32
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgf7$b;

    if-nez v13, :cond_11

    if-eq v0, v4, :cond_10

    goto :goto_c

    :cond_10
    move-object/from16 v6, v22

    move/from16 v8, v23

    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_11
    :goto_c
    if-eqz v11, :cond_12

    .line 33
    iget v3, v1, Lgf7$c;->k:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_12

    .line 34
    iget-object v3, v1, Lgf7$c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly38;

    int-to-long v6, v11

    invoke-interface {v3, v6, v7}, Ly38;->l(J)V

    :cond_12
    move-object v4, v0

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_13
    :goto_d
    if-eqz v11, :cond_14

    .line 35
    iget v0, v1, Lgf7$c;->k:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_15

    .line 36
    iget-object v0, v1, Lgf7$c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly38;

    invoke-interface {v0, v12, v13}, Ly38;->l(J)V

    goto :goto_e

    :cond_14
    const/4 v3, 0x1

    :cond_15
    :goto_e
    const-wide/16 v6, 0x0

    cmp-long v0, v14, v6

    if-eqz v0, :cond_16

    if-nez v8, :cond_16

    goto/16 :goto_0

    :cond_16
    neg-int v0, v5

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_17

    return-void

    .line 38
    :cond_17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lgf7$b;

    goto/16 :goto_0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lgf7$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgf7$c;->n:[Lgf7$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Lgf7$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf7$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lgf7$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgf7$b;

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

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

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
    sget-object v1, Lgf7$c;->m:[Lgf7$b;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 5
    new-array v5, v5, [Lgf7$b;

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
    iget-object v2, p0, Lgf7$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_3
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgf7$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgf7$c;->n:[Lgf7$b;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lgf7$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgf7$b;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lgf7$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lgf7$c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lpi7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method
