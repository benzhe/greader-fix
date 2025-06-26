.class public final synthetic Lxp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# instance fields
.field public final a:Lop1;

.field public final b:Lxw0;


# direct methods
.method public constructor <init>(Lop1;Lxw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxp1;->a:Lop1;

    iput-object p2, p0, Lxp1;->b:Lxw0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object p2, p0, Lxp1;->a:Lop1;

    iget-object v0, p0, Lxp1;->b:Lxw0;

    check-cast p1, Lxw0;

    .line 1
    iget-object p1, p2, Lop1;->h:Lq21;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget-object p2, p1, Lq21;->g:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p1, Lq21;->e:Ll21;

    .line 5
    iget-object v1, p2, Ll21;->e:Lkb0;

    const-string v2, "/updateActiveView"

    invoke-interface {v0, v2, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 6
    iget-object p2, p2, Ll21;->f:Lkb0;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {v0, v1, p2}, Lxw0;->o(Ljava/lang/String;Lkb0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method
