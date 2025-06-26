.class public final Li58;
.super Lh58;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Le58;",
        ">",
        "Lh58<",
        "TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final e:Lg58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg58<",
            "TD;>;"
        }
    .end annotation
.end field

.field public final f:La58;

.field public final g:Lz48;


# direct methods
.method public constructor <init>(Lg58;La58;Lz48;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg58<",
            "TD;>;",
            "La58;",
            "Lz48;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lh58;-><init>()V

    const-string v0, "dateTime"

    .line 2
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Li58;->e:Lg58;

    const-string p1, "offset"

    .line 3
    invoke-static {p2, p1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Li58;->f:La58;

    const-string p1, "zone"

    .line 4
    invoke-static {p3, p1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Li58;->g:Lz48;

    return-void
.end method

.method public static W(Lg58;Lz48;La58;)Lh58;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Le58;",
            ">(",
            "Lg58<",
            "TR;>;",
            "Lz48;",
            "La58;",
            ")",
            "Lh58<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "localDateTime"

    .line 1
    invoke-static {p0, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    .line 2
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, La58;

    if-eqz v0, :cond_0

    .line 4
    new-instance p2, Li58;

    move-object v0, p1

    check-cast v0, La58;

    invoke-direct {p2, p0, v0, p1}, Li58;-><init>(Lg58;La58;Lz48;)V

    return-object p2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lz48;->L()Lk78;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lq48;->V(Lu68;)Lq48;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lk78;->c(Lq48;)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La58;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Lk78;->b(Lq48;)Li78;

    move-result-object p2

    .line 12
    iget-object v0, p2, Li78;->g:La58;

    .line 13
    iget v0, v0, La58;->f:I

    .line 14
    iget-object v1, p2, Li78;->f:La58;

    .line 15
    iget v1, v1, La58;->f:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 16
    invoke-static {v0, v1}, Ln48;->l(J)Ln48;

    move-result-object v0

    .line 17
    iget-wide v7, v0, Ln48;->e:J

    .line 18
    iget-object v2, p0, Lg58;->e:Le58;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lg58;->X(Le58;JJJJ)Lg58;

    move-result-object p0

    .line 19
    iget-object p2, p2, Li78;->g:La58;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 20
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 21
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La58;

    :goto_0
    const-string v0, "offset"

    .line 22
    invoke-static {p2, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    new-instance v0, Li58;

    invoke-direct {v0, p0, p2, p1}, Li58;-><init>(Lg58;La58;Lz48;)V

    return-object v0
.end method

.method public static X(Lj58;Lo48;Lz48;)Li58;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Le58;",
            ">(",
            "Lj58;",
            "Lo48;",
            "Lz48;",
            ")",
            "Li58<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lz48;->L()Lk78;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lk78;->a(Lo48;)La58;

    move-result-object v0

    const-string v1, "offset"

    .line 3
    invoke-static {v0, v1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-wide v1, p1, Lo48;->e:J

    .line 5
    iget p1, p1, Lo48;->f:I

    .line 6
    invoke-static {v1, v2, p1, v0}, Lq48;->Z(JILa58;)Lq48;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lj58;->I(Lu68;)Lf58;

    move-result-object p0

    check-cast p0, Lg58;

    .line 8
    new-instance p1, Li58;

    invoke-direct {p1, p0, v0, p2}, Li58;-><init>(Lg58;La58;Lz48;)V

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lw58;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lw58;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Li58;->O(JLb78;)Lh58;

    move-result-object p1

    return-object p1
.end method

.method public L()La58;
    .locals 1

    .line 1
    iget-object v0, p0, Li58;->f:La58;

    return-object v0
.end method

.method public M()Lz48;
    .locals 1

    .line 1
    iget-object v0, p0, Li58;->g:Lz48;

    return-object v0
.end method

.method public O(JLb78;)Lh58;
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
    instance-of v0, p3, Lr68;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li58;->e:Lg58;

    invoke-virtual {v0, p1, p2, p3}, Lg58;->U(JLb78;)Lg58;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lh58;->Q()Le58;

    move-result-object p2

    invoke-virtual {p2}, Le58;->M()Lj58;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p0}, Lf58;->l(Lt68;)Lt68;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Lj58;->w(Lt68;)Li58;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lh58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lb78;->k(Lt68;J)Lt68;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj58;->w(Lt68;)Li58;

    move-result-object p1

    return-object p1
.end method

.method public R()Lf58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li58;->e:Lg58;

    return-object v0
.end method

.method public U(Ly68;J)Lh58;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly68;",
            "J)",
            "Lh58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v0, p0, Li58;->e:Lg58;

    invoke-virtual {v0, p1, p2, p3}, Lg58;->a0(Ly68;J)Lg58;

    move-result-object p1

    iget-object p2, p0, Li58;->g:Lz48;

    iget-object p3, p0, Li58;->f:La58;

    invoke-static {p1, p2, p3}, Li58;->W(Lg58;Lz48;La58;)Lh58;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object p1, v0, Lq68;->h:Ld78;

    .line 6
    invoke-virtual {p1, p2, p3, v0}, Ld78;->a(JLy68;)I

    move-result p1

    .line 7
    invoke-static {p1}, La58;->Q(I)La58;

    move-result-object p1

    .line 8
    iget-object p2, p0, Li58;->e:Lg58;

    .line 9
    invoke-virtual {p2, p1}, Lf58;->P(La58;)J

    move-result-wide v0

    .line 10
    iget-object p1, p2, Lg58;->f:Lr48;

    .line 11
    iget p1, p1, Lr48;->h:I

    int-to-long p1, p1

    .line 12
    invoke-static {v0, v1, p1, p2}, Lo48;->O(JJ)Lo48;

    move-result-object p1

    .line 13
    iget-object p2, p0, Li58;->g:Lz48;

    .line 14
    invoke-virtual {p0}, Lh58;->Q()Le58;

    move-result-object p3

    invoke-virtual {p3}, Le58;->M()Lj58;

    move-result-object p3

    invoke-static {p3, p1, p2}, Li58;->X(Lj58;Lo48;Lz48;)Li58;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    invoke-virtual {p0}, Lh58;->P()J

    move-result-wide v0

    sub-long/2addr p2, v0

    sget-object p1, Lr68;->i:Lr68;

    invoke-virtual {p0, p2, p3, p1}, Li58;->O(JLb78;)Lh58;

    move-result-object p1

    return-object p1

    .line 16
    :cond_2
    invoke-virtual {p0}, Lh58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj58;->w(Lt68;)Li58;

    move-result-object p1

    return-object p1
.end method

.method public V(Lz48;)Lh58;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz48;",
            ")",
            "Lh58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li58;->e:Lg58;

    iget-object v1, p0, Li58;->f:La58;

    invoke-static {v0, p1, v1}, Li58;->W(Lg58;Lz48;La58;)Lh58;

    move-result-object p1

    return-object p1
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
    iget-object v0, p0, Li58;->e:Lg58;

    .line 2
    invoke-virtual {v0}, Lf58;->hashCode()I

    move-result v0

    .line 3
    iget-object v1, p0, Li58;->f:La58;

    .line 4
    iget v1, v1, La58;->f:I

    xor-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Li58;->g:Lz48;

    .line 6
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
    invoke-virtual {p0, p1, p2, p3}, Li58;->U(Ly68;J)Lh58;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Li58;->e:Lg58;

    .line 3
    invoke-virtual {v1}, Lf58;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Li58;->f:La58;

    .line 5
    iget-object v1, v1, La58;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Li58;->f:La58;

    .line 8
    iget-object v2, p0, Li58;->g:Lz48;

    if-eq v1, v2, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Li58;->g:Lz48;

    .line 11
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

.method public y(Ly68;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lq68;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ly68;->k(Lu68;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
