.class public final Lv48;
.super Lp68;
.source "SourceFile"

# interfaces
.implements Lt68;
.implements Lv68;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp68;",
        "Lt68;",
        "Lv68;",
        "Ljava/lang/Comparable<",
        "Lv48;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public final e:Lr48;

.field public final f:La58;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lr48;->i:Lr48;

    sget-object v1, La58;->l:La58;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Lv48;

    invoke-direct {v2, v0, v1}, Lv48;-><init>(Lr48;La58;)V

    .line 4
    sget-object v0, Lr48;->j:Lr48;

    sget-object v1, La58;->k:La58;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lv48;

    invoke-direct {v2, v0, v1}, Lv48;-><init>(Lr48;La58;)V

    return-void
.end method

.method public constructor <init>(Lr48;La58;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp68;-><init>()V

    const-string v0, "time"

    .line 2
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lr48;

    iput-object p1, p0, Lv48;->e:Lr48;

    const-string p1, "offset"

    .line 3
    invoke-static {p2, p1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, La58;

    iput-object p2, p0, Lv48;->f:La58;

    return-void
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

    const/16 v1, 0x42

    invoke-direct {v0, v1, p0}, Lw48;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public C(JLb78;)Lt68;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lv48;->K(JLb78;)Lv48;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lv48;->K(JLb78;)Lv48;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lv48;->K(JLb78;)Lv48;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public D(Ly68;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lq68;->L:Lq68;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lv48;->f:La58;

    .line 4
    iget p1, p1, La58;->f:I

    int-to-long v0, p1

    return-wide v0

    .line 5
    :cond_0
    iget-object v0, p0, Lv48;->e:Lr48;

    invoke-virtual {v0, p1}, Lr48;->D(Ly68;)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_1
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lv48;->K(JLb78;)Lv48;

    move-result-object p1

    return-object p1
.end method

.method public K(JLb78;)Lv48;
    .locals 1

    .line 1
    instance-of v0, p3, Lr68;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv48;->e:Lr48;

    invoke-virtual {v0, p1, p2, p3}, Lr48;->P(JLb78;)Lr48;

    move-result-object p1

    iget-object p2, p0, Lv48;->f:La58;

    invoke-virtual {p0, p1, p2}, Lv48;->L(Lr48;La58;)Lv48;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lb78;->k(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lv48;

    return-object p1
.end method

.method public final L(Lr48;La58;)Lv48;
    .locals 1

    .line 1
    iget-object v0, p0, Lv48;->e:Lr48;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lv48;->f:La58;

    invoke-virtual {v0, p2}, La58;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lv48;

    invoke-direct {v0, p1, p2}, Lv48;-><init>(Lr48;La58;)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 8

    .line 1
    check-cast p1, Lv48;

    .line 2
    iget-object v0, p0, Lv48;->f:La58;

    iget-object v1, p1, Lv48;->f:La58;

    invoke-virtual {v0, v1}, La58;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lv48;->e:Lr48;

    iget-object p1, p1, Lv48;->e:Lr48;

    invoke-virtual {v0, p1}, Lr48;->K(Lr48;)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lv48;->e:Lr48;

    invoke-virtual {v0}, Lr48;->V()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lv48;->f:La58;

    .line 6
    iget v2, v2, La58;->f:I

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    .line 7
    iget-object v2, p1, Lv48;->e:Lr48;

    invoke-virtual {v2}, Lr48;->V()J

    move-result-wide v2

    .line 8
    iget-object v6, p1, Lv48;->f:La58;

    .line 9
    iget v6, v6, La58;->f:I

    int-to-long v6, v6

    mul-long v6, v6, v4

    sub-long/2addr v2, v6

    .line 10
    invoke-static {v0, v1, v2, v3}, Lkt7;->d(JJ)I

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lv48;->e:Lr48;

    iget-object p1, p1, Lv48;->e:Lr48;

    invoke-virtual {v0, p1}, Lr48;->K(Lr48;)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lv48;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lv48;

    .line 3
    iget-object v1, p0, Lv48;->e:Lr48;

    iget-object v3, p1, Lv48;->e:Lr48;

    invoke-virtual {v1, v3}, Lr48;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv48;->f:La58;

    iget-object p1, p1, Lv48;->f:La58;

    invoke-virtual {v1, p1}, La58;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    .line 1
    iget-object v0, p0, Lv48;->e:Lr48;

    invoke-virtual {v0}, Lr48;->hashCode()I

    move-result v0

    iget-object v1, p0, Lv48;->f:La58;

    .line 2
    iget v1, v1, La58;->f:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public i(Ly68;J)Lt68;
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lq68;->L:Lq68;

    if-ne p1, v0, :cond_0

    .line 3
    check-cast p1, Lq68;

    .line 4
    iget-object v0, p0, Lv48;->e:Lr48;

    .line 5
    iget-object v1, p1, Lq68;->h:Ld78;

    .line 6
    invoke-virtual {v1, p2, p3, p1}, Ld78;->a(JLy68;)I

    move-result p1

    .line 7
    invoke-static {p1}, La58;->Q(I)La58;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lv48;->L(Lr48;La58;)Lv48;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lv48;->e:Lr48;

    invoke-virtual {v0, p1, p2, p3}, Lr48;->X(Ly68;J)Lr48;

    move-result-object p1

    iget-object p2, p0, Lv48;->f:La58;

    invoke-virtual {p0, p1, p2}, Lv48;->L(Lr48;La58;)Lv48;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lv48;

    :goto_0
    return-object p1
.end method

.method public k(Ly68;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lp68;->k(Ly68;)I

    move-result p1

    return p1
.end method

.method public l(Lt68;)Lt68;
    .locals 3

    .line 1
    sget-object v0, Lq68;->j:Lq68;

    iget-object v1, p0, Lv48;->e:Lr48;

    .line 2
    invoke-virtual {v1}, Lr48;->V()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    sget-object v0, Lq68;->L:Lq68;

    .line 3
    iget-object v1, p0, Lv48;->f:La58;

    .line 4
    iget v1, v1, La58;->f:I

    int-to-long v1, v1

    .line 5
    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public t(Ly68;)Ld78;
    .locals 1

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lq68;->L:Lq68;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-interface {p1}, Ly68;->w()Ld78;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lv48;->e:Lr48;

    invoke-virtual {v0, p1}, Lr48;->t(Ly68;)Ld78;

    move-result-object p1

    return-object p1

    .line 5
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

    iget-object v1, p0, Lv48;->e:Lr48;

    invoke-virtual {v1}, Lr48;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv48;->f:La58;

    .line 2
    iget-object v1, v1, La58;->g:Ljava/lang/String;

    .line 3
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
    sget-object v0, Lz68;->c:La78;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lr68;->f:Lr68;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lz68;->e:La78;

    if-eq p1, v0, :cond_5

    sget-object v0, Lz68;->d:La78;

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Lz68;->g:La78;

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lv48;->e:Lr48;

    return-object p1

    .line 6
    :cond_2
    sget-object v0, Lz68;->b:La78;

    if-eq p1, v0, :cond_4

    sget-object v0, Lz68;->f:La78;

    if-eq p1, v0, :cond_4

    sget-object v0, Lz68;->a:La78;

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-super {p0, p1}, Lp68;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_5
    :goto_1
    iget-object p1, p0, Lv48;->f:La58;

    return-object p1
.end method

.method public x(Lv68;)Lt68;
    .locals 1

    .line 1
    instance-of v0, p1, Lr48;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lr48;

    iget-object v0, p0, Lv48;->f:La58;

    invoke-virtual {p0, p1, v0}, Lv48;->L(Lr48;La58;)Lv48;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, La58;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lv48;->e:Lr48;

    check-cast p1, La58;

    invoke-virtual {p0, v0, p1}, Lv48;->L(Lr48;La58;)Lv48;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Lv48;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lv48;

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    check-cast p1, Lv48;

    :goto_0
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
    invoke-interface {p1}, Ly68;->y()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lq68;->L:Lq68;

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
