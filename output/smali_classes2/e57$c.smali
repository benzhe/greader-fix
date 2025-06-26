.class public abstract Le57$c;
.super Lh57$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public final k:La97;

.field public l:Z

.field public m:Lz57;

.field public n:Z

.field public o:Lo37;

.field public p:Z

.field public q:Ljava/lang/Runnable;

.field public volatile r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(ILa97;Lg97;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lh57$a;-><init>(ILa97;Lg97;)V

    .line 2
    sget-object p1, Lo37;->d:Lo37;

    .line 3
    iput-object p1, p0, Le57$c;->o:Lo37;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Le57$c;->p:Z

    const-string p1, "statsTraceCtx"

    .line 5
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Le57$c;->k:La97;

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le57$c;->s:Z

    const-string v1, "status should have been reported on deframer closed"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le57$c;->p:Z

    .line 3
    iget-boolean v1, p0, Le57$c;->t:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lx47;->m:Lx47;

    const-string v1, "Encountered end-of-stream mid-frame"

    .line 5
    invoke-virtual {p1, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    new-instance v1, Li47;

    invoke-direct {v1}, Li47;-><init>()V

    .line 6
    sget-object v2, Lz57$a;->e:Lz57$a;

    invoke-virtual {p0, p1, v2, v0, v1}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    .line 7
    :cond_0
    iget-object p1, p0, Le57$c;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Le57$c;->q:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public final e(Lx47;Lz57$a;Li47;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le57$c;->l:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le57$c;->l:Z

    .line 3
    iget-object v1, p0, Le57$c;->k:La97;

    .line 4
    iget-object v2, v1, La97;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v1, La97;->a:[La57;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le57$c;->m:Lz57;

    .line 8
    invoke-interface {v0, p1, p2, p3}, Lz57;->e(Lx47;Lz57$a;Li47;)V

    .line 9
    iget-object p2, p0, Lh57$a;->g:Lg97;

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1}, Lx47;->f()Z

    move-result p1

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_1

    .line 11
    iget-wide v2, p2, Lg97;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lg97;->c:J

    goto :goto_1

    .line 12
    :cond_1
    iget-wide v2, p2, Lg97;->d:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lg97;->d:J

    :cond_2
    :goto_1
    return-void
.end method

.method public f(Li47;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Le57$c;->s:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Received headers on closed stream"

    invoke-static {v0, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le57$c;->k:La97;

    .line 3
    iget-object v0, v0, La97;->a:[La57;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 4
    check-cast v5, Le37;

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lu67;->e:Li47$f;

    invoke-virtual {p1, v0}, Li47;->d(Li47$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    iget-boolean v2, p0, Le57$c;->n:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    const-string v2, "gzip"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    new-instance v0, Lv67;

    invoke-direct {v0}, Lv67;-><init>()V

    .line 10
    iget-object v2, p0, Lh57$a;->e:Lg67;

    invoke-interface {v2, v0}, Lg67;->e(Lv67;)V

    .line 11
    new-instance v0, Lj57;

    iget-object v2, p0, Lh57$a;->e:Lg67;

    check-cast v2, Ld87;

    invoke-direct {v0, p0, p0, v2}, Lj57;-><init>(Ld87$b;Lj57$i;Ld87;)V

    iput-object v0, p0, Lh57$a;->e:Lg67;

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "identity"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    sget-object p1, Lx47;->m:Lx47;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Can\'t find full stream decompressor for %s"

    .line 14
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lx47;->a()Lz47;

    move-result-object p1

    .line 17
    move-object v0, p0

    check-cast v0, Lo97$b;

    invoke-virtual {v0, p1}, Lo97$b;->h(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 18
    :goto_1
    sget-object v2, Lu67;->c:Li47$f;

    invoke-virtual {p1, v2}, Li47;->d(Li47$f;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 19
    iget-object v4, p0, Le57$c;->o:Lo37;

    .line 20
    iget-object v4, v4, Lo37;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo37$a;

    if-eqz v4, :cond_3

    .line 21
    iget-object v4, v4, Lo37$a;->a:Ln37;

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 22
    sget-object p1, Lx47;->m:Lx47;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string v1, "Can\'t find decompressor for %s"

    .line 23
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lx47;->a()Lz47;

    move-result-object p1

    .line 25
    move-object v0, p0

    check-cast v0, Lo97$b;

    invoke-virtual {v0, p1}, Lo97$b;->h(Ljava/lang/Throwable;)V

    return-void

    .line 26
    :cond_4
    sget-object v1, Lf37$b;->a:Lf37;

    if-eq v4, v1, :cond_6

    if-eqz v0, :cond_5

    .line 27
    sget-object p1, Lx47;->m:Lx47;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Full stream and gRPC message encoding cannot both be set"

    .line 28
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lx47;->a()Lz47;

    move-result-object p1

    .line 31
    move-object v0, p0

    check-cast v0, Lo97$b;

    invoke-virtual {v0, p1}, Lo97$b;->h(Ljava/lang/Throwable;)V

    return-void

    .line 32
    :cond_5
    iget-object v0, p0, Lh57$a;->e:Lg67;

    invoke-interface {v0, v4}, Lg67;->i(Ln37;)V

    .line 33
    :cond_6
    iget-object v0, p0, Le57$c;->m:Lz57;

    .line 34
    invoke-interface {v0, p1}, Lz57;->c(Li47;)V

    return-void
.end method

.method public final i(Lx47;Lz57$a;ZLi47;)V
    .locals 2

    const-string v0, "status"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "trailers"

    .line 2
    invoke-static {p4, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Le57$c;->s:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le57$c;->s:Z

    .line 5
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v1

    iput-boolean v1, p0, Le57$c;->t:Z

    .line 6
    iget-object v1, p0, Lh57$a;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_0
    iput-boolean v0, p0, Lh57$a;->j:Z

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-boolean v0, p0, Le57$c;->p:Z

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    .line 10
    iput-object p3, p0, Le57$c;->q:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {p0, p1, p2, p4}, Le57$c;->e(Lx47;Lz57$a;Li47;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Le57$c$a;

    invoke-direct {v0, p0, p1, p2, p4}, Le57$c$a;-><init>(Le57$c;Lx47;Lz57$a;Li47;)V

    iput-object v0, p0, Le57$c;->q:Ljava/lang/Runnable;

    if-eqz p3, :cond_2

    .line 13
    iget-object p1, p0, Lh57$a;->e:Lg67;

    invoke-interface {p1}, Lg67;->close()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lh57$a;->e:Lg67;

    invoke-interface {p1}, Lg67;->f()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
