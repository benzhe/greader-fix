.class public Lyz6;
.super Lzz6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lzz6<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzz6;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lzz6$d;

    invoke-direct {v0, p1}, Lzz6$d;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lzz6;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    :try_start_0
    iget v1, p0, Lzz6;->g:I

    iget v2, p0, Lzz6;->h:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p0, Lzz6;->e:Lzz6$d;

    .line 7
    iput-object v2, v0, Lzz6$d;->c:Lzz6$d;

    .line 8
    iput-object v0, p0, Lzz6;->e:Lzz6$d;

    .line 9
    iget-object v3, p0, Lzz6;->f:Lzz6$d;

    if-nez v3, :cond_1

    .line 10
    iput-object v0, p0, Lzz6;->f:Lzz6$d;

    goto :goto_0

    .line 11
    :cond_1
    iput-object v0, v2, Lzz6$d;->b:Lzz6$d;

    :goto_0
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 12
    iput v1, p0, Lzz6;->g:I

    .line 13
    iget-object v1, p0, Lzz6;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzz6;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lzz6;->j()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v1, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :catchall_0
    move-exception v1

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
