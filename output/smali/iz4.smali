.class public final Liz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Liz4;->f:Lsz4;

    iput-object p2, p0, Liz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Liz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Liz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Liz4;->f:Lsz4;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 1
    iget-object v3, v2, Lrx4;->g:Lcs4;

    .line 2
    invoke-virtual {v2}, Lrx4;->b()Liw4;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Liw4;->k()Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v4, Lew4;->L:Ldw4;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v4, v2}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lcs4;->c:Lbs4;

    .line 7
    iget-object v5, v4, Ldw4;->a:Ljava/lang/String;

    .line 8
    invoke-interface {v3, v2, v5}, Lbs4;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Liz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 11
    monitor-exit v0

    return-void

    :goto_1
    iget-object v2, p0, Liz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 13
    throw v1

    :catchall_1
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
