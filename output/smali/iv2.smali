.class public final Liv2;
.super Lwv2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liv2<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/concurrent/Executor;

.field public final synthetic i:Lgv2;

.field public final j:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic k:Lgv2;


# direct methods
.method public constructor <init>(Lgv2;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Liv2;->k:Lgv2;

    .line 2
    iput-object p1, p0, Liv2;->i:Lgv2;

    invoke-direct {p0}, Lwv2;-><init>()V

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Liv2;->h:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Liv2;->j:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Liv2;->i:Lgv2;

    invoke-virtual {v0}, Lsu2;->isDone()Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Liv2;->i:Lgv2;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lgv2;->t:Liv2;

    if-eqz p2, :cond_2

    .line 3
    instance-of p1, p2, Ljava/util/concurrent/ExecutionException;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsu2;->j(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 5
    :cond_0
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lsu2;->cancel(Z)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, p2}, Lsu2;->j(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object p2, p0, Liv2;->k:Lgv2;

    invoke-virtual {p2, p1}, Lsu2;->h(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liv2;->j:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Liv2;->j:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
