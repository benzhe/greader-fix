.class public final Lvu5;
.super Lqu5;
.source "SourceFile"


# instance fields
.field public final c:Lhu5;

.field public final d:Lou5;


# direct methods
.method public constructor <init>(Lbu5;Lhu5;Lou5;Lwu5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Lqu5;-><init>(Lbu5;Lwu5;)V

    .line 2
    iput-object p2, p0, Lvu5;->c:Lhu5;

    .line 3
    iput-object p3, p0, Lvu5;->d:Lou5;

    return-void
.end method


# virtual methods
.method public a(Lfu5;Lfu5;Lcom/google/firebase/Timestamp;)Lfu5;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lqu5;->g(Lfu5;)V

    .line 2
    iget-object p2, p0, Lqu5;->b:Lwu5;

    .line 3
    invoke-virtual {p2, p1}, Lwu5;->c(Lfu5;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    instance-of p2, p1, Lyt5;

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p1, Lfu5;->b:Lju5;

    goto :goto_0

    .line 6
    :cond_1
    sget-object p2, Lju5;->f:Lju5;

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lvu5;->h(Lfu5;)Lhu5;

    move-result-object p1

    .line 8
    new-instance p3, Lyt5;

    .line 9
    iget-object v0, p0, Lqu5;->a:Lbu5;

    .line 10
    sget-object v1, Lyt5$a;->e:Lyt5$a;

    invoke-direct {p3, v0, p2, p1, v1}, Lyt5;-><init>(Lbu5;Lju5;Lhu5;Lyt5$a;)V

    return-object p3
.end method

.method public b(Lfu5;Ltu5;)Lfu5;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lqu5;->g(Lfu5;)V

    .line 2
    iget-object v0, p2, Ltu5;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transform results received by PatchMutation."

    .line 3
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

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
    iget-object p2, p2, Ltu5;->a:Lju5;

    .line 11
    invoke-virtual {p0, p1}, Lvu5;->h(Lfu5;)Lhu5;

    move-result-object p1

    .line 12
    new-instance v0, Lyt5;

    .line 13
    iget-object v1, p0, Lqu5;->a:Lbu5;

    .line 14
    sget-object v2, Lyt5$a;->f:Lyt5$a;

    invoke-direct {v0, v1, p2, p1, v2}, Lyt5;-><init>(Lbu5;Lju5;Lhu5;Lyt5$a;)V

    return-object v0
.end method

.method public c(Lfu5;)Lhu5;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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
    const-class v2, Lvu5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lvu5;

    .line 3
    invoke-virtual {p0, p1}, Lqu5;->d(Lqu5;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lvu5;->c:Lhu5;

    iget-object p1, p1, Lvu5;->c:Lhu5;

    invoke-virtual {v2, p1}, Lhu5;->equals(Ljava/lang/Object;)Z

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

.method public final h(Lfu5;)Lhu5;
    .locals 5

    .line 1
    instance-of v0, p1, Lyt5;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lyt5;

    .line 3
    iget-object p1, p1, Lyt5;->d:Lhu5;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lhu5;->b:Lhu5;

    .line 5
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lhu5$a;

    invoke-direct {v0, p1}, Lhu5$a;-><init>(Lhu5;)V

    .line 7
    iget-object p1, p0, Lvu5;->d:Lou5;

    .line 8
    iget-object p1, p1, Lou5;->a:Ljava/util/Set;

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu5;

    .line 10
    invoke-virtual {v1}, Lvt5;->C()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    iget-object v2, p0, Lvu5;->c:Lhu5;

    invoke-virtual {v2, v1}, Lhu5;->c(Leu5;)Lbd6;

    move-result-object v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual {v1}, Lvt5;->C()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Cannot delete field for empty path on ObjectValue"

    invoke-static {v2, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lhu5$a;->d(Leu5;Lbd6;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v0, v1, v2}, Lhu5$a;->c(Leu5;Lbd6;)Lhu5$a;

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v0}, Lhu5$a;->b()Lhu5;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lqu5;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lvu5;->c:Lhu5;

    invoke-virtual {v1}, Lhu5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PatchMutation{"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lqu5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvu5;->d:Lou5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvu5;->c:Lhu5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
