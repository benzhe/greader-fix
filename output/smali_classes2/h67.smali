.class public final Lh67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc87;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh67$f;
    }
.end annotation


# instance fields
.field public final a:Ly37;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lb57;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Lc87$a;

.field public i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lh67$f;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lx47;

.field public k:Lc47$i;

.field public l:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lb57;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lh67;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Ly37;->a(Ljava/lang/Class;Ljava/lang/String;)Ly37;

    move-result-object v0

    iput-object v0, p0, Lh67;->a:Ly37;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh67;->b:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lh67;->i:Ljava/util/Collection;

    .line 6
    iput-object p1, p0, Lh67;->c:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p2, p0, Lh67;->d:Lb57;

    return-void
.end method


# virtual methods
.method public final a(Lc47$f;)Lh67$f;
    .locals 2

    .line 1
    new-instance v0, Lh67$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lh67$f;-><init>(Lh67;Lc47$f;Lh67$a;)V

    .line 2
    iget-object p1, p0, Lh67;->i:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lh67;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v1, p0, Lh67;->i:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    .line 5
    iget-object p1, p0, Lh67;->d:Lb57;

    iget-object v1, p0, Lh67;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lb57;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lx47;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh67;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh67;->j:Lx47;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lh67;->j:Lx47;

    .line 5
    iget-object v1, p0, Lh67;->d:Lb57;

    new-instance v2, Lh67$d;

    invoke-direct {v2, p0, p1}, Lh67$d;-><init>(Lh67;Lx47;)V

    .line 6
    iget-object p1, v1, Lb57;->f:Ljava/util/Queue;

    const-string v1, "runnable is null"

    invoke-static {v2, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lh67;->h()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lh67;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 8
    iget-object v1, p0, Lh67;->d:Lb57;

    invoke-virtual {v1, p1}, Lb57;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lh67;->g:Ljava/lang/Runnable;

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lh67;->d:Lb57;

    invoke-virtual {p1}, Lb57;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Lx47;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lh67;->b(Lx47;)V

    .line 2
    iget-object v0, p0, Lh67;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lh67;->i:Ljava/util/Collection;

    .line 4
    iget-object v2, p0, Lh67;->g:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 5
    iput-object v3, p0, Lh67;->g:Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lh67;->i:Ljava/util/Collection;

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh67$f;

    .line 10
    invoke-virtual {v1, p1}, Lh67$f;->f(Lx47;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lh67;->d:Lb57;

    .line 12
    iget-object v0, p1, Lb57;->f:Ljava/util/Queue;

    const-string v1, "runnable is null"

    invoke-static {v2, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p1}, Lb57;->a()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Lc87$a;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    iput-object p1, p0, Lh67;->h:Lc87$a;

    .line 2
    new-instance v0, Lh67$a;

    invoke-direct {v0, p0, p1}, Lh67$a;-><init>(Lh67;Lc87$a;)V

    iput-object v0, p0, Lh67;->e:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lh67$b;

    invoke-direct {v0, p0, p1}, Lh67$b;-><init>(Lh67;Lc87$a;)V

    iput-object v0, p0, Lh67;->f:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lh67$c;

    invoke-direct {v0, p0, p1}, Lh67$c;-><init>(Lh67;Lc87$a;)V

    iput-object v0, p0, Lh67;->g:Ljava/lang/Runnable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ly37;
    .locals 1

    .line 1
    iget-object v0, p0, Lh67;->a:Ly37;

    return-object v0
.end method

.method public final g(Lj47;Li47;Lx27;)Ly57;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj47<",
            "**>;",
            "Li47;",
            "Lx27;",
            ")",
            "Ly57;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ll87;

    invoke-direct {v0, p1, p2, p3}, Ll87;-><init>(Lj47;Li47;Lx27;)V

    const/4 p1, 0x0

    const-wide/16 v1, -0x1

    .line 2
    :goto_0
    iget-object p2, p0, Lh67;->b:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v3, p0, Lh67;->j:Lx47;

    if-eqz v3, :cond_0

    .line 4
    new-instance p1, Lm67;

    invoke-direct {p1, v3}, Lm67;-><init>(Lx47;)V

    monitor-exit p2

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Lh67;->k:Lc47$i;

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lh67;->a(Lc47$f;)Lh67$f;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    iget-wide v4, p0, Lh67;->l:J

    cmp-long p1, v1, v4

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lh67;->a(Lc47$f;)Lh67$f;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    .line 9
    :cond_2
    iget-wide v1, p0, Lh67;->l:J

    .line 10
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v3, v0}, Lc47$i;->a(Lc47$f;)Lc47$e;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Lx27;->b()Z

    move-result p2

    .line 13
    invoke-static {p1, p2}, Lu67;->e(Lc47$e;Z)La67;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p2, v0, Ll87;->c:Lj47;

    .line 15
    iget-object p3, v0, Ll87;->b:Li47;

    .line 16
    iget-object v0, v0, Ll87;->a:Lx27;

    .line 17
    invoke-interface {p1, p2, p3, v0}, La67;->g(Lj47;Li47;Lx27;)Ly57;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :goto_1
    iget-object p2, p0, Lh67;->d:Lb57;

    invoke-virtual {p2}, Lb57;->a()V

    return-object p1

    :cond_3
    move-object p1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 20
    iget-object p2, p0, Lh67;->d:Lb57;

    invoke-virtual {p2}, Lb57;->a()V

    throw p1
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lh67;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh67;->i:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i(Lc47$i;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lh67;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lh67;->k:Lc47$i;

    .line 3
    iget-wide v1, p0, Lh67;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lh67;->l:J

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p0}, Lh67;->h()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lh67;->i:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh67$f;

    .line 9
    iget-object v3, v2, Lh67$f;->i:Lc47$f;

    .line 10
    invoke-virtual {p1, v3}, Lc47$i;->a(Lc47$f;)Lc47$e;

    move-result-object v3

    .line 11
    iget-object v4, v2, Lh67$f;->i:Lc47$f;

    .line 12
    check-cast v4, Ll87;

    .line 13
    iget-object v4, v4, Ll87;->a:Lx27;

    .line 14
    invoke-virtual {v4}, Lx27;->b()Z

    move-result v5

    .line 15
    invoke-static {v3, v5}, Lu67;->e(Lc47$e;Z)La67;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 16
    iget-object v5, p0, Lh67;->c:Ljava/util/concurrent/Executor;

    .line 17
    iget-object v4, v4, Lx27;->b:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_2

    move-object v5, v4

    .line 18
    :cond_2
    new-instance v4, Lh67$e;

    invoke-direct {v4, p0, v2, v3}, Lh67$e;-><init>(Lh67;Lh67$f;La67;)V

    invoke-interface {v5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_3
    iget-object p1, p0, Lh67;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 21
    :try_start_1
    invoke-virtual {p0}, Lh67;->h()Z

    move-result v1

    if-nez v1, :cond_4

    .line 22
    monitor-exit p1

    return-void

    .line 23
    :cond_4
    iget-object v1, p0, Lh67;->i:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 24
    iget-object v0, p0, Lh67;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lh67;->i:Ljava/util/Collection;

    .line 26
    :cond_5
    invoke-virtual {p0}, Lh67;->h()Z

    move-result v0

    if-nez v0, :cond_6

    .line 27
    iget-object v0, p0, Lh67;->d:Lb57;

    iget-object v1, p0, Lh67;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lb57;->b(Ljava/lang/Runnable;)V

    .line 28
    iget-object v0, p0, Lh67;->j:Lx47;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lh67;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 29
    iget-object v1, p0, Lh67;->d:Lb57;

    .line 30
    iget-object v1, v1, Lb57;->f:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v0, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lh67;->g:Ljava/lang/Runnable;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 32
    :cond_6
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    iget-object p1, p0, Lh67;->d:Lb57;

    invoke-virtual {p1}, Lb57;->a()V

    return-void

    .line 34
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 35
    :cond_7
    :goto_3
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
