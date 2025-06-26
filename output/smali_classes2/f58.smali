.class public abstract Lf58;
.super Lo68;
.source "SourceFile"

# interfaces
.implements Lt68;
.implements Lv68;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Le58;",
        ">",
        "Lo68;",
        "Lt68;",
        "Lv68;",
        "Ljava/lang/Comparable<",
        "Lf58<",
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
    invoke-virtual {p0, p1, p2, p3}, Lf58;->N(JLb78;)Lf58;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf58;->O(JLb78;)Lf58;

    move-result-object p1

    return-object p1
.end method

.method public abstract K(Lz48;)Lh58;
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

.method public L(Lf58;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf58<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf58;->Q()Le58;

    move-result-object v0

    invoke-virtual {p1}, Lf58;->Q()Le58;

    move-result-object v1

    invoke-virtual {v0, v1}, Le58;->L(Le58;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf58;->R()Lr48;

    move-result-object v0

    invoke-virtual {p1}, Lf58;->R()Lr48;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr48;->K(Lr48;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lf58;->M()Lj58;

    move-result-object v0

    invoke-virtual {p1}, Lf58;->M()Lj58;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj58;->i(Lj58;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public M()Lj58;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    return-object v0
.end method

.method public N(JLb78;)Lf58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lb78;",
            ")",
            "Lf58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lo68;->C(JLb78;)Lt68;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj58;->t(Lt68;)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public abstract O(JLb78;)Lf58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lb78;",
            ")",
            "Lf58<",
            "TD;>;"
        }
    .end annotation
.end method

.method public P(La58;)J
    .locals 4

    const-string v0, "offset"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lf58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->Q()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    .line 3
    invoke-virtual {p0}, Lf58;->R()Lr48;

    move-result-object v2

    invoke-virtual {v2}, Lr48;->W()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 4
    iget p1, p1, La58;->f:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract Q()Le58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract R()Lr48;
.end method

.method public S(Lv68;)Lf58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv68;",
            ")",
            "Lf58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    .line 2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lj58;->t(Lt68;)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public abstract T(Ly68;J)Lf58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly68;",
            "J)",
            "Lf58<",
            "TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lf58;

    invoke-virtual {p0, p1}, Lf58;->L(Lf58;)I

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
    instance-of v1, p1, Lf58;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lf58;

    invoke-virtual {p0, p1}, Lf58;->L(Lf58;)I

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lf58;->R()Lr48;

    move-result-object v1

    invoke-virtual {v1}, Lr48;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf58;->T(Ly68;J)Lf58;

    move-result-object p1

    return-object p1
.end method

.method public l(Lt68;)Lt68;
    .locals 3

    .line 1
    sget-object v0, Lq68;->C:Lq68;

    .line 2
    invoke-virtual {p0}, Lf58;->Q()Le58;

    move-result-object v1

    invoke-virtual {v1}, Le58;->Q()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    sget-object v0, Lq68;->j:Lq68;

    .line 3
    invoke-virtual {p0}, Lf58;->R()Lr48;

    move-result-object v1

    invoke-virtual {v1}, Lr48;->V()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf58;->Q()Le58;

    move-result-object v1

    invoke-virtual {v1}, Le58;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf58;->R()Lr48;

    move-result-object v1

    invoke-virtual {v1}, Lr48;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    invoke-virtual {p0}, Lf58;->M()Lj58;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lz68;->c:La78;

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lr68;->f:Lr68;

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lz68;->f:La78;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lf58;->Q()Le58;

    move-result-object p1

    invoke-virtual {p1}, Le58;->Q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lp48;->e0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Lz68;->g:La78;

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lf58;->R()Lr48;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    sget-object v0, Lz68;->d:La78;

    if-eq p1, v0, :cond_5

    sget-object v0, Lz68;->a:La78;

    if-eq p1, v0, :cond_5

    sget-object v0, Lz68;->e:La78;

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-super {p0, p1}, Lp68;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic x(Lv68;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf58;->S(Lv68;)Lf58;

    move-result-object p1

    return-object p1
.end method
