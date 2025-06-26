.class public final synthetic Lzh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Llh6;

.field public final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Llh6;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzh6;->e:Llh6;

    iput-object p2, p0, Lzh6;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzh6;->e:Llh6;

    iget-object v1, p0, Lzh6;->f:Ljava/lang/Runnable;

    .line 2
    iget-object v2, v0, Llh6;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {v2}, Lbi;->l(Z)V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, v0, Llh6;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Llh6;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    iget-object v3, v0, Llh6;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Llh6;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    sget-object v2, Lpg4;->a:Lrg4;

    invoke-virtual {v2, v1, v0}, Lrg4;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 13
    :goto_1
    throw v1
.end method
