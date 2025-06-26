.class public final Lmf7;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lpb7<",
        "Ljava/lang/Object;",
        ">;",
        "Ly38;"
    }
.end annotation


# instance fields
.field public final e:Lw38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw38<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ly38;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public h:Lnf7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnf7<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw38<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lmf7;->e:Lw38;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lmf7;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lmf7;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmf7;->h:Lnf7;

    invoke-virtual {v0}, Lnf7;->cancel()V

    .line 2
    iget-object v0, p0, Lmf7;->h:Lnf7;

    iget-object v0, v0, Lnf7;->m:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmf7;->h:Lnf7;

    invoke-virtual {v0}, Lnf7;->cancel()V

    .line 2
    iget-object v0, p0, Lmf7;->h:Lnf7;

    iget-object v0, v0, Lnf7;->m:Lx38;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmf7;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lpi7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    .line 2
    :cond_0
    iget-object p1, p0, Lmf7;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lpi7;->e:Lpi7;

    if-ne p1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lmf7;->e:Lw38;

    iget-object v0, p0, Lmf7;->h:Lnf7;

    invoke-interface {p1, v0}, Lw38;->i(Lx38;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    :cond_2
    return-void
.end method

.method public e(Ly38;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmf7;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lmf7;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, Lpi7;->t(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Ly38;)Z

    return-void
.end method

.method public l(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmf7;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lmf7;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lpi7;->k(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
