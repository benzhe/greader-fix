.class public Lyh7;
.super Lzb7$b;
.source "SourceFile"

# interfaces
.implements Lic7;


# instance fields
.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzb7$b;-><init>()V

    .line 2
    invoke-static {p1}, Lci7;->a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lyh7;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Lic7;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v2}, Lyh7;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lic7;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lic7;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lyh7;->f:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lzc7;->e:Lzc7;

    return-object p1

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lyh7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lxc7;)Lbi7;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lxc7;)Lbi7;
    .locals 3

    const-string v0, "run is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lbi7;

    invoke-direct {v0, p1, p5}, Lbi7;-><init>(Ljava/lang/Runnable;Lxc7;)V

    if-eqz p5, :cond_0

    .line 3
    invoke-interface {p5, v0}, Lxc7;->b(Lic7;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1

    .line 4
    :try_start_0
    iget-object p1, p0, Lyh7;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lyh7;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {v0, p1}, Lbi7;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p5, :cond_2

    .line 7
    invoke-interface {p5, v0}, Lxc7;->a(Lic7;)Z

    .line 8
    :cond_2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyh7;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lyh7;->f:Z

    .line 3
    iget-object v0, p0, Lyh7;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method
