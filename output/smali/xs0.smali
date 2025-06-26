.class public Lxs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Law2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Law2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Liw2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liw2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Liw2;

    invoke-direct {v0}, Liw2;-><init>()V

    .line 3
    iput-object v0, p0, Lxs0;->e:Liw2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxs0;->e:Liw2;

    invoke-virtual {v0, p1}, Liw2;->h(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SettableFuture"

    .line 3
    invoke-virtual {v0, v1, v2}, Lor0;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public final b(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lxs0;->e:Liw2;

    invoke-virtual {v0, p1}, Liw2;->j(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SettableFuture"

    .line 3
    invoke-virtual {v0, v1, v2}, Lor0;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lxs0;->e:Liw2;

    invoke-virtual {v0, p1}, Lsu2;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxs0;->e:Liw2;

    invoke-virtual {v0}, Lsu2;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lxs0;->e:Liw2;

    invoke-virtual {v0, p1, p2, p3}, Lsu2$i;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxs0;->e:Liw2;

    invoke-virtual {v0, p1, p2}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lxs0;->e:Liw2;

    invoke-virtual {v0}, Lsu2;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lxs0;->e:Liw2;

    invoke-virtual {v0}, Lsu2;->isDone()Z

    move-result v0

    return v0
.end method
