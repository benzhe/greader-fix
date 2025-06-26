.class public final Lof7$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw38;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw38<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lof7$e<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lof7$c<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lof7$e<",
            "TT;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lof7$c<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lof7$d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Lof7$d;->f:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public i(Lx38;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lof7$d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lof7$e;

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lof7$d;->f:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lof7$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v1, Lof7$e;

    invoke-direct {v1, v0}, Lof7$e;-><init>(Lof7$c;)V

    .line 4
    iget-object v0, p0, Lof7$d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 6
    sget-object v1, Lmi7;->e:Lmi7;

    invoke-interface {p1, v1}, Lx38;->e(Ly38;)V

    .line 7
    invoke-interface {p1, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_1
    :goto_1
    new-instance v1, Lof7$b;

    invoke-direct {v1, v0, p1}, Lof7$b;-><init>(Lof7$e;Lx38;)V

    .line 9
    invoke-interface {p1, v1}, Lx38;->e(Ly38;)V

    .line 10
    :cond_2
    iget-object p1, v0, Lof7$e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lof7$b;

    .line 11
    sget-object v2, Lof7$e;->m:[Lof7$b;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    array-length v2, p1

    add-int/lit8 v4, v2, 0x1

    .line 13
    new-array v4, v4, [Lof7$b;

    .line 14
    invoke-static {p1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    aput-object v1, v4, v2

    .line 16
    iget-object v2, v0, Lof7$e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    :goto_2
    invoke-virtual {v1}, Lof7$b;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {v0, v1}, Lof7$e;->h(Lof7$b;)V

    return-void

    .line 19
    :cond_4
    invoke-virtual {v0}, Lof7$e;->g()V

    .line 20
    iget-object p1, v0, Lof7$e;->e:Lof7$c;

    invoke-interface {p1, v1}, Lof7$c;->h(Lof7$b;)V

    return-void
.end method
