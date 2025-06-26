.class public abstract Ljp7;
.super Lkr7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkr7;"
    }
.end annotation


# instance fields
.field public g:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkr7;-><init>()V

    iput p1, p0, Ljp7;->g:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public abstract c()Lpk7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpk7<",
            "TT;>;"
        }
    .end annotation
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p1, p2}, Ln56;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 2
    :goto_0
    new-instance p2, Lep7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lim7;->c(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p2, v0, p1}, Lep7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Ljp7;->c()Lpk7;

    move-result-object p1

    invoke-interface {p1}, Lpk7;->getContext()Lrk7;

    move-result-object p1

    invoke-static {p1, p2}, Ln56;->c1(Lrk7;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract f()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lkr7;->f:Llr7;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljp7;->c()Lpk7;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Lhp7;

    .line 3
    iget-object v2, v1, Lhp7;->l:Lpk7;

    .line 4
    invoke-interface {v2}, Lpk7;->getContext()Lrk7;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Ljp7;->f()Ljava/lang/Object;

    move-result-object v4

    .line 6
    iget-object v1, v1, Lhp7;->j:Ljava/lang/Object;

    .line 7
    invoke-static {v3, v1}, Lk;->b(Lrk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    instance-of v5, v4, Luo7;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    check-cast v5, Luo7;

    if-eqz v5, :cond_1

    iget-object v5, v5, Luo7;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 9
    :goto_1
    iget v7, p0, Ljp7;->g:I

    invoke-static {v7}, Ln56;->j1(I)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lyp7;->d:Lyp7$a;

    invoke-interface {v3, v7}, Lrk7;->c(Lrk7$b;)Lrk7$a;

    move-result-object v7

    check-cast v7, Lyp7;

    goto :goto_2

    :cond_2
    move-object v7, v6

    :goto_2
    if-nez v5, :cond_5

    if-eqz v7, :cond_5

    .line 10
    invoke-interface {v7}, Lyp7;->isActive()Z

    move-result v8

    if-nez v8, :cond_5

    .line 11
    invoke-interface {v7}, Lyp7;->g()Ljava/util/concurrent/CancellationException;

    move-result-object v5

    .line 12
    invoke-virtual {p0, v4, v5}, Ljp7;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 13
    sget-boolean v4, Lfp7;->b:Z

    if-eqz v4, :cond_4

    .line 14
    instance-of v4, v2, Lwk7;

    if-nez v4, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    move-object v4, v2

    check-cast v4, Lwk7;

    invoke-static {v5, v4}, Lxq7;->a(Ljava/lang/Throwable;Lwk7;)Ljava/lang/Throwable;

    move-result-object v5

    .line 16
    :cond_4
    :goto_3
    invoke-static {v5}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lpk7;->resumeWith(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    .line 17
    invoke-static {v5}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lpk7;->resumeWith(Ljava/lang/Object;)V

    goto :goto_4

    .line 18
    :cond_6
    invoke-virtual {p0, v4}, Ljp7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lpk7;->resumeWith(Ljava/lang/Object;)V

    .line 19
    :goto_4
    sget-object v2, Lyj7;->a:Lyj7;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-static {v3, v1}, Lk;->a(Lrk7;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    :try_start_3
    invoke-interface {v0}, Llr7;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v0}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    :goto_5
    invoke-static {v2}, Lsj7;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Ljp7;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_1
    move-exception v2

    .line 23
    :try_start_4
    invoke-static {v3, v1}, Lk;->a(Lrk7;Ljava/lang/Object;)V

    throw v2

    .line 24
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 25
    :try_start_5
    invoke-interface {v0}, Llr7;->e()V

    sget-object v0, Lyj7;->a:Lyj7;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-static {v0}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    :goto_6
    invoke-static {v0}, Lsj7;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljp7;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method
