.class public final Lof7;
.super Lpc7;
.source "SourceFile"

# interfaces
.implements Lbd7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lof7$a;,
        Lof7$d;,
        Lof7$f;,
        Lof7$c;,
        Lof7$b;,
        Lof7$e;
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


# static fields
.field public static final j:Ljava/util/concurrent/Callable;


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
            "Lof7$e<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lof7$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final i:Lw38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw38<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lof7$a;

    invoke-direct {v0}, Lof7$a;-><init>()V

    sput-object v0, Lof7;->j:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(Lw38;Lmb7;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw38<",
            "TT;>;",
            "Lmb7<",
            "TT;>;",
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
    invoke-direct {p0}, Lpc7;-><init>()V

    .line 2
    iput-object p1, p0, Lof7;->i:Lw38;

    .line 3
    iput-object p2, p0, Lof7;->f:Lmb7;

    .line 4
    iput-object p3, p0, Lof7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p4, p0, Lof7;->h:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public g(Lic7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lof7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lof7$e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
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
    iget-object v0, p0, Lof7;->i:Lw38;

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
    iget-object v0, p0, Lof7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lof7$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lof7$e;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lof7;->h:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lof7$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    new-instance v2, Lof7$e;

    invoke-direct {v2, v1}, Lof7$e;-><init>(Lof7$c;)V

    .line 5
    iget-object v1, p0, Lof7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :cond_2
    iget-object v1, v0, Lof7$e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, v0, Lof7$e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_1
    :try_start_1
    invoke-interface {p1, v0}, Ltc7;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 8
    iget-object p1, p0, Lof7;->f:Lmb7;

    invoke-virtual {p1, v0}, Lmb7;->s(Lpb7;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    .line 9
    iget-object v0, v0, Lof7$e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    :cond_5
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {p1}, Lvi7;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_1
    move-exception p1

    .line 12
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 13
    invoke-static {p1}, Lvi7;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
