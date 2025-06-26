.class public final Lhf7;
.super Lpc7;
.source "SourceFile"

# interfaces
.implements Lbd7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf7$a;,
        Lhf7$b;
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
        "Lbd7;"
    }
.end annotation


# instance fields
.field public final f:Lw38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw38<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhf7$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw38;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw38<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lpc7;-><init>()V

    .line 2
    iput-object p1, p0, Lhf7;->f:Lw38;

    .line 3
    iput p2, p0, Lhf7;->g:I

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lhf7;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public g(Lic7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhf7;->h:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lhf7$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public t(Lx38;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lhf7;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf7$b;

    if-nez v0, :cond_1

    .line 2
    new-instance v1, Lhf7$b;

    iget-object v2, p0, Lhf7;->h:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lhf7;->g:I

    invoke-direct {v1, v2, v3}, Lhf7$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 3
    iget-object v2, p0, Lhf7;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :cond_1
    new-instance v1, Lhf7$a;

    invoke-direct {v1, p1, v0}, Lhf7$a;-><init>(Lx38;Lhf7$b;)V

    .line 5
    invoke-interface {p1, v1}, Lx38;->e(Ly38;)V

    .line 6
    :cond_2
    iget-object v2, v0, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lhf7$a;

    .line 7
    sget-object v3, Lhf7$b;->p:[Lhf7$a;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    array-length v3, v2

    add-int/lit8 v5, v3, 0x1

    .line 9
    new-array v5, v5, [Lhf7$a;

    .line 10
    invoke-static {v2, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    aput-object v1, v5, v3

    .line 12
    iget-object v3, v0, Lhf7$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_5

    .line 13
    invoke-virtual {v1}, Lhf7$a;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {v0, v1}, Lhf7$b;->i(Lhf7$a;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v0}, Lhf7$b;->g()V

    :goto_2
    return-void

    .line 16
    :cond_5
    iget-object v0, v0, Lhf7$b;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {p1, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 18
    :cond_6
    invoke-interface {p1}, Lx38;->a()V

    :goto_3
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
    iget-object v0, p0, Lhf7;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf7$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lhf7$b;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    new-instance v1, Lhf7$b;

    iget-object v2, p0, Lhf7;->h:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lhf7;->g:I

    invoke-direct {v1, v2, v3}, Lhf7$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 4
    iget-object v2, p0, Lhf7;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 5
    :cond_2
    iget-object v1, v0, Lhf7$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lhf7$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object p1, p0, Lhf7;->f:Lw38;

    invoke-interface {p1, v0}, Lw38;->i(Lx38;)V

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
