.class public final Lgf7;
.super Lpc7;
.source "SourceFile"

# interfaces
.implements Lif7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf7$a;,
        Lgf7$b;,
        Lgf7$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lpc7<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;",
        "Lif7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lmb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lgf7$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:Lw38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw38<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw38;Lmb7;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw38<",
            "TT;>;",
            "Lmb7<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lgf7$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lpc7;-><init>()V

    .line 2
    iput-object p1, p0, Lgf7;->i:Lw38;

    .line 3
    iput-object p2, p0, Lgf7;->f:Lmb7;

    .line 4
    iput-object p3, p0, Lgf7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput p4, p0, Lgf7;->h:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lgf7;->h:I

    return v0
.end method

.method public h()Lw38;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw38<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgf7;->f:Lmb7;

    return-object v0
.end method

.method public t(Lx38;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgf7;->i:Lw38;

    invoke-interface {v0, p1}, Lw38;->i(Lx38;)V

    return-void
.end method

.method public x(Ltc7;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltc7<",
            "-",
            "Lic7;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lgf7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgf7$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lgf7$c;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    new-instance v1, Lgf7$c;

    iget-object v2, p0, Lgf7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lgf7;->h:I

    invoke-direct {v1, v2, v3}, Lgf7$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 4
    iget-object v2, p0, Lgf7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 5
    :cond_2
    iget-object v1, v0, Lgf7$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lgf7$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Ltc7;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 7
    iget-object p1, p0, Lgf7;->f:Lmb7;

    invoke-virtual {p1, v0}, Lmb7;->s(Lpb7;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Lvi7;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
