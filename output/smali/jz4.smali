.class public final Ljz4;
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

    iput-object p1, p0, Ljz4;->f:Lsz4;

    iput-object p2, p0, Ljz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ljz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Ljz4;->f:Lsz4;

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
    sget-object v4, Lew4;->M:Ldw4;

    .line 5
    invoke-virtual {v3, v2, v4}, Lcs4;->n(Ljava/lang/String;Ldw4;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Ljz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ljz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 9
    throw v1

    :catchall_1
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
