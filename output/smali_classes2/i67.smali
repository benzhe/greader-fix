.class public Li67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly57;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li67$n;
    }
.end annotation


# instance fields
.field public volatile a:Z

.field public b:Lz57;

.field public c:Ly57;

.field public d:Lx47;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public f:Li67$n;

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li67;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lg37;)V
    .locals 1

    const-string v0, "compressor"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li67$b;

    invoke-direct {v0, p0, p1}, Li67$b;-><init>(Li67;Lg37;)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li67;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li67;->c:Ly57;

    invoke-interface {v0, p1}, Lb97;->b(I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li67$a;

    invoke-direct {v0, p0, p1}, Li67$a;-><init>(Li67;I)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li67;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li67;->c:Ly57;

    invoke-interface {v0, p1}, Ly57;->c(I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li67$e;

    invoke-direct {v0, p0, p1}, Li67$e;-><init>(Li67;I)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li67;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li67;->c:Ly57;

    invoke-interface {v0, p1}, Ly57;->d(I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li67$f;

    invoke-direct {v0, p0, p1}, Li67$f;-><init>(Li67;I)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public e(Lo37;)V
    .locals 1

    const-string v0, "decompressorRegistry"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li67$d;

    invoke-direct {v0, p0, p1}, Li67$d;-><init>(Li67;Lo37;)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Lx47;)V
    .locals 2

    const-string v0, "reason"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Li67;->c:Ly57;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lg87;->a:Lg87;

    invoke-virtual {p0, v0}, Li67;->p(Ly57;)V

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Li67;->b:Lz57;

    .line 6
    iput-object p1, p0, Li67;->d:Lx47;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Li67$l;

    invoke-direct {v0, p0, p1}, Li67$l;-><init>(Li67;Lx47;)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 9
    new-instance v0, Li47;

    invoke-direct {v0}, Li47;-><init>()V

    invoke-interface {v1, p1, v0}, Lz57;->b(Lx47;Li47;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Li67;->o()V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li67;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li67;->c:Ly57;

    invoke-interface {v0}, Lb97;->flush()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li67$k;

    invoke-direct {v0, p0}, Li67$k;-><init>(Li67;)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li67;->b:Lz57;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    const-string v0, "authority"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li67$h;

    invoke-direct {v0, p0, p1}, Li67$h;-><init>(Li67;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(Lc77;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li67;->b:Lz57;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Li67;->c:Ly57;

    if-eqz v0, :cond_1

    const-string v0, "buffered_nanos"

    .line 5
    iget-wide v1, p0, Li67;->h:J

    iget-wide v3, p0, Li67;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc77;->b(Ljava/lang/String;Ljava/lang/Object;)Lc77;

    .line 6
    iget-object v0, p0, Li67;->c:Ly57;

    invoke-interface {v0, p1}, Ly57;->h(Lc77;)V

    goto :goto_0

    :cond_1
    const-string v0, "buffered_nanos"

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Li67;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc77;->b(Ljava/lang/String;Ljava/lang/Object;)Lc77;

    const-string v0, "waiting_for_connection"

    .line 8
    iget-object p1, p1, Lc77;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 1

    .line 1
    new-instance v0, Li67$m;

    invoke-direct {v0, p0}, Li67$m;-><init>(Li67;)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j(Lm37;)V
    .locals 1

    .line 1
    new-instance v0, Li67$g;

    invoke-direct {v0, p0, p1}, Li67$g;-><init>(Li67;Lm37;)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Lz57;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li67;->b:Lz57;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lz57;

    iput-object v0, p0, Li67;->b:Lz57;

    .line 4
    iget-object v0, p0, Li67;->d:Lx47;

    .line 5
    iget-boolean v1, p0, Li67;->a:Z

    if-nez v1, :cond_1

    .line 6
    new-instance v2, Li67$n;

    invoke-direct {v2, p1}, Li67$n;-><init>(Lz57;)V

    iput-object v2, p0, Li67;->f:Li67$n;

    move-object p1, v2

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Li67;->g:J

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 9
    new-instance v1, Li47;

    invoke-direct {v1}, Li47;-><init>()V

    invoke-interface {p1, v0, v1}, Lz57;->b(Lx47;Li47;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    iget-object v0, p0, Li67;->c:Ly57;

    invoke-interface {v0, p1}, Ly57;->k(Lz57;)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance v0, Li67$i;

    invoke-direct {v0, p0, p1}, Li67$i;-><init>(Li67;Lz57;)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public l(Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "message"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Li67;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Li67;->c:Ly57;

    invoke-interface {v0, p1}, Lb97;->l(Ljava/io/InputStream;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Li67$j;

    invoke-direct {v0, p0, p1}, Li67$j;-><init>(Li67;Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Li67;->a:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Li67;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n(Z)V
    .locals 1

    .line 1
    new-instance v0, Li67$c;

    invoke-direct {v0, p0, p1}, Li67$c;-><init>(Li67;Z)V

    invoke-virtual {p0, v0}, Li67;->m(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Li67;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Li67;->e:Ljava/util/List;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Li67;->a:Z

    .line 6
    iget-object v2, p0, Li67;->f:Li67$n;

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_1
    monitor-enter v2

    .line 10
    :try_start_1
    iget-object v4, v2, Li67$n;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    iput-object v0, v2, Li67$n;->c:Ljava/util/List;

    .line 12
    iput-boolean v1, v2, Li67$n;->b:Z

    .line 13
    monitor-exit v2

    goto :goto_3

    .line 14
    :cond_0
    iget-object v4, v2, Li67$n;->c:Ljava/util/List;

    .line 15
    iput-object v3, v2, Li67$n;->c:Ljava/util/List;

    .line 16
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 18
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 19
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object v3, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 20
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_3
    return-void

    .line 21
    :cond_3
    :try_start_3
    iget-object v1, p0, Li67;->e:Ljava/util/List;

    .line 22
    iput-object v0, p0, Li67;->e:Ljava/util/List;

    .line 23
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 25
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    .line 26
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 27
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final p(Ly57;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li67;->c:Ly57;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "realStream already set to %s"

    invoke-static {v1, v2, v0}, Lc50;->F(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Li67;->c:Ly57;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Li67;->h:J

    return-void
.end method

.method public final q(Ly57;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li67;->c:Ly57;

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "stream"

    .line 4
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ly57;

    invoke-virtual {p0, p1}, Li67;->p(Ly57;)V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Li67;->o()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
