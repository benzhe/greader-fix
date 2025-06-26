.class public abstract Le58;
.super Lo68;
.source "SourceFile"

# interfaces
.implements Lt68;
.implements Lv68;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo68;",
        "Lt68;",
        "Lv68;",
        "Ljava/lang/Comparable<",
        "Le58;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo68;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic C(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le58;->O(JLb78;)Le58;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le58;->P(JLb78;)Le58;

    move-result-object p1

    return-object p1
.end method

.method public K(Lr48;)Lf58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr48;",
            ")",
            "Lf58<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg58;

    invoke-direct {v0, p0, p1}, Lg58;-><init>(Le58;Lr48;)V

    return-object v0
.end method

.method public L(Le58;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Le58;->Q()J

    move-result-wide v0

    invoke-virtual {p1}, Le58;->Q()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkt7;->d(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-virtual {p1}, Le58;->M()Lj58;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj58;->i(Lj58;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public abstract M()Lj58;
.end method

.method public N()Lk58;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le58;->M()Lj58;

    move-result-object v0

    sget-object v1, Lq68;->J:Lq68;

    invoke-virtual {p0, v1}, Lp68;->k(Ly68;)I

    move-result v1

    invoke-virtual {v0, v1}, Lj58;->x(I)Lk58;

    move-result-object v0

    return-object v0
.end method

.method public O(JLb78;)Le58;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lo68;->C(JLb78;)Lt68;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj58;->l(Lt68;)Le58;

    move-result-object p1

    return-object p1
.end method

.method public abstract P(JLb78;)Le58;
.end method

.method public Q()J
    .locals 2

    .line 1
    sget-object v0, Lq68;->C:Lq68;

    invoke-interface {p0, v0}, Lu68;->D(Ly68;)J

    move-result-wide v0

    return-wide v0
.end method

.method public R(Lv68;)Le58;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le58;->M()Lj58;

    move-result-object v0

    .line 2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lj58;->l(Lt68;)Le58;

    move-result-object p1

    return-object p1
.end method

.method public abstract S(Ly68;J)Le58;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le58;

    invoke-virtual {p0, p1}, Le58;->L(Le58;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le58;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Le58;

    invoke-virtual {p0, p1}, Le58;->L(Le58;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Le58;->Q()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Le58;->M()Lj58;

    move-result-object v2

    invoke-virtual {v2}, Lj58;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v1, v0

    xor-int v0, v2, v1

    return v0
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le58;->S(Ly68;J)Le58;

    move-result-object p1

    return-object p1
.end method

.method public l(Lt68;)Lt68;
    .locals 3

    .line 1
    sget-object v0, Lq68;->C:Lq68;

    invoke-virtual {p0}, Le58;->Q()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lq68;->H:Lq68;

    invoke-interface {p0, v0}, Lu68;->D(Ly68;)J

    move-result-wide v0

    .line 2
    sget-object v2, Lq68;->F:Lq68;

    invoke-interface {p0, v2}, Lu68;->D(Ly68;)J

    move-result-wide v2

    .line 3
    sget-object v4, Lq68;->A:Lq68;

    invoke-interface {p0, v4}, Lu68;->D(Ly68;)J

    move-result-wide v4

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    invoke-virtual {p0}, Le58;->M()Lj58;

    move-result-object v7

    invoke-virtual {v7}, Lj58;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    .line 6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Le58;->N()Lk58;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-0"

    const-string v1, "-"

    const-wide/16 v7, 0xa

    cmp-long v9, v2, v7

    if-gez v9, :cond_0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v1

    .line 10
    :goto_0
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v2, v4, v7

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 11
    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(La78;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "La78<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz68;->b:La78;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le58;->M()Lj58;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lz68;->c:La78;

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lr68;->m:Lr68;

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lz68;->f:La78;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Le58;->Q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lp48;->e0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Lz68;->g:La78;

    if-eq p1, v0, :cond_4

    sget-object v0, Lz68;->d:La78;

    if-eq p1, v0, :cond_4

    .line 8
    sget-object v0, Lz68;->a:La78;

    if-eq p1, v0, :cond_4

    sget-object v0, Lz68;->e:La78;

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-super {p0, p1}, Lp68;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic x(Lv68;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le58;->R(Lv68;)Le58;

    move-result-object p1

    return-object p1
.end method

.method public y(Ly68;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ly68;->i()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p0}, Ly68;->k(Lu68;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
