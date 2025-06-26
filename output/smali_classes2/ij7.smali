.class public final Lij7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lpb7<",
        "TT;>;",
        "Ly38;"
    }
.end annotation


# instance fields
.field public final e:Lx38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx38<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public f:Ly38;

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
.method public constructor <init>(Lx38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lij7;->e:Lx38;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lij7;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lij7;->i:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lij7;->g:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lij7;->h:Lqi7;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lqi7;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lqi7;-><init>(I)V

    .line 8
    iput-object v0, p0, Lij7;->h:Lqi7;

    .line 9
    :cond_2
    sget-object v1, Lwi7;->e:Lwi7;

    invoke-virtual {v0, v1}, Lqi7;->b(Ljava/lang/Object;)V

    .line 10
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lij7;->i:Z

    .line 12
    iput-boolean v0, p0, Lij7;->g:Z

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lij7;->e:Lx38;

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
    iget-boolean v0, p0, Lij7;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lij7;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lij7;->g:Z

    if-eqz v0, :cond_3

    .line 6
    iput-boolean v2, p0, Lij7;->i:Z

    .line 7
    iget-object v0, p0, Lij7;->h:Lqi7;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lqi7;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lqi7;-><init>(I)V

    .line 9
    iput-object v0, p0, Lij7;->h:Lqi7;

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
    iput-boolean v2, p0, Lij7;->i:Z

    .line 14
    iput-boolean v2, p0, Lij7;->g:Z

    .line 15
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 16
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    .line 17
    :cond_4
    iget-object v0, p0, Lij7;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lij7;->f:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lij7;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lij7;->f:Ly38;

    invoke-interface {p1}, Ly38;->cancel()V

    .line 3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lij7;->b(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_1
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lij7;->i:Z

    if-eqz v0, :cond_2

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    iget-boolean v0, p0, Lij7;->g:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lij7;->h:Lqi7;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Lqi7;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lqi7;-><init>(I)V

    .line 10
    iput-object v0, p0, Lij7;->h:Lqi7;

    .line 11
    :cond_3
    invoke-virtual {v0, p1}, Lqi7;->b(Ljava/lang/Object;)V

    .line 12
    monitor-exit p0

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lij7;->g:Z

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    iget-object v0, p0, Lij7;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->d(Ljava/lang/Object;)V

    .line 16
    :cond_5
    monitor-enter p0

    .line 17
    :try_start_1
    iget-object p1, p0, Lij7;->h:Lqi7;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lij7;->g:Z

    .line 19
    monitor-exit p0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lij7;->h:Lqi7;

    .line 21
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    iget-object v0, p0, Lij7;->e:Lx38;

    invoke-virtual {p1, v0}, Lqi7;->a(Lx38;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 24
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public e(Ly38;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lij7;->f:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lij7;->f:Ly38;

    .line 3
    iget-object p1, p0, Lij7;->e:Lx38;

    invoke-interface {p1, p0}, Lx38;->e(Ly38;)V

    :cond_0
    return-void
.end method

.method public l(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lij7;->f:Ly38;

    invoke-interface {v0, p1, p2}, Ly38;->l(J)V

    return-void
.end method
