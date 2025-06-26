.class public final Lp48;
.super Le58;
.source "SourceFile"

# interfaces
.implements Lt68;
.implements Lv68;
.implements Ljava/io/Serializable;


# static fields
.field public static final h:Lp48;

.field public static final i:Lp48;


# instance fields
.field public final e:I

.field public final f:S

.field public final g:S


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v1}, Lp48;->c0(III)Lp48;

    move-result-object v0

    sput-object v0, Lp48;->h:Lp48;

    const v0, 0x3b9ac9ff

    const/16 v1, 0xc

    const/16 v2, 0x1f

    .line 2
    invoke-static {v0, v1, v2}, Lp48;->c0(III)Lp48;

    move-result-object v0

    sput-object v0, Lp48;->i:Lp48;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le58;-><init>()V

    .line 2
    iput p1, p0, Lp48;->e:I

    int-to-short p1, p2

    .line 3
    iput-short p1, p0, Lp48;->f:S

    int-to-short p1, p3

    .line 4
    iput-short p1, p0, Lp48;->g:S

    return-void
.end method

.method public static U(ILs48;I)Lp48;
    .locals 3

    const/16 v0, 0x1c

    if-le p2, v0, :cond_1

    .line 1
    sget-object v0, Lo58;->g:Lo58;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lo58;->M(J)Z

    move-result v0

    invoke-virtual {p1, v0}, Ls48;->M(Z)I

    move-result v0

    if-le p2, v0, :cond_1

    const/16 v0, 0x1d

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p1, Ll48;

    const-string p2, "Invalid date \'February 29\' as \'"

    const-string v0, "\' is not a leap year"

    invoke-static {p2, p0, v0}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_0
    new-instance p0, Ll48;

    const-string v0, "Invalid date \'"

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance v0, Lp48;

    invoke-virtual {p1}, Ls48;->L()I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Lp48;-><init>(III)V

    return-object v0
.end method

.method public static V(Lu68;)Lp48;
    .locals 3

    .line 1
    sget-object v0, Lz68;->f:La78;

    invoke-interface {p0, v0}, Lu68;->w(La78;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp48;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ll48;

    const-string v1, "Unable to obtain LocalDate from TemporalAccessor: "

    const-string v2, ", type "

    invoke-static {v1, p0, v2}, Ljo;->D(Ljava/lang/String;Lu68;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {p0, v1}, Ljo;->u(Lu68;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c0(III)Lp48;
    .locals 4

    .line 1
    sget-object v0, Lq68;->I:Lq68;

    int-to-long v1, p0

    .line 2
    iget-object v3, v0, Lq68;->h:Ld78;

    .line 3
    invoke-virtual {v3, v1, v2, v0}, Ld78;->b(JLy68;)J

    .line 4
    sget-object v0, Lq68;->F:Lq68;

    int-to-long v1, p1

    .line 5
    iget-object v3, v0, Lq68;->h:Ld78;

    .line 6
    invoke-virtual {v3, v1, v2, v0}, Ld78;->b(JLy68;)J

    .line 7
    sget-object v0, Lq68;->A:Lq68;

    int-to-long v1, p2

    .line 8
    iget-object v3, v0, Lq68;->h:Ld78;

    .line 9
    invoke-virtual {v3, v1, v2, v0}, Ld78;->b(JLy68;)J

    .line 10
    invoke-static {p1}, Ls48;->O(I)Ls48;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lp48;->U(ILs48;I)Lp48;

    move-result-object p0

    return-object p0
.end method

.method public static d0(ILs48;I)Lp48;
    .locals 4

    .line 1
    sget-object v0, Lq68;->I:Lq68;

    int-to-long v1, p0

    .line 2
    iget-object v3, v0, Lq68;->h:Ld78;

    .line 3
    invoke-virtual {v3, v1, v2, v0}, Ld78;->b(JLy68;)J

    const-string v0, "month"

    .line 4
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lq68;->A:Lq68;

    int-to-long v1, p2

    .line 6
    iget-object v3, v0, Lq68;->h:Ld78;

    .line 7
    invoke-virtual {v3, v1, v2, v0}, Ld78;->b(JLy68;)J

    .line 8
    invoke-static {p0, p1, p2}, Lp48;->U(ILs48;I)Lp48;

    move-result-object p0

    return-object p0
.end method

.method public static e0(J)Lp48;
    .locals 22

    move-wide/from16 v0, p0

    .line 1
    sget-object v2, Lq68;->C:Lq68;

    .line 2
    iget-object v3, v2, Lq68;->h:Ld78;

    .line 3
    invoke-virtual {v3, v0, v1, v2}, Ld78;->b(JLy68;)J

    const-wide/32 v2, 0xafaa8

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x23ab1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x190

    cmp-long v10, v0, v6

    if-gez v10, :cond_0

    add-long v10, v0, v2

    .line 4
    div-long/2addr v10, v4

    sub-long/2addr v10, v2

    mul-long v12, v10, v8

    neg-long v10, v10

    mul-long v10, v10, v4

    add-long/2addr v0, v10

    goto :goto_0

    :cond_0
    move-wide v12, v6

    :goto_0
    mul-long v10, v0, v8

    const-wide/16 v14, 0x24f

    add-long/2addr v10, v14

    .line 5
    div-long/2addr v10, v4

    const-wide/16 v4, 0x16d

    mul-long v14, v10, v4

    const-wide/16 v16, 0x4

    .line 6
    div-long v18, v10, v16

    add-long v18, v18, v14

    const-wide/16 v14, 0x64

    div-long v20, v10, v14

    sub-long v18, v18, v20

    div-long v20, v10, v8

    add-long v20, v20, v18

    sub-long v18, v0, v20

    cmp-long v20, v18, v6

    if-gez v20, :cond_1

    sub-long/2addr v10, v2

    mul-long v4, v4, v10

    .line 7
    div-long v2, v10, v16

    add-long/2addr v2, v4

    div-long v4, v10, v14

    sub-long/2addr v2, v4

    div-long v4, v10, v8

    add-long/2addr v4, v2

    sub-long v18, v0, v4

    :cond_1
    move-wide/from16 v0, v18

    add-long/2addr v10, v12

    long-to-int v1, v0

    mul-int/lit8 v0, v1, 0x5

    add-int/lit8 v0, v0, 0x2

    .line 8
    div-int/lit16 v0, v0, 0x99

    add-int/lit8 v2, v0, 0x2

    .line 9
    rem-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v3, v0, 0x132

    add-int/lit8 v3, v3, 0x5

    .line 10
    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    .line 11
    div-int/lit8 v0, v0, 0xa

    int-to-long v3, v0

    add-long/2addr v10, v3

    .line 12
    sget-object v0, Lq68;->I:Lq68;

    invoke-virtual {v0, v10, v11}, Lq68;->C(J)I

    move-result v0

    .line 13
    new-instance v3, Lp48;

    invoke-direct {v3, v0, v2, v1}, Lp48;-><init>(III)V

    return-object v3
.end method

.method public static k0(III)Lp48;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1e

    .line 1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 2
    :cond_1
    sget-object v0, Lo58;->g:Lo58;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lo58;->M(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3
    :goto_1
    invoke-static {p0, p1, p2}, Lp48;->c0(III)Lp48;

    move-result-object p0

    return-object p0
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

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lw48;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic C(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lp48;->b0(JLb78;)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public D(Ly68;)J
    .locals 4

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lq68;->C:Lq68;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lp48;->Q()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    sget-object v0, Lq68;->G:Lq68;

    if-ne p1, v0, :cond_1

    .line 5
    iget p1, p0, Lp48;->e:I

    int-to-long v0, p1

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short p1, p0, Lp48;->f:S

    add-int/lit8 p1, p1, -0x1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lp48;->W(Ly68;)I

    move-result p1

    int-to-long v0, p1

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
    invoke-virtual {p0, p1, p2, p3}, Lp48;->f0(JLb78;)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public K(Lr48;)Lf58;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq48;->Y(Lp48;Lr48;)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public L(Le58;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lp48;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lp48;

    invoke-virtual {p0, p1}, Lp48;->T(Lp48;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Le58;->L(Le58;)I

    move-result p1

    return p1
.end method

.method public M()Lj58;
    .locals 1

    .line 1
    sget-object v0, Lo58;->g:Lo58;

    return-object v0
.end method

.method public N()Lk58;
    .locals 1

    .line 1
    invoke-super {p0}, Le58;->N()Lk58;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic O(JLb78;)Le58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lp48;->b0(JLb78;)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(JLb78;)Le58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lp48;->f0(JLb78;)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public Q()J
    .locals 12

    .line 1
    iget v0, p0, Lp48;->e:I

    int-to-long v0, v0

    .line 2
    iget-short v2, p0, Lp48;->f:S

    int-to-long v2, v2

    const-wide/16 v4, 0x16d

    mul-long v4, v4, v0

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    cmp-long v8, v0, v6

    if-ltz v8, :cond_0

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    .line 3
    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v0, v8

    const-wide/16 v8, 0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    const-wide/16 v6, -0x4

    .line 4
    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    sub-long v0, v4, v0

    :goto_0
    const-wide/16 v4, 0x16f

    mul-long v4, v4, v2

    const-wide/16 v6, 0x16a

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc

    .line 5
    div-long/2addr v4, v6

    add-long/2addr v4, v0

    .line 6
    iget-short v0, p0, Lp48;->g:S

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v4, v0

    const-wide/16 v0, 0x2

    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    .line 7
    invoke-virtual {p0}, Lp48;->a0()Z

    move-result v2

    if-nez v2, :cond_1

    sub-long/2addr v4, v0

    :cond_1
    const-wide/32 v0, 0xafaa8

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public bridge synthetic R(Lv68;)Le58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lp48;->l0(Lv68;)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Ly68;J)Le58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lp48;->m0(Ly68;J)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public T(Lp48;)I
    .locals 2

    .line 1
    iget v0, p0, Lp48;->e:I

    iget v1, p1, Lp48;->e:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-short v0, p0, Lp48;->f:S

    iget-short v1, p1, Lp48;->f:S

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget-short v0, p0, Lp48;->g:S

    iget-short p1, p1, Lp48;->g:S

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final W(Ly68;)I
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Lq68;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "Field too large for an int: "

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget p1, p0, Lp48;->e:I

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 4
    :pswitch_1
    iget p1, p0, Lp48;->e:I

    return p1

    .line 5
    :pswitch_2
    iget p1, p0, Lp48;->e:I

    if-lt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    return p1

    .line 6
    :pswitch_3
    new-instance v0, Ll48;

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :pswitch_4
    iget-short p1, p0, Lp48;->f:S

    return p1

    .line 8
    :pswitch_5
    invoke-virtual {p0}, Lp48;->Y()I

    move-result p1

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 9
    :pswitch_6
    iget-short p1, p0, Lp48;->g:S

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 10
    :pswitch_7
    new-instance v0, Ll48;

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :pswitch_8
    invoke-virtual {p0}, Lp48;->Y()I

    move-result p1

    return p1

    .line 12
    :pswitch_9
    iget-short p1, p0, Lp48;->g:S

    return p1

    .line 13
    :pswitch_a
    invoke-virtual {p0}, Lp48;->Y()I

    move-result p1

    sub-int/2addr p1, v2

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 14
    :pswitch_b
    iget-short p1, p0, Lp48;->g:S

    sub-int/2addr p1, v2

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v2

    return p1

    .line 15
    :pswitch_c
    invoke-virtual {p0}, Lp48;->X()Lm48;

    move-result-object p1

    invoke-virtual {p1}, Lm48;->K()I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public X()Lm48;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp48;->Q()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lkt7;->h(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {v0}, Lm48;->L(I)Lm48;

    move-result-object v0

    return-object v0
.end method

.method public Y()I
    .locals 2

    .line 1
    iget-short v0, p0, Lp48;->f:S

    invoke-static {v0}, Ls48;->O(I)Ls48;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lp48;->a0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ls48;->K(Z)I

    move-result v0

    iget-short v1, p0, Lp48;->g:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public Z(Le58;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Lp48;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lp48;

    invoke-virtual {p0, p1}, Lp48;->T(Lp48;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lp48;->Q()J

    move-result-wide v3

    invoke-virtual {p1}, Le58;->Q()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public a0()Z
    .locals 3

    .line 1
    sget-object v0, Lo58;->g:Lo58;

    iget v1, p0, Lp48;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lo58;->M(J)Z

    move-result v0

    return v0
.end method

.method public b0(JLb78;)Lp48;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lp48;->f0(JLb78;)Lp48;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lp48;->f0(JLb78;)Lp48;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lp48;->f0(JLb78;)Lp48;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le58;

    invoke-virtual {p0, p1}, Lp48;->L(Le58;)I

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
    instance-of v1, p1, Lp48;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lp48;

    invoke-virtual {p0, p1}, Lp48;->T(Lp48;)I

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

.method public f0(JLb78;)Lp48;
    .locals 2

    .line 1
    instance-of v0, p3, Lr68;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p3

    check-cast v0, Lr68;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Lc78;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported unit: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc78;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    sget-object p3, Lq68;->J:Lq68;

    invoke-virtual {p0, p3}, Lp48;->D(Ly68;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lkt7;->q(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lp48;->m0(Ly68;J)Lp48;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p3, 0x3e8

    .line 6
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lp48;->j0(J)Lp48;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0x64

    .line 7
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lp48;->j0(J)Lp48;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0xa

    .line 8
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lp48;->j0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lp48;->j0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lp48;->h0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lp48;->i0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lp48;->g0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lb78;->k(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lp48;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g0(J)Lp48;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lp48;->Q()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lkt7;->q(JJ)J

    move-result-wide p1

    .line 2
    invoke-static {p1, p2}, Lp48;->e0(J)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public h0(J)Lp48;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lp48;->e:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v4, p0, Lp48;->f:S

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-long/2addr v0, p1

    .line 2
    sget-object p1, Lq68;->I:Lq68;

    invoke-static {v0, v1, v2, v3}, Lkt7;->f(JJ)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lq68;->C(J)I

    move-result p1

    const/16 p2, 0xc

    .line 3
    invoke-static {v0, v1, p2}, Lkt7;->h(JI)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 4
    iget-short v0, p0, Lp48;->g:S

    invoke-static {p1, p2, v0}, Lp48;->k0(III)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lp48;->e:I

    .line 2
    iget-short v1, p0, Lp48;->f:S

    .line 3
    iget-short v2, p0, Lp48;->g:S

    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v0, v0, 0xb

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    xor-int/2addr v0, v3

    return v0
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lp48;->m0(Ly68;J)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public i0(J)Lp48;
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-static {p1, p2, v0}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lp48;->g0(J)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public j0(J)Lp48;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lq68;->I:Lq68;

    iget v1, p0, Lp48;->e:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lq68;->C(J)I

    move-result p1

    .line 2
    iget-short p2, p0, Lp48;->f:S

    iget-short v0, p0, Lp48;->g:S

    invoke-static {p1, p2, v0}, Lp48;->k0(III)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public k(Ly68;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lp48;->W(Ly68;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lp48;->t(Ly68;)Ld78;

    move-result-object v0

    invoke-virtual {p0, p1}, Lp48;->D(Ly68;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ld78;->a(JLy68;)I

    move-result p1

    return p1
.end method

.method public l(Lt68;)Lt68;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le58;->l(Lt68;)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public l0(Lv68;)Lp48;
    .locals 1

    .line 1
    instance-of v0, p1, Lp48;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lp48;

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    check-cast p1, Lp48;

    return-object p1
.end method

.method public m0(Ly68;J)Lp48;
    .locals 4

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    .line 3
    iget-object v1, v0, Lq68;->h:Ld78;

    .line 4
    invoke-virtual {v1, p2, p3, v0}, Ld78;->b(JLy68;)J

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance p2, Lc78;

    const-string p3, "Unsupported field: "

    invoke-static {p3, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :pswitch_0
    sget-object p1, Lq68;->J:Lq68;

    invoke-virtual {p0, p1}, Lp48;->D(Ly68;)J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lp48;->e:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lp48;->o0(I)Lp48;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_1
    long-to-int p1, p2

    .line 8
    invoke-virtual {p0, p1}, Lp48;->o0(I)Lp48;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    iget p1, p0, Lp48;->e:I

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x1

    sub-long p2, v0, p2

    :goto_1
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lp48;->o0(I)Lp48;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lq68;->G:Lq68;

    invoke-virtual {p0, p1}, Lp48;->D(Ly68;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lp48;->h0(J)Lp48;

    move-result-object p1

    return-object p1

    :pswitch_4
    long-to-int p1, p2

    .line 11
    iget-short p2, p0, Lp48;->f:S

    if-ne p2, p1, :cond_2

    move-object p1, p0

    goto :goto_2

    .line 12
    :cond_2
    sget-object p2, Lq68;->F:Lq68;

    int-to-long v0, p1

    .line 13
    iget-object p3, p2, Lq68;->h:Ld78;

    .line 14
    invoke-virtual {p3, v0, v1, p2}, Ld78;->b(JLy68;)J

    .line 15
    iget p2, p0, Lp48;->e:I

    iget-short p3, p0, Lp48;->g:S

    invoke-static {p2, p1, p3}, Lp48;->k0(III)Lp48;

    move-result-object p1

    :goto_2
    return-object p1

    .line 16
    :pswitch_5
    sget-object p1, Lq68;->E:Lq68;

    invoke-virtual {p0, p1}, Lp48;->D(Ly68;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lp48;->i0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_6
    sget-object p1, Lq68;->D:Lq68;

    invoke-virtual {p0, p1}, Lp48;->D(Ly68;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lp48;->i0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_7
    invoke-static {p2, p3}, Lp48;->e0(J)Lp48;

    move-result-object p1

    return-object p1

    :pswitch_8
    long-to-int p1, p2

    .line 19
    invoke-virtual {p0, p1}, Lp48;->n0(I)Lp48;

    move-result-object p1

    return-object p1

    :pswitch_9
    long-to-int p1, p2

    .line 20
    iget-short p2, p0, Lp48;->g:S

    if-ne p2, p1, :cond_3

    move-object p1, p0

    goto :goto_3

    .line 21
    :cond_3
    iget p2, p0, Lp48;->e:I

    iget-short p3, p0, Lp48;->f:S

    invoke-static {p2, p3, p1}, Lp48;->c0(III)Lp48;

    move-result-object p1

    :goto_3
    return-object p1

    .line 22
    :pswitch_a
    sget-object p1, Lq68;->z:Lq68;

    invoke-virtual {p0, p1}, Lp48;->D(Ly68;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lp48;->g0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_b
    sget-object p1, Lq68;->y:Lq68;

    invoke-virtual {p0, p1}, Lp48;->D(Ly68;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lp48;->g0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_c
    invoke-virtual {p0}, Lp48;->X()Lm48;

    move-result-object p1

    invoke-virtual {p1}, Lm48;->K()I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lp48;->g0(J)Lp48;

    move-result-object p1

    return-object p1

    .line 25
    :cond_4
    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lp48;

    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n0(I)Lp48;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lp48;->Y()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lp48;->e:I

    .line 3
    sget-object v1, Lq68;->I:Lq68;

    int-to-long v2, v0

    .line 4
    iget-object v4, v1, Lq68;->h:Ld78;

    .line 5
    invoke-virtual {v4, v2, v3, v1}, Ld78;->b(JLy68;)J

    .line 6
    sget-object v1, Lq68;->B:Lq68;

    int-to-long v4, p1

    .line 7
    iget-object v6, v1, Lq68;->h:Ld78;

    .line 8
    invoke-virtual {v6, v4, v5, v1}, Ld78;->b(JLy68;)J

    .line 9
    sget-object v1, Lo58;->g:Lo58;

    invoke-virtual {v1, v2, v3}, Lo58;->M(J)Z

    move-result v1

    const/16 v2, 0x16e

    if-ne p1, v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ll48;

    const-string v1, "Invalid date \'DayOfYear 366\' as \'"

    const-string v2, "\' is not a leap year"

    invoke-static {v1, v0, v2}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    add-int/lit8 v2, p1, -0x1

    .line 11
    div-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ls48;->O(I)Ls48;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Ls48;->K(Z)I

    move-result v3

    invoke-virtual {v2, v1}, Ls48;->M(Z)I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_3

    const-wide/16 v3, 0x1

    long-to-int v4, v3

    .line 13
    sget-object v3, Ls48;->q:[Ls48;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v4, v4, 0xc

    add-int/2addr v4, v2

    rem-int/lit8 v4, v4, 0xc

    aget-object v2, v3, v4

    .line 14
    :cond_3
    invoke-virtual {v2, v1}, Ls48;->K(Z)I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 15
    invoke-static {v0, v2, p1}, Lp48;->U(ILs48;I)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public o0(I)Lp48;
    .locals 4

    .line 1
    iget v0, p0, Lp48;->e:I

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lq68;->I:Lq68;

    int-to-long v1, p1

    .line 3
    iget-object v3, v0, Lq68;->h:Ld78;

    .line 4
    invoke-virtual {v3, v1, v2, v0}, Ld78;->b(JLy68;)J

    .line 5
    iget-short v0, p0, Lp48;->f:S

    iget-short v1, p0, Lp48;->g:S

    invoke-static {p1, v0, v1}, Lp48;->k0(III)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public t(Ly68;)Ld78;
    .locals 4

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_b

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    .line 3
    invoke-virtual {v0}, Lq68;->i()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x12

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x13

    if-eq v0, v1, :cond_4

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    .line 5
    invoke-interface {p1}, Ly68;->w()Ld78;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget p1, p0, Lp48;->e:I

    if-gtz p1, :cond_1

    const-wide/32 v0, 0x3b9aca00

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x3b9ac9ff

    .line 7
    :goto_0
    invoke-static {v2, v3, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    iget-short p1, p0, Lp48;->f:S

    invoke-static {p1}, Ls48;->O(I)Ls48;

    move-result-object p1

    .line 9
    sget-object v0, Ls48;->f:Ls48;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lp48;->a0()Z

    move-result p1

    if-nez p1, :cond_3

    const-wide/16 v0, 0x4

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x5

    :goto_1
    invoke-static {v2, v3, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-virtual {p0}, Lp48;->a0()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x16e

    goto :goto_2

    :cond_5
    const/16 p1, 0x16d

    :goto_2
    int-to-long v0, p1

    .line 11
    invoke-static {v2, v3, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 12
    :cond_6
    iget-short p1, p0, Lp48;->f:S

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/4 v0, 0x6

    if-eq p1, v0, :cond_7

    const/16 v0, 0x9

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb

    if-eq p1, v0, :cond_7

    const/16 p1, 0x1f

    goto :goto_3

    :cond_7
    const/16 p1, 0x1e

    goto :goto_3

    .line 13
    :cond_8
    invoke-virtual {p0}, Lp48;->a0()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x1d

    goto :goto_3

    :cond_9
    const/16 p1, 0x1c

    :goto_3
    int-to-long v0, p1

    .line 14
    invoke-static {v2, v3, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 15
    :cond_a
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_b
    invoke-interface {p1, p0}, Ly68;->t(Lu68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lp48;->e:I

    .line 2
    iget-short v1, p0, Lp48;->f:S

    .line 3
    iget-short v2, p0, Lp48;->g:S

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x3e8

    if-ge v3, v6, :cond_1

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, -0x2710

    .line 6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x2710

    .line 7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v3, 0x270f

    if-le v0, v3, :cond_2

    const/16 v3, 0x2b

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "-0"

    const-string v3, "-"

    if-ge v1, v5, :cond_3

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, v3

    .line 10
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v2, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v3

    .line 12
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    return-object p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Le58;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Lv68;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lp48;->l0(Lv68;)Lp48;

    move-result-object p1

    return-object p1
.end method

.method public y(Ly68;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le58;->y(Ly68;)Z

    move-result p1

    return p1
.end method
