.class public abstract Lud;
.super Lwd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lwd<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final i:Ljava/util/concurrent/Executor;

.field public volatile j:Lud$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lud<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field public volatile k:Lud$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lud<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field public l:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lxd;->l:Ljava/util/concurrent/Executor;

    .line 2
    invoke-direct {p0, p1}, Lwd;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, -0x2710

    .line 3
    iput-wide v1, p0, Lud;->l:J

    .line 4
    iput-object v0, p0, Lud;->i:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lwd;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lud;->j:Lud$a;

    const/4 p4, 0x0

    const-string v0, " waiting="

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lud;->j:Lud$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lud;->j:Lud$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5
    :cond_0
    iget-object p2, p0, Lud;->k:Lud$a;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mCancellingTask="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lud;->k:Lud$a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lud;->k:Lud$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lud;->j:Lud$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lwd;->d:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lwd;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lud;->k:Lud$a;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lud;->j:Lud$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object v3, p0, Lud;->j:Lud$a;

    return v1

    .line 7
    :cond_1
    iget-object v0, p0, Lud;->j:Lud$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lud;->j:Lud$a;

    .line 9
    iget-object v4, v0, Lxd;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object v0, v0, Lxd;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Lud;->j:Lud$a;

    iput-object v1, p0, Lud;->k:Lud$a;

    .line 12
    move-object v1, p0

    check-cast v1, Lvd;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, v1, Lvd;->t:Lw8;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Lw8;->a()V

    .line 16
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 17
    :cond_3
    :goto_0
    iput-object v3, p0, Lud;->j:Lud$a;

    return v0

    :cond_4
    return v1
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lud;->c()Z

    .line 2
    new-instance v0, Lud$a;

    invoke-direct {v0, p0}, Lud$a;-><init>(Lud;)V

    iput-object v0, p0, Lud;->j:Lud$a;

    .line 3
    invoke-virtual {p0}, Lud;->i()V

    return-void
.end method

.method public h(Lud$a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 1
    check-cast p2, Landroid/database/Cursor;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 4
    :cond_0
    iget-object p2, p0, Lud;->k:Lud$a;

    if-ne p2, p1, :cond_3

    .line 5
    iget-boolean p1, p0, Lwd;->h:Z

    if-eqz p1, :cond_2

    .line 6
    iget-boolean p1, p0, Lwd;->d:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lud;->d()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lwd;->g:Z

    .line 9
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lud;->l:J

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lud;->k:Lud$a;

    .line 11
    invoke-virtual {p0}, Lud;->i()V

    :cond_3
    return-void
.end method

.method public i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lud;->k:Lud$a;

    if-nez v0, :cond_3

    iget-object v0, p0, Lud;->j:Lud$a;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lud;->j:Lud$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lud;->j:Lud$a;

    iget-object v2, p0, Lud;->i:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v3, v1, Lxd;->g:Lxd$f;

    sget-object v4, Lxd$f;->e:Lxd$f;

    if-eq v3, v4, :cond_2

    .line 5
    iget-object v0, v1, Lxd;->g:Lxd$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    sget-object v3, Lxd$f;->f:Lxd$f;

    iput-object v3, v1, Lxd;->g:Lxd$f;

    .line 10
    iget-object v3, v1, Lxd;->e:Lxd$g;

    iput-object v0, v3, Lxd$g;->e:[Ljava/lang/Object;

    .line 11
    iget-object v0, v1, Lxd;->f:Ljava/util/concurrent/FutureTask;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
