.class public abstract Lbf7$a;
.super Lji7;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbf7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lji7<",
        "TT;>;",
        "Lpb7<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final e:Lzb7$b;

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public j:Ly38;

.field public k:Lnd7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnd7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile l:Z

.field public volatile m:Z

.field public n:Ljava/lang/Throwable;

.field public o:I

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>(Lzb7$b;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lji7;-><init>()V

    .line 2
    iput-object p1, p0, Lbf7$a;->e:Lzb7$b;

    .line 3
    iput-boolean p2, p0, Lbf7$a;->f:Z

    .line 4
    iput p3, p0, Lbf7$a;->g:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lbf7$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    .line 6
    iput p3, p0, Lbf7$a;->h:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbf7$a;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lbf7$a;->m:Z

    .line 3
    invoke-virtual {p0}, Lbf7$a;->m()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbf7$a;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lbf7$a;->n:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lbf7$a;->m:Z

    .line 5
    invoke-virtual {p0}, Lbf7$a;->m()V

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbf7$a;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lbf7$a;->l:Z

    .line 3
    iget-object v0, p0, Lbf7$a;->j:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 4
    iget-object v0, p0, Lbf7$a;->e:Lzb7$b;

    invoke-interface {v0}, Lic7;->k()V

    .line 5
    iget-boolean v0, p0, Lbf7$a;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lbf7$a;->k:Lnd7;

    invoke-interface {v0}, Lnd7;->clear()V

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbf7$a;->k:Lnd7;

    invoke-interface {v0}, Lnd7;->clear()V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lbf7$a;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lbf7$a;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lbf7$a;->m()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lbf7$a;->k:Lnd7;

    invoke-interface {v0, p1}, Lnd7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lbf7$a;->j:Ly38;

    invoke-interface {p1}, Ly38;->cancel()V

    .line 6
    new-instance p1, Llc7;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Llc7;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lbf7$a;->n:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lbf7$a;->m:Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Lbf7$a;->m()V

    return-void
.end method

.method public final g(ZZLx38;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lx38<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lbf7$a;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lbf7$a;->k:Lnd7;

    invoke-interface {p1}, Lnd7;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-boolean p1, p0, Lbf7$a;->f:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 4
    iput-boolean v1, p0, Lbf7$a;->l:Z

    .line 5
    iget-object p1, p0, Lbf7$a;->n:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p3, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p3}, Lx38;->a()V

    .line 8
    :goto_0
    iget-object p1, p0, Lbf7$a;->e:Lzb7$b;

    invoke-interface {p1}, Lic7;->k()V

    return v1

    .line 9
    :cond_2
    iget-object p1, p0, Lbf7$a;->n:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 10
    iput-boolean v1, p0, Lbf7$a;->l:Z

    .line 11
    iget-object p2, p0, Lbf7$a;->k:Lnd7;

    invoke-interface {p2}, Lnd7;->clear()V

    .line 12
    invoke-interface {p3, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    .line 13
    iget-object p1, p0, Lbf7$a;->e:Lzb7$b;

    invoke-interface {p1}, Lic7;->k()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 14
    iput-boolean v1, p0, Lbf7$a;->l:Z

    .line 15
    invoke-interface {p3}, Lx38;->a()V

    .line 16
    iget-object p1, p0, Lbf7$a;->e:Lzb7$b;

    invoke-interface {p1}, Lic7;->k()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public abstract h()V
.end method

.method public final i(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lbf7$a;->q:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbf7$a;->k:Lnd7;

    invoke-interface {v0}, Lnd7;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public final l(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lpi7;->y(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbf7$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Ln56;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lbf7$a;->m()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lbf7$a;->e:Lzb7$b;

    invoke-virtual {v0, p0}, Lzb7$b;->b(Ljava/lang/Runnable;)Lic7;

    return-void
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbf7$a;->q:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lbf7$a;->j()V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lbf7$a;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lbf7$a;->k()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lbf7$a;->h()V

    :goto_0
    return-void
.end method
