.class public final Lgv2;
.super Lwu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lwu2<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field public t:Liv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liv2<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lit2;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit2<",
            "+",
            "Law2<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lwu2;-><init>(Lit2;ZZ)V

    .line 2
    new-instance p1, Liv2;

    invoke-direct {p1, p0, p4, p3}, Liv2;-><init>(Lgv2;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lgv2;->t:Liv2;

    .line 3
    invoke-virtual {p0}, Lwu2;->J()V

    return-void
.end method


# virtual methods
.method public final F(Lwu2$a;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lwu2;->F(Lwu2$a;)V

    .line 2
    sget-object v0, Lwu2$a;->e:Lwu2$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lgv2;->t:Liv2;

    :cond_0
    return-void
.end method

.method public final H(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgv2;->t:Liv2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, v0, Liv2;->h:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    iget-object v0, v0, Liv2;->i:Lgv2;

    invoke-virtual {v0, v1}, Lsu2;->j(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgv2;->t:Liv2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lwv2;->a()V

    :cond_0
    return-void
.end method
