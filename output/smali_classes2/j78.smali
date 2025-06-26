.class public final Lj78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj78$a;
    }
.end annotation


# instance fields
.field public final e:Ls48;

.field public final f:B

.field public final g:Lm48;

.field public final h:Lr48;

.field public final i:I

.field public final j:Lj78$a;

.field public final k:La58;

.field public final l:La58;

.field public final m:La58;


# direct methods
.method public constructor <init>(Ls48;ILm48;Lr48;ILj78$a;La58;La58;La58;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj78;->e:Ls48;

    int-to-byte p1, p2

    .line 3
    iput-byte p1, p0, Lj78;->f:B

    .line 4
    iput-object p3, p0, Lj78;->g:Lm48;

    .line 5
    iput-object p4, p0, Lj78;->h:Lr48;

    .line 6
    iput p5, p0, Lj78;->i:I

    .line 7
    iput-object p6, p0, Lj78;->j:Lj78$a;

    .line 8
    iput-object p7, p0, Lj78;->k:La58;

    .line 9
    iput-object p8, p0, Lj78;->l:La58;

    .line 10
    iput-object p9, p0, Lj78;->m:La58;

    return-void
.end method

.method public static a(Ljava/io/DataInput;)Lj78;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1c

    .line 2
    invoke-static {v1}, Ls48;->O(I)Ls48;

    move-result-object v3

    const/high16 v1, 0xfc00000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x16

    add-int/lit8 v4, v1, -0x20

    const/high16 v1, 0x380000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x13

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Lm48;->L(I)Lm48;

    move-result-object v1

    :goto_0
    move-object v5, v1

    const v1, 0x7c000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0xe

    .line 4
    invoke-static {}, Lj78$a;->values()[Lj78$a;

    move-result-object v2

    and-int/lit16 v6, v0, 0x3000

    ushr-int/lit8 v6, v6, 0xc

    aget-object v8, v2, v6

    and-int/lit16 v2, v0, 0xff0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v6, v0, 0xc

    ushr-int/lit8 v6, v6, 0x2

    const/4 v7, 0x3

    and-int/2addr v0, v7

    const/16 v9, 0x1f

    if-ne v1, v9, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    goto :goto_1

    :cond_1
    mul-int/lit16 v1, v1, 0xe10

    :goto_1
    const/16 v10, 0xff

    if-ne v2, v10, :cond_2

    .line 6
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, -0x80

    mul-int/lit16 v2, v2, 0x384

    :goto_2
    invoke-static {v2}, La58;->Q(I)La58;

    move-result-object v2

    move-object v10, v2

    if-ne v6, v7, :cond_3

    .line 7
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-static {v2}, La58;->Q(I)La58;

    move-result-object v2

    goto :goto_3

    .line 8
    :cond_3
    iget v2, v10, La58;->f:I

    mul-int/lit16 v6, v6, 0x708

    add-int/2addr v6, v2

    .line 9
    invoke-static {v6}, La58;->Q(I)La58;

    move-result-object v2

    :goto_3
    move-object v11, v2

    if-ne v0, v7, :cond_4

    .line 10
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, La58;->Q(I)La58;

    move-result-object p0

    goto :goto_4

    .line 11
    :cond_4
    iget p0, v10, La58;->f:I

    mul-int/lit16 v0, v0, 0x708

    add-int/2addr v0, p0

    .line 12
    invoke-static {v0}, La58;->Q(I)La58;

    move-result-object p0

    :goto_4
    const/16 v0, -0x1c

    if-lt v4, v0, :cond_6

    if-gt v4, v9, :cond_6

    if-eqz v4, :cond_6

    const v0, 0x15180

    .line 13
    invoke-static {v1, v0}, Lkt7;->g(II)I

    move-result v2

    int-to-long v6, v2

    .line 14
    sget-object v2, Lr48;->i:Lr48;

    .line 15
    sget-object v2, Lq68;->p:Lq68;

    .line 16
    iget-object v9, v2, Lq68;->h:Ld78;

    .line 17
    invoke-virtual {v9, v6, v7, v2}, Ld78;->b(JLy68;)J

    const-wide/16 v12, 0xe10

    .line 18
    div-long v12, v6, v12

    long-to-int v2, v12

    mul-int/lit16 v9, v2, 0xe10

    int-to-long v12, v9

    sub-long/2addr v6, v12

    const-wide/16 v12, 0x3c

    .line 19
    div-long v12, v6, v12

    long-to-int v9, v12

    mul-int/lit8 v12, v9, 0x3c

    int-to-long v12, v12

    sub-long/2addr v6, v12

    long-to-int v7, v6

    const/4 v6, 0x0

    .line 20
    invoke-static {v2, v9, v7, v6}, Lr48;->L(IIII)Lr48;

    move-result-object v6

    if-ltz v1, :cond_5

    .line 21
    div-int/2addr v1, v0

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_5
    move v7, v1

    .line 22
    new-instance v0, Lj78;

    move-object v2, v0

    move-object v9, v10

    move-object v10, v11

    move-object v11, p0

    invoke-direct/range {v2 .. v11}, Lj78;-><init>(Ls48;ILm48;Lr48;ILj78$a;La58;La58;La58;)V

    return-object v0

    .line 23
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lf78;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lf78;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/io/DataOutput;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj78;->h:Lr48;

    invoke-virtual {v0}, Lr48;->W()I

    move-result v0

    iget v1, p0, Lj78;->i:I

    const v2, 0x15180

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    .line 2
    iget-object v0, p0, Lj78;->k:La58;

    .line 3
    iget v0, v0, La58;->f:I

    .line 4
    iget-object v3, p0, Lj78;->l:La58;

    .line 5
    iget v3, v3, La58;->f:I

    sub-int/2addr v3, v0

    .line 6
    iget-object v4, p0, Lj78;->m:La58;

    .line 7
    iget v4, v4, La58;->f:I

    sub-int/2addr v4, v0

    .line 8
    rem-int/lit16 v5, v1, 0xe10

    const/16 v6, 0x1f

    if-nez v5, :cond_1

    if-gt v1, v2, :cond_1

    if-ne v1, v2, :cond_0

    const/16 v2, 0x18

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lj78;->h:Lr48;

    .line 10
    iget-byte v2, v2, Lr48;->e:B

    goto :goto_0

    :cond_1
    const/16 v2, 0x1f

    .line 11
    :goto_0
    rem-int/lit16 v5, v0, 0x384

    const/16 v7, 0xff

    if-nez v5, :cond_2

    div-int/lit16 v5, v0, 0x384

    add-int/lit16 v5, v5, 0x80

    goto :goto_1

    :cond_2
    const/16 v5, 0xff

    :goto_1
    const/16 v8, 0x708

    const/16 v9, 0xe10

    const/4 v10, 0x3

    if-eqz v3, :cond_4

    if-eq v3, v8, :cond_4

    if-ne v3, v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    goto :goto_3

    .line 12
    :cond_4
    :goto_2
    div-int/2addr v3, v8

    :goto_3
    if-eqz v4, :cond_6

    if-eq v4, v8, :cond_6

    if-ne v4, v9, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x3

    goto :goto_5

    .line 13
    :cond_6
    :goto_4
    div-int/2addr v4, v8

    .line 14
    :goto_5
    iget-object v8, p0, Lj78;->g:Lm48;

    if-nez v8, :cond_7

    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    invoke-virtual {v8}, Lm48;->K()I

    move-result v8

    .line 15
    :goto_6
    iget-object v9, p0, Lj78;->e:Ls48;

    invoke-virtual {v9}, Ls48;->L()I

    move-result v9

    shl-int/lit8 v9, v9, 0x1c

    iget-byte v11, p0, Lj78;->f:B

    add-int/lit8 v11, v11, 0x20

    shl-int/lit8 v11, v11, 0x16

    add-int/2addr v9, v11

    shl-int/lit8 v8, v8, 0x13

    add-int/2addr v9, v8

    shl-int/lit8 v8, v2, 0xe

    add-int/2addr v9, v8

    iget-object v8, p0, Lj78;->j:Lj78$a;

    .line 16
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    shl-int/lit8 v8, v8, 0xc

    add-int/2addr v9, v8

    shl-int/lit8 v8, v5, 0x4

    add-int/2addr v9, v8

    shl-int/lit8 v8, v3, 0x2

    add-int/2addr v9, v8

    add-int/2addr v9, v4

    .line 17
    invoke-interface {p1, v9}, Ljava/io/DataOutput;->writeInt(I)V

    if-ne v2, v6, :cond_8

    .line 18
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_8
    if-ne v5, v7, :cond_9

    .line 19
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_9
    if-ne v3, v10, :cond_a

    .line 20
    iget-object v0, p0, Lj78;->l:La58;

    .line 21
    iget v0, v0, La58;->f:I

    .line 22
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_a
    if-ne v4, v10, :cond_b

    .line 23
    iget-object v0, p0, Lj78;->m:La58;

    .line 24
    iget v0, v0, La58;->f:I

    .line 25
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lj78;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lj78;

    .line 3
    iget-object v1, p0, Lj78;->e:Ls48;

    iget-object v3, p1, Lj78;->e:Ls48;

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lj78;->f:B

    iget-byte v3, p1, Lj78;->f:B

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lj78;->g:Lm48;

    iget-object v3, p1, Lj78;->g:Lm48;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lj78;->j:Lj78$a;

    iget-object v3, p1, Lj78;->j:Lj78$a;

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj78;->i:I

    iget v3, p1, Lj78;->i:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lj78;->h:Lr48;

    iget-object v3, p1, Lj78;->h:Lr48;

    .line 4
    invoke-virtual {v1, v3}, Lr48;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj78;->k:La58;

    iget-object v3, p1, Lj78;->k:La58;

    .line 5
    invoke-virtual {v1, v3}, La58;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj78;->l:La58;

    iget-object v3, p1, Lj78;->l:La58;

    .line 6
    invoke-virtual {v1, v3}, La58;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj78;->m:La58;

    iget-object p1, p1, Lj78;->m:La58;

    .line 7
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
    iget-object v0, p0, Lj78;->h:Lr48;

    invoke-virtual {v0}, Lr48;->W()I

    move-result v0

    iget v1, p0, Lj78;->i:I

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Lj78;->e:Ls48;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-byte v1, p0, Lj78;->f:B

    add-int/lit8 v1, v1, 0x20

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lj78;->g:Lm48;

    if-nez v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_0
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lj78;->j:Lj78$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v1, v0

    .line 4
    iget-object v0, p0, Lj78;->k:La58;

    .line 5
    iget v0, v0, La58;->f:I

    xor-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lj78;->l:La58;

    .line 7
    iget v1, v1, La58;->f:I

    xor-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lj78;->m:La58;

    .line 9
    iget v1, v1, La58;->f:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const-string v0, "TransitionRule["

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lj78;->l:La58;

    iget-object v2, p0, Lj78;->m:La58;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v2, v2, La58;->f:I

    iget v1, v1, La58;->f:I

    sub-int/2addr v2, v1

    if-lez v2, :cond_0

    const-string v1, "Gap "

    goto :goto_0

    :cond_0
    const-string v1, "Overlap "

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj78;->l:La58;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj78;->m:La58;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lj78;->g:Lm48;

    const/16 v2, 0x20

    if-eqz v1, :cond_3

    .line 8
    iget-byte v3, p0, Lj78;->f:B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on or before last day of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj78;->e:Ls48;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-gez v3, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on or before last day minus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lj78;->f:B

    neg-int v1, v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj78;->e:Ls48;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on or after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj78;->e:Ls48;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lj78;->f:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, p0, Lj78;->e:Ls48;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lj78;->f:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, " at "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Lj78;->i:I

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Lj78;->h:Lr48;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 16
    :cond_4
    iget-object v1, p0, Lj78;->h:Lr48;

    invoke-virtual {v1}, Lr48;->W()I

    move-result v1

    const/16 v2, 0x3c

    div-int/2addr v1, v2

    iget v3, p0, Lj78;->i:I

    mul-int/lit8 v3, v3, 0x18

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v1

    int-to-long v3, v3

    const-wide/16 v5, 0x3c

    .line 17
    invoke-static {v3, v4, v5, v6}, Lkt7;->f(JJ)J

    move-result-wide v5

    const/4 v1, 0x0

    const-wide/16 v7, 0xa

    cmp-long v9, v5, v7

    if-gez v9, :cond_5

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    :cond_5
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    .line 20
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {v3, v4, v2}, Lkt7;->h(JI)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v7

    if-gez v4, :cond_6

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    :cond_6
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, " "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj78;->j:Lj78$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", standard offset "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj78;->k:La58;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
