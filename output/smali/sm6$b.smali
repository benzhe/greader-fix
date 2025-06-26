.class public abstract Lsm6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsm6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public f:I

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lsm6$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p1, p0, Lsm6$b;->e:Ljava/lang/String;

    :cond_0
    if-lez p2, :cond_1

    .line 5
    iput p2, p0, Lsm6$b;->f:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long p1, p2

    add-long/2addr v1, p1

    iput-wide v1, p0, Lsm6$b;->g:J

    .line 7
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iput-object p3, p0, Lsm6$b;->h:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lsm6$b;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsm6$b;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lsm6;->e:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    const-class v0, Lsm6;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v2, Lsm6;->d:Ljava/util/List;

    .line 6
    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v3, p0, Lsm6$b;->h:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 9
    sget-object v6, Lsm6;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsm6$b;

    .line 10
    iget-object v7, v7, Lsm6$b;->h:Ljava/lang/String;

    .line 11
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 12
    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsm6$b;

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 13
    iget v2, v1, Lsm6$b;->f:I

    if-eqz v2, :cond_3

    .line 14
    iget-wide v2, p0, Lsm6$b;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v2, v5

    long-to-int v3, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lsm6$b;->f:I

    .line 15
    :cond_3
    invoke-static {v1}, Lsm6;->a(Lsm6$b;)V

    .line 16
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsm6$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lsm6;->e:Ljava/lang/ThreadLocal;

    .line 3
    iget-object v1, p0, Lsm6$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lsm6$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lsm6$b;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lsm6$b;->b()V

    .line 6
    throw v0
.end method
