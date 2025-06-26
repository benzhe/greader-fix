.class public Lyw5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyw5$a;
    }
.end annotation


# instance fields
.field public final a:Lyw5$a;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lww5;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbu5;",
            "Lfu5;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbu5;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyw5$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyw5;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyw5;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyw5;->d:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lyw5;->e:Ljava/util/Set;

    .line 6
    iput-object p1, p0, Lyw5;->a:Lyw5$a;

    return-void
.end method


# virtual methods
.method public final a(I)Lww5;
    .locals 2

    .line 1
    iget-object v0, p0, Lyw5;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lww5;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lww5;

    invoke-direct {v0}, Lww5;-><init>()V

    .line 3
    iget-object v1, p0, Lyw5;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final b(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lyw5;->c(I)Lut5;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(I)Lut5;
    .locals 2

    .line 1
    iget-object v0, p0, Lyw5;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lww5;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lww5;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lyw5;->a:Lyw5$a;

    check-cast v0, Lsw5;

    .line 4
    iget-object v0, v0, Lsw5;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lut5;

    :goto_0
    return-object p1
.end method

.method public final d(ILbu5;Lfu5;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lyw5;->c(I)Lut5;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lyw5;->a(I)Lww5;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2}, Lyw5;->f(ILbu5;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    sget-object v2, Lbq5$a;->e:Lbq5$a;

    .line 5
    iput-boolean v1, v0, Lww5;->c:Z

    .line 6
    iget-object v0, v0, Lww5;->b:Ljava/util/Map;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_2
    iput-boolean v1, v0, Lww5;->c:Z

    .line 8
    iget-object v0, v0, Lww5;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_1
    iget-object v0, p0, Lyw5;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    iget-object v1, p0, Lyw5;->d:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_4

    .line 13
    iget-object p1, p0, Lyw5;->c:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lyw5;->b:Ljava/util/Map;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyw5;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lww5;

    invoke-virtual {v0}, Lww5;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Should only reset active targets"

    .line 3
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lyw5;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lww5;

    invoke-direct {v2}, Lww5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lyw5;->a:Lyw5$a;

    .line 6
    check-cast v0, Lsw5;

    .line 7
    iget-object v0, v0, Lsw5;->a:Lsw5$c;

    invoke-interface {v0, p1}, Lsw5$c;->d(I)Lln5;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    move-object v1, v0

    check-cast v1, Lln5$a;

    invoke-virtual {v1}, Lln5$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu5;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, p1, v1, v2}, Lyw5;->d(ILbu5;Lfu5;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final f(ILbu5;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyw5;->a:Lyw5$a;

    .line 2
    check-cast v0, Lsw5;

    .line 3
    iget-object v0, v0, Lsw5;->a:Lsw5$c;

    invoke-interface {v0, p1}, Lsw5$c;->d(I)Lln5;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lln5;->e:Ljn5;

    invoke-virtual {p1, p2}, Ljn5;->d(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
