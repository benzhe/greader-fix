.class public final Lmf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltz4;


# instance fields
.field public final synthetic a:Lq34;


# direct methods
.method public constructor <init>(Lq34;)V
    .locals 0

    iput-object p1, p0, Lmf5;->a:Lq34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final V(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lq34;->h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lq24;

    .line 2
    invoke-direct {v1, v0, p1}, Lq24;-><init>(Lq34;Ljava/lang/String;)V

    .line 3
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-virtual {v0, p1, p2}, Lq34;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk24;

    .line 2
    invoke-direct {v1, v0, p1}, Lk24;-><init>(Lq34;Landroid/os/Bundle;)V

    .line 3
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lr24;

    .line 2
    invoke-direct {v1, v0, p1}, Lr24;-><init>(Lq34;Ljava/lang/String;)V

    .line 3
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldd4;

    .line 2
    invoke-direct {v1}, Ldd4;-><init>()V

    new-instance v2, Lt24;

    .line 3
    invoke-direct {v2, v0, v1}, Lt24;-><init>(Lq34;Ldd4;)V

    .line 4
    iget-object v0, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x32

    .line 6
    invoke-virtual {v1, v2, v3}, Ldd4;->g0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ll24;

    .line 2
    invoke-direct {v1, v0, p1, p2, p3}, Ll24;-><init>(Lq34;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldd4;

    .line 2
    invoke-direct {v1}, Ldd4;-><init>()V

    new-instance v2, Lw24;

    .line 3
    invoke-direct {v2, v0, v1}, Lw24;-><init>(Lq34;Ldd4;)V

    .line 4
    iget-object v0, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    .line 6
    invoke-virtual {v1, v2, v3}, Ldd4;->g0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-virtual {v0, p1}, Lq34;->c(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final i()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldd4;

    .line 2
    invoke-direct {v1}, Ldd4;-><init>()V

    new-instance v2, Ls24;

    .line 3
    invoke-direct {v2, v0, v1}, Ls24;-><init>(Lq34;Ldd4;)V

    .line 4
    iget-object v0, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    .line 6
    invoke-virtual {v1, v2, v3}, Ldd4;->g0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()J
    .locals 2

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-virtual {v0}, Lq34;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lq34;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final p()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmf5;->a:Lq34;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldd4;

    .line 2
    invoke-direct {v1}, Ldd4;-><init>()V

    new-instance v2, Lv24;

    .line 3
    invoke-direct {v2, v0, v1}, Lv24;-><init>(Lq34;Ldd4;)V

    .line 4
    iget-object v0, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    .line 6
    invoke-virtual {v1, v2, v3}, Ldd4;->g0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
