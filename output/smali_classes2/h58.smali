.class public abstract Lh58;
.super Lo68;
.source "SourceFile"

# interfaces
.implements Lt68;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Le58;",
        ">",
        "Lo68;",
        "Lt68;",
        "Ljava/lang/Comparable<",
        "Lh58<",
        "*>;>;"
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
    invoke-virtual {p0, p1, p2, p3}, Lh58;->N(JLb78;)Lh58;

    move-result-object p1

    return-object p1
.end method

.method public D(Ly68;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lh58;->R()Lf58;

    move-result-object v0

    invoke-interface {v0, p1}, Lu68;->D(Ly68;)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lh58;->L()La58;

    move-result-object p1

    .line 5
    iget p1, p1, La58;->f:I

    int-to-long v0, p1

    return-wide v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lh58;->P()J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_2
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lh58;->O(JLb78;)Lh58;

    move-result-object p1

    return-object p1
.end method

.method public K(Lh58;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh58<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh58;->P()J

    move-result-wide v0

    invoke-virtual {p1}, Lh58;->P()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkt7;->d(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh58;->S()Lr48;

    move-result-object v0

    .line 3
    iget v0, v0, Lr48;->h:I

    .line 4
    invoke-virtual {p1}, Lh58;->S()Lr48;

    move-result-object v1

    .line 5
    iget v1, v1, Lr48;->h:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lh58;->R()Lf58;

    move-result-object v0

    invoke-virtual {p1}, Lh58;->R()Lf58;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf58;->L(Lf58;)I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lh58;->M()Lz48;

    move-result-object v0

    invoke-virtual {v0}, Lz48;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lh58;->M()Lz48;

    move-result-object v1

    invoke-virtual {v1}, Lz48;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lh58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-virtual {p1}, Lh58;->Q()Le58;

    move-result-object p1

    invoke-virtual {p1}, Le58;->M()Lj58;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj58;->i(Lj58;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public abstract L()La58;
.end method

.method public abstract M()Lz48;
.end method

.method public N(JLb78;)Lh58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lb78;",
            ")",
            "Lh58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lo68;->C(JLb78;)Lt68;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj58;->w(Lt68;)Li58;

    move-result-object p1

    return-object p1
.end method

.method public abstract O(JLb78;)Lh58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lb78;",
            ")",
            "Lh58<",
            "TD;>;"
        }
    .end annotation
.end method

.method public P()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lh58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->Q()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    .line 2
    invoke-virtual {p0}, Lh58;->S()Lr48;

    move-result-object v2

    invoke-virtual {v2}, Lr48;->W()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Lh58;->L()La58;

    move-result-object v2

    .line 4
    iget v2, v2, La58;->f:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public Q()Le58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh58;->R()Lf58;

    move-result-object v0

    invoke-virtual {v0}, Lf58;->Q()Le58;

    move-result-object v0

    return-object v0
.end method

.method public abstract R()Lf58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf58<",
            "TD;>;"
        }
    .end annotation
.end method

.method public S()Lr48;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh58;->R()Lf58;

    move-result-object v0

    invoke-virtual {v0}, Lf58;->R()Lr48;

    move-result-object v0

    return-object v0
.end method

.method public T(Lv68;)Lh58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv68;",
            ")",
            "Lh58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    .line 2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lj58;->w(Lt68;)Li58;

    move-result-object p1

    return-object p1
.end method

.method public abstract U(Ly68;J)Lh58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly68;",
            "J)",
            "Lh58<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract V(Lz48;)Lh58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz48;",
            ")",
            "Lh58<",
            "TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lh58;

    invoke-virtual {p0, p1}, Lh58;->K(Lh58;)I

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
    instance-of v1, p1, Lh58;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lh58;

    invoke-virtual {p0, p1}, Lh58;->K(Lh58;)I

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
    .locals 3

    .line 1
    invoke-virtual {p0}, Lh58;->R()Lf58;

    move-result-object v0

    invoke-virtual {v0}, Lf58;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lh58;->L()La58;

    move-result-object v1

    .line 2
    iget v1, v1, La58;->f:I

    xor-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lh58;->M()Lz48;

    move-result-object v1

    invoke-virtual {v1}, Lz48;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lh58;->U(Ly68;J)Lh58;

    move-result-object p1

    return-object p1
.end method

.method public k(Ly68;)I
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lh58;->R()Lf58;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp68;->k(Ly68;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lh58;->L()La58;

    move-result-object p1

    .line 5
    iget p1, p1, La58;->f:I

    return p1

    .line 6
    :cond_1
    new-instance v0, Lc78;

    const-string v1, "Field too large for an int: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    invoke-super {p0, p1}, Lp68;->k(Ly68;)I

    move-result p1

    return p1
.end method

.method public t(Ly68;)Ld78;
    .locals 1

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lq68;->K:Lq68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lq68;->L:Lq68;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lh58;->R()Lf58;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp68;->t(Ly68;)Ld78;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1}, Ly68;->w()Ld78;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-interface {p1, p0}, Ly68;->t(Lu68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lh58;->R()Lf58;

    move-result-object v1

    invoke-virtual {v1}, Lf58;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh58;->L()La58;

    move-result-object v1

    .line 2
    iget-object v1, v1, La58;->g:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lh58;->L()La58;

    move-result-object v1

    invoke-virtual {p0}, Lh58;->M()Lz48;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh58;->M()Lz48;

    move-result-object v0

    invoke-virtual {v0}, Lz48;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
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
    sget-object v0, Lz68;->a:La78;

    if-eq p1, v0, :cond_6

    sget-object v0, Lz68;->d:La78;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lz68;->b:La78;

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lh58;->Q()Le58;

    move-result-object p1

    invoke-virtual {p1}, Le58;->M()Lj58;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    sget-object v0, Lz68;->c:La78;

    if-ne p1, v0, :cond_2

    .line 5
    sget-object p1, Lr68;->f:Lr68;

    return-object p1

    .line 6
    :cond_2
    sget-object v0, Lz68;->e:La78;

    if-ne p1, v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lh58;->L()La58;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    sget-object v0, Lz68;->f:La78;

    if-ne p1, v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lh58;->Q()Le58;

    move-result-object p1

    invoke-virtual {p1}, Le58;->Q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lp48;->e0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    sget-object v0, Lz68;->g:La78;

    if-ne p1, v0, :cond_5

    .line 11
    invoke-virtual {p0}, Lh58;->S()Lr48;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    invoke-super {p0, p1}, Lp68;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lh58;->M()Lz48;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Lv68;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lh58;->T(Lv68;)Lh58;

    move-result-object p1

    return-object p1
.end method
