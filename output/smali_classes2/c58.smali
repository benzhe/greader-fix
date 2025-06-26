.class public final Lc58;
.super Lh58;
.source "SourceFile"

# interfaces
.implements Lt68;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh58<",
        "Lp48;",
        ">;",
        "Lt68;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final e:Lq48;

.field public final f:La58;

.field public final g:Lz48;


# direct methods
.method public constructor <init>(Lq48;La58;Lz48;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh58;-><init>()V

    .line 2
    iput-object p1, p0, Lc58;->e:Lq48;

    .line 3
    iput-object p2, p0, Lc58;->f:La58;

    .line 4
    iput-object p3, p0, Lc58;->g:Lz48;

    return-void
.end method

.method public static W(JILz48;)Lc58;
    .locals 3

    .line 1
    invoke-virtual {p3}, Lz48;->L()Lk78;

    move-result-object v0

    int-to-long v1, p2

    .line 2
    invoke-static {p0, p1, v1, v2}, Lo48;->O(JJ)Lo48;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lk78;->a(Lo48;)La58;

    move-result-object v0

    .line 4
    invoke-static {p0, p1, p2, v0}, Lq48;->Z(JILa58;)Lq48;

    move-result-object p0

    .line 5
    new-instance p1, Lc58;

    invoke-direct {p1, p0, v0, p3}, Lc58;-><init>(Lq48;La58;Lz48;)V

    return-object p1
.end method

.method public static Y(Lq48;Lz48;La58;)Lc58;
    .locals 5

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
    new-instance p2, Lc58;

    move-object v0, p1

    check-cast v0, La58;

    invoke-direct {p2, p0, v0, p1}, Lc58;-><init>(Lq48;La58;Lz48;)V

    return-object p2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lz48;->L()Lk78;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Lk78;->c(Lq48;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La58;

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {v0, p0}, Lk78;->b(Lq48;)Li78;

    move-result-object p2

    .line 11
    iget-object v0, p2, Li78;->g:La58;

    .line 12
    iget v0, v0, La58;->f:I

    .line 13
    iget-object v1, p2, Li78;->f:La58;

    .line 14
    iget v1, v1, La58;->f:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 15
    invoke-static {v0, v1}, Ln48;->l(J)Ln48;

    move-result-object v0

    .line 16
    iget-wide v0, v0, Ln48;->e:J

    .line 17
    invoke-virtual {p0, v0, v1}, Lq48;->d0(J)Lq48;

    move-result-object p0

    .line 18
    iget-object p2, p2, Li78;->g:La58;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 19
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "offset"

    invoke-static {p2, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, La58;

    .line 21
    :goto_0
    new-instance v0, Lc58;

    invoke-direct {v0, p0, p2, p1}, Lc58;-><init>(Lq48;La58;Lz48;)V

    return-object v0
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
    new-instance v0, Lw48;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lw48;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic C(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc58;->X(JLb78;)Lc58;

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
    iget-object v0, p0, Lc58;->e:Lq48;

    invoke-virtual {v0, p1}, Lq48;->D(Ly68;)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-object p1, p0, Lc58;->f:La58;

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
    invoke-virtual {p0, p1, p2, p3}, Lc58;->Z(JLb78;)Lc58;

    move-result-object p1

    return-object p1
.end method

.method public L()La58;
    .locals 1

    .line 1
    iget-object v0, p0, Lc58;->f:La58;

    return-object v0
.end method

.method public M()Lz48;
    .locals 1

    .line 1
    iget-object v0, p0, Lc58;->g:Lz48;

    return-object v0
.end method

.method public bridge synthetic N(JLb78;)Lh58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc58;->X(JLb78;)Lc58;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic O(JLb78;)Lh58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc58;->Z(JLb78;)Lc58;

    move-result-object p1

    return-object p1
.end method

.method public Q()Le58;
    .locals 1

    .line 1
    iget-object v0, p0, Lc58;->e:Lq48;

    .line 2
    iget-object v0, v0, Lq48;->e:Lp48;

    return-object v0
.end method

.method public R()Lf58;
    .locals 1

    .line 1
    iget-object v0, p0, Lc58;->e:Lq48;

    return-object v0
.end method

.method public S()Lr48;
    .locals 1

    .line 1
    iget-object v0, p0, Lc58;->e:Lq48;

    .line 2
    iget-object v0, v0, Lq48;->f:Lr48;

    return-object v0
.end method

.method public bridge synthetic T(Lv68;)Lh58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc58;->c0(Lv68;)Lc58;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic U(Ly68;J)Lh58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc58;->d0(Ly68;J)Lc58;

    move-result-object p1

    return-object p1
.end method

.method public V(Lz48;)Lh58;
    .locals 2

    const-string v0, "zone"

    .line 1
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lc58;->g:Lz48;

    invoke-virtual {v0, p1}, Lz48;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc58;->e:Lq48;

    iget-object v1, p0, Lc58;->f:La58;

    invoke-static {v0, p1, v1}, Lc58;->Y(Lq48;Lz48;La58;)Lc58;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public X(JLb78;)Lc58;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc58;->Z(JLb78;)Lc58;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lc58;->Z(JLb78;)Lc58;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lc58;->Z(JLb78;)Lc58;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public Z(JLb78;)Lc58;
    .locals 2

    .line 1
    instance-of v0, p3, Lr68;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p3}, Lb78;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc58;->e:Lq48;

    invoke-virtual {v0, p1, p2, p3}, Lq48;->a0(JLb78;)Lq48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc58;->a0(Lq48;)Lc58;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lc58;->e:Lq48;

    invoke-virtual {v0, p1, p2, p3}, Lq48;->a0(JLb78;)Lq48;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lc58;->f:La58;

    iget-object p3, p0, Lc58;->g:Lz48;

    const-string v0, "localDateTime"

    .line 6
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    .line 7
    invoke-static {p2, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    .line 8
    invoke-static {p3, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1, p2}, Lf58;->P(La58;)J

    move-result-wide v0

    .line 10
    iget-object p1, p1, Lq48;->f:Lr48;

    .line 11
    iget p1, p1, Lr48;->h:I

    .line 12
    invoke-static {v0, v1, p1, p3}, Lc58;->W(JILz48;)Lc58;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lb78;->k(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lc58;

    return-object p1
.end method

.method public final a0(Lq48;)Lc58;
    .locals 2

    .line 1
    iget-object v0, p0, Lc58;->g:Lz48;

    iget-object v1, p0, Lc58;->f:La58;

    invoke-static {p1, v0, v1}, Lc58;->Y(Lq48;Lz48;La58;)Lc58;

    move-result-object p1

    return-object p1
.end method

.method public final b0(La58;)Lc58;
    .locals 3

    .line 1
    iget-object v0, p0, Lc58;->f:La58;

    invoke-virtual {p1, v0}, La58;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc58;->g:Lz48;

    invoke-virtual {v0}, Lz48;->L()Lk78;

    move-result-object v0

    iget-object v1, p0, Lc58;->e:Lq48;

    invoke-virtual {v0, v1, p1}, Lk78;->f(Lq48;La58;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lc58;

    iget-object v1, p0, Lc58;->e:Lq48;

    iget-object v2, p0, Lc58;->g:Lz48;

    invoke-direct {v0, v1, p1, v2}, Lc58;-><init>(Lq48;La58;Lz48;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public c0(Lv68;)Lc58;
    .locals 3

    .line 1
    instance-of v0, p1, Lp48;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lp48;

    iget-object v0, p0, Lc58;->e:Lq48;

    .line 3
    iget-object v0, v0, Lq48;->f:Lr48;

    .line 4
    invoke-static {p1, v0}, Lq48;->Y(Lp48;Lr48;)Lq48;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lc58;->g:Lz48;

    iget-object v1, p0, Lc58;->f:La58;

    invoke-static {p1, v0, v1}, Lc58;->Y(Lq48;Lz48;La58;)Lc58;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    instance-of v0, p1, Lr48;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lc58;->e:Lq48;

    .line 8
    iget-object v0, v0, Lq48;->e:Lp48;

    .line 9
    check-cast p1, Lr48;

    invoke-static {v0, p1}, Lq48;->Y(Lp48;Lr48;)Lq48;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lc58;->g:Lz48;

    iget-object v1, p0, Lc58;->f:La58;

    invoke-static {p1, v0, v1}, Lc58;->Y(Lq48;Lz48;La58;)Lc58;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    instance-of v0, p1, Lq48;

    if-eqz v0, :cond_2

    .line 12
    check-cast p1, Lq48;

    invoke-virtual {p0, p1}, Lc58;->a0(Lq48;)Lc58;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    instance-of v0, p1, Lo48;

    if-eqz v0, :cond_3

    .line 14
    check-cast p1, Lo48;

    .line 15
    iget-wide v0, p1, Lo48;->e:J

    .line 16
    iget p1, p1, Lo48;->f:I

    .line 17
    iget-object v2, p0, Lc58;->g:Lz48;

    invoke-static {v0, v1, p1, v2}, Lc58;->W(JILz48;)Lc58;

    move-result-object p1

    return-object p1

    .line 18
    :cond_3
    instance-of v0, p1, La58;

    if-eqz v0, :cond_4

    .line 19
    check-cast p1, La58;

    invoke-virtual {p0, p1}, Lc58;->b0(La58;)Lc58;

    move-result-object p1

    return-object p1

    .line 20
    :cond_4
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    check-cast p1, Lc58;

    return-object p1
.end method

.method public d0(Ly68;J)Lc58;
    .locals 3

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
    iget-object v0, p0, Lc58;->e:Lq48;

    invoke-virtual {v0, p1, p2, p3}, Lq48;->i0(Ly68;J)Lq48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc58;->a0(Lq48;)Lc58;

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
    invoke-virtual {p0, p1}, Lc58;->b0(La58;)Lc58;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    iget-object p1, p0, Lc58;->e:Lq48;

    .line 10
    iget-object p1, p1, Lq48;->f:Lr48;

    .line 11
    iget p1, p1, Lr48;->h:I

    .line 12
    iget-object v0, p0, Lc58;->g:Lz48;

    invoke-static {p2, p3, p1, v0}, Lc58;->W(JILz48;)Lc58;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lc58;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lc58;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lc58;

    .line 3
    iget-object v1, p0, Lc58;->e:Lq48;

    iget-object v3, p1, Lc58;->e:Lq48;

    invoke-virtual {v1, v3}, Lq48;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc58;->f:La58;

    iget-object v3, p1, Lc58;->f:La58;

    .line 4
    invoke-virtual {v1, v3}, La58;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc58;->g:Lz48;

    iget-object p1, p1, Lc58;->g:Lz48;

    .line 5
    invoke-virtual {v1, p1}, Lz48;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

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
    iget-object v0, p0, Lc58;->e:Lq48;

    invoke-virtual {v0}, Lq48;->hashCode()I

    move-result v0

    iget-object v1, p0, Lc58;->f:La58;

    .line 2
    iget v1, v1, La58;->f:I

    xor-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lc58;->g:Lz48;

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
    invoke-virtual {p0, p1, p2, p3}, Lc58;->d0(Ly68;J)Lc58;

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
    iget-object v0, p0, Lc58;->e:Lq48;

    invoke-virtual {v0, p1}, Lq48;->k(Ly68;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lc58;->f:La58;

    .line 5
    iget p1, p1, La58;->f:I

    return p1

    .line 6
    :cond_1
    new-instance v0, Ll48;

    const-string v1, "Field too large for an int: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    invoke-super {p0, p1}, Lh58;->k(Ly68;)I

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
    iget-object v0, p0, Lc58;->e:Lq48;

    invoke-virtual {v0, p1}, Lq48;->t(Ly68;)Ld78;

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

    iget-object v1, p0, Lc58;->e:Lq48;

    invoke-virtual {v1}, Lq48;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc58;->f:La58;

    .line 2
    iget-object v1, v1, La58;->g:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lc58;->f:La58;

    iget-object v2, p0, Lc58;->g:Lz48;

    if-eq v1, v2, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc58;->g:Lz48;

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
    .locals 1
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
    sget-object v0, Lz68;->f:La78;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lc58;->e:Lq48;

    .line 3
    iget-object p1, p1, Lq48;->e:Lp48;

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lh58;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Lv68;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc58;->c0(Lv68;)Lc58;

    move-result-object p1

    return-object p1
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
