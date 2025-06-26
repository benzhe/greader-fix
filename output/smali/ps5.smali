.class public final Lps5;
.super Lts5;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ltp5;",
            "Los5;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lns5;

.field public final d:Lrs5;

.field public final e:Lqs5;

.field public f:Lxs5;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lts5;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lps5;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Lns5;

    invoke-direct {v0}, Lns5;-><init>()V

    iput-object v0, p0, Lps5;->c:Lns5;

    .line 4
    new-instance v0, Lrs5;

    invoke-direct {v0, p0}, Lrs5;-><init>(Lps5;)V

    iput-object v0, p0, Lps5;->d:Lrs5;

    .line 5
    new-instance v0, Lqs5;

    invoke-direct {v0, p0}, Lqs5;-><init>(Lps5;)V

    iput-object v0, p0, Lps5;->e:Lqs5;

    return-void
.end method


# virtual methods
.method public a()Lsr5;
    .locals 1

    .line 1
    iget-object v0, p0, Lps5;->c:Lns5;

    return-object v0
.end method

.method public b(Ltp5;)Lss5;
    .locals 2

    .line 1
    iget-object v0, p0, Lps5;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Los5;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Los5;

    invoke-direct {v0, p0}, Los5;-><init>(Lps5;)V

    .line 3
    iget-object v1, p0, Lps5;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public c()Lxs5;
    .locals 1

    .line 1
    iget-object v0, p0, Lps5;->f:Lxs5;

    return-object v0
.end method

.method public d()Lzs5;
    .locals 1

    .line 1
    iget-object v0, p0, Lps5;->e:Lqs5;

    return-object v0
.end method

.method public e()Ltt5;
    .locals 1

    .line 1
    iget-object v0, p0, Lps5;->d:Lrs5;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lps5;->g:Z

    return v0
.end method

.method public g(Ljava/lang/String;Lrx5;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lrx5<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lps5;->f:Lxs5;

    invoke-interface {p1}, Lxs5;->c()V

    .line 2
    :try_start_0
    invoke-interface {p2}, Lrx5;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p2, p0, Lps5;->f:Lxs5;

    invoke-interface {p2}, Lxs5;->b()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lps5;->f:Lxs5;

    invoke-interface {p2}, Lxs5;->b()V

    .line 4
    throw p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lps5;->f:Lxs5;

    invoke-interface {p1}, Lxs5;->c()V

    .line 2
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lps5;->f:Lxs5;

    invoke-interface {p1}, Lxs5;->b()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lps5;->f:Lxs5;

    invoke-interface {p2}, Lxs5;->b()V

    .line 4
    throw p1
.end method

.method public i()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lps5;->g:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MemoryPersistence double-started!"

    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lps5;->g:Z

    return-void
.end method
