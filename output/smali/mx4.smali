.class public final Lmx4;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/lang/Comparable<",
        "Lmx4<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final e:J

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final synthetic h:Lox4;


# direct methods
.method public constructor <init>(Lox4;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lmx4;->h:Lox4;

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2
    sget-object p2, Lox4;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lmx4;->e:J

    iput-object p4, p0, Lmx4;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lmx4;->f:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p4, v0, p2

    if-nez p4, :cond_0

    iget-object p1, p1, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string p2, "Tasks index overflow"

    .line 6
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lox4;Ljava/util/concurrent/Callable;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lmx4;->h:Lox4;

    .line 7
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 8
    sget-object p2, Lox4;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lmx4;->e:J

    const-string p2, "Task exception on worker thread"

    iput-object p2, p0, Lmx4;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lmx4;->f:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long v2, v0, p2

    if-nez v2, :cond_0

    iget-object p1, p1, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string p2, "Tasks index overflow"

    .line 12
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lmx4;

    iget-boolean v0, p0, Lmx4;->f:Z

    iget-boolean v1, p1, Lmx4;->f:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    iget-wide v0, p0, Lmx4;->e:J

    iget-wide v4, p1, Lmx4;->e:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    :goto_0
    return v2

    :cond_3
    iget-object p1, p0, Lmx4;->h:Lox4;

    iget-object p1, p1, Lly4;->a:Lrx4;

    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lqw4;->g:Low4;

    .line 2
    iget-wide v0, p0, Lmx4;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Two tasks share the same index. index"

    invoke-virtual {p1, v1, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final setException(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lmx4;->h:Lox4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 3
    iget-object v1, p0, Lmx4;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
