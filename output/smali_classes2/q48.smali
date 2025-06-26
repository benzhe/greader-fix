.class public final Lq48;
.super Lf58;
.source "SourceFile"

# interfaces
.implements Lt68;
.implements Lv68;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf58<",
        "Lp48;",
        ">;",
        "Lt68;",
        "Lv68;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final g:Lq48;

.field public static final h:Lq48;


# instance fields
.field public final e:Lp48;

.field public final f:Lr48;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lp48;->h:Lp48;

    sget-object v1, Lr48;->i:Lr48;

    invoke-static {v0, v1}, Lq48;->Y(Lp48;Lr48;)Lq48;

    move-result-object v0

    sput-object v0, Lq48;->g:Lq48;

    .line 2
    sget-object v0, Lp48;->i:Lp48;

    sget-object v1, Lr48;->j:Lr48;

    invoke-static {v0, v1}, Lq48;->Y(Lp48;Lr48;)Lq48;

    move-result-object v0

    sput-object v0, Lq48;->h:Lq48;

    return-void
.end method

.method public constructor <init>(Lp48;Lr48;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf58;-><init>()V

    .line 2
    iput-object p1, p0, Lq48;->e:Lp48;

    .line 3
    iput-object p2, p0, Lq48;->f:Lr48;

    return-void
.end method

.method public static V(Lu68;)Lq48;
    .locals 3

    .line 1
    instance-of v0, p0, Lq48;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lq48;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lc58;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lc58;

    .line 5
    iget-object p0, p0, Lc58;->e:Lq48;

    return-object p0

    .line 6
    :cond_1
    :try_start_0
    invoke-static {p0}, Lp48;->V(Lu68;)Lp48;

    move-result-object v0

    .line 7
    invoke-static {p0}, Lr48;->M(Lu68;)Lr48;

    move-result-object v1

    .line 8
    new-instance v2, Lq48;

    invoke-direct {v2, v0, v1}, Lq48;-><init>(Lp48;Lr48;)V
    :try_end_0
    .catch Ll48; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 9
    :catch_0
    new-instance v0, Ll48;

    const-string v1, "Unable to obtain LocalDateTime from TemporalAccessor: "

    const-string v2, ", type "

    invoke-static {v1, p0, v2}, Ljo;->D(Ljava/lang/String;Lu68;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-static {p0, v1}, Ljo;->u(Lu68;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static Y(Lp48;Lr48;)Lq48;
    .locals 1

    const-string v0, "date"

    .line 1
    invoke-static {p0, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    .line 2
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lq48;

    invoke-direct {v0, p0, p1}, Lq48;-><init>(Lp48;Lr48;)V

    return-object v0
.end method

.method public static Z(JILa58;)Lq48;
    .locals 4

    const-string v0, "offset"

    .line 1
    invoke-static {p3, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget p3, p3, La58;->f:I

    int-to-long v0, p3

    add-long/2addr p0, v0

    const-wide/32 v0, 0x15180

    .line 3
    invoke-static {p0, p1, v0, v1}, Lkt7;->f(JJ)J

    move-result-wide v0

    const p3, 0x15180

    .line 4
    invoke-static {p0, p1, p3}, Lkt7;->h(JI)I

    move-result p0

    .line 5
    invoke-static {v0, v1}, Lp48;->e0(J)Lp48;

    move-result-object p1

    int-to-long v0, p0

    .line 6
    sget-object p0, Lr48;->i:Lr48;

    .line 7
    sget-object p0, Lq68;->p:Lq68;

    .line 8
    iget-object p3, p0, Lq68;->h:Ld78;

    .line 9
    invoke-virtual {p3, v0, v1, p0}, Ld78;->b(JLy68;)J

    .line 10
    sget-object p0, Lq68;->i:Lq68;

    int-to-long v2, p2

    .line 11
    iget-object p3, p0, Lq68;->h:Ld78;

    .line 12
    invoke-virtual {p3, v2, v3, p0}, Ld78;->b(JLy68;)J

    const-wide/16 v2, 0xe10

    .line 13
    div-long v2, v0, v2

    long-to-int p0, v2

    mul-int/lit16 p3, p0, 0xe10

    int-to-long v2, p3

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    .line 14
    div-long v2, v0, v2

    long-to-int p3, v2

    mul-int/lit8 v2, p3, 0x3c

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 15
    invoke-static {p0, p3, v1, p2}, Lr48;->L(IIII)Lr48;

    move-result-object p0

    .line 16
    new-instance p2, Lq48;

    invoke-direct {p2, p1, p0}, Lq48;-><init>(Lp48;Lr48;)V

    return-object p2
.end method

.method public static f0(Ljava/io/DataInput;)Lq48;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lp48;->h:Lp48;

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 4
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 5
    invoke-static {v0, v1, v2}, Lp48;->c0(III)Lp48;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lr48;->U(Ljava/io/DataInput;)Lr48;

    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Lq48;->Y(Lp48;Lr48;)Lq48;

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

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lw48;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic C(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lq48;->X(JLb78;)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public D(Ly68;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ly68;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq48;->f:Lr48;

    invoke-virtual {v0, p1}, Lr48;->D(Ly68;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq48;->e:Lp48;

    invoke-virtual {v0, p1}, Lp48;->D(Ly68;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lq48;->a0(JLb78;)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public K(Lz48;)Lh58;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lc58;->Y(Lq48;Lz48;La58;)Lc58;

    move-result-object p1

    return-object p1
.end method

.method public L(Lf58;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf58<",
            "*>;)I"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lq48;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lq48;

    invoke-virtual {p0, p1}, Lq48;->U(Lq48;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lf58;->L(Lf58;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic N(JLb78;)Lf58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lq48;->X(JLb78;)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic O(JLb78;)Lf58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lq48;->a0(JLb78;)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public Q()Le58;
    .locals 1

    .line 1
    iget-object v0, p0, Lq48;->e:Lp48;

    return-object v0
.end method

.method public R()Lr48;
    .locals 1

    .line 1
    iget-object v0, p0, Lq48;->f:Lr48;

    return-object v0
.end method

.method public bridge synthetic S(Lv68;)Lf58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lq48;->h0(Lv68;)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Ly68;J)Lf58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lq48;->i0(Ly68;J)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public final U(Lq48;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq48;->e:Lp48;

    .line 2
    iget-object v1, p1, Lq48;->e:Lp48;

    .line 3
    invoke-virtual {v0, v1}, Lp48;->T(Lp48;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lq48;->f:Lr48;

    .line 5
    iget-object p1, p1, Lq48;->f:Lr48;

    .line 6
    invoke-virtual {v0, p1}, Lr48;->K(Lr48;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public W(Lf58;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf58<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lq48;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lq48;

    invoke-virtual {p0, p1}, Lq48;->U(Lq48;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lq48;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->Q()J

    move-result-wide v3

    .line 4
    invoke-virtual {p1}, Lf58;->Q()Le58;

    move-result-object v0

    invoke-virtual {v0}, Le58;->Q()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lq48;->R()Lr48;

    move-result-object v0

    invoke-virtual {v0}, Lr48;->V()J

    move-result-wide v3

    invoke-virtual {p1}, Lf58;->R()Lr48;

    move-result-object p1

    invoke-virtual {p1}, Lr48;->V()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public X(JLb78;)Lq48;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lq48;->a0(JLb78;)Lq48;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lq48;->a0(JLb78;)Lq48;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lq48;->a0(JLb78;)Lq48;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a0(JLb78;)Lq48;
    .locals 23

    move-object/from16 v11, p0

    move-wide/from16 v4, p1

    move-object/from16 v0, p3

    .line 1
    instance-of v1, v0, Lr68;

    if-eqz v1, :cond_0

    .line 2
    move-object v1, v0

    check-cast v1, Lr68;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4
    iget-object v1, v11, Lq48;->e:Lp48;

    invoke-virtual {v1, v4, v5, v0}, Lp48;->f0(JLb78;)Lp48;

    move-result-object v0

    iget-object v1, v11, Lq48;->f:Lr48;

    invoke-virtual {v11, v0, v1}, Lq48;->g0(Lp48;Lr48;)Lq48;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-wide/16 v0, 0x100

    .line 5
    div-long v2, v4, v0

    invoke-virtual {v11, v2, v3}, Lq48;->b0(J)Lq48;

    move-result-object v12

    rem-long v0, v4, v0

    const-wide/16 v2, 0xc

    mul-long v14, v0, v2

    .line 6
    iget-object v13, v12, Lq48;->e:Lp48;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v12 .. v22}, Lq48;->e0(Lp48;JJJJI)Lq48;

    move-result-object v0

    return-object v0

    .line 7
    :pswitch_1
    iget-object v1, v11, Lq48;->e:Lp48;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v12

    invoke-virtual/range {v0 .. v10}, Lq48;->e0(Lp48;JJJJI)Lq48;

    move-result-object v0

    return-object v0

    .line 8
    :pswitch_2
    iget-object v1, v11, Lq48;->e:Lp48;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    invoke-virtual/range {v0 .. v10}, Lq48;->e0(Lp48;JJJJI)Lq48;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lq48;->d0(J)Lq48;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 10
    div-long v2, v4, v0

    invoke-virtual {v11, v2, v3}, Lq48;->b0(J)Lq48;

    move-result-object v2

    rem-long v0, v4, v0

    const-wide/32 v3, 0xf4240

    mul-long v0, v0, v3

    invoke-virtual {v2, v0, v1}, Lq48;->c0(J)Lq48;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 11
    div-long v2, v4, v0

    invoke-virtual {v11, v2, v3}, Lq48;->b0(J)Lq48;

    move-result-object v2

    rem-long v0, v4, v0

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-virtual {v2, v0, v1}, Lq48;->c0(J)Lq48;

    move-result-object v0

    return-object v0

    .line 12
    :pswitch_6
    invoke-virtual/range {p0 .. p2}, Lq48;->c0(J)Lq48;

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    invoke-interface {v0, v11, v4, v5}, Lb78;->k(Lt68;J)Lt68;

    move-result-object v0

    check-cast v0, Lq48;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b0(J)Lq48;
    .locals 1

    .line 1
    iget-object v0, p0, Lq48;->e:Lp48;

    invoke-virtual {v0, p1, p2}, Lp48;->g0(J)Lp48;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lq48;->f:Lr48;

    invoke-virtual {p0, p1, p2}, Lq48;->g0(Lp48;Lr48;)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public c0(J)Lq48;
    .locals 11

    .line 1
    iget-object v1, p0, Lq48;->e:Lp48;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v8, p1

    invoke-virtual/range {v0 .. v10}, Lq48;->e0(Lp48;JJJJI)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lf58;

    invoke-virtual {p0, p1}, Lq48;->L(Lf58;)I

    move-result p1

    return p1
.end method

.method public d0(J)Lq48;
    .locals 11

    .line 1
    iget-object v1, p0, Lq48;->e:Lp48;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v6, p1

    invoke-virtual/range {v0 .. v10}, Lq48;->e0(Lp48;JJJJI)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public final e0(Lp48;JJJJI)Lq48;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1
    iget-object v2, v0, Lq48;->f:Lr48;

    invoke-virtual {v0, v1, v2}, Lq48;->g0(Lp48;Lr48;)Lq48;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide v2, 0x4e94914f0000L

    .line 2
    div-long v4, p8, v2

    const-wide/32 v6, 0x15180

    div-long v8, p6, v6

    add-long/2addr v8, v4

    const-wide/16 v4, 0x5a0

    div-long v10, p4, v4

    add-long/2addr v10, v8

    const-wide/16 v8, 0x18

    div-long v12, p2, v8

    add-long/2addr v12, v10

    move/from16 v10, p10

    int-to-long v10, v10

    mul-long v12, v12, v10

    .line 3
    rem-long v14, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v16, 0x3b9aca00

    mul-long v6, v6, v16

    add-long/2addr v6, v14

    rem-long v4, p4, v4

    const-wide v14, 0xdf8475800L

    mul-long v4, v4, v14

    add-long/2addr v4, v6

    rem-long v6, p2, v8

    const-wide v8, 0x34630b8a000L

    mul-long v6, v6, v8

    add-long/2addr v6, v4

    .line 4
    iget-object v4, v0, Lq48;->f:Lr48;

    invoke-virtual {v4}, Lr48;->V()J

    move-result-wide v4

    mul-long v6, v6, v10

    add-long/2addr v6, v4

    .line 5
    invoke-static {v6, v7, v2, v3}, Lkt7;->f(JJ)J

    move-result-wide v8

    add-long/2addr v8, v12

    .line 6
    invoke-static {v6, v7, v2, v3}, Lkt7;->i(JJ)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 7
    iget-object v2, v0, Lq48;->f:Lr48;

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lr48;->O(J)Lr48;

    move-result-object v2

    .line 8
    :goto_0
    invoke-virtual {v1, v8, v9}, Lp48;->g0(J)Lp48;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lq48;->g0(Lp48;Lr48;)Lq48;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lq48;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lq48;

    .line 3
    iget-object v1, p0, Lq48;->e:Lp48;

    iget-object v3, p1, Lq48;->e:Lp48;

    invoke-virtual {v1, v3}, Lp48;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq48;->f:Lr48;

    iget-object p1, p1, Lq48;->f:Lr48;

    invoke-virtual {v1, p1}, Lr48;->equals(Ljava/lang/Object;)Z

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

.method public final g0(Lp48;Lr48;)Lq48;
    .locals 1

    .line 1
    iget-object v0, p0, Lq48;->e:Lp48;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lq48;->f:Lr48;

    if-ne v0, p2, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lq48;

    invoke-direct {v0, p1, p2}, Lq48;-><init>(Lp48;Lr48;)V

    return-object v0
.end method

.method public h0(Lv68;)Lq48;
    .locals 1

    .line 1
    instance-of v0, p1, Lp48;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lp48;

    iget-object v0, p0, Lq48;->f:Lr48;

    invoke-virtual {p0, p1, v0}, Lq48;->g0(Lp48;Lr48;)Lq48;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lr48;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lq48;->e:Lp48;

    check-cast p1, Lr48;

    invoke-virtual {p0, v0, p1}, Lq48;->g0(Lp48;Lr48;)Lq48;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Lq48;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lq48;

    return-object p1

    .line 7
    :cond_2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    check-cast p1, Lq48;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lq48;->e:Lp48;

    invoke-virtual {v0}, Lp48;->hashCode()I

    move-result v0

    iget-object v1, p0, Lq48;->f:Lr48;

    invoke-virtual {v1}, Lr48;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lq48;->i0(Ly68;J)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public i0(Ly68;J)Lq48;
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ly68;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lq48;->e:Lp48;

    iget-object v1, p0, Lq48;->f:Lr48;

    invoke-virtual {v1, p1, p2, p3}, Lr48;->X(Ly68;J)Lr48;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lq48;->g0(Lp48;Lr48;)Lq48;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lq48;->e:Lp48;

    invoke-virtual {v0, p1, p2, p3}, Lp48;->m0(Ly68;J)Lp48;

    move-result-object p1

    iget-object p2, p0, Lq48;->f:Lr48;

    invoke-virtual {p0, p1, p2}, Lq48;->g0(Lp48;Lr48;)Lq48;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lq48;

    return-object p1
.end method

.method public j0(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq48;->e:Lp48;

    .line 2
    iget v1, v0, Lp48;->e:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 3
    iget-short v1, v0, Lp48;->f:S

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 4
    iget-short v0, v0, Lp48;->g:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 5
    iget-object v0, p0, Lq48;->f:Lr48;

    invoke-virtual {v0, p1}, Lr48;->a0(Ljava/io/DataOutput;)V

    return-void
.end method

.method public k(Ly68;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ly68;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq48;->f:Lr48;

    invoke-virtual {v0, p1}, Lr48;->k(Ly68;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq48;->e:Lp48;

    invoke-virtual {v0, p1}, Lp48;->k(Ly68;)I

    move-result p1

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lp68;->k(Ly68;)I

    move-result p1

    return p1
.end method

.method public l(Lt68;)Lt68;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf58;->l(Lt68;)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public t(Ly68;)Ld78;
    .locals 1

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ly68;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq48;->f:Lr48;

    invoke-virtual {v0, p1}, Lr48;->t(Ly68;)Ld78;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq48;->e:Lp48;

    invoke-virtual {v0, p1}, Lp48;->t(Ly68;)Ld78;

    move-result-object p1

    :goto_0
    return-object p1

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Ly68;->t(Lu68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq48;->e:Lp48;

    invoke-virtual {v1}, Lp48;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq48;->f:Lr48;

    invoke-virtual {v1}, Lr48;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 2
    iget-object p1, p0, Lq48;->e:Lp48;

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lf58;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Lv68;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lq48;->h0(Lv68;)Lq48;

    move-result-object p1

    return-object p1
.end method

.method public y(Ly68;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lq68;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Ly68;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ly68;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1, p0}, Ly68;->k(Lu68;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
