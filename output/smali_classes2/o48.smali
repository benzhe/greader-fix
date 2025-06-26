.class public final Lo48;
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
        "Lo48;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final g:Lo48;


# instance fields
.field public final e:J

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lo48;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo48;-><init>(JI)V

    sput-object v0, Lo48;->g:Lo48;

    const-wide v3, -0x701cefeb9bec00L

    .line 2
    invoke-static {v3, v4, v1, v2}, Lo48;->O(JJ)Lo48;

    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    .line 3
    invoke-static {v0, v1, v2, v3}, Lo48;->O(JJ)Lo48;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp68;-><init>()V

    .line 2
    iput-wide p1, p0, Lo48;->e:J

    .line 3
    iput p3, p0, Lo48;->f:I

    return-void
.end method

.method public static K(JI)Lo48;
    .locals 5

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1
    sget-object p0, Lo48;->g:Lo48;

    return-object p0

    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    .line 2
    new-instance v0, Lo48;

    invoke-direct {v0, p0, p1, p2}, Lo48;-><init>(JI)V

    return-object v0

    .line 3
    :cond_1
    new-instance p0, Ll48;

    const-string p1, "Instant exceeds minimum or maximum instant"

    invoke-direct {p0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static L(Lu68;)Lo48;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lq68;->K:Lq68;

    invoke-interface {p0, v0}, Lu68;->D(Ly68;)J

    move-result-wide v0

    .line 2
    sget-object v2, Lq68;->i:Lq68;

    invoke-interface {p0, v2}, Lu68;->k(Ly68;)I

    move-result v2

    int-to-long v2, v2

    .line 3
    invoke-static {v0, v1, v2, v3}, Lo48;->O(JJ)Lo48;

    move-result-object p0
    :try_end_0
    .catch Ll48; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ll48;

    const-string v2, "Unable to obtain Instant from TemporalAccessor: "

    const-string v3, ", type "

    invoke-static {v2, p0, v3}, Ljo;->D(Ljava/lang/String;Lu68;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    invoke-static {p0, v2}, Ljo;->u(Lu68;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ll48;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static M(J)Lo48;
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-static {p0, p1, v0, v1}, Lkt7;->f(JJ)J

    move-result-wide v0

    const/16 v2, 0x3e8

    .line 2
    invoke-static {p0, p1, v2}, Lkt7;->h(JI)I

    move-result p0

    const p1, 0xf4240

    mul-int p0, p0, p1

    .line 3
    invoke-static {v0, v1, p0}, Lo48;->K(JI)Lo48;

    move-result-object p0

    return-object p0
.end method

.method public static N(J)Lo48;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lo48;->K(JI)Lo48;

    move-result-object p0

    return-object p0
.end method

.method public static O(JJ)Lo48;
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    .line 1
    invoke-static {p2, p3, v0, v1}, Lkt7;->f(JJ)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkt7;->q(JJ)J

    move-result-wide p0

    const v0, 0x3b9aca00

    .line 2
    invoke-static {p2, p3, v0}, Lkt7;->h(JI)I

    move-result p2

    .line 3
    invoke-static {p0, p1, p2}, Lo48;->K(JI)Lo48;

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

    const/4 v1, 0x2

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
    invoke-virtual {p0, p1, p2, p3}, Lo48;->Q(JLb78;)Lo48;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lo48;->Q(JLb78;)Lo48;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lo48;->Q(JLb78;)Lo48;

    move-result-object p1

    :goto_0
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

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 3
    iget-wide v0, p0, Lo48;->e:J

    return-wide v0

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
    iget p1, p0, Lo48;->f:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    goto :goto_0

    .line 6
    :cond_2
    iget p1, p0, Lo48;->f:I

    div-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    .line 7
    :cond_3
    iget p1, p0, Lo48;->f:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 8
    :cond_4
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lo48;->Q(JLb78;)Lo48;

    move-result-object p1

    return-object p1
.end method

.method public final P(JJ)Lo48;
    .locals 5

    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-wide v0, p0, Lo48;->e:J

    invoke-static {v0, v1, p1, p2}, Lkt7;->q(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    .line 2
    div-long v2, p3, v0

    invoke-static {p1, p2, v2, v3}, Lkt7;->q(JJ)J

    move-result-wide p1

    .line 3
    rem-long/2addr p3, v0

    .line 4
    iget v0, p0, Lo48;->f:I

    int-to-long v0, v0

    add-long/2addr v0, p3

    .line 5
    invoke-static {p1, p2, v0, v1}, Lo48;->O(JJ)Lo48;

    move-result-object p1

    return-object p1
.end method

.method public Q(JLb78;)Lo48;
    .locals 7

    .line 1
    instance-of v0, p3, Lr68;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p3

    check-cast v0, Lr68;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0xf4240

    packed-switch v0, :pswitch_data_0

    .line 3
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

    :pswitch_0
    const p3, 0x15180

    .line 4
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo48;->R(J)Lo48;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p3, 0xa8c0

    .line 5
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo48;->R(J)Lo48;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0xe10

    .line 6
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo48;->R(J)Lo48;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0x3c

    .line 7
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo48;->R(J)Lo48;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4
    invoke-virtual {p0, p1, p2, v3, v4}, Lo48;->P(JJ)Lo48;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    div-long v3, p1, v1

    rem-long/2addr p1, v1

    mul-long p1, p1, v5

    invoke-virtual {p0, v3, v4, p1, p2}, Lo48;->P(JJ)Lo48;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_6
    div-long v3, p1, v5

    rem-long/2addr p1, v5

    mul-long p1, p1, v1

    invoke-virtual {p0, v3, v4, p1, p2}, Lo48;->P(JJ)Lo48;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_7
    invoke-virtual {p0, v3, v4, p1, p2}, Lo48;->P(JJ)Lo48;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lb78;->k(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lo48;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public R(J)Lo48;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lo48;->P(JJ)Lo48;

    move-result-object p1

    return-object p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lo48;

    .line 2
    iget-wide v0, p0, Lo48;->e:J

    iget-wide v2, p1, Lo48;->e:J

    invoke-static {v0, v1, v2, v3}, Lkt7;->d(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lo48;->f:I

    iget p1, p1, Lo48;->f:I

    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lo48;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lo48;

    .line 3
    iget-wide v3, p0, Lo48;->e:J

    iget-wide v5, p1, Lo48;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lo48;->f:I

    iget p1, p1, Lo48;->f:I

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
    .locals 4

    .line 1
    iget-wide v0, p0, Lo48;->e:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lo48;->f:I

    mul-int/lit8 v0, v0, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public i(Ly68;J)Lt68;
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_5

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

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 6
    iget-wide v0, p0, Lo48;->e:J

    cmp-long p1, p2, v0

    if-eqz p1, :cond_4

    iget p1, p0, Lo48;->f:I

    invoke-static {p2, p3, p1}, Lo48;->K(JI)Lo48;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Lc78;

    const-string p3, "Unsupported field: "

    invoke-static {p3, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    long-to-int p1, p2

    const p2, 0xf4240

    mul-int p1, p1, p2

    .line 8
    iget p2, p0, Lo48;->f:I

    if-eq p1, p2, :cond_4

    iget-wide p2, p0, Lo48;->e:J

    invoke-static {p2, p3, p1}, Lo48;->K(JI)Lo48;

    move-result-object p1

    goto :goto_0

    :cond_2
    long-to-int p1, p2

    mul-int/lit16 p1, p1, 0x3e8

    .line 9
    iget p2, p0, Lo48;->f:I

    if-eq p1, p2, :cond_4

    iget-wide p2, p0, Lo48;->e:J

    invoke-static {p2, p3, p1}, Lo48;->K(JI)Lo48;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_3
    iget p1, p0, Lo48;->f:I

    int-to-long v0, p1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_4

    iget-wide v0, p0, Lo48;->e:J

    long-to-int p1, p2

    invoke-static {v0, v1, p1}, Lo48;->K(JI)Lo48;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, p0

    goto :goto_0

    .line 11
    :cond_5
    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lo48;

    :goto_0
    return-object p1
.end method

.method public k(Ly68;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_3

    .line 2
    move-object v0, p1

    check-cast v0, Lq68;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    iget p1, p0, Lo48;->f:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    return p1

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
    iget p1, p0, Lo48;->f:I

    div-int/lit16 p1, p1, 0x3e8

    return p1

    .line 6
    :cond_2
    iget p1, p0, Lo48;->f:I

    return p1

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lo48;->t(Ly68;)Ld78;

    move-result-object v0

    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ld78;->a(JLy68;)I

    move-result p1

    return p1
.end method

.method public l(Lt68;)Lt68;
    .locals 3

    .line 1
    sget-object v0, Lq68;->K:Lq68;

    iget-wide v1, p0, Lo48;->e:J

    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    sget-object v0, Lq68;->i:Lq68;

    iget v1, p0, Lo48;->f:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public t(Ly68;)Ld78;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lp68;->t(Ly68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lb68;->l:Lb68;

    invoke-virtual {v0, p0}, Lb68;->a(Lu68;)Ljava/lang/String;

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
    sget-object v0, Lz68;->f:La78;

    if-eq p1, v0, :cond_2

    sget-object v0, Lz68;->g:La78;

    if-eq p1, v0, :cond_2

    .line 4
    sget-object v0, Lz68;->b:La78;

    if-eq p1, v0, :cond_2

    sget-object v0, Lz68;->a:La78;

    if-eq p1, v0, :cond_2

    .line 5
    sget-object v0, Lz68;->d:La78;

    if-eq p1, v0, :cond_2

    sget-object v0, Lz68;->e:La78;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1, p0}, La78;->a(Lu68;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public x(Lv68;)Lt68;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    check-cast p1, Lo48;

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
    sget-object v0, Lq68;->K:Lq68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lq68;->i:Lq68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lq68;->k:Lq68;

    if-eq p1, v0, :cond_1

    sget-object v0, Lq68;->m:Lq68;

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
