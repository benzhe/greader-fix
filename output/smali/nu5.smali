.class public final Lnu5;
.super Lqu5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbu5;Lwu5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lqu5;-><init>(Lbu5;Lwu5;)V

    return-void
.end method


# virtual methods
.method public a(Lfu5;Lfu5;Lcom/google/firebase/Timestamp;)Lfu5;
    .locals 1

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
    new-instance p1, Lgu5;

    .line 5
    iget-object p2, p0, Lqu5;->a:Lbu5;

    .line 6
    sget-object p3, Lju5;->f:Lju5;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lgu5;-><init>(Lbu5;Lju5;Z)V

    return-object p1
.end method

.method public b(Lfu5;Ltu5;)Lfu5;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lqu5;->g(Lfu5;)V

    .line 2
    iget-object p1, p2, Ltu5;->b:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transform results received by DeleteMutation."

    .line 3
    invoke-static {p1, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lgu5;

    .line 5
    iget-object v1, p0, Lqu5;->a:Lbu5;

    .line 6
    iget-object p2, p2, Ltu5;->a:Lju5;

    .line 7
    invoke-direct {p1, v1, p2, v0}, Lgu5;-><init>(Lbu5;Lju5;Z)V

    return-object p1
.end method

.method public c(Lfu5;)Lhu5;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lnu5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lnu5;

    .line 3
    invoke-virtual {p0, p1}, Lqu5;->d(Lqu5;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqu5;->e()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DeleteMutation{"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lqu5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
