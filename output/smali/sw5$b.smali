.class public Lsw5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsw5;-><init>(Lsw5$c;Lfs5;Lqv5;Lex5;Lpv5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsw5;


# direct methods
.method public constructor <init>(Lsw5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsw5$b;->a:Lsw5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lju5;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lju5;",
            "Ljava/util/List<",
            "Ltu5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsw5$b;->a:Lsw5;

    .line 2
    iget-object v1, v0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lru5;

    .line 3
    iget-object v1, v0, Lsw5;->g:Lax5;

    .line 4
    iget-object v6, v1, Lax5;->r:Lqi6;

    .line 5
    iget-object v1, v3, Lru5;->d:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    iget-object v7, v3, Lru5;->d:Ljava/util/List;

    .line 8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v5, "Mutations sent %d must equal results received %d"

    .line 10
    invoke-static {v1, v5, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lzt5;->a:Ljn5;

    .line 12
    iget-object v2, v3, Lru5;->d:Ljava/util/List;

    move-object v7, v1

    .line 13
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 14
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltu5;

    .line 15
    iget-object v1, v1, Ltu5;->a:Lju5;

    .line 16
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqu5;

    .line 17
    iget-object v5, v5, Lqu5;->a:Lbu5;

    .line 18
    invoke-virtual {v7, v5, v1}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19
    :cond_1
    new-instance v1, Lsu5;

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lsu5;-><init>(Lru5;Lju5;Ljava/util/List;Lqi6;Ljn5;)V

    .line 20
    iget-object p1, v0, Lsw5;->a:Lsw5$c;

    invoke-interface {p1, v1}, Lsw5$c;->f(Lsu5;)V

    .line 21
    invoke-virtual {v0}, Lsw5;->c()V

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsw5$b;->a:Lsw5;

    .line 2
    iget-object v0, v0, Lsw5;->g:Lax5;

    .line 3
    invoke-virtual {v0}, Liv5;->c()Z

    move-result v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Writing handshake requires an opened stream"

    invoke-static {v1, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-boolean v1, v0, Lax5;->q:Z

    xor-int/lit8 v1, v1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Handshake already completed"

    invoke-static {v1, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Ldd6;->G()Ldd6$b;

    move-result-object v1

    iget-object v2, v0, Lax5;->p:Low5;

    .line 6
    iget-object v2, v2, Low5;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 8
    iget-object v3, v1, Lgj6$a;->f:Lgj6;

    check-cast v3, Ldd6;

    invoke-static {v3, v2}, Ldd6;->C(Ldd6;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object v1

    check-cast v1, Ldd6;

    invoke-virtual {v0, v1}, Liv5;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsw5$b;->a:Lsw5;

    .line 2
    iget-object v1, v0, Lsw5;->b:Lfs5;

    iget-object v2, v0, Lsw5;->g:Lax5;

    .line 3
    iget-object v2, v2, Lax5;->r:Lqi6;

    .line 4
    iget-object v3, v1, Lfs5;->a:Lts5;

    .line 5
    new-instance v4, Las5;

    invoke-direct {v4, v1, v2}, Las5;-><init>(Lfs5;Lqi6;)V

    const-string v1, "Set stream token"

    .line 6
    invoke-virtual {v3, v1, v4}, Lts5;->h(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, v0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru5;

    .line 8
    iget-object v3, v0, Lsw5;->g:Lax5;

    .line 9
    iget-object v2, v2, Lru5;->d:Ljava/util/List;

    .line 10
    invoke-virtual {v3, v2}, Lax5;->j(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lx47;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsw5$b;->a:Lsw5;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lx47;->f:Lx47;

    invoke-virtual {v1, p1}, Lx47;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lsw5;->i()Z

    move-result v1

    xor-int/2addr v1, v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Write stream was stopped gracefully while still needed."

    .line 5
    invoke-static {v1, v5, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    iget-object v1, v0, Lsw5;->g:Lax5;

    .line 8
    iget-boolean v1, v1, Lax5;->q:Z

    const-string v4, "Handling write error with status OK."

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v1

    xor-int/2addr v1, v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-static {p1}, Lqv5;->a(Lx47;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p1, Lx47;->a:Lx47$b;

    .line 12
    sget-object v4, Lx47$b;->q:Lx47$b;

    invoke-virtual {v1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 13
    iget-object v1, v0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru5;

    .line 14
    iget-object v3, v0, Lsw5;->g:Lax5;

    invoke-virtual {v3}, Liv5;->b()V

    .line 15
    iget-object v3, v0, Lsw5;->a:Lsw5$c;

    .line 16
    iget v1, v1, Lru5;->a:I

    .line 17
    invoke-interface {v3, v1, p1}, Lsw5$c;->b(ILx47;)V

    .line 18
    invoke-virtual {v0}, Lsw5;->c()V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v1

    xor-int/2addr v1, v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {p1}, Lqv5;->a(Lx47;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    iget-object v1, v0, Lsw5;->g:Lax5;

    .line 22
    iget-object v1, v1, Lax5;->r:Lqi6;

    .line 23
    invoke-static {v1}, Lvx5;->e(Lqi6;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object p1, v4, v3

    .line 24
    sget-object p1, Lqx5$a;->e:Lqx5$a;

    const-string v1, "RemoteStore"

    const-string v3, "RemoteStore error before completed handshake; resetting stream token %s: %s"

    invoke-static {p1, v1, v3, v4}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object p1, v0, Lsw5;->g:Lax5;

    sget-object v1, Lax5;->s:Lqi6;

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iput-object v1, p1, Lax5;->r:Lqi6;

    .line 29
    iget-object p1, v0, Lsw5;->b:Lfs5;

    .line 30
    iget-object v3, p1, Lfs5;->a:Lts5;

    .line 31
    new-instance v4, Las5;

    invoke-direct {v4, p1, v1}, Las5;-><init>(Lfs5;Lqi6;)V

    const-string p1, "Set stream token"

    .line 32
    invoke-virtual {v3, p1, v4}, Lts5;->h(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 33
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lsw5;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 34
    invoke-virtual {v0}, Lsw5;->i()Z

    move-result p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "startWriteStream() called when shouldStartWriteStream() is false."

    .line 35
    invoke-static {p1, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object p1, v0, Lsw5;->g:Lax5;

    invoke-virtual {p1}, Lax5;->g()V

    :cond_4
    return-void
.end method
