.class public Lsm6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsm6$c;,
        Lsm6$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static b:Ljava/util/concurrent/Executor;

.field public static final c:Lsm6$c;

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsm6$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lsm6;->a:Ljava/util/concurrent/Executor;

    .line 2
    sput-object v0, Lsm6;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Lsm6$a;

    invoke-direct {v0}, Lsm6$a;-><init>()V

    sput-object v0, Lsm6;->c:Lsm6$c;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsm6;->d:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lsm6;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lsm6$b;)V
    .locals 7

    const-class v0, Lsm6;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-object v1, p0, Lsm6$b;->h:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 2
    sget-object v4, Lsm6;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsm6$b;

    .line 3
    iget-boolean v6, v5, Lsm6$b;->i:Z

    if-eqz v6, :cond_0

    .line 4
    iget-object v5, v5, Lsm6$b;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 6
    :cond_2
    iput-boolean v2, p0, Lsm6$b;->i:Z

    .line 7
    iget v1, p0, Lsm6$b;->f:I

    if-lez v1, :cond_4

    .line 8
    sget-object v2, Lsm6;->b:Ljava/util/concurrent/Executor;

    instance-of v3, v2, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_3

    .line 9
    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v3, v1

    .line 10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The executor set does not support scheduling"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    sget-object v1, Lsm6;->b:Ljava/util/concurrent/Executor;

    instance-of v2, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_5

    .line 13
    check-cast v1, Ljava/util/concurrent/ExecutorService;

    .line 14
    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :goto_1
    move-object v3, v1

    goto :goto_2

    .line 15
    :cond_5
    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    :cond_6
    :goto_2
    iget-object v1, p0, Lsm6$b;->e:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 17
    iget-object v1, p0, Lsm6$b;->h:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 18
    :cond_7
    iput-object v3, p0, Lsm6$b;->j:Ljava/util/concurrent/Future;

    .line 19
    sget-object v1, Lsm6;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
