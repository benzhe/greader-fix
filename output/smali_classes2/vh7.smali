.class public final Lvh7;
.super Lzb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvh7$c;,
        Lvh7$a;,
        Lvh7$b;
    }
.end annotation


# static fields
.field public static final c:Lvh7$b;

.field public static final d:Lzh7;

.field public static final e:I

.field public static final f:Lvh7$c;


# instance fields
.field public final a:Ljava/util/concurrent/ThreadFactory;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lvh7$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "rx2.computation-threads"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    sput v0, Lvh7;->e:I

    .line 2
    new-instance v0, Lvh7$c;

    new-instance v1, Lzh7;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v1, v3}, Lzh7;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lvh7$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lvh7;->f:Lvh7$c;

    .line 3
    invoke-virtual {v0}, Lyh7;->k()V

    const/16 v0, 0xa

    const/4 v1, 0x5

    const-string v3, "rx2.computation-priority"

    .line 4
    invoke-static {v3, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    new-instance v3, Lzh7;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v1}, Lzh7;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lvh7;->d:Lzh7;

    .line 7
    new-instance v0, Lvh7$b;

    invoke-direct {v0, v2, v3}, Lvh7$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lvh7;->c:Lvh7$b;

    .line 8
    iget-object v0, v0, Lvh7$b;->b:[Lvh7$c;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 9
    invoke-virtual {v3}, Lyh7;->k()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lvh7;->d:Lzh7;

    .line 2
    invoke-direct {p0}, Lzb7;-><init>()V

    .line 3
    iput-object v0, p0, Lvh7;->a:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lvh7;->c:Lvh7$b;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lvh7;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v3, Lvh7$b;

    sget v4, Lvh7;->e:I

    invoke-direct {v3, v4, v0}, Lvh7$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, v3, Lvh7$b;->b:[Lvh7$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 8
    invoke-virtual {v3}, Lyh7;->k()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lzb7$b;
    .locals 2

    .line 1
    new-instance v0, Lvh7$a;

    iget-object v1, p0, Lvh7;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvh7$b;

    invoke-virtual {v1}, Lvh7$b;->a()Lvh7$c;

    move-result-object v1

    invoke-direct {v0, v1}, Lvh7$a;-><init>(Lvh7$c;)V

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lic7;
    .locals 4

    .line 1
    iget-object v0, p0, Lvh7;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvh7$b;

    invoke-virtual {v0}, Lvh7$b;->a()Lvh7$c;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lai7;

    const-string v2, "run is null"

    .line 4
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-direct {v1, p1}, Lai7;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-gtz p1, :cond_0

    .line 6
    :try_start_0
    iget-object p1, v0, Lyh7;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, v0, Lyh7;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 8
    :goto_0
    invoke-virtual {v1, p1}, Lai7;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    .line 10
    sget-object v1, Lzc7;->e:Lzc7;

    :goto_1
    return-object v1
.end method
