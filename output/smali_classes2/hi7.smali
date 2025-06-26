.class public final Lhi7;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Ly38;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ly38;",
        ">;",
        "Lpb7<",
        "TT;>;",
        "Ly38;",
        "Lic7;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final e:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lqc7;

.field public final h:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-",
            "Ly38;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltc7;Ltc7;Lqc7;Ltc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltc7<",
            "-TT;>;",
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lqc7;",
            "Ltc7<",
            "-",
            "Ly38;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lhi7;->e:Ltc7;

    .line 3
    iput-object p2, p0, Lhi7;->f:Ltc7;

    .line 4
    iput-object p3, p0, Lhi7;->g:Lqc7;

    .line 5
    iput-object p4, p0, Lhi7;->h:Ltc7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lpi7;->e:Lpi7;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lhi7;->g:Lqc7;

    invoke-interface {v0}, Lqc7;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lpi7;->e:Lpi7;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lhi7;->f:Ltc7;

    invoke-interface {v0, p1}, Ltc7;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 5
    new-instance v1, Lkc7;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lkc7;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Ln56;->z1(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lpi7;->e:Lpi7;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lpi7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lhi7;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lhi7;->e:Ltc7;

    invoke-interface {v0, p1}, Ltc7;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    .line 5
    invoke-virtual {p0, p1}, Lhi7;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public e(Ly38;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lpi7;->x(Ljava/util/concurrent/atomic/AtomicReference;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lhi7;->h:Ltc7;

    invoke-interface {v0, p0}, Ltc7;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {p1}, Ly38;->cancel()V

    .line 5
    invoke-virtual {p0, v0}, Lhi7;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {p0}, Lpi7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public l(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly38;

    invoke-interface {v0, p1, p2}, Ly38;->l(J)V

    return-void
.end method
