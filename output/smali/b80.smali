.class public final Lb80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj40<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lj40<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lj40<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Lhg3;

.field public final f:Lfp3;

.field public final g:Ljl3;

.field public final h:[Lss3;

.field public i:Lzh3;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lda0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le70;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhg3;Lfp3;)V
    .locals 3

    .line 1
    new-instance v0, Ljl3;

    new-instance v1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Ljl3;-><init>(Landroid/os/Handler;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lb80;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lb80;->b:Ljava/util/Set;

    .line 6
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lb80;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 7
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lb80;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb80;->j:Ljava/util/List;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb80;->k:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lb80;->e:Lhg3;

    .line 11
    iput-object p2, p0, Lb80;->f:Lfp3;

    const/4 p1, 0x4

    new-array p1, p1, [Lss3;

    .line 12
    iput-object p1, p0, Lb80;->h:[Lss3;

    .line 13
    iput-object v0, p0, Lb80;->g:Ljl3;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lb80;->i:Lzh3;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, v0, Lzh3;->i:Z

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :cond_0
    iget-object v0, p0, Lb80;->h:[Lss3;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    if-eqz v5, :cond_1

    .line 5
    iput-boolean v1, v5, Lss3;->i:Z

    .line 6
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lzh3;

    iget-object v1, p0, Lb80;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lb80;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lb80;->e:Lhg3;

    iget-object v5, p0, Lb80;->g:Ljl3;

    invoke-direct {v0, v1, v2, v4, v5}, Lzh3;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lhg3;Ljl3;)V

    iput-object v0, p0, Lb80;->i:Lzh3;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    :goto_1
    iget-object v0, p0, Lb80;->h:[Lss3;

    array-length v0, v0

    if-ge v3, v0, :cond_3

    .line 10
    new-instance v0, Lss3;

    iget-object v1, p0, Lb80;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lb80;->f:Lfp3;

    iget-object v4, p0, Lb80;->e:Lhg3;

    iget-object v5, p0, Lb80;->g:Ljl3;

    invoke-direct {v0, v1, v2, v4, v5}, Lss3;-><init>(Ljava/util/concurrent/BlockingQueue;Lfp3;Lhg3;Ljl3;)V

    .line 11
    iget-object v1, p0, Lb80;->h:[Lss3;

    aput-object v0, v1, v3

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final b(Lj40;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj40<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb80;->k:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb80;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le70;

    .line 3
    invoke-interface {v2, p1, p2}, Le70;->a(Lj40;I)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lj40;)Lj40;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj40<",
            "TT;>;)",
            "Lj40<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lj40;->zza(Lb80;)Lj40;

    .line 2
    iget-object v0, p0, Lb80;->b:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lb80;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lb80;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 6
    invoke-virtual {p1, v0}, Lj40;->zze(I)Lj40;

    const-string v0, "add-to-queue"

    .line 7
    invoke-virtual {p1, v0}, Lj40;->zzc(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lb80;->b(Lj40;I)V

    .line 9
    invoke-virtual {p1}, Lj40;->zzh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lb80;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lb80;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
