.class public final Lu58;
.super Ld58;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld58<",
        "Lu58;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final e:Lp48;


# direct methods
.method public constructor <init>(Lp48;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld58;-><init>()V

    const-string v0, "date"

    .line 2
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lu58;->e:Lp48;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lw58;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lw58;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public C(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Le58;->O(JLb78;)Le58;

    move-result-object p1

    check-cast p1, Lu58;

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

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lu58;->e:Lp48;

    invoke-virtual {v0, p1}, Lp48;->D(Ly68;)J

    move-result-wide v0

    return-wide v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lu58;->Y()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-long v0, v1

    return-wide v0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Lu58;->Y()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 6
    :pswitch_2
    invoke-virtual {p0}, Lu58;->X()J

    move-result-wide v0

    return-wide v0

    .line 7
    :pswitch_3
    invoke-virtual {p0}, Lu58;->Y()I

    move-result p1

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    .line 8
    :cond_2
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    check-cast p1, Lu58;

    return-object p1
.end method

.method public final K(Lr48;)Lf58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr48;",
            ")",
            "Lf58<",
            "Lu58;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg58;

    invoke-direct {v0, p0, p1}, Lg58;-><init>(Le58;Lr48;)V

    return-object v0
.end method

.method public M()Lj58;
    .locals 1

    .line 1
    sget-object v0, Lt58;->g:Lt58;

    return-object v0
.end method

.method public N()Lk58;
    .locals 1

    .line 1
    invoke-super {p0}, Le58;->N()Lk58;

    move-result-object v0

    check-cast v0, Lv58;

    return-object v0
.end method

.method public O(JLb78;)Le58;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Le58;->O(JLb78;)Le58;

    move-result-object p1

    check-cast p1, Lu58;

    return-object p1
.end method

.method public P(JLb78;)Le58;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    check-cast p1, Lu58;

    return-object p1
.end method

.method public Q()J
    .locals 2

    .line 1
    iget-object v0, p0, Lu58;->e:Lp48;

    invoke-virtual {v0}, Lp48;->Q()J

    move-result-wide v0

    return-wide v0
.end method

.method public R(Lv68;)Le58;
    .locals 1

    .line 1
    sget-object v0, Lt58;->g:Lt58;

    .line 2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lj58;->l(Lt68;)Le58;

    move-result-object p1

    .line 4
    check-cast p1, Lu58;

    return-object p1
.end method

.method public bridge synthetic S(Ly68;J)Le58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lu58;->a0(Ly68;J)Lu58;

    move-result-object p1

    return-object p1
.end method

.method public T(JLb78;)Ld58;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    check-cast p1, Lu58;

    return-object p1
.end method

.method public U(J)Ld58;
    .locals 1

    .line 1
    iget-object v0, p0, Lu58;->e:Lp48;

    invoke-virtual {v0, p1, p2}, Lp48;->g0(J)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu58;->Z(Lp48;)Lu58;

    move-result-object p1

    return-object p1
.end method

.method public V(J)Ld58;
    .locals 1

    .line 1
    iget-object v0, p0, Lu58;->e:Lp48;

    invoke-virtual {v0, p1, p2}, Lp48;->h0(J)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu58;->Z(Lp48;)Lu58;

    move-result-object p1

    return-object p1
.end method

.method public W(J)Ld58;
    .locals 1

    .line 1
    iget-object v0, p0, Lu58;->e:Lp48;

    invoke-virtual {v0, p1, p2}, Lp48;->j0(J)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu58;->Z(Lp48;)Lu58;

    move-result-object p1

    return-object p1
.end method

.method public final X()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lu58;->Y()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-object v2, p0, Lu58;->e:Lp48;

    .line 2
    iget-short v2, v2, Lp48;->f:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final Y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu58;->e:Lp48;

    .line 2
    iget v0, v0, Lp48;->e:I

    add-int/lit16 v0, v0, -0x777

    return v0
.end method

.method public final Z(Lp48;)Lu58;
    .locals 1

    .line 1
    iget-object v0, p0, Lu58;->e:Lp48;

    invoke-virtual {p1, v0}, Lp48;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lu58;

    invoke-direct {v0, p1}, Lu58;-><init>(Lp48;)V

    :goto_0
    return-object v0
.end method

.method public a0(Ly68;J)Lu58;
    .locals 4

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    .line 3
    invoke-virtual {p0, v0}, Lu58;->D(Ly68;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    sget-object v1, Lt58;->g:Lt58;

    .line 6
    invoke-virtual {v1, v0}, Lt58;->M(Lq68;)Ld78;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Ld78;->a(JLy68;)I

    move-result v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 8
    :pswitch_1
    iget-object p1, p0, Lu58;->e:Lp48;

    invoke-virtual {p0}, Lu58;->Y()I

    move-result p2

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x777

    invoke-virtual {p1, v2}, Lp48;->o0(I)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu58;->Z(Lp48;)Lu58;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    iget-object p1, p0, Lu58;->e:Lp48;

    add-int/lit16 v1, v1, 0x777

    invoke-virtual {p1, v1}, Lp48;->o0(I)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu58;->Z(Lp48;)Lu58;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_3
    iget-object p1, p0, Lu58;->e:Lp48;

    invoke-virtual {p0}, Lu58;->Y()I

    move-result p2

    if-lt p2, v2, :cond_1

    add-int/lit16 v1, v1, 0x777

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v1

    add-int/lit16 v1, v2, 0x777

    :goto_0
    invoke-virtual {p1, v1}, Lp48;->o0(I)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu58;->Z(Lp48;)Lu58;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_4
    sget-object p1, Lt58;->g:Lt58;

    .line 12
    invoke-virtual {p1, v0}, Lt58;->M(Lq68;)Ld78;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Ld78;->b(JLy68;)J

    .line 13
    invoke-virtual {p0}, Lu58;->X()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 14
    iget-object p1, p0, Lu58;->e:Lp48;

    invoke-virtual {p1, p2, p3}, Lp48;->h0(J)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu58;->Z(Lp48;)Lu58;

    move-result-object p1

    return-object p1

    .line 15
    :goto_1
    iget-object v0, p0, Lu58;->e:Lp48;

    invoke-virtual {v0, p1, p2, p3}, Lp48;->m0(Ly68;J)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu58;->Z(Lp48;)Lu58;

    move-result-object p1

    return-object p1

    .line 16
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lu58;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lu58;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lu58;

    .line 3
    iget-object v0, p0, Lu58;->e:Lp48;

    iget-object p1, p1, Lu58;->e:Lp48;

    invoke-virtual {v0, p1}, Lp48;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    sget-object v0, Lt58;->g:Lt58;

    const v0, -0x769fa231

    .line 2
    iget-object v1, p0, Lu58;->e:Lp48;

    invoke-virtual {v1}, Lp48;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lu58;->a0(Ly68;J)Lu58;

    move-result-object p1

    return-object p1
.end method

.method public t(Ly68;)Ld78;
    .locals 7

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0, p1}, Le58;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lq68;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    const/16 v2, 0x13

    if-eq v1, v2, :cond_2

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    const/16 p1, 0x19

    if-eq v1, p1, :cond_0

    .line 5
    sget-object p1, Lt58;->g:Lt58;

    .line 6
    invoke-virtual {p1, v0}, Lt58;->M(Lq68;)Ld78;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    sget-object p1, Lq68;->I:Lq68;

    .line 8
    iget-object p1, p1, Lq68;->h:Ld78;

    .line 9
    invoke-virtual {p0}, Lu58;->Y()I

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x777

    if-gtz v0, :cond_1

    .line 10
    iget-wide v5, p1, Ld78;->e:J

    neg-long v5, v5

    add-long/2addr v5, v1

    add-long/2addr v5, v3

    goto :goto_0

    .line 11
    :cond_1
    iget-wide v5, p1, Ld78;->h:J

    sub-long/2addr v5, v3

    .line 12
    :goto_0
    invoke-static {v1, v2, v5, v6}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    iget-object v0, p0, Lu58;->e:Lp48;

    invoke-virtual {v0, p1}, Lp48;->t(Ly68;)Ld78;

    move-result-object p1

    return-object p1

    .line 14
    :cond_3
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    invoke-interface {p1, p0}, Ly68;->t(Lu68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public x(Lv68;)Lt68;
    .locals 1

    .line 1
    sget-object v0, Lt58;->g:Lt58;

    .line 2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lj58;->l(Lt68;)Le58;

    move-result-object p1

    .line 4
    check-cast p1, Lu58;

    return-object p1
.end method
