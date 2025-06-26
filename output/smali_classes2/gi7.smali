.class public abstract Lgi7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Lkd7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lpb7<",
        "TT;>;",
        "Lkd7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final e:Lx38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx38<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public f:Ly38;

.field public g:Lkd7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkd7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(Lx38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgi7;->e:Lx38;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgi7;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lgi7;->h:Z

    .line 3
    iget-object v0, p0, Lgi7;->e:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgi7;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lgi7;->h:Z

    .line 4
    iget-object v0, p0, Lgi7;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lgi7;->f:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 3
    invoke-virtual {p0, p1}, Lgi7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgi7;->f:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgi7;->g:Lkd7;

    invoke-interface {v0}, Lnd7;->clear()V

    return-void
.end method

.method public final e(Ly38;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgi7;->f:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lgi7;->f:Ly38;

    .line 3
    instance-of v0, p1, Lkd7;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lkd7;

    iput-object p1, p0, Lgi7;->g:Lkd7;

    .line 5
    :cond_0
    iget-object p1, p0, Lgi7;->e:Lx38;

    invoke-interface {p1, p0}, Lx38;->e(Ly38;)V

    :cond_1
    return-void
.end method

.method public final g(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lgi7;->g:Lkd7;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0, p1}, Ljd7;->i(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iput p1, p0, Lgi7;->i:I

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgi7;->g:Lkd7;

    invoke-interface {v0}, Lnd7;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public l(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgi7;->f:Ly38;

    invoke-interface {v0, p1, p2}, Ly38;->l(J)V

    return-void
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
