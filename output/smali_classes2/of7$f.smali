.class public final Lof7$f;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Lof7$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lof7$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    sget-object v0, Lwi7;->e:Lwi7;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p0, Lof7$f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lof7$f;->e:I

    return-void
.end method

.method public h(Lof7$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lof7$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lwi7;->e:Lwi7;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v1, p1, Lof7$b;->i:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v2, p1, Lof7$b;->j:Z

    .line 4
    monitor-exit p1

    return-void

    .line 5
    :cond_0
    iput-boolean v2, p1, Lof7$b;->i:Z

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    iget-object v1, p1, Lof7$b;->f:Lx38;

    .line 8
    :goto_0
    invoke-virtual {p1}, Lof7$b;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 9
    :cond_1
    iget v2, p0, Lof7$f;->e:I

    .line 10
    iget-object v3, p1, Lof7$b;->g:Ljava/lang/Object;

    .line 11
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 13
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v4

    move-wide v10, v6

    :goto_2
    cmp-long v12, v8, v6

    if-eqz v12, :cond_9

    if-ge v3, v2, :cond_9

    .line 14
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v0, :cond_3

    .line 15
    :try_start_1
    invoke-interface {v1}, Lx38;->a()V

    goto :goto_3

    .line 16
    :cond_3
    instance-of v13, v12, Lwi7$a;

    if-eqz v13, :cond_4

    .line 17
    move-object v13, v12

    check-cast v13, Lwi7$a;

    iget-object v13, v13, Lwi7$a;->e:Ljava/lang/Throwable;

    invoke-interface {v1, v13}, Lx38;->b(Ljava/lang/Throwable;)V

    :goto_3
    const/4 v12, 0x1

    goto :goto_4

    .line 18
    :cond_4
    invoke-interface {v1, v12}, Lx38;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_5

    return-void

    .line 19
    :cond_5
    invoke-virtual {p1}, Lof7$b;->a()Z

    move-result v12

    if-eqz v12, :cond_6

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    add-long/2addr v10, v12

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 20
    invoke-static {v2}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {p1}, Lof7$b;->k()V

    .line 22
    instance-of p1, v12, Lwi7$a;

    if-nez p1, :cond_8

    if-ne v12, v0, :cond_7

    const/4 p1, 0x1

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    :goto_5
    if-nez p1, :cond_8

    .line 23
    invoke-interface {v1, v2}, Lx38;->b(Ljava/lang/Throwable;)V

    :cond_8
    return-void

    :cond_9
    cmp-long v2, v10, v6

    if-eqz v2, :cond_e

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lof7$b;->g:Ljava/lang/Object;

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v8, v4, v2

    if-eqz v8, :cond_e

    .line 25
    :goto_6
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v12, v4, v8

    if-nez v12, :cond_a

    goto :goto_7

    :cond_a
    cmp-long v8, v4, v2

    if-nez v8, :cond_b

    goto :goto_7

    :cond_b
    sub-long v2, v4, v10

    cmp-long v8, v2, v6

    if-gez v8, :cond_c

    .line 26
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "More produced than requested: "

    invoke-static {v9, v2, v3}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ln56;->z1(Ljava/lang/Throwable;)V

    move-wide v2, v6

    .line 27
    :cond_c
    invoke-virtual {p1, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_6

    .line 28
    :cond_e
    :goto_7
    monitor-enter p1

    .line 29
    :try_start_2
    iget-boolean v2, p1, Lof7$b;->j:Z

    if-nez v2, :cond_f

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p1, Lof7$b;->i:Z

    .line 31
    monitor-exit p1

    return-void

    :cond_f
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p1, Lof7$b;->j:Z

    .line 33
    monitor-exit p1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 34
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lof7$f;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lof7$f;->e:I

    return-void
.end method

.method public l(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance v0, Lwi7$a;

    invoke-direct {v0, p1}, Lwi7$a;-><init>(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget p1, p0, Lof7$f;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lof7$f;->e:I

    return-void
.end method
