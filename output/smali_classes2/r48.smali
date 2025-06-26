.class public final Lr48;
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
        "Lr48;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final i:Lr48;

.field public static final j:Lr48;

.field public static final k:[Lr48;


# instance fields
.field public final e:B

.field public final f:B

.field public final g:B

.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x18

    new-array v0, v0, [Lr48;

    .line 1
    sput-object v0, Lr48;->k:[Lr48;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Lr48;->k:[Lr48;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    new-instance v3, Lr48;

    invoke-direct {v3, v1, v0, v0, v0}, Lr48;-><init>(IIII)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    aget-object v1, v2, v0

    const/16 v1, 0xc

    .line 5
    aget-object v1, v2, v1

    .line 6
    aget-object v0, v2, v0

    sput-object v0, Lr48;->i:Lr48;

    .line 7
    new-instance v0, Lr48;

    const/16 v1, 0x17

    const v2, 0x3b9ac9ff

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v3, v3, v2}, Lr48;-><init>(IIII)V

    sput-object v0, Lr48;->j:Lr48;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp68;-><init>()V

    int-to-byte p1, p1

    .line 2
    iput-byte p1, p0, Lr48;->e:B

    int-to-byte p1, p2

    .line 3
    iput-byte p1, p0, Lr48;->f:B

    int-to-byte p1, p3

    .line 4
    iput-byte p1, p0, Lr48;->g:B

    .line 5
    iput p4, p0, Lr48;->h:I

    return-void
.end method

.method public static L(IIII)Lr48;
    .locals 1

    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 1
    sget-object p1, Lr48;->k:[Lr48;

    aget-object p0, p1, p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lr48;

    invoke-direct {v0, p0, p1, p2, p3}, Lr48;-><init>(IIII)V

    return-object v0
.end method

.method public static M(Lu68;)Lr48;
    .locals 3

    .line 1
    sget-object v0, Lz68;->g:La78;

    invoke-interface {p0, v0}, Lu68;->w(La78;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr48;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ll48;

    const-string v1, "Unable to obtain LocalTime from TemporalAccessor: "

    const-string v2, ", type "

    invoke-static {v1, p0, v2}, Ljo;->D(Ljava/lang/String;Lu68;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {p0, v1}, Ljo;->u(Lu68;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static O(J)Lr48;
    .locals 8

    .line 1
    sget-object v0, Lq68;->j:Lq68;

    .line 2
    iget-object v1, v0, Lq68;->h:Ld78;

    .line 3
    invoke-virtual {v1, p0, p1, v0}, Ld78;->b(JLy68;)J

    const-wide v0, 0x34630b8a000L

    .line 4
    div-long v2, p0, v0

    long-to-int v3, v2

    int-to-long v4, v3

    mul-long v4, v4, v0

    sub-long/2addr p0, v4

    const-wide v0, 0xdf8475800L

    .line 5
    div-long v4, p0, v0

    long-to-int v2, v4

    int-to-long v4, v2

    mul-long v4, v4, v0

    sub-long/2addr p0, v4

    const-wide/32 v0, 0x3b9aca00

    .line 6
    div-long v4, p0, v0

    long-to-int v5, v4

    int-to-long v6, v5

    mul-long v6, v6, v0

    sub-long/2addr p0, v6

    long-to-int p1, p0

    .line 7
    invoke-static {v3, v2, v5, p1}, Lr48;->L(IIII)Lr48;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/io/DataInput;)Lr48;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    not-int v0, v0

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    if-gez v2, :cond_1

    not-int p0, v2

    const/4 v2, 0x0

    move v1, p0

    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    if-gez v3, :cond_2

    not-int p0, v3

    move v1, v2

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    move p0, v3

    move v7, v2

    move v2, v1

    move v1, v7

    .line 5
    :goto_1
    sget-object v3, Lq68;->u:Lq68;

    int-to-long v4, v0

    .line 6
    iget-object v6, v3, Lq68;->h:Ld78;

    .line 7
    invoke-virtual {v6, v4, v5, v3}, Ld78;->b(JLy68;)J

    .line 8
    sget-object v3, Lq68;->q:Lq68;

    int-to-long v4, v1

    .line 9
    iget-object v6, v3, Lq68;->h:Ld78;

    .line 10
    invoke-virtual {v6, v4, v5, v3}, Ld78;->b(JLy68;)J

    .line 11
    sget-object v3, Lq68;->o:Lq68;

    int-to-long v4, p0

    .line 12
    iget-object v6, v3, Lq68;->h:Ld78;

    .line 13
    invoke-virtual {v6, v4, v5, v3}, Ld78;->b(JLy68;)J

    .line 14
    sget-object v3, Lq68;->i:Lq68;

    int-to-long v4, v2

    .line 15
    iget-object v6, v3, Lq68;->h:Ld78;

    .line 16
    invoke-virtual {v6, v4, v5, v3}, Ld78;->b(JLy68;)J

    .line 17
    invoke-static {v0, v1, p0, v2}, Lr48;->L(IIII)Lr48;

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

    const/4 v1, 0x5

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
    invoke-virtual {p0, p1, p2, p3}, Lr48;->P(JLb78;)Lr48;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lr48;->P(JLb78;)Lr48;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lr48;->P(JLb78;)Lr48;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public D(Ly68;)J
    .locals 4

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lq68;->j:Lq68;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lr48;->V()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    sget-object v0, Lq68;->l:Lq68;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lr48;->V()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lr48;->N(Ly68;)I

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
    invoke-virtual {p0, p1, p2, p3}, Lr48;->P(JLb78;)Lr48;

    move-result-object p1

    return-object p1
.end method

.method public K(Lr48;)I
    .locals 2

    .line 1
    iget-byte v0, p0, Lr48;->e:B

    iget-byte v1, p1, Lr48;->e:B

    invoke-static {v0, v1}, Lkt7;->c(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-byte v0, p0, Lr48;->f:B

    iget-byte v1, p1, Lr48;->f:B

    invoke-static {v0, v1}, Lkt7;->c(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-byte v0, p0, Lr48;->g:B

    iget-byte v1, p1, Lr48;->g:B

    invoke-static {v0, v1}, Lkt7;->c(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget v0, p0, Lr48;->h:I

    iget p1, p1, Lr48;->h:I

    invoke-static {v0, p1}, Lkt7;->c(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final N(Ly68;)I
    .locals 4

    .line 1
    move-object v0, p1

    check-cast v0, Lq68;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "Field too large for an int: "

    const/16 v2, 0xc

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
    iget-byte p1, p0, Lr48;->e:B

    div-int/2addr p1, v2

    return p1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lr48;->e:B

    if-nez p1, :cond_0

    const/16 p1, 0x18

    :cond_0
    return p1

    .line 5
    :pswitch_2
    iget-byte p1, p0, Lr48;->e:B

    return p1

    .line 6
    :pswitch_3
    iget-byte p1, p0, Lr48;->e:B

    rem-int/2addr p1, v2

    rem-int/lit8 v0, p1, 0xc

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    return v2

    .line 7
    :pswitch_4
    iget-byte p1, p0, Lr48;->e:B

    rem-int/2addr p1, v2

    return p1

    .line 8
    :pswitch_5
    iget-byte p1, p0, Lr48;->e:B

    mul-int/lit8 p1, p1, 0x3c

    iget-byte v0, p0, Lr48;->f:B

    add-int/2addr p1, v0

    return p1

    .line 9
    :pswitch_6
    iget-byte p1, p0, Lr48;->f:B

    return p1

    .line 10
    :pswitch_7
    invoke-virtual {p0}, Lr48;->W()I

    move-result p1

    return p1

    .line 11
    :pswitch_8
    iget-byte p1, p0, Lr48;->g:B

    return p1

    .line 12
    :pswitch_9
    invoke-virtual {p0}, Lr48;->V()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    .line 13
    :pswitch_a
    iget p1, p0, Lr48;->h:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    return p1

    .line 14
    :pswitch_b
    new-instance v0, Ll48;

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :pswitch_c
    iget p1, p0, Lr48;->h:I

    div-int/lit16 p1, p1, 0x3e8

    return p1

    .line 16
    :pswitch_d
    new-instance v0, Ll48;

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_e
    iget p1, p0, Lr48;->h:I

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
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

.method public P(JLb78;)Lr48;
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

    :pswitch_0
    const-wide/16 v0, 0x2

    .line 5
    rem-long/2addr p1, v0

    const-wide/16 v0, 0xc

    mul-long p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lr48;->Q(J)Lr48;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lr48;->Q(J)Lr48;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lr48;->R(J)Lr48;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lr48;->T(J)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 9
    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lr48;->S(J)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 10
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lr48;->S(J)Lr48;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lr48;->S(J)Lr48;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lb78;->k(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lr48;

    return-object p1

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

.method public Q(J)Lr48;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x18

    .line 1
    rem-long/2addr p1, v0

    long-to-int p2, p1

    iget-byte p1, p0, Lr48;->e:B

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x18

    rem-int/lit8 p2, p2, 0x18

    .line 2
    iget-byte p1, p0, Lr48;->f:B

    iget-byte v0, p0, Lr48;->g:B

    iget v1, p0, Lr48;->h:I

    invoke-static {p2, p1, v0, v1}, Lr48;->L(IIII)Lr48;

    move-result-object p1

    return-object p1
.end method

.method public R(J)Lr48;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-byte v0, p0, Lr48;->e:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lr48;->f:B

    add-int/2addr v0, v1

    const-wide/16 v1, 0x5a0

    .line 2
    rem-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr p2, v0

    add-int/lit16 p2, p2, 0x5a0

    rem-int/lit16 p2, p2, 0x5a0

    if-ne v0, p2, :cond_1

    return-object p0

    .line 3
    :cond_1
    div-int/lit8 p1, p2, 0x3c

    .line 4
    rem-int/lit8 p2, p2, 0x3c

    .line 5
    iget-byte v0, p0, Lr48;->g:B

    iget v1, p0, Lr48;->h:I

    invoke-static {p1, p2, v0, v1}, Lr48;->L(IIII)Lr48;

    move-result-object p1

    return-object p1
.end method

.method public S(J)Lr48;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lr48;->V()J

    move-result-wide v0

    const-wide v2, 0x4e94914f0000L

    .line 2
    rem-long/2addr p1, v2

    add-long/2addr p1, v0

    add-long/2addr p1, v2

    rem-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    const-wide v0, 0x34630b8a000L

    .line 3
    div-long v0, p1, v0

    long-to-int v1, v0

    const-wide v2, 0xdf8475800L

    .line 4
    div-long v2, p1, v2

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    long-to-int v0, v2

    const-wide/32 v2, 0x3b9aca00

    .line 5
    div-long v6, p1, v2

    rem-long/2addr v6, v4

    long-to-int v4, v6

    .line 6
    rem-long/2addr p1, v2

    long-to-int p2, p1

    .line 7
    invoke-static {v1, v0, v4, p2}, Lr48;->L(IIII)Lr48;

    move-result-object p1

    return-object p1
.end method

.method public T(J)Lr48;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-byte v0, p0, Lr48;->e:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Lr48;->f:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    iget-byte v0, p0, Lr48;->g:B

    add-int/2addr v1, v0

    const-wide/32 v2, 0x15180

    .line 2
    rem-long/2addr p1, v2

    long-to-int p2, p1

    add-int/2addr p2, v1

    const p1, 0x15180

    add-int/2addr p2, p1

    rem-int/2addr p2, p1

    if-ne v1, p2, :cond_1

    return-object p0

    .line 3
    :cond_1
    div-int/lit16 p1, p2, 0xe10

    .line 4
    div-int/lit8 v0, p2, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 5
    rem-int/lit8 p2, p2, 0x3c

    .line 6
    iget v1, p0, Lr48;->h:I

    invoke-static {p1, v0, p2, v1}, Lr48;->L(IIII)Lr48;

    move-result-object p1

    return-object p1
.end method

.method public V()J
    .locals 6

    .line 1
    iget-byte v0, p0, Lr48;->e:B

    int-to-long v0, v0

    const-wide v2, 0x34630b8a000L

    mul-long v0, v0, v2

    .line 2
    iget-byte v2, p0, Lr48;->f:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    .line 3
    iget-byte v0, p0, Lr48;->g:B

    int-to-long v0, v0

    const-wide/32 v4, 0x3b9aca00

    mul-long v0, v0, v4

    add-long/2addr v0, v2

    .line 4
    iget v2, p0, Lr48;->h:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public W()I
    .locals 2

    .line 1
    iget-byte v0, p0, Lr48;->e:B

    mul-int/lit16 v0, v0, 0xe10

    .line 2
    iget-byte v1, p0, Lr48;->f:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    .line 3
    iget-byte v0, p0, Lr48;->g:B

    add-int/2addr v1, v0

    return v1
.end method

.method public X(Ly68;J)Lr48;
    .locals 5

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

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xc

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
    iget-byte p1, p0, Lr48;->e:B

    div-int/lit8 p1, p1, 0xc

    int-to-long v0, p1

    sub-long/2addr p2, v0

    mul-long p2, p2, v3

    invoke-virtual {p0, p2, p3}, Lr48;->Q(J)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-wide/16 v3, 0x18

    cmp-long p1, p2, v3

    if-nez p1, :cond_0

    move-wide p2, v1

    :cond_0
    long-to-int p1, p2

    .line 8
    invoke-virtual {p0, p1}, Lr48;->Y(I)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_2
    long-to-int p1, p2

    .line 9
    invoke-virtual {p0, p1}, Lr48;->Y(I)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_3
    cmp-long p1, p2, v3

    if-nez p1, :cond_1

    move-wide p2, v1

    .line 10
    :cond_1
    iget-byte p1, p0, Lr48;->e:B

    rem-int/lit8 p1, p1, 0xc

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lr48;->Q(J)Lr48;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_4
    iget-byte p1, p0, Lr48;->e:B

    rem-int/lit8 p1, p1, 0xc

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lr48;->Q(J)Lr48;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    iget-byte p1, p0, Lr48;->e:B

    mul-int/lit8 p1, p1, 0x3c

    iget-byte v0, p0, Lr48;->f:B

    add-int/2addr p1, v0

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lr48;->R(J)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_6
    long-to-int p1, p2

    .line 13
    iget-byte p2, p0, Lr48;->f:B

    if-ne p2, p1, :cond_2

    move-object p1, p0

    goto :goto_0

    .line 14
    :cond_2
    sget-object p2, Lq68;->q:Lq68;

    int-to-long v0, p1

    .line 15
    iget-object p3, p2, Lq68;->h:Ld78;

    .line 16
    invoke-virtual {p3, v0, v1, p2}, Ld78;->b(JLy68;)J

    .line 17
    iget-byte p2, p0, Lr48;->e:B

    iget-byte p3, p0, Lr48;->g:B

    iget v0, p0, Lr48;->h:I

    invoke-static {p2, p1, p3, v0}, Lr48;->L(IIII)Lr48;

    move-result-object p1

    :goto_0
    return-object p1

    .line 18
    :pswitch_7
    invoke-virtual {p0}, Lr48;->W()I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lr48;->T(J)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_8
    long-to-int p1, p2

    .line 19
    iget-byte p2, p0, Lr48;->g:B

    if-ne p2, p1, :cond_3

    move-object p1, p0

    goto :goto_1

    .line 20
    :cond_3
    sget-object p2, Lq68;->o:Lq68;

    int-to-long v0, p1

    .line 21
    iget-object p3, p2, Lq68;->h:Ld78;

    .line 22
    invoke-virtual {p3, v0, v1, p2}, Ld78;->b(JLy68;)J

    .line 23
    iget-byte p2, p0, Lr48;->e:B

    iget-byte p3, p0, Lr48;->f:B

    iget v0, p0, Lr48;->h:I

    invoke-static {p2, p3, p1, v0}, Lr48;->L(IIII)Lr48;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_9
    const-wide/32 v0, 0xf4240

    mul-long p2, p2, v0

    .line 24
    invoke-static {p2, p3}, Lr48;->O(J)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_a
    long-to-int p1, p2

    const p2, 0xf4240

    mul-int p1, p1, p2

    .line 25
    invoke-virtual {p0, p1}, Lr48;->Z(I)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_b
    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    .line 26
    invoke-static {p2, p3}, Lr48;->O(J)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_c
    long-to-int p1, p2

    mul-int/lit16 p1, p1, 0x3e8

    .line 27
    invoke-virtual {p0, p1}, Lr48;->Z(I)Lr48;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_d
    invoke-static {p2, p3}, Lr48;->O(J)Lr48;

    move-result-object p1

    return-object p1

    :pswitch_e
    long-to-int p1, p2

    .line 29
    invoke-virtual {p0, p1}, Lr48;->Z(I)Lr48;

    move-result-object p1

    return-object p1

    .line 30
    :cond_4
    invoke-interface {p1, p0, p2, p3}, Ly68;->l(Lt68;J)Lt68;

    move-result-object p1

    check-cast p1, Lr48;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
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

.method public Y(I)Lr48;
    .locals 4

    .line 1
    iget-byte v0, p0, Lr48;->e:B

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lq68;->u:Lq68;

    int-to-long v1, p1

    .line 3
    iget-object v3, v0, Lq68;->h:Ld78;

    .line 4
    invoke-virtual {v3, v1, v2, v0}, Ld78;->b(JLy68;)J

    .line 5
    iget-byte v0, p0, Lr48;->f:B

    iget-byte v1, p0, Lr48;->g:B

    iget v2, p0, Lr48;->h:I

    invoke-static {p1, v0, v1, v2}, Lr48;->L(IIII)Lr48;

    move-result-object p1

    return-object p1
.end method

.method public Z(I)Lr48;
    .locals 4

    .line 1
    iget v0, p0, Lr48;->h:I

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lq68;->i:Lq68;

    int-to-long v1, p1

    .line 3
    iget-object v3, v0, Lq68;->h:Ld78;

    .line 4
    invoke-virtual {v3, v1, v2, v0}, Ld78;->b(JLy68;)J

    .line 5
    iget-byte v0, p0, Lr48;->e:B

    iget-byte v1, p0, Lr48;->f:B

    iget-byte v2, p0, Lr48;->g:B

    invoke-static {v0, v1, v2, p1}, Lr48;->L(IIII)Lr48;

    move-result-object p1

    return-object p1
.end method

.method public a0(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lr48;->h:I

    if-nez v0, :cond_2

    .line 2
    iget-byte v0, p0, Lr48;->g:B

    if-nez v0, :cond_1

    .line 3
    iget-byte v0, p0, Lr48;->f:B

    if-nez v0, :cond_0

    .line 4
    iget-byte v0, p0, Lr48;->e:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-byte v0, p0, Lr48;->e:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 6
    iget-byte v0, p0, Lr48;->f:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-byte v0, p0, Lr48;->e:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 8
    iget-byte v0, p0, Lr48;->f:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 9
    iget-byte v0, p0, Lr48;->g:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-byte v0, p0, Lr48;->e:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 11
    iget-byte v0, p0, Lr48;->f:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 12
    iget-byte v0, p0, Lr48;->g:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 13
    iget v0, p0, Lr48;->h:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lr48;

    invoke-virtual {p0, p1}, Lr48;->K(Lr48;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lr48;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lr48;

    .line 3
    iget-byte v1, p0, Lr48;->e:B

    iget-byte v3, p1, Lr48;->e:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lr48;->f:B

    iget-byte v3, p1, Lr48;->f:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lr48;->g:B

    iget-byte v3, p1, Lr48;->g:B

    if-ne v1, v3, :cond_1

    iget v1, p0, Lr48;->h:I

    iget p1, p1, Lr48;->h:I

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
    invoke-virtual {p0}, Lr48;->V()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public bridge synthetic i(Ly68;J)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lr48;->X(Ly68;J)Lr48;

    move-result-object p1

    return-object p1
.end method

.method public k(Ly68;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lr48;->N(Ly68;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lp68;->k(Ly68;)I

    move-result p1

    return p1
.end method

.method public l(Lt68;)Lt68;
    .locals 3

    .line 1
    sget-object v0, Lq68;->j:Lq68;

    invoke-virtual {p0}, Lr48;->V()J

    move-result-wide v1

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
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-byte v1, p0, Lr48;->e:B

    .line 3
    iget-byte v2, p0, Lr48;->f:B

    .line 4
    iget-byte v3, p0, Lr48;->g:B

    .line 5
    iget v4, p0, Lr48;->h:I

    const/16 v5, 0xa

    if-ge v1, v5, :cond_0

    const-string v6, "0"

    goto :goto_0

    :cond_0
    const-string v6, ""

    .line 6
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":0"

    const-string v6, ":"

    if-ge v2, v5, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v6

    .line 7
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-gtz v3, :cond_2

    if-lez v4, :cond_6

    :cond_2
    if-ge v3, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v6

    .line 8
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v4, :cond_6

    const/16 v1, 0x2e

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v1, 0xf4240

    .line 10
    rem-int v2, v4, v1

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 11
    div-int/2addr v4, v1

    add-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 12
    :cond_4
    rem-int/lit16 v2, v4, 0x3e8

    if-nez v2, :cond_5

    .line 13
    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const v1, 0x3b9aca00

    add-int/2addr v4, v1

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_6
    :goto_3
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
    sget-object v0, Lz68;->g:La78;

    if-ne p1, v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    sget-object v0, Lz68;->b:La78;

    if-eq p1, v0, :cond_3

    sget-object v0, Lz68;->a:La78;

    if-eq p1, v0, :cond_3

    .line 5
    sget-object v0, Lz68;->d:La78;

    if-eq p1, v0, :cond_3

    sget-object v0, Lz68;->e:La78;

    if-eq p1, v0, :cond_3

    .line 6
    sget-object v0, Lz68;->f:La78;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p1, p0}, La78;->a(Lu68;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public x(Lv68;)Lt68;
    .locals 1

    .line 1
    instance-of v0, p1, Lr48;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lr48;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Lv68;->l(Lt68;)Lt68;

    move-result-object p1

    check-cast p1, Lr48;

    :goto_0
    return-object p1
.end method

.method public y(Ly68;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ly68;->y()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p0}, Ly68;->k(Lu68;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
