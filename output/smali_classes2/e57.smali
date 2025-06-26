.class public abstract Le57;
.super Lh57;
.source "SourceFile"

# interfaces
.implements Ly57;
.implements Le87$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le57$a;,
        Le57$c;,
        Le57$b;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lg97;

.field public final b:Ls67;

.field public c:Z

.field public d:Z

.field public e:Li47;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le57;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le57;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Li97;La97;Lg97;Li47;Lx27;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lh57;-><init>()V

    const-string v0, "headers"

    .line 2
    invoke-static {p4, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transportTracer"

    .line 3
    invoke-static {p3, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Le57;->a:Lg97;

    .line 4
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lu67;->l:Lx27$a;

    invoke-virtual {p5, v0}, Lx27;->a(Lx27$a;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    .line 5
    iput-boolean p3, p0, Le57;->c:Z

    .line 6
    iput-boolean p6, p0, Le57;->d:Z

    if-nez p6, :cond_0

    .line 7
    new-instance p3, Le87;

    invoke-direct {p3, p0, p1, p2}, Le87;-><init>(Le87$d;Li97;La97;)V

    iput-object p3, p0, Le57;->b:Ls67;

    .line 8
    iput-object p4, p0, Le57;->e:Li47;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Le57$a;

    invoke-direct {p1, p0, p4, p2}, Le57$a;-><init>(Le57;Li47;La97;)V

    iput-object p1, p0, Le57;->b:Ls67;

    :goto_0
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le57;->o()Le57$b;

    move-result-object v0

    check-cast v0, Lo97$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Leb7;->a:Lcb7;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    iget-object v1, v0, Lo97$a;->a:Lo97;

    .line 6
    iget-object v1, v1, Lo97;->m:Lo97$b;

    .line 7
    iget-object v1, v1, Lo97$b;->B:Ljava/lang/Object;

    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    iget-object v0, v0, Lo97$a;->a:Lo97;

    .line 10
    iget-object v0, v0, Lo97;->m:Lo97$b;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    iget-object v2, v0, Lh57$a;->e:Lg67;

    invoke-interface {v2, p1}, Lg67;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    invoke-virtual {v0, p1}, Lo97$b;->h(Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    sget-object p1, Leb7;->a:Lcb7;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p1

    .line 17
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 18
    sget-object v0, Leb7;->a:Lcb7;

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    throw p1
.end method

.method public c(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le57;->p()Le57$c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lh57$a;->e:Lg67;

    invoke-interface {v0, p1}, Lg67;->c(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le57;->b:Ls67;

    invoke-interface {v0, p1}, Ls67;->d(I)V

    return-void
.end method

.method public final e(Lo37;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le57;->p()Le57$c;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le57$c;->m:Lz57;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Already called start"

    invoke-static {v1, v2}, Lc50;->G(ZLjava/lang/Object;)V

    const-string v1, "decompressorRegistry"

    .line 3
    invoke-static {p1, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v0, Le57$c;->o:Lo37;

    return-void
.end method

.method public final f(Lx47;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, Lc50;->t(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Le57;->o()Le57$b;

    move-result-object v0

    check-cast v0, Lo97$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Leb7;->a:Lcb7;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    iget-object v2, v0, Lo97$a;->a:Lo97;

    .line 7
    iget-object v2, v2, Lo97;->m:Lo97$b;

    .line 8
    iget-object v2, v2, Lo97$b;->B:Ljava/lang/Object;

    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v0, v0, Lo97$a;->a:Lo97;

    .line 11
    iget-object v0, v0, Lo97;->m:Lo97$b;

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, p1, v1, v3}, Lo97$b;->n(Lx47;ZLi47;)V

    .line 13
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 14
    sget-object v0, Leb7;->a:Lcb7;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    throw p1
.end method

.method public final h(Lc77;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lo97;

    .line 2
    iget-object v0, v0, Lo97;->o:Lv27;

    .line 3
    sget-object v1, Lt37;->a:Lv27$c;

    .line 4
    iget-object v0, v0, Lv27;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "remote_addr"

    .line 5
    invoke-virtual {p1, v1, v0}, Lc77;->b(Ljava/lang/String;Ljava/lang/Object;)Lc77;

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le57;->p()Le57$c;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Le57$c;->r:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le57;->p()Le57$c;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Le57$c;->r:Z

    .line 5
    iget-object v0, p0, Le57;->b:Ls67;

    .line 6
    invoke-interface {v0}, Ls67;->close()V

    :cond_0
    return-void
.end method

.method public j(Lm37;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le57;->e:Li47;

    sget-object v1, Lu67;->b:Li47$f;

    invoke-virtual {v0, v1}, Li47;->b(Li47$f;)V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lm37;->t(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3
    iget-object p1, p0, Le57;->e:Li47;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Lz57;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le57;->p()Le57$c;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le57$c;->m:Lz57;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Already called setListener"

    invoke-static {v1, v2}, Lc50;->G(ZLjava/lang/Object;)V

    const-string v1, "listener"

    .line 3
    invoke-static {p1, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v0, Le57$c;->m:Lz57;

    .line 4
    iget-boolean p1, p0, Le57;->d:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Le57;->o()Le57$b;

    move-result-object p1

    iget-object v0, p0, Le57;->e:Li47;

    check-cast p1, Lo97$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo97$a;->a(Li47;[B)V

    .line 6
    iput-object v1, p0, Le57;->e:Li47;

    :cond_1
    return-void
.end method

.method public final m(Lh97;ZZI)V
    .locals 5

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "null frame before EOS"

    .line 1
    invoke-static {v0, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Le57;->o()Le57$b;

    move-result-object v0

    check-cast v0, Lo97$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Leb7;->a:Lcb7;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 6
    sget-object p1, Lo97;->q:Lxs7;

    goto :goto_2

    .line 7
    :cond_2
    check-cast p1, Lu97;

    .line 8
    iget-object p1, p1, Lu97;->a:Lxs7;

    .line 9
    iget-wide v1, p1, Lxs7;->f:J

    long-to-int v2, v1

    if-lez v2, :cond_3

    .line 10
    iget-object v1, v0, Lo97$a;->a:Lo97;

    .line 11
    invoke-virtual {v1}, Lo97;->q()Lh57$a;

    move-result-object v1

    .line 12
    iget-object v3, v1, Lh57$a;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 13
    :try_start_0
    iget v4, v1, Lh57$a;->h:I

    add-int/2addr v4, v2

    iput v4, v1, Lh57$a;->h:I

    .line 14
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 15
    :cond_3
    :goto_2
    :try_start_1
    iget-object v1, v0, Lo97$a;->a:Lo97;

    .line 16
    iget-object v1, v1, Lo97;->m:Lo97$b;

    .line 17
    iget-object v1, v1, Lo97$b;->B:Ljava/lang/Object;

    .line 18
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 19
    :try_start_2
    iget-object v2, v0, Lo97$a;->a:Lo97;

    .line 20
    iget-object v2, v2, Lo97;->m:Lo97$b;

    .line 21
    invoke-static {v2, p1, p2, p3}, Lo97$b;->m(Lo97$b;Lxs7;ZZ)V

    .line 22
    iget-object p1, v0, Lo97$a;->a:Lo97;

    .line 23
    iget-object p1, p1, Le57;->a:Lg97;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_4

    goto :goto_3

    .line 25
    :cond_4
    iget-wide p2, p1, Lg97;->f:J

    int-to-long v2, p4

    add-long/2addr p2, v2

    iput-wide p2, p1, Lg97;->f:J

    .line 26
    iget-object p1, p1, Lg97;->a:Ld97;

    invoke-interface {p1}, Ld97;->a()J

    .line 27
    :goto_3
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    .line 28
    sget-object p2, Leb7;->a:Lcb7;

    .line 29
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    throw p1
.end method

.method public final n(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le57;->p()Le57$c;

    move-result-object v0

    .line 2
    iput-boolean p1, v0, Le57$c;->n:Z

    return-void
.end method

.method public abstract o()Le57$b;
.end method

.method public abstract p()Le57$c;
.end method
