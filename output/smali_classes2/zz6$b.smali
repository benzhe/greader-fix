.class public abstract Lzz6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzz6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public e:Lzz6$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzz6$d<",
            "TE;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public g:Lzz6$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzz6$d<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lzz6;


# direct methods
.method public constructor <init>(Lzz6;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lzz6$b;->h:Lzz6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lzz6;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    move-object v0, p0

    check-cast v0, Lzz6$c;

    .line 5
    iget-object v0, v0, Lzz6$c;->i:Lzz6;

    iget-object v0, v0, Lzz6;->e:Lzz6$d;

    .line 6
    iput-object v0, p0, Lzz6$b;->e:Lzz6$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lzz6$d;->a:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lzz6$b;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzz6$b;->e:Lzz6$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzz6$b;->e:Lzz6$d;

    if-eqz v0, :cond_4

    .line 2
    iput-object v0, p0, Lzz6$b;->g:Lzz6$d;

    .line 3
    iget-object v0, p0, Lzz6$b;->f:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lzz6$b;->h:Lzz6;

    iget-object v1, v1, Lzz6;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_0
    iget-object v2, p0, Lzz6$b;->e:Lzz6$d;

    .line 7
    :goto_0
    iget-object v3, v2, Lzz6$d;->c:Lzz6$d;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    .line 8
    :cond_0
    iget-object v5, v3, Lzz6$d;->a:Ljava/lang/Object;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, v2, :cond_3

    .line 9
    move-object v2, p0

    check-cast v2, Lzz6$c;

    .line 10
    iget-object v2, v2, Lzz6$c;->i:Lzz6;

    iget-object v3, v2, Lzz6;->e:Lzz6$d;

    .line 11
    :goto_1
    iput-object v3, p0, Lzz6$b;->e:Lzz6$d;

    if-nez v3, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v4, v3, Lzz6$d;->a:Ljava/lang/Object;

    :goto_2
    iput-object v4, p0, Lzz6$b;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_3
    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzz6$b;->g:Lzz6$d;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lzz6$b;->g:Lzz6$d;

    .line 3
    iget-object v1, p0, Lzz6$b;->h:Lzz6;

    iget-object v1, v1, Lzz6;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    :try_start_0
    iget-object v2, v0, Lzz6$d;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lzz6$b;->h:Lzz6;

    invoke-virtual {v2, v0}, Lzz6;->h(Lzz6$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
