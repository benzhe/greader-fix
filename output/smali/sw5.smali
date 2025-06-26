.class public final Lsw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyw5$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsw5$c;
    }
.end annotation


# instance fields
.field public final a:Lsw5$c;

.field public final b:Lfs5;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lut5;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmw5;

.field public e:Z

.field public final f:Lzw5;

.field public final g:Lax5;

.field public h:Lyw5;

.field public final i:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lru5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsw5$c;Lfs5;Lqv5;Lex5;Lpv5;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsw5;->e:Z

    .line 3
    iput-object p1, p0, Lsw5;->a:Lsw5$c;

    .line 4
    iput-object p2, p0, Lsw5;->b:Lfs5;

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lsw5;->c:Ljava/util/Map;

    .line 6
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lsw5;->i:Ljava/util/Deque;

    .line 7
    new-instance p2, Lmw5;

    .line 8
    new-instance v0, Lpw5;

    invoke-direct {v0, p1}, Lpw5;-><init>(Lsw5$c;)V

    .line 9
    invoke-direct {p2, p4, v0}, Lmw5;-><init>(Lex5;Lmw5$a;)V

    iput-object p2, p0, Lsw5;->d:Lmw5;

    .line 10
    new-instance p1, Lsw5$a;

    invoke-direct {p1, p0}, Lsw5$a;-><init>(Lsw5;)V

    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p2, Lzw5;

    iget-object v0, p3, Lqv5;->c:Law5;

    iget-object v1, p3, Lqv5;->b:Lex5;

    iget-object v2, p3, Lqv5;->a:Low5;

    invoke-direct {p2, v0, v1, v2, p1}, Lzw5;-><init>(Law5;Lex5;Low5;Lzw5$a;)V

    .line 13
    iput-object p2, p0, Lsw5;->f:Lzw5;

    .line 14
    new-instance p1, Lsw5$b;

    invoke-direct {p1, p0}, Lsw5$b;-><init>(Lsw5;)V

    .line 15
    new-instance p2, Lax5;

    iget-object v0, p3, Lqv5;->c:Law5;

    iget-object v1, p3, Lqv5;->b:Lex5;

    iget-object p3, p3, Lqv5;->a:Low5;

    invoke-direct {p2, v0, v1, p3, p1}, Lax5;-><init>(Law5;Lex5;Low5;Lax5$a;)V

    .line 16
    iput-object p2, p0, Lsw5;->g:Lax5;

    .line 17
    new-instance p1, Lqw5;

    invoke-direct {p1, p0, p4}, Lqw5;-><init>(Lsw5;Lex5;)V

    .line 18
    check-cast p5, Lov5;

    .line 19
    iget-object p2, p5, Lov5;->c:Ljava/util/List;

    monitor-enter p2

    .line 20
    :try_start_0
    iget-object p3, p5, Lov5;->c:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsw5;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lsw5;->e:Z

    .line 2
    iget-object v0, p0, Lsw5;->g:Lax5;

    iget-object v1, p0, Lsw5;->b:Lfs5;

    .line 3
    iget-object v1, v1, Lfs5;->b:Lss5;

    invoke-interface {v1}, Lss5;->j()Lqi6;

    move-result-object v1

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object v1, v0, Lax5;->r:Lqi6;

    .line 7
    invoke-virtual {p0}, Lsw5;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lsw5;->j()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lsw5;->d:Lmw5;

    sget-object v1, Lwq5;->e:Lwq5;

    invoke-virtual {v0, v1}, Lmw5;->c(Lwq5;)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lsw5;->c()V

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru5;

    .line 2
    iget v0, v0, Lru5;->a:I

    .line 3
    :goto_0
    invoke-virtual {p0}, Lsw5;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lsw5;->b:Lfs5;

    .line 5
    iget-object v1, v1, Lfs5;->b:Lss5;

    invoke-interface {v1, v0}, Lss5;->f(I)Lru5;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lsw5;->g:Lax5;

    invoke-virtual {v0}, Liv5;->e()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lsw5;->a()Z

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "addToWritePipeline called when pipeline is full"

    invoke-static {v1, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Lsw5;->g:Lax5;

    invoke-virtual {v1}, Liv5;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsw5;->g:Lax5;

    .line 11
    iget-boolean v2, v1, Lax5;->q:Z

    if-eqz v2, :cond_2

    .line 12
    iget-object v2, v0, Lru5;->d:Ljava/util/List;

    .line 13
    invoke-virtual {v1, v2}, Lax5;->j(Ljava/util/List;)V

    .line 14
    :cond_2
    iget v0, v0, Lru5;->a:I

    goto :goto_0

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lsw5;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lsw5;->i()Z

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "startWriteStream() called when shouldStartWriteStream() is false."

    .line 17
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lsw5;->g:Lax5;

    invoke-virtual {v0}, Lax5;->g()V

    :cond_4
    return-void
.end method

.method public d(Lut5;)V
    .locals 2

    .line 1
    iget v0, p1, Lut5;->b:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lsw5;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lsw5;->c:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lsw5;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lsw5;->j()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lsw5;->f:Lzw5;

    invoke-virtual {v0}, Liv5;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lsw5;->g(Lut5;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lsw5;->e:Z

    .line 2
    sget-object v1, Ltw5;->e:Ltw5;

    iget-object v2, p0, Lsw5;->f:Lzw5;

    .line 3
    invoke-virtual {v2}, Liv5;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    sget-object v3, Lx47;->f:Lx47;

    invoke-virtual {v2, v1, v3}, Liv5;->a(Ltw5;Lx47;)V

    .line 5
    :cond_0
    iget-object v2, p0, Lsw5;->g:Lax5;

    .line 6
    invoke-virtual {v2}, Liv5;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sget-object v3, Lx47;->f:Lx47;

    invoke-virtual {v2, v1, v3}, Liv5;->a(Ltw5;Lx47;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 10
    sget-object v0, Lqx5$a;->e:Lqx5$a;

    const-string v2, "RemoteStore"

    const-string v3, "Stopping write stream with %d pending writes"

    invoke-static {v0, v2, v3, v1}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lsw5;->h:Lyw5;

    .line 13
    iget-object v0, p0, Lsw5;->d:Lmw5;

    sget-object v1, Lwq5;->e:Lwq5;

    invoke-virtual {v0, v1}, Lmw5;->c(Lwq5;)V

    .line 14
    iget-object v0, p0, Lsw5;->g:Lax5;

    invoke-virtual {v0}, Liv5;->b()V

    .line 15
    iget-object v0, p0, Lsw5;->f:Lzw5;

    invoke-virtual {v0}, Liv5;->b()V

    .line 16
    invoke-virtual {p0}, Lsw5;->b()V

    return-void
.end method

.method public final f(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsw5;->h:Lyw5;

    .line 2
    invoke-virtual {v0, p1}, Lyw5;->a(I)Lww5;

    move-result-object v0

    .line 3
    iget v1, v0, Lww5;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lww5;->a:I

    .line 4
    iget-object v0, p0, Lsw5;->f:Lzw5;

    .line 5
    invoke-virtual {v0}, Liv5;->c()Z

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unwatching targets requires an open stream"

    invoke-static {v1, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Luc6;->H()Luc6$b;

    move-result-object v1

    iget-object v2, v0, Lzw5;->p:Low5;

    .line 7
    iget-object v2, v2, Low5;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 9
    iget-object v3, v1, Lgj6$a;->f:Lgj6;

    check-cast v3, Luc6;

    invoke-static {v3, v2}, Luc6;->D(Luc6;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 11
    iget-object v2, v1, Lgj6$a;->f:Lgj6;

    check-cast v2, Luc6;

    invoke-static {v2, p1}, Luc6;->F(Luc6;I)V

    .line 12
    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Luc6;

    .line 13
    invoke-virtual {v0, p1}, Liv5;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Lut5;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lsw5;->h:Lyw5;

    .line 2
    iget v1, p1, Lut5;->b:I

    .line 3
    invoke-virtual {v0, v1}, Lyw5;->a(I)Lww5;

    move-result-object v0

    .line 4
    iget v1, v0, Lww5;->a:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lww5;->a:I

    .line 5
    iget-object v0, p0, Lsw5;->f:Lzw5;

    .line 6
    invoke-virtual {v0}, Liv5;->c()Z

    move-result v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Watching queries requires an open stream"

    invoke-static {v1, v5, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Luc6;->H()Luc6$b;

    move-result-object v1

    iget-object v4, v0, Lzw5;->p:Low5;

    .line 8
    iget-object v4, v4, Low5;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 10
    iget-object v5, v1, Lgj6$a;->f:Lgj6;

    check-cast v5, Luc6;

    invoke-static {v5, v4}, Luc6;->D(Luc6;Ljava/lang/String;)V

    .line 11
    iget-object v4, v0, Lzw5;->p:Low5;

    .line 12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lzc6;->G()Lzc6$b;

    move-result-object v5

    .line 14
    iget-object v6, p1, Lut5;->a:Ldr5;

    .line 15
    invoke-virtual {v6}, Ldr5;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 16
    invoke-virtual {v4, v6}, Low5;->h(Ldr5;)Lzc6$c;

    move-result-object v4

    .line 17
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 18
    iget-object v6, v5, Lgj6$a;->f:Lgj6;

    check-cast v6, Lzc6;

    invoke-static {v6, v4}, Lzc6;->D(Lzc6;Lzc6$c;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v4, v6}, Low5;->m(Ldr5;)Lzc6$d;

    move-result-object v4

    .line 20
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 21
    iget-object v6, v5, Lgj6$a;->f:Lgj6;

    check-cast v6, Lzc6;

    invoke-static {v6, v4}, Lzc6;->C(Lzc6;Lzc6$d;)V

    .line 22
    :goto_0
    iget v4, p1, Lut5;->b:I

    .line 23
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 24
    iget-object v6, v5, Lgj6$a;->f:Lgj6;

    check-cast v6, Lzc6;

    invoke-static {v6, v4}, Lzc6;->F(Lzc6;I)V

    .line 25
    iget-object v4, p1, Lut5;->g:Lqi6;

    .line 26
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 27
    iget-object v6, v5, Lgj6$a;->f:Lgj6;

    check-cast v6, Lzc6;

    invoke-static {v6, v4}, Lzc6;->E(Lzc6;Lqi6;)V

    .line 28
    invoke-virtual {v5}, Lgj6$a;->l()Lgj6;

    move-result-object v4

    check-cast v4, Lzc6;

    .line 29
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 30
    iget-object v5, v1, Lgj6$a;->f:Lgj6;

    check-cast v5, Luc6;

    invoke-static {v5, v4}, Luc6;->E(Luc6;Lzc6;)V

    .line 31
    iget-object v4, v0, Lzw5;->p:Low5;

    .line 32
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p1, p1, Lut5;->d:Lvs5;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v2, :cond_2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    const-string p1, "limbo-document"

    goto :goto_1

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "Unrecognized query purpose: %s"

    .line 35
    invoke-static {p1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v5

    :cond_2
    const-string p1, "existence-filter-mismatch"

    goto :goto_1

    :cond_3
    move-object p1, v5

    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    .line 36
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "goog-listen-tags"

    .line 37
    invoke-virtual {v5, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v5, :cond_5

    .line 38
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 39
    iget-object p1, v1, Lgj6$a;->f:Lgj6;

    check-cast p1, Luc6;

    invoke-static {p1}, Luc6;->C(Luc6;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Luj6;

    invoke-virtual {p1, v5}, Luj6;->putAll(Ljava/util/Map;)V

    .line 40
    :cond_5
    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Luc6;

    invoke-virtual {v0, p1}, Liv5;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsw5;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsw5;->f:Lzw5;

    invoke-virtual {v0}, Liv5;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsw5;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsw5;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsw5;->g:Lax5;

    invoke-virtual {v0}, Liv5;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsw5;->i:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lsw5;->h()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "startWatchStream() called when shouldStartWatchStream() is false."

    .line 2
    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lyw5;

    invoke-direct {v0, p0}, Lyw5;-><init>(Lyw5$a;)V

    iput-object v0, p0, Lsw5;->h:Lyw5;

    .line 4
    iget-object v0, p0, Lsw5;->f:Lzw5;

    invoke-virtual {v0}, Liv5;->g()V

    .line 5
    iget-object v0, p0, Lsw5;->d:Lmw5;

    .line 6
    iget v2, v0, Lmw5;->b:I

    if-nez v2, :cond_1

    .line 7
    sget-object v2, Lwq5;->e:Lwq5;

    invoke-virtual {v0, v2}, Lmw5;->b(Lwq5;)V

    .line 8
    iget-object v2, v0, Lmw5;->c:Lex5$b;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "onlineStateTimer shouldn\'t be started yet"

    invoke-static {v2, v3, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lmw5;->e:Lex5;

    sget-object v2, Lex5$d;->j:Lex5$d;

    const-wide/16 v3, 0x2710

    .line 10
    new-instance v5, Llw5;

    invoke-direct {v5, v0}, Llw5;-><init>(Lmw5;)V

    .line 11
    invoke-virtual {v1, v2, v3, v4, v5}, Lex5;->b(Lex5$d;JLjava/lang/Runnable;)Lex5$b;

    move-result-object v1

    iput-object v1, v0, Lmw5;->c:Lex5$b;

    :cond_1
    return-void
.end method

.method public k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsw5;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lut5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "stopListening called on target no currently watched: %d"

    .line 3
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lsw5;->f:Lzw5;

    invoke-virtual {v0}, Liv5;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lsw5;->f(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lsw5;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lsw5;->f:Lzw5;

    invoke-virtual {p1}, Liv5;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lsw5;->f:Lzw5;

    invoke-virtual {p1}, Liv5;->e()V

    goto :goto_1

    .line 9
    :cond_2
    iget-boolean p1, p0, Lsw5;->e:Z

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lsw5;->d:Lmw5;

    sget-object v0, Lwq5;->e:Lwq5;

    invoke-virtual {p1, v0}, Lmw5;->c(Lwq5;)V

    :cond_3
    :goto_1
    return-void
.end method
