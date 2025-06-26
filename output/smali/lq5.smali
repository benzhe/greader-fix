.class public final synthetic Llq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmq5;

.field public final f:Lzq5;


# direct methods
.method public constructor <init>(Lmq5;Lzq5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llq5;->e:Lmq5;

    iput-object p2, p0, Llq5;->f:Lzq5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Llq5;->e:Lmq5;

    iget-object v1, p0, Llq5;->f:Lzq5;

    .line 1
    iget-object v0, v0, Lmq5;->f:Ldq5;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lzq5;->a:Lyq5;

    .line 4
    iget-object v3, v0, Ldq5;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldq5$b;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 5
    iget-object v5, v3, Ldq5$b;->a:Ljava/util/List;

    .line 6
    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, v3, Ldq5$b;->a:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v0, Ldq5;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, v0, Ldq5;->a:Lcr5;

    const-string v1, "stopListening"

    .line 11
    invoke-virtual {v0, v1}, Lcr5;->g(Ljava/lang/String;)V

    .line 12
    iget-object v1, v0, Lcr5;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar5;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Trying to stop listening to a query not found"

    .line 13
    invoke-static {v3, v5, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v3, v0, Lcr5;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget v1, v1, Lar5;->b:I

    .line 16
    iget-object v3, v0, Lcr5;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 17
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    iget-object v2, v0, Lcr5;->a:Lfs5;

    .line 20
    iget-object v3, v2, Lfs5;->a:Lts5;

    .line 21
    new-instance v4, Les5;

    invoke-direct {v4, v2, v1}, Les5;-><init>(Lfs5;I)V

    const-string v2, "Release target"

    .line 22
    invoke-virtual {v3, v2, v4}, Lts5;->h(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 23
    iget-object v2, v0, Lcr5;->b:Lsw5;

    invoke-virtual {v2, v1}, Lsw5;->k(I)V

    .line 24
    sget-object v2, Lx47;->f:Lx47;

    invoke-virtual {v0, v1, v2}, Lcr5;->l(ILx47;)V

    :cond_2
    return-void
.end method
