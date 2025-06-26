.class public final Lzf0;
.super Lly0;
.source "SourceFile"


# instance fields
.field public final e:Lxr4;


# direct methods
.method public constructor <init>(Lxr4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lly0;-><init>()V

    .line 2
    iput-object p1, p0, Lzf0;->e:Lxr4;

    return-void
.end method


# virtual methods
.method public final C2()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    .line 2
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldd4;

    .line 4
    invoke-direct {v1}, Ldd4;-><init>()V

    new-instance v2, Lv24;

    .line 5
    invoke-direct {v2, v0, v1}, Lv24;-><init>(Lq34;Ldd4;)V

    .line 6
    iget-object v0, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    .line 8
    invoke-virtual {v1, v2, v3}, Ldd4;->g0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C5(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    .line 2
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lq24;

    .line 4
    invoke-direct {v1, v0, p1}, Lq24;-><init>(Lq34;Ljava/lang/String;)V

    .line 5
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F4()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    .line 2
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldd4;

    .line 4
    invoke-direct {v1}, Ldd4;-><init>()V

    new-instance v2, Lw24;

    .line 5
    invoke-direct {v2, v0, v1}, Lw24;-><init>(Lq34;Ldd4;)V

    .line 6
    iget-object v0, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    .line 8
    invoke-virtual {v1, v2, v3}, Ldd4;->g0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final K6(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    .line 2
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lr24;

    .line 4
    invoke-direct {v1, v0, p1}, Lr24;-><init>(Lq34;Ljava/lang/String;)V

    .line 5
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    .line 2
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lq34;->h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final Y1()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    .line 2
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldd4;

    .line 4
    invoke-direct {v1}, Ldd4;-><init>()V

    new-instance v2, Lt24;

    .line 5
    invoke-direct {v2, v0, v1}, Lt24;-><init>(Lq34;Ldd4;)V

    .line 6
    iget-object v0, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x32

    .line 8
    invoke-virtual {v1, v2, v3}, Ldd4;->g0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b4()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    .line 2
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 3
    iget-object v0, v0, Lq34;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f4()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    .line 2
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldd4;

    .line 4
    invoke-direct {v1}, Ldd4;-><init>()V

    new-instance v2, Ls24;

    .line 5
    invoke-direct {v2, v0, v1}, Ls24;-><init>(Lq34;Ldd4;)V

    .line 6
    iget-object v0, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    .line 8
    invoke-virtual {v1, v2, v3}, Ldd4;->g0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k6(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    .line 2
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lo24;

    .line 4
    invoke-direct {v1, v0, p1}, Lo24;-><init>(Lq34;Landroid/os/Bundle;)V

    .line 5
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t4(Lx20;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ln24;

    .line 5
    invoke-direct {v1, v0, p1, p2, p3}, Ln24;-><init>(Lq34;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u2()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzf0;->e:Lxr4;

    .line 2
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 3
    invoke-virtual {v0}, Lq34;->k()J

    move-result-wide v0

    return-wide v0
.end method
