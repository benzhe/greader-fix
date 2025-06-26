.class public Lkz6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Liz6;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Liz6;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lkz6;->e:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lkz6;->f:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lkz6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lkz6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lkz6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkz6;->j:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lkz6;->a:Liz6;

    .line 9
    iget-object v0, p1, Liz6;->b:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lkz6;->b:Ljava/util/concurrent/Executor;

    .line 10
    iget-object p1, p1, Liz6;->c:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lkz6;->c:Ljava/util/concurrent/Executor;

    .line 11
    new-instance p1, Lez6;

    const/4 v0, 0x5

    const-string v1, "uil-pool-d-"

    invoke-direct {p1, v0, v1}, Lez6;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lkz6;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lg07;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkz6;->e:Ljava/util/Map;

    invoke-interface {p1}, Lg07;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkz6;->a:Liz6;

    iget-boolean v0, v0, Liz6;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkz6;->b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lkz6;->a:Liz6;

    iget v1, v0, Liz6;->f:I

    iget v2, v0, Liz6;->g:I

    iget-object v0, v0, Liz6;->h:Lwz6;

    invoke-static {v1, v2, v0}, Ln56;->J(IILwz6;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lkz6;->b:Ljava/util/concurrent/Executor;

    .line 4
    :cond_0
    iget-object v0, p0, Lkz6;->a:Liz6;

    iget-boolean v0, v0, Liz6;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lkz6;->c:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lkz6;->a:Liz6;

    iget v1, v0, Liz6;->f:I

    iget v2, v0, Liz6;->g:I

    iget-object v0, v0, Liz6;->h:Lwz6;

    invoke-static {v1, v2, v0}, Ln56;->J(IILwz6;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lkz6;->c:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method
