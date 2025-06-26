.class public final Lkf7$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
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

.field public final f:Lkf7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkf7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Lkf7$a;

.field public h:Ly38;


# direct methods
.method public constructor <init>(Lx38;Lkf7;Lkf7$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;",
            "Lkf7<",
            "TT;>;",
            "Lkf7$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lkf7$b;->e:Lx38;

    .line 3
    iput-object p2, p0, Lkf7$b;->f:Lkf7;

    .line 4
    iput-object p3, p0, Lkf7$b;->g:Lkf7$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lkf7$b;->f:Lkf7;

    iget-object v1, p0, Lkf7$b;->g:Lkf7$a;

    invoke-virtual {v0, v1}, Lkf7;->x(Lkf7$a;)V

    .line 3
    iget-object v0, p0, Lkf7$b;->e:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lkf7$b;->f:Lkf7;

    iget-object v1, p0, Lkf7$b;->g:Lkf7$a;

    invoke-virtual {v0, v1}, Lkf7;->x(Lkf7$a;)V

    .line 3
    iget-object v0, p0, Lkf7$b;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 7

    .line 1
    iget-object v0, p0, Lkf7$b;->h:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lkf7$b;->f:Lkf7;

    iget-object v1, p0, Lkf7$b;->g:Lkf7$a;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, v0, Lkf7;->i:Lkf7$a;

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-wide v2, v1, Lkf7$a;->f:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 7
    iput-wide v2, v1, Lkf7$a;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 8
    iget-boolean v2, v1, Lkf7$a;->g:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, v1}, Lkf7;->y(Lkf7$a;)V

    .line 10
    monitor-exit v0

    goto :goto_2

    .line 11
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_2
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkf7$b;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ly38;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkf7$b;->h:Ly38;

    invoke-static {v0, p1}, Lpi7;->C(Ly38;Ly38;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lkf7$b;->h:Ly38;

    .line 3
    iget-object p1, p0, Lkf7$b;->e:Lx38;

    invoke-interface {p1, p0}, Lx38;->e(Ly38;)V

    :cond_0
    return-void
.end method

.method public l(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkf7$b;->h:Ly38;

    invoke-interface {v0, p1, p2}, Ly38;->l(J)V

    return-void
.end method
