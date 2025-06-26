.class public final Ljb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkb0<",
        "Lxw0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .line 1
    check-cast p1, Lxw0;

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "start"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object p1

    check-cast p1, Lww0;

    .line 4
    iget-object v0, p1, Lww0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget p2, p1, Lww0;->z:I

    add-int/2addr p2, v1

    iput p2, p1, Lww0;->z:I

    .line 7
    invoke-virtual {p1}, Lww0;->Q()V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 9
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "stop"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object p1

    check-cast p1, Lww0;

    .line 11
    iget p2, p1, Lww0;->z:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lww0;->z:I

    .line 12
    invoke-virtual {p1}, Lww0;->Q()V

    return-void

    .line 13
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v0, "cancel"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object p1

    check-cast p1, Lww0;

    .line 15
    iget-object p2, p1, Lww0;->f:Lep3;

    if-eqz p2, :cond_2

    .line 16
    sget-object v0, Lgp3;->a0:Lgp3;

    invoke-virtual {p2, v0}, Lep3;->b(Lgp3;)V

    .line 17
    :cond_2
    iput-boolean v1, p1, Lww0;->y:Z

    .line 18
    invoke-virtual {p1}, Lww0;->Q()V

    .line 19
    iget-object p1, p1, Lww0;->e:Lxw0;

    invoke-interface {p1}, Lxw0;->destroy()V

    :cond_3
    return-void
.end method
