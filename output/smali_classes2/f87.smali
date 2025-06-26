.class public final Lf87;
.super Lw27$a;
.source "SourceFile"


# instance fields
.field public final a:La67;

.field public final b:Lj47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj47<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Li47;

.field public final d:Lx27;

.field public final e:Ll37;

.field public final f:Ljava/lang/Object;

.field public g:Ly57;

.field public h:Z

.field public i:Li67;


# direct methods
.method public constructor <init>(La67;Lj47;Li47;Lx27;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La67;",
            "Lj47<",
            "**>;",
            "Li47;",
            "Lx27;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lw27$a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf87;->f:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lf87;->a:La67;

    .line 4
    iput-object p2, p0, Lf87;->b:Lj47;

    .line 5
    iput-object p3, p0, Lf87;->c:Li47;

    .line 6
    iput-object p4, p0, Lf87;->d:Lx27;

    .line 7
    invoke-static {}, Ll37;->g()Ll37;

    move-result-object p1

    iput-object p1, p0, Lf87;->e:Ll37;

    return-void
.end method


# virtual methods
.method public a(Li47;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf87;->h:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    const-string v0, "headers"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lf87;->c:Li47;

    invoke-virtual {v0, p1}, Li47;->f(Li47;)V

    .line 4
    iget-object p1, p0, Lf87;->e:Ll37;

    invoke-virtual {p1}, Ll37;->b()Ll37;

    move-result-object p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lf87;->a:La67;

    iget-object v1, p0, Lf87;->b:Lj47;

    iget-object v2, p0, Lf87;->c:Li47;

    iget-object v3, p0, Lf87;->d:Lx27;

    invoke-interface {v0, v1, v2, v3}, La67;->g(Lj47;Li47;Lx27;)Ly57;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lf87;->e:Ll37;

    invoke-virtual {v1, p1}, Ll37;->i(Ll37;)V

    .line 7
    invoke-virtual {p0, v0}, Lf87;->c(Ly57;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lf87;->e:Ll37;

    invoke-virtual {v1, p1}, Ll37;->i(Ll37;)V

    throw v0
.end method

.method public b(Lx47;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot fail with OK status"

    invoke-static {v0, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lf87;->h:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lm67;

    invoke-direct {v0, p1}, Lm67;-><init>(Lx47;)V

    invoke-virtual {p0, v0}, Lf87;->c(Ly57;)V

    return-void
.end method

.method public final c(Ly57;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf87;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already finalized"

    invoke-static {v0, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lf87;->h:Z

    .line 3
    iget-object v0, p0, Lf87;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lf87;->g:Ly57;

    if-nez v2, :cond_0

    .line 5
    iput-object p1, p0, Lf87;->g:Ly57;

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lf87;->i:Li67;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v0, "delayedStream is null"

    invoke-static {v1, v0}, Lc50;->G(ZLjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lf87;->i:Li67;

    invoke-virtual {v0, p1}, Li67;->q(Ly57;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
