.class public final Lwf7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwf7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lhe7<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb7;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-object p2, p0, Lwf7;->g:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lwf7;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v1, p0, Lhe7;->f:Lmb7;

    new-instance v2, Lwf7$a;

    invoke-direct {v2, p1, v0}, Lwf7$a;-><init>(Lx38;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lmb7;->s(Lpb7;)V

    return-void

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
.end method
