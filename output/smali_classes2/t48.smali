.class public final Lt48;
.super Lp68;
.source "SourceFile"

# interfaces
.implements Lu68;
.implements Lv68;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp68;",
        "Lu68;",
        "Lv68;",
        "Ljava/lang/Comparable<",
        "Lt48;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc68;

    invoke-direct {v0}, Lc68;-><init>()V

    const-string v1, "--"

    .line 2
    invoke-virtual {v0, v1}, Lc68;->d(Ljava/lang/String;)Lc68;

    sget-object v1, Lq68;->F:Lq68;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Lc68;->k(Ly68;I)Lc68;

    const/16 v1, 0x2d

    .line 4
    invoke-virtual {v0, v1}, Lc68;->c(C)Lc68;

    sget-object v1, Lq68;->A:Lq68;

    .line 5
    invoke-virtual {v0, v1, v2}, Lc68;->k(Ly68;I)Lc68;

    .line 6
    invoke-virtual {v0}, Lc68;->o()Lb68;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp68;-><init>()V

    .line 2
    iput p1, p0, Lt48;->e:I

    .line 3
    iput p2, p0, Lt48;->f:I

    return-void
.end method

.method public static K(II)Lt48;
    .locals 4

    .line 1
    invoke-static {p0}, Ls48;->O(I)Ls48;

    move-result-object p0

    const-string v0, "month"

    .line 2
    invoke-static {p0, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lq68;->A:Lq68;

    int-to-long v1, p1

    .line 4
    iget-object v3, v0, Lq68;->h:Ld78;

    .line 5
    invoke-virtual {v3, v1, v2, v0}, Ld78;->b(JLy68;)J

    .line 6
    invoke-virtual {p0}, Ls48;->N()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 7
    new-instance v0, Lt48;

    invoke-virtual {p0}, Ls48;->L()I

    move-result p0

    invoke-direct {v0, p0, p1}, Lt48;-><init>(II)V

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ll48;

    const-string v1, "Illegal value for DayOfMonth field, value "

    const-string v2, " is not valid for month "

    invoke-static {v1, p1, v2}, Ljo;->A(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0
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

    const/16 v1, 0x40

    invoke-direct {v0, v1, p0}, Lw48;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
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

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 3
    iget p1, p0, Lt48;->e:I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget p1, p0, Lt48;->f:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 6
    :cond_2
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lt48;

    .line 2
    iget v0, p0, Lt48;->e:I

    iget v1, p1, Lt48;->e:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lt48;->f:I

    iget p1, p1, Lt48;->f:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lt48;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lt48;

    .line 3
    iget v1, p0, Lt48;->e:I

    iget v3, p1, Lt48;->e:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lt48;->f:I

    iget p1, p1, Lt48;->f:I

    if-ne v1, p1, :cond_1

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
    iget v0, p0, Lt48;->e:I

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Lt48;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public k(Ly68;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lt48;->t(Ly68;)Ld78;

    move-result-object v0

    invoke-virtual {p0, p1}, Lt48;->D(Ly68;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ld78;->a(JLy68;)I

    move-result p1

    return p1
.end method

.method public l(Lt68;)Lt68;
    .locals 5

    .line 1
    invoke-static {p1}, Lj58;->y(Lu68;)Lj58;

    move-result-object v0

    sget-object v1, Lo58;->g:Lo58;

    invoke-virtual {v0, v1}, Lj58;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lq68;->F:Lq68;

    iget v1, p0, Lt48;->e:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    .line 3
    sget-object v0, Lq68;->A:Lq68;

    invoke-interface {p1, v0}, Lu68;->t(Ly68;)Ld78;

    move-result-object v1

    .line 4
    iget-wide v1, v1, Ld78;->h:J

    .line 5
    iget v3, p0, Lt48;->f:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ll48;

    const-string v0, "Adjustment only supported on ISO date-time"

    invoke-direct {p1, v0}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Ly68;)Ld78;
    .locals 7

    .line 1
    sget-object v0, Lq68;->F:Lq68;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-interface {p1}, Ly68;->w()Ld78;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lq68;->A:Lq68;

    if-ne p1, v0, :cond_3

    const-wide/16 v1, 0x1

    .line 4
    iget p1, p0, Lt48;->e:I

    invoke-static {p1}, Ls48;->O(I)Ls48;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 p1, 0x1f

    goto :goto_0

    :cond_1
    const/16 p1, 0x1e

    goto :goto_0

    :cond_2
    const/16 p1, 0x1c

    :goto_0
    int-to-long v3, p1

    .line 6
    iget p1, p0, Lt48;->e:I

    invoke-static {p1}, Ls48;->O(I)Ls48;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ls48;->N()I

    move-result p1

    int-to-long v5, p1

    invoke-static/range {v1 .. v6}, Ld78;->e(JJJ)Ld78;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    invoke-super {p0, p1}, Lp68;->t(Ly68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    const-string v1, "--"

    .line 1
    invoke-static {v0, v1}, Ljo;->w(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget v2, p0, Lt48;->e:I

    if-ge v2, v0, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lt48;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    iget v2, p0, Lt48;->f:I

    if-ge v2, v0, :cond_1

    const-string v0, "-0"

    goto :goto_1

    :cond_1
    const-string v0, "-"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lt48;->f:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    sget-object v0, Lz68;->b:La78;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lo58;->g:Lo58;

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lp68;->w(La78;)Ljava/lang/Object;

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
    sget-object v0, Lq68;->F:Lq68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lq68;->A:Lq68;

    if-ne p1, v0, :cond_0

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
