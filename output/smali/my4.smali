.class public abstract Lmy4;
.super Lly4;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Lrx4;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lly4;-><init>(Lrx4;)V

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 2
    iget v0, p1, Lrx4;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lrx4;->F:I

    return-void
.end method


# virtual methods
.method public abstract f()Z
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lmy4;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Lmy4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lmy4;->b:Z

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {p0}, Lmy4;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmy4;->b:Z

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 2

    iget-boolean v0, p0, Lmy4;->b:Z

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lmy4;->g()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmy4;->b:Z

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
