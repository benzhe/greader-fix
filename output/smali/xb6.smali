.class public Lxb6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxb6$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lxb6;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lhc6;

.field public c:Le45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le45<",
            "Lyb6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lxb6;->d:Ljava/util/Map;

    .line 2
    sget-object v0, Lwb6;->e:Lwb6;

    sput-object v0, Lxb6;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lhc6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxb6;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object p2, p0, Lxb6;->b:Lhc6;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lxb6;->c:Le45;

    return-void
.end method

.method public static a(Le45;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Le45<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1
    new-instance v0, Lxb6$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxb6$b;-><init>(Lxb6$a;)V

    .line 2
    sget-object v1, Lxb6;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Le45;->g(Ljava/util/concurrent/Executor;Lb45;)Le45;

    .line 3
    invoke-virtual {p0, v1, v0}, Le45;->e(Ljava/util/concurrent/Executor;La45;)Le45;

    .line 4
    invoke-virtual {p0, v1, v0}, Le45;->a(Ljava/util/concurrent/Executor;Ly35;)Le45;

    .line 5
    iget-object v0, v0, Lxb6$b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Le45;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Le45;->l()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Le45;->k()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 9
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Task await timed out."

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized b()Le45;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le45<",
            "Lyb6;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lxb6;->c:Le45;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le45;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxb6;->c:Le45;

    invoke-virtual {v0}, Le45;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lxb6;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lxb6;->b:Lhc6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v2, Lvb6;

    invoke-direct {v2, v1}, Lvb6;-><init>(Lhc6;)V

    .line 5
    invoke-static {v0, v2}, Lc50;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le45;

    move-result-object v0

    iput-object v0, p0, Lxb6;->c:Le45;

    .line 6
    :cond_1
    iget-object v0, p0, Lxb6;->c:Le45;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lyb6;)Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb6;",
            ")",
            "Le45<",
            "Lyb6;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxb6;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v1, Ltb6;

    invoke-direct {v1, p0, p1}, Ltb6;-><init>(Lxb6;Lyb6;)V

    .line 3
    invoke-static {v0, v1}, Lc50;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le45;

    move-result-object v0

    iget-object v1, p0, Lxb6;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v2, Lub6;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, p1}, Lub6;-><init>(Lxb6;ZLyb6;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Le45;->q(Ljava/util/concurrent/Executor;Ld45;)Le45;

    move-result-object p1

    return-object p1
.end method
