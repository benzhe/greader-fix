.class public final Laj7$a;
.super Lji7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laj7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lji7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Laj7;


# direct methods
.method public constructor <init>(Laj7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laj7$a;->e:Laj7;

    invoke-direct {p0}, Lji7;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Laj7$a;->e:Laj7;

    iget-boolean v0, v0, Laj7;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Laj7$a;->e:Laj7;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laj7;->l:Z

    .line 3
    iget-object v0, p0, Laj7$a;->e:Laj7;

    invoke-virtual {v0}, Laj7;->x()V

    .line 4
    iget-object v0, p0, Laj7$a;->e:Laj7;

    iget-object v0, v0, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Laj7$a;->e:Laj7;

    iget-object v0, v0, Laj7;->n:Lji7;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Laj7$a;->e:Laj7;

    iget-object v0, v0, Laj7;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Laj7$a;->e:Laj7;

    iget-boolean v1, v0, Laj7;->p:Z

    if-nez v1, :cond_1

    .line 8
    iget-object v0, v0, Laj7;->f:Luh7;

    invoke-virtual {v0}, Luh7;->clear()V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Laj7$a;->e:Laj7;

    iget-object v0, v0, Laj7;->f:Luh7;

    invoke-virtual {v0}, Luh7;->clear()V

    return-void
.end method

.method public i(I)I
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Laj7$a;->e:Laj7;

    const/4 v1, 0x1

    iput-boolean v1, p1, Laj7;->p:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Laj7$a;->e:Laj7;

    iget-object v0, v0, Laj7;->f:Luh7;

    invoke-virtual {v0}, Luh7;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public l(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lpi7;->y(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Laj7$a;->e:Laj7;

    iget-object v0, v0, Laj7;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Ln56;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    iget-object p1, p0, Laj7$a;->e:Laj7;

    invoke-virtual {p1}, Laj7;->y()V

    :cond_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Laj7$a;->e:Laj7;

    iget-object v0, v0, Laj7;->f:Luh7;

    invoke-virtual {v0}, Luh7;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
