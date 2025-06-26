.class public final Lr58;
.super Ld58;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld58<",
        "Lr58;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final h:Lp48;


# instance fields
.field public final e:Lp48;

.field public transient f:Ls58;

.field public transient g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x751

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v1}, Lp48;->c0(III)Lp48;

    move-result-object v0

    sput-object v0, Lr58;->h:Lp48;

    return-void
.end method

.method public constructor <init>(Lp48;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld58;-><init>()V

    .line 2
    sget-object v0, Lr58;->h:Lp48;

    invoke-virtual {p1, v0}, Lp48;->Z(Le58;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Ls58;->L(Lp48;)Ls58;

    move-result-object v0

    iput-object v0, p0, Lr58;->f:Ls58;

    .line 4
    iget-object v0, v0, Ls58;->f:Lp48;

    .line 5
    iget v0, v0, Lp48;->e:I

    add-int/lit8 v0, v0, -0x1

    .line 6
    iget v1, p1, Lp48;->e:I

    sub-int/2addr v1, v0

    .line 7
    iput v1, p0, Lr58;->g:I

    .line 8
    iput-object p1, p0, Lr58;->e:Lp48;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ll48;

    const-string v0, "Minimum supported date is January 1st Meiji 6"

    invoke-direct {p1, v0}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    iget-object p1, p0, Lr58;->e:Lp48;

    invoke-static {p1}, Ls58;->L(Lp48;)Ls58;

    move-result-object p1

    iput-object p1, p0, Lr58;->f:Ls58;

    .line 3
    iget-object p1, p1, Ls58;->f:Lp48;

    .line 4
    iget p1, p1, Lp48;->e:I

    add-int/lit8 p1, p1, -0x1

    .line 5
    iget-object v0, p0, Lr58;->e:Lp48;

    .line 6
    iget v0, v0, Lp48;->e:I

    sub-int/2addr v0, p1

    .line 7
    iput v0, p0, Lr58;->g:I

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lw58;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lw58;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public C(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Le58;->O(JLb78;)Le58;

    move-result-object p1

    check-cast p1, Lr58;

    return-object p1
.end method

.method public D(Ly68;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lr58;->e:Lp48;

    invoke-virtual {v0, p1}, Lp48;->D(Ly68;)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-object p1, p0, Lr58;->f:Ls58;

    .line 5
    iget p1, p1, Ls58;->e:I

    int-to-long v0, p1

    return-wide v0

    .line 6
    :cond_1
    iget p1, p0, Lr58;->g:I

    int-to-long v0, p1

    return-wide v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lr58;->Y()J

    move-result-wide v0

    return-wide v0

    .line 8
    :cond_3
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0
.end method

.method public I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    check-cast p1, Lr58;

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
            "Lr58;",
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
    sget-object v0, Lq58;->h:Lq58;

    return-object v0
.end method

.method public N()Lk58;
    .locals 1

    .line 1
    iget-object v0, p0, Lr58;->f:Ls58;

    return-object v0
.end method

.method public O(JLb78;)Le58;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Le58;->O(JLb78;)Le58;

    move-result-object p1

    check-cast p1, Lr58;

    return-object p1
.end method

.method public P(JLb78;)Le58;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    check-cast p1, Lr58;

    return-object p1
.end method

.method public Q()J
    .locals 2

    .line 1
    iget-object v0, p0, Lr58;->e:Lp48;

    invoke-virtual {v0}, Lp48;->Q()J

    move-result-wide v0

    return-wide v0
.end method

.method public R(Lv68;)Le58;
    .locals 1

    .line 1
    sget-object v0, Lq58;->h:Lq58;

    .line 2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lj58;->l(Lt68;)Le58;

    move-result-object p1

    .line 4
    check-cast p1, Lr58;

    return-object p1
.end method

.method public bridge synthetic S(Ly68;J)Le58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lr58;->a0(Ly68;J)Lr58;

    move-result-object p1

    return-object p1
.end method

.method public T(JLb78;)Ld58;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    check-cast p1, Lr58;

    return-object p1
.end method

.method public U(J)Ld58;
    .locals 1

    .line 1
    iget-object v0, p0, Lr58;->e:Lp48;

    invoke-virtual {v0, p1, p2}, Lp48;->g0(J)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr58;->Z(Lp48;)Lr58;

    move-result-object p1

    return-object p1
.end method

.method public V(J)Ld58;
    .locals 1

    .line 1
    iget-object v0, p0, Lr58;->e:Lp48;

    invoke-virtual {v0, p1, p2}, Lp48;->h0(J)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr58;->Z(Lp48;)Lr58;

    move-result-object p1

    return-object p1
.end method

.method public W(J)Ld58;
    .locals 1

    .line 1
    iget-object v0, p0, Lr58;->e:Lp48;

    invoke-virtual {v0, p1, p2}, Lp48;->j0(J)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr58;->Z(Lp48;)Lr58;

    move-result-object p1

    return-object p1
.end method

.method public final X(I)Ld78;
    .locals 5

    .line 1
    sget-object v0, Lq58;->g:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lr58;->f:Ls58;

    .line 3
    iget v1, v1, Ls58;->e:I

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget v1, p0, Lr58;->g:I

    iget-object v2, p0, Lr58;->e:Lp48;

    .line 6
    iget-short v3, v2, Lp48;->f:S

    add-int/lit8 v3, v3, -0x1

    .line 7
    iget-short v2, v2, Lp48;->g:S

    .line 8
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/Calendar;->set(III)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    int-to-long v1, v1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    int-to-long v3, p1

    .line 11
    invoke-static {v1, v2, v3, v4}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public final Y()J
    .locals 3

    .line 1
    iget v0, p0, Lr58;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lr58;->e:Lp48;

    invoke-virtual {v0}, Lp48;->Y()I

    move-result v0

    iget-object v2, p0, Lr58;->f:Ls58;

    .line 3
    iget-object v2, v2, Ls58;->f:Lp48;

    .line 4
    invoke-virtual {v2}, Lp48;->Y()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_0
    int-to-long v0, v0

    return-wide v0

    .line 5
    :cond_0
    iget-object v0, p0, Lr58;->e:Lp48;

    invoke-virtual {v0}, Lp48;->Y()I

    move-result v0

    goto :goto_0
.end method

.method public final Z(Lp48;)Lr58;
    .locals 1

    .line 1
    iget-object v0, p0, Lr58;->e:Lp48;

    invoke-virtual {p1, v0}, Lp48;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lr58;

    invoke-direct {v0, p1}, Lr58;-><init>(Lp48;)V

    :goto_0
    return-object v0
.end method

.method public a0(Ly68;J)Lr58;
    .locals 5

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    .line 3
    invoke-virtual {p0, v0}, Lr58;->D(Ly68;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    const/16 v3, 0x19

    const/16 v4, 0x13

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lq58;->h:Lq58;

    .line 6
    invoke-virtual {v1, v0}, Lq58;->M(Lq68;)Ld78;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Ld78;->a(JLy68;)I

    move-result v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 8
    :goto_0
    iget-object v0, p0, Lr58;->e:Lp48;

    invoke-virtual {v0, p1, p2, p3}, Lp48;->m0(Ly68;J)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr58;->Z(Lp48;)Lr58;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-static {v1}, Ls58;->M(I)Ls58;

    move-result-object p1

    iget p2, p0, Lr58;->g:I

    invoke-virtual {p0, p1, p2}, Lr58;->b0(Ls58;I)Lr58;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    iget-object p1, p0, Lr58;->f:Ls58;

    .line 11
    invoke-virtual {p0, p1, v1}, Lr58;->b0(Ls58;I)Lr58;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    iget-object p1, p0, Lr58;->e:Lp48;

    int-to-long p2, v1

    invoke-virtual {p0}, Lr58;->Y()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lp48;->g0(J)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr58;->Z(Lp48;)Lr58;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lr58;

    return-object p1
.end method

.method public final b0(Ls58;I)Lr58;
    .locals 5

    .line 1
    sget-object v0, Lq58;->h:Lq58;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Ls58;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Ls58;->f:Lp48;

    .line 5
    iget v0, v0, Lp48;->e:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x1

    .line 6
    invoke-virtual {p1}, Ls58;->K()Lp48;

    move-result-object v3

    .line 7
    iget v3, v3, Lp48;->e:I

    .line 8
    iget-object p1, p1, Ls58;->f:Lp48;

    .line 9
    iget p1, p1, Lp48;->e:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    .line 10
    invoke-static {v1, v2, v3, v4}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    int-to-long v1, p2

    .line 11
    sget-object p2, Lq68;->H:Lq68;

    invoke-virtual {p1, v1, v2, p2}, Ld78;->b(JLy68;)J

    .line 12
    iget-object p1, p0, Lr58;->e:Lp48;

    invoke-virtual {p1, v0}, Lp48;->o0(I)Lp48;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr58;->Z(Lp48;)Lr58;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be JapaneseEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lr58;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lr58;

    .line 3
    iget-object v0, p0, Lr58;->e:Lp48;

    iget-object p1, p1, Lr58;->e:Lp48;

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
    sget-object v0, Lq58;->h:Lq58;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, -0x29035c2f

    iget-object v1, p0, Lr58;->e:Lp48;

    invoke-virtual {v1}, Lp48;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lr58;->a0(Ly68;J)Lr58;

    move-result-object p1

    return-object p1
.end method

.method public t(Ly68;)Ld78;
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0, p1}, Lr58;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lq68;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    .line 5
    sget-object v0, Lq58;->h:Lq58;

    .line 6
    invoke-virtual {v0, p1}, Lq58;->M(Lq68;)Ld78;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lr58;->X(I)Ld78;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x6

    .line 8
    invoke-virtual {p0, p1}, Lr58;->X(I)Ld78;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    invoke-interface {p1, p0}, Ly68;->t(Lu68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public x(Lv68;)Lt68;
    .locals 1

    .line 1
    sget-object v0, Lq58;->h:Lq58;

    .line 2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lj58;->l(Lt68;)Le58;

    move-result-object p1

    .line 4
    check-cast p1, Lr58;

    return-object p1
.end method

.method public y(Ly68;)Z
    .locals 1

    .line 1
    sget-object v0, Lq68;->y:Lq68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lq68;->z:Lq68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lq68;->D:Lq68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lq68;->E:Lq68;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Le58;->y(Ly68;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
