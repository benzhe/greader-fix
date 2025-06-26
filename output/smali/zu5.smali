.class public final Lzu5;
.super Lqu5;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbu5;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbu5;",
            "Ljava/util/List<",
            "Lpu5;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lwu5;->a(Z)Lwu5;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lqu5;-><init>(Lbu5;Lwu5;)V

    .line 2
    iput-object p2, p0, Lzu5;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lfu5;Lfu5;Lcom/google/firebase/Timestamp;)Lfu5;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lqu5;->g(Lfu5;)V

    .line 2
    iget-object v0, p0, Lqu5;->b:Lwu5;

    .line 3
    invoke-virtual {v0, p1}, Lwu5;->c(Lfu5;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lzu5;->h(Lfu5;)Lyt5;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lzu5;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v2, p0, Lzu5;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpu5;

    .line 7
    iget-object v4, v3, Lpu5;->b:Lav5;

    const/4 v5, 0x0

    .line 8
    instance-of v6, p1, Lyt5;

    if-eqz v6, :cond_1

    .line 9
    move-object v5, p1

    check-cast v5, Lyt5;

    .line 10
    iget-object v6, v3, Lpu5;->a:Leu5;

    .line 11
    invoke-virtual {v5, v6}, Lyt5;->b(Leu5;)Lbd6;

    move-result-object v5

    :cond_1
    if-nez v5, :cond_2

    .line 12
    instance-of v6, p2, Lyt5;

    if-eqz v6, :cond_2

    .line 13
    move-object v5, p2

    check-cast v5, Lyt5;

    .line 14
    iget-object v3, v3, Lpu5;->a:Leu5;

    .line 15
    invoke-virtual {v5, v3}, Lyt5;->b(Leu5;)Lbd6;

    move-result-object v5

    .line 16
    :cond_2
    invoke-interface {v4, v5, p3}, Lav5;->a(Lbd6;Lcom/google/firebase/Timestamp;)Lbd6;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, v0, Lyt5;->d:Lhu5;

    .line 18
    invoke-virtual {p0, p1, v1}, Lzu5;->i(Lhu5;Ljava/util/List;)Lhu5;

    move-result-object p1

    .line 19
    new-instance p2, Lyt5;

    .line 20
    iget-object p3, p0, Lqu5;->a:Lbu5;

    .line 21
    iget-object v0, v0, Lfu5;->b:Lju5;

    .line 22
    sget-object v1, Lyt5$a;->e:Lyt5$a;

    invoke-direct {p2, p3, v0, p1, v1}, Lyt5;-><init>(Lbu5;Lju5;Lhu5;Lyt5$a;)V

    return-object p2
.end method

.method public b(Lfu5;Ltu5;)Lfu5;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lqu5;->g(Lfu5;)V

    .line 2
    iget-object v0, p2, Ltu5;->b:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Transform results missing for TransformMutation."

    .line 3
    invoke-static {v0, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lqu5;->b:Lwu5;

    .line 5
    invoke-virtual {v0, p1}, Lwu5;->c(Lfu5;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance p1, Lku5;

    .line 7
    iget-object v0, p0, Lqu5;->a:Lbu5;

    .line 8
    iget-object p2, p2, Ltu5;->a:Lju5;

    .line 9
    invoke-direct {p1, v0, p2}, Lku5;-><init>(Lbu5;Lju5;)V

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lzu5;->h(Lfu5;)Lyt5;

    move-result-object p1

    .line 11
    iget-object v0, p2, Ltu5;->b:Ljava/util/List;

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lzu5;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    iget-object v4, p0, Lzu5;->c:Ljava/util/List;

    .line 14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lzu5;->c:Ljava/util/List;

    .line 16
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "server transform count (%d) should match field transform count (%d)"

    .line 17
    invoke-static {v4, v1, v5}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 19
    iget-object v1, p0, Lzu5;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpu5;

    .line 20
    iget-object v4, v1, Lpu5;->b:Lav5;

    .line 21
    iget-object v1, v1, Lpu5;->a:Leu5;

    .line 22
    invoke-virtual {p1, v1}, Lyt5;->b(Leu5;)Lbd6;

    move-result-object v1

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbd6;

    invoke-interface {v4, v1, v5}, Lav5;->c(Lbd6;Lbd6;)Lbd6;

    move-result-object v1

    .line 24
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 25
    :cond_3
    iget-object p1, p1, Lyt5;->d:Lhu5;

    .line 26
    invoke-virtual {p0, p1, v3}, Lzu5;->i(Lhu5;Ljava/util/List;)Lhu5;

    move-result-object p1

    .line 27
    new-instance v0, Lyt5;

    .line 28
    iget-object v1, p0, Lqu5;->a:Lbu5;

    .line 29
    iget-object p2, p2, Ltu5;->a:Lju5;

    .line 30
    sget-object v2, Lyt5$a;->f:Lyt5$a;

    invoke-direct {v0, v1, p2, p1, v2}, Lyt5;-><init>(Lbu5;Lju5;Lhu5;Lyt5$a;)V

    return-object v0
.end method

.method public c(Lfu5;)Lhu5;
    .locals 6

    .line 1
    iget-object v0, p0, Lzu5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpu5;

    .line 2
    instance-of v4, p1, Lyt5;

    if-eqz v4, :cond_1

    .line 3
    move-object v4, p1

    check-cast v4, Lyt5;

    .line 4
    iget-object v5, v3, Lpu5;->a:Leu5;

    .line 5
    invoke-virtual {v4, v5}, Lyt5;->b(Leu5;)Lbd6;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 6
    :goto_1
    iget-object v5, v3, Lpu5;->b:Lav5;

    .line 7
    invoke-interface {v5, v4}, Lav5;->b(Lbd6;)Lbd6;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_2

    .line 8
    sget-object v2, Lhu5;->b:Lhu5;

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v5, Lhu5$a;

    invoke-direct {v5, v2}, Lhu5$a;-><init>(Lhu5;)V

    move-object v2, v5

    .line 11
    :cond_2
    iget-object v3, v3, Lpu5;->a:Leu5;

    .line 12
    invoke-virtual {v2, v3, v4}, Lhu5$a;->c(Leu5;Lbd6;)Lhu5$a;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v2}, Lhu5$a;->b()Lhu5;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lzu5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lzu5;

    .line 3
    invoke-virtual {p0, p1}, Lqu5;->d(Lqu5;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lzu5;->c:Ljava/util/List;

    iget-object p1, p1, Lzu5;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final h(Lfu5;)Lyt5;
    .locals 4

    .line 1
    instance-of v0, p1, Lyt5;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Unknown MaybeDocument type %s"

    invoke-static {v0, v3, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lyt5;

    .line 3
    iget-object v0, p1, Lfu5;->a:Lbu5;

    .line 4
    iget-object v1, p0, Lqu5;->a:Lbu5;

    .line 5
    invoke-virtual {v0, v1}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Can only transform a document with the same key"

    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lqu5;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lzu5;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i(Lhu5;Ljava/util/List;)Lhu5;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhu5;",
            "Ljava/util/List<",
            "Lbd6;",
            ">;)",
            "Lhu5;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lzu5;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Transform results length mismatch."

    .line 2
    invoke-static {v0, v3, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lhu5$a;

    invoke-direct {v0, p1}, Lhu5$a;-><init>(Lhu5;)V

    .line 5
    :goto_1
    iget-object p1, p0, Lzu5;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 6
    iget-object p1, p0, Lzu5;->c:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpu5;

    .line 7
    iget-object p1, p1, Lpu5;->a:Leu5;

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbd6;

    invoke-virtual {v0, p1, v1}, Lhu5$a;->c(Leu5;Lbd6;)Lhu5$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lhu5$a;->b()Lhu5;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "TransformMutation{"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lqu5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fieldTransforms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzu5;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
