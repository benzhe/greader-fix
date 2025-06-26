.class public final Lzi7;
.super Lyi7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lyi7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lyi7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyi7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Lqi7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqi7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile i:Z


# direct methods
.method public constructor <init>(Lyi7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyi7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lyi7;-><init>()V

    .line 2
    iput-object p1, p0, Lzi7;->f:Lyi7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lzi7;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lzi7;->i:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lzi7;->i:Z

    .line 6
    iget-boolean v1, p0, Lzi7;->g:Z

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lzi7;->h:Lqi7;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lqi7;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lqi7;-><init>(I)V

    .line 9
    iput-object v0, p0, Lzi7;->h:Lqi7;

    .line 10
    :cond_2
    sget-object v1, Lwi7;->e:Lwi7;

    invoke-virtual {v0, v1}, Lqi7;->b(Ljava/lang/Object;)V

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_3
    iput-boolean v0, p0, Lzi7;->g:Z

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lzi7;->f:Lyi7;

    invoke-interface {v0}, Lx38;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lzi7;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lzi7;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v2, p0, Lzi7;->i:Z

    .line 6
    iget-boolean v0, p0, Lzi7;->g:Z

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lzi7;->h:Lqi7;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lqi7;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lqi7;-><init>(I)V

    .line 9
    iput-object v0, p0, Lzi7;->h:Lqi7;

    .line 10
    :cond_2
    new-instance v2, Lwi7$a;

    invoke-direct {v2, p1}, Lwi7$a;-><init>(Ljava/lang/Throwable;)V

    .line 11
    iget-object p1, v0, Lqi7;->a:[Ljava/lang/Object;

    aput-object v2, p1, v1

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_3
    iput-boolean v2, p0, Lzi7;->g:Z

    .line 14
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 15
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    .line 16
    :cond_4
    iget-object v0, p0, Lzi7;->f:Lyi7;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lzi7;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lzi7;->i:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lzi7;->g:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lzi7;->h:Lqi7;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lqi7;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lqi7;-><init>(I)V

    .line 8
    iput-object v0, p0, Lzi7;->h:Lqi7;

    .line 9
    :cond_2
    invoke-virtual {v0, p1}, Lqi7;->b(Ljava/lang/Object;)V

    .line 10
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lzi7;->g:Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lzi7;->f:Lyi7;

    invoke-interface {v0, p1}, Lx38;->d(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lzi7;->w()V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Ly38;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lzi7;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lzi7;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lzi7;->g:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lzi7;->h:Lqi7;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lqi7;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lqi7;-><init>(I)V

    .line 7
    iput-object v0, p0, Lzi7;->h:Lqi7;

    .line 8
    :cond_1
    new-instance v1, Lwi7$b;

    invoke-direct {v1, p1}, Lwi7$b;-><init>(Ly38;)V

    .line 9
    invoke-virtual {v0, v1}, Lqi7;->b(Ljava/lang/Object;)V

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_2
    iput-boolean v1, p0, Lzi7;->g:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 13
    invoke-interface {p1}, Ly38;->cancel()V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v0, p0, Lzi7;->f:Lyi7;

    invoke-interface {v0, p1}, Lpb7;->e(Ly38;)V

    .line 15
    invoke-virtual {p0}, Lzi7;->w()V

    :goto_2
    return-void
.end method

.method public t(Lx38;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzi7;->f:Lyi7;

    invoke-virtual {v0, p1}, Lmb7;->i(Lx38;)V

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    :goto_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lzi7;->h:Lqi7;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lzi7;->g:Z

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lzi7;->h:Lqi7;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lzi7;->f:Lyi7;

    invoke-virtual {v0, v1}, Lqi7;->a(Lx38;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
