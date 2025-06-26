.class public final Lwh7$b;
.super Lzb7$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwh7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final e:Lhc7;

.field public final f:Lwh7$a;

.field public final g:Lwh7$c;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lwh7$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lzb7$b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lwh7$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lwh7$b;->f:Lwh7$a;

    .line 4
    new-instance v0, Lhc7;

    invoke-direct {v0}, Lhc7;-><init>()V

    iput-object v0, p0, Lwh7$b;->e:Lhc7;

    .line 5
    iget-object v0, p1, Lwh7$a;->g:Lhc7;

    .line 6
    iget-boolean v0, v0, Lhc7;->f:Z

    if-eqz v0, :cond_0

    .line 7
    sget-object p1, Lwh7;->g:Lwh7$c;

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p1, Lwh7$a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p1, Lwh7$a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwh7$c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lwh7$c;

    iget-object v1, p1, Lwh7$a;->j:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lwh7$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 11
    iget-object p1, p1, Lwh7$a;->g:Lhc7;

    invoke-virtual {p1, v0}, Lhc7;->b(Lic7;)Z

    :goto_0
    move-object p1, v0

    .line 12
    :goto_1
    iput-object p1, p0, Lwh7$b;->g:Lwh7$c;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lic7;
    .locals 6

    .line 1
    iget-object v0, p0, Lwh7$b;->e:Lhc7;

    .line 2
    iget-boolean v0, v0, Lhc7;->f:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lzc7;->e:Lzc7;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lwh7$b;->g:Lwh7$c;

    iget-object v5, p0, Lwh7$b;->e:Lhc7;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lyh7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lxc7;)Lbi7;

    move-result-object p1

    return-object p1
.end method

.method public k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lwh7$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lwh7$b;->e:Lhc7;

    invoke-virtual {v0}, Lhc7;->k()V

    .line 3
    iget-object v0, p0, Lwh7$b;->f:Lwh7$a;

    iget-object v1, p0, Lwh7$b;->g:Lwh7$c;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 6
    iget-wide v4, v0, Lwh7$a;->e:J

    add-long/2addr v2, v4

    .line 7
    iput-wide v2, v1, Lwh7$c;->g:J

    .line 8
    iget-object v0, v0, Lwh7$a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
