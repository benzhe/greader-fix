.class public final Lg58;
.super Lf58;
.source "SourceFile"

# interfaces
.implements Lt68;
.implements Lv68;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Le58;",
        ">",
        "Lf58<",
        "TD;>;",
        "Lt68;",
        "Lv68;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final e:Le58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field public final f:Lr48;


# direct methods
.method public constructor <init>(Le58;Lr48;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lr48;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf58;-><init>()V

    const-string v0, "date"

    .line 2
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    .line 3
    invoke-static {p2, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lg58;->e:Le58;

    .line 5
    iput-object p2, p0, Lg58;->f:Lr48;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lw58;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lw58;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public D(Ly68;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ly68;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg58;->f:Lr48;

    invoke-virtual {v0, p1}, Lr48;->D(Ly68;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg58;->e:Le58;

    invoke-interface {v0, p1}, Lu68;->D(Ly68;)J

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
    invoke-virtual {p0, p1, p2, p3}, Lg58;->U(JLb78;)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public K(Lz48;)Lh58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz48;",
            ")",
            "Lh58<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Li58;->W(Lg58;Lz48;La58;)Lh58;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic O(JLb78;)Lf58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lg58;->U(JLb78;)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public Q()Le58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg58;->e:Le58;

    return-object v0
.end method

.method public R()Lr48;
    .locals 1

    .line 1
    iget-object v0, p0, Lg58;->f:Lr48;

    return-object v0
.end method

.method public bridge synthetic S(Lv68;)Lf58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg58;->Z(Lv68;)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Ly68;J)Lf58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lg58;->a0(Ly68;J)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public U(JLb78;)Lg58;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lb78;",
            ")",
            "Lg58<",
            "TD;>;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-wide/from16 v6, p1

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
    iget-object v1, v10, Lg58;->e:Le58;

    invoke-virtual {v1, v6, v7, v0}, Le58;->P(JLb78;)Le58;

    move-result-object v0

    iget-object v1, v10, Lg58;->f:Lr48;

    invoke-virtual {v10, v0, v1}, Lg58;->Y(Lt68;Lr48;)Lg58;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-wide/16 v0, 0x100

    .line 5
    div-long v2, v6, v0

    invoke-virtual {v10, v2, v3}, Lg58;->V(J)Lg58;

    move-result-object v11

    rem-long v0, v6, v0

    const-wide/16 v2, 0xc

    mul-long v13, v0, v2

    .line 6
    iget-object v12, v11, Lg58;->e:Le58;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v11 .. v20}, Lg58;->X(Le58;JJJJ)Lg58;

    move-result-object v0

    return-object v0

    .line 7
    :pswitch_1
    iget-object v1, v10, Lg58;->e:Le58;

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide v6, v8

    move-wide v8, v11

    invoke-virtual/range {v0 .. v9}, Lg58;->X(Le58;JJJJ)Lg58;

    move-result-object v0

    return-object v0

    .line 8
    :pswitch_2
    iget-object v1, v10, Lg58;->e:Le58;

    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    move-wide v6, v8

    move-wide v8, v11

    invoke-virtual/range {v0 .. v9}, Lg58;->X(Le58;JJJJ)Lg58;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_3
    iget-object v1, v10, Lg58;->e:Le58;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v6, p1

    invoke-virtual/range {v0 .. v9}, Lg58;->X(Le58;JJJJ)Lg58;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 10
    div-long v2, v6, v0

    invoke-virtual {v10, v2, v3}, Lg58;->V(J)Lg58;

    move-result-object v2

    rem-long v0, v6, v0

    const-wide/32 v3, 0xf4240

    mul-long v0, v0, v3

    invoke-virtual {v2, v0, v1}, Lg58;->W(J)Lg58;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 11
    div-long v2, v6, v0

    invoke-virtual {v10, v2, v3}, Lg58;->V(J)Lg58;

    move-result-object v2

    rem-long v0, v6, v0

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-virtual {v2, v0, v1}, Lg58;->W(J)Lg58;

    move-result-object v0

    return-object v0

    .line 12
    :pswitch_6
    invoke-virtual/range {p0 .. p2}, Lg58;->W(J)Lg58;

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    iget-object v1, v10, Lg58;->e:Le58;

    invoke-virtual {v1}, Le58;->M()Lj58;

    move-result-object v1

    invoke-interface {v0, v10, v6, v7}, Lb78;->k(Lt68;J)Lt68;

    move-result-object v0

    invoke-virtual {v1, v0}, Lj58;->t(Lt68;)Lg58;

    move-result-object v0

    return-object v0

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

.method public final V(J)Lg58;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lg58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg58;->e:Le58;

    sget-object v1, Lr68;->m:Lr68;

    invoke-virtual {v0, p1, p2, v1}, Le58;->P(JLb78;)Le58;

    move-result-object p1

    iget-object p2, p0, Lg58;->f:Lr48;

    invoke-virtual {p0, p1, p2}, Lg58;->Y(Lt68;Lr48;)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public final W(J)Lg58;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lg58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lg58;->e:Le58;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v8, p1

    invoke-virtual/range {v0 .. v9}, Lg58;->X(Le58;JJJJ)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public final X(Le58;JJJJ)Lg58;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Lg58<",
            "TD;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1
    iget-object v2, v0, Lg58;->f:Lr48;

    invoke-virtual {v0, v1, v2}, Lg58;->Y(Lt68;Lr48;)Lg58;

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

    .line 3
    rem-long v10, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v14, 0x3b9aca00

    mul-long v6, v6, v14

    add-long/2addr v6, v10

    rem-long v4, p4, v4

    const-wide v10, 0xdf8475800L

    mul-long v4, v4, v10

    add-long/2addr v4, v6

    rem-long v6, p2, v8

    const-wide v8, 0x34630b8a000L

    mul-long v6, v6, v8

    add-long/2addr v6, v4

    .line 4
    iget-object v4, v0, Lg58;->f:Lr48;

    invoke-virtual {v4}, Lr48;->V()J

    move-result-wide v4

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
    iget-object v2, v0, Lg58;->f:Lr48;

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lr48;->O(J)Lr48;

    move-result-object v2

    .line 8
    :goto_0
    sget-object v3, Lr68;->m:Lr68;

    invoke-virtual {v1, v8, v9, v3}, Le58;->P(JLb78;)Le58;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lg58;->Y(Lt68;Lr48;)Lg58;

    move-result-object v1

    return-object v1
.end method

.method public final Y(Lt68;Lr48;)Lg58;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt68;",
            "Lr48;",
            ")",
            "Lg58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg58;->e:Le58;

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lg58;->f:Lr48;

    if-ne v1, p2, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj58;->l(Lt68;)Le58;

    move-result-object p1

    .line 3
    new-instance v0, Lg58;

    invoke-direct {v0, p1, p2}, Lg58;-><init>(Le58;Lr48;)V

    return-object v0
.end method

.method public Z(Lv68;)Lg58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv68;",
            ")",
            "Lg58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Le58;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le58;

    iget-object v0, p0, Lg58;->f:Lr48;

    invoke-virtual {p0, p1, v0}, Lg58;->Y(Lt68;Lr48;)Lg58;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lr48;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lg58;->e:Le58;

    check-cast p1, Lr48;

    invoke-virtual {p0, v0, p1}, Lg58;->Y(Lt68;Lr48;)Lg58;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Lg58;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lg58;->e:Le58;

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    check-cast p1, Lg58;

    invoke-virtual {v0, p1}, Lj58;->t(Lt68;)Lg58;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    iget-object v0, p0, Lg58;->e:Le58;

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    check-cast p1, Lg58;

    invoke-virtual {v0, p1}, Lj58;->t(Lt68;)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public a0(Ly68;J)Lg58;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly68;",
            "J)",
            "Lg58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ly68;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lg58;->e:Le58;

    iget-object v1, p0, Lg58;->f:Lr48;

    invoke-virtual {v1, p1, p2, p3}, Lr48;->X(Ly68;J)Lr48;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lg58;->Y(Lt68;Lr48;)Lg58;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lg58;->e:Le58;

    invoke-virtual {v0, p1, p2, p3}, Le58;->S(Ly68;J)Le58;

    move-result-object p1

    iget-object p2, p0, Lg58;->f:Lr48;

    invoke-virtual {p0, p1, p2}, Lg58;->Y(Lt68;Lr48;)Lg58;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lg58;->e:Le58;

    invoke-virtual {v0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj58;->t(Lt68;)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lg58;->a0(Ly68;J)Lg58;

    move-result-object p1

    return-object p1
.end method

.method public k(Ly68;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ly68;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg58;->f:Lr48;

    invoke-virtual {v0, p1}, Lr48;->k(Ly68;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg58;->e:Le58;

    invoke-virtual {v0, p1}, Lp68;->k(Ly68;)I

    move-result p1

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lg58;->t(Ly68;)Ld78;

    move-result-object v0

    invoke-virtual {p0, p1}, Lg58;->D(Ly68;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ld78;->a(JLy68;)I

    move-result p1

    return p1
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

    iget-object v0, p0, Lg58;->f:Lr48;

    invoke-virtual {v0, p1}, Lr48;->t(Ly68;)Ld78;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg58;->e:Le58;

    invoke-virtual {v0, p1}, Lp68;->t(Ly68;)Ld78;

    move-result-object p1

    :goto_0
    return-object p1

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Ly68;->t(Lu68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Lv68;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg58;->Z(Lv68;)Lg58;

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
