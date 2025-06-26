.class public final Ldi7$a;
.super Lzb7$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldi7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lhc7;

.field public volatile g:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzb7$b;-><init>()V

    .line 2
    iput-object p1, p0, Ldi7$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    new-instance p1, Lhc7;

    invoke-direct {p1}, Lhc7;-><init>()V

    iput-object p1, p0, Ldi7$a;->f:Lhc7;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lic7;
    .locals 4

    .line 1
    sget-object v0, Lzc7;->e:Lzc7;

    iget-boolean v1, p0, Ldi7$a;->g:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "run is null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lbi7;

    iget-object v2, p0, Ldi7$a;->f:Lhc7;

    invoke-direct {v1, p1, v2}, Lbi7;-><init>(Ljava/lang/Runnable;Lxc7;)V

    .line 4
    iget-object p1, p0, Ldi7$a;->f:Lhc7;

    invoke-virtual {p1, v1}, Lhc7;->b(Lic7;)Z

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-gtz p1, :cond_1

    .line 5
    :try_start_0
    iget-object p1, p0, Ldi7$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Ldi7$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {v1, p1}, Lbi7;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0}, Ldi7$a;->k()V

    .line 9
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldi7$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldi7$a;->g:Z

    .line 3
    iget-object v0, p0, Ldi7$a;->f:Lhc7;

    invoke-virtual {v0}, Lhc7;->k()V

    :cond_0
    return-void
.end method
