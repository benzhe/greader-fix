.class public final Lpb4;
.super Lmb4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmb4;-><init>()V

    return-void
.end method

.method public static d([BIJI)I
    .locals 3

    const/4 v0, -0x1

    const/16 v1, -0xc

    if-eqz p4, :cond_4

    const/4 v2, 0x1

    if-eq p4, v2, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 1
    invoke-static {p0, p2, p3}, Llb4;->r([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Llb4;->r([BJ)B

    move-result p0

    .line 2
    invoke-static {p1, p4, p0}, Lqb4;->d(III)I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_1
    invoke-static {p0, p2, p3}, Llb4;->r([BJ)B

    move-result p0

    .line 6
    sget-object p2, Lqb4;->a:Lmb4;

    if-gt p1, v1, :cond_3

    const/16 p2, -0x41

    if-le p0, p2, :cond_2

    goto :goto_0

    :cond_2
    shl-int/lit8 p0, p0, 0x8

    xor-int v0, p1, p0

    :cond_3
    :goto_0
    return v0

    .line 7
    :cond_4
    sget-object p0, Lqb4;->a:Lmb4;

    if-le p1, v1, :cond_5

    const/4 p1, -0x1

    :cond_5
    return p1
.end method


# virtual methods
.method public final a(I[BII)I
    .locals 15

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    .line 1
    array-length v3, v0

    or-int v4, v1, v2

    sub-int v5, v3, v2

    or-int/2addr v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ltz v4, :cond_10

    int-to-long v3, v1

    int-to-long v1, v2

    sub-long/2addr v1, v3

    long-to-int v2, v1

    const/16 v1, 0x10

    const-wide/16 v8, 0x1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    move-wide v10, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    add-long v12, v10, v8

    .line 2
    invoke-static {v0, v10, v11}, Llb4;->r([BJ)B

    move-result v10

    if-ltz v10, :cond_2

    add-int/lit8 v1, v1, 0x1

    move-wide v10, v12

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    sub-int/2addr v2, v1

    int-to-long v10, v1

    add-long/2addr v3, v10

    :cond_3
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-lez v2, :cond_5

    add-long v10, v3, v8

    .line 3
    invoke-static {v0, v3, v4}, Llb4;->r([BJ)B

    move-result v1

    if-ltz v1, :cond_4

    add-int/lit8 v2, v2, -0x1

    move-wide v3, v10

    goto :goto_3

    :cond_4
    move-wide v3, v10

    :cond_5
    const/4 v10, -0x1

    if-nez v2, :cond_6

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v2, v2, -0x1

    const/16 v11, -0x20

    const/16 v12, -0x41

    if-ge v1, v11, :cond_a

    if-eqz v2, :cond_9

    add-int/lit8 v2, v2, -0x1

    const/16 v11, -0x3e

    if-lt v1, v11, :cond_8

    add-long v13, v3, v8

    .line 4
    invoke-static {v0, v3, v4}, Llb4;->r([BJ)B

    move-result v1

    if-le v1, v12, :cond_7

    goto :goto_4

    :cond_7
    move-wide v3, v13

    goto :goto_2

    :cond_8
    :goto_4
    const/4 v7, -0x1

    goto :goto_5

    :cond_9
    move v7, v1

    goto :goto_5

    :cond_a
    const/16 v13, -0x10

    if-ge v1, v13, :cond_e

    if-ge v2, v5, :cond_b

    .line 5
    invoke-static {v0, v1, v3, v4, v2}, Lpb4;->d([BIJI)I

    move-result v7

    goto :goto_5

    :cond_b
    add-int/lit8 v2, v2, -0x2

    add-long v13, v3, v8

    .line 6
    invoke-static {v0, v3, v4}, Llb4;->r([BJ)B

    move-result v3

    if-gt v3, v12, :cond_8

    const/16 v4, -0x60

    if-ne v1, v11, :cond_c

    if-lt v3, v4, :cond_8

    :cond_c
    const/16 v11, -0x13

    if-ne v1, v11, :cond_d

    if-ge v3, v4, :cond_8

    :cond_d
    add-long v3, v13, v8

    .line 7
    invoke-static {v0, v13, v14}, Llb4;->r([BJ)B

    move-result v1

    if-le v1, v12, :cond_3

    goto :goto_4

    :cond_e
    if-ge v2, v6, :cond_f

    .line 8
    invoke-static {v0, v1, v3, v4, v2}, Lpb4;->d([BIJI)I

    move-result v7

    goto :goto_5

    :cond_f
    add-int/lit8 v2, v2, -0x3

    add-long v13, v3, v8

    .line 9
    invoke-static {v0, v3, v4}, Llb4;->r([BJ)B

    move-result v3

    if-gt v3, v12, :cond_8

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v3, v1

    shr-int/lit8 v1, v3, 0x1e

    if-nez v1, :cond_8

    add-long v3, v13, v8

    .line 10
    invoke-static {v0, v13, v14}, Llb4;->r([BJ)B

    move-result v1

    if-gt v1, v12, :cond_8

    add-long v13, v3, v8

    .line 11
    invoke-static {v0, v3, v4}, Llb4;->r([BJ)B

    move-result v1

    if-le v1, v12, :cond_7

    goto :goto_4

    :goto_5
    return v7

    .line 12
    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v4, v6, [Ljava/lang/Object;

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "Array length=%d, index=%d, limit=%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b([BII)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ll94;
        }
    .end annotation

    .line 1
    array-length v0, p1

    or-int v1, p2, p3

    sub-int v2, v0, p2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_c

    add-int v0, p2, p3

    .line 2
    new-array p3, p3, [C

    const/4 v1, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    int-to-long v4, p2

    .line 3
    invoke-static {p1, v4, v5}, Llb4;->r([BJ)B

    move-result v4

    invoke-static {v4}, Lc50;->v2(B)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v1, 0x1

    int-to-char v4, v4

    .line 4
    aput-char v4, p3, v1

    move v1, v5

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p2, v0, :cond_b

    add-int/lit8 v4, p2, 0x1

    int-to-long v5, p2

    .line 5
    invoke-static {p1, v5, v6}, Llb4;->r([BJ)B

    move-result p2

    invoke-static {p2}, Lc50;->v2(B)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v1, 0x1

    int-to-char p2, p2

    .line 6
    aput-char p2, p3, v1

    move p2, v4

    :goto_2
    move v1, v5

    if-ge p2, v0, :cond_1

    int-to-long v4, p2

    .line 7
    invoke-static {p1, v4, v5}, Llb4;->r([BJ)B

    move-result v4

    invoke-static {v4}, Lc50;->v2(B)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v1, 0x1

    int-to-char v4, v4

    .line 8
    aput-char v4, p3, v1

    goto :goto_2

    :cond_3
    const/16 v5, -0x20

    if-ge p2, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    if-ge v4, v0, :cond_5

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v1, 0x1

    int-to-long v7, v4

    .line 9
    invoke-static {p1, v7, v8}, Llb4;->r([BJ)B

    move-result v4

    .line 10
    invoke-static {p2, v4, p3, v1}, Lc50;->B3(BB[CI)V

    move p2, v5

    move v1, v6

    goto :goto_1

    .line 11
    :cond_5
    invoke-static {}, Ll94;->d()Ll94;

    move-result-object p1

    throw p1

    :cond_6
    const/16 v5, -0x10

    if-ge p2, v5, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_9

    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_8

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v1, 0x1

    int-to-long v8, v4

    .line 12
    invoke-static {p1, v8, v9}, Llb4;->r([BJ)B

    move-result v4

    int-to-long v8, v5

    .line 13
    invoke-static {p1, v8, v9}, Llb4;->r([BJ)B

    move-result v5

    .line 14
    invoke-static {p2, v4, v5, p3, v1}, Lc50;->P3(BBB[CI)V

    move p2, v6

    move v1, v7

    goto :goto_1

    .line 15
    :cond_8
    invoke-static {}, Ll94;->d()Ll94;

    move-result-object p1

    throw p1

    :cond_9
    add-int/lit8 v5, v0, -0x2

    if-ge v4, v5, :cond_a

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v10, v6, 0x1

    int-to-long v7, v4

    .line 16
    invoke-static {p1, v7, v8}, Llb4;->r([BJ)B

    move-result v7

    int-to-long v4, v5

    .line 17
    invoke-static {p1, v4, v5}, Llb4;->r([BJ)B

    move-result v8

    int-to-long v4, v6

    .line 18
    invoke-static {p1, v4, v5}, Llb4;->r([BJ)B

    move-result v9

    move v4, p2

    move v5, v7

    move v6, v8

    move v7, v9

    move-object v8, p3

    move v9, v1

    .line 19
    invoke-static/range {v4 .. v9}, Lc50;->X3(BBBB[CI)V

    add-int/lit8 v1, v1, 0x2

    move p2, v10

    goto/16 :goto_1

    .line 20
    :cond_a
    invoke-static {}, Ll94;->d()Ll94;

    move-result-object p1

    throw p1

    .line 21
    :cond_b
    new-instance p1, Ljava/lang/String;

    .line 22
    invoke-direct {p1, p3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 23
    :cond_c
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/CharSequence;[BII)I
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    .line 2
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 3
    invoke-static {v1, v4, v5, v3}, Llb4;->s([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-eq v2, v8, :cond_b

    :goto_1
    if-ge v2, v8, :cond_a

    .line 4
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_1

    cmp-long v14, v4, v6

    if-gez v14, :cond_1

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 5
    invoke-static {v1, v4, v5, v13}, Llb4;->s([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    :goto_2
    const/16 v11, 0x80

    goto/16 :goto_3

    :cond_1
    const/16 v14, 0x800

    if-ge v13, v14, :cond_2

    const-wide/16 v14, -0x2

    add-long/2addr v14, v6

    cmp-long v16, v4, v14

    if-gtz v16, :cond_2

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 6
    invoke-static {v1, v4, v5, v3}, Llb4;->s([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 7
    invoke-static {v1, v14, v15, v5}, Llb4;->s([BJB)V

    move-wide/from16 v20, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v20

    goto/16 :goto_3

    :cond_2
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_3

    if-le v13, v3, :cond_4

    :cond_3
    const-wide/16 v15, -0x3

    add-long/2addr v15, v6

    cmp-long v17, v4, v15

    if-gtz v17, :cond_4

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 8
    invoke-static {v1, v4, v5, v3}, Llb4;->s([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 9
    invoke-static {v1, v14, v15, v5}, Llb4;->s([BJB)V

    const-wide/16 v14, 0x1

    add-long v18, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 10
    invoke-static {v1, v3, v4, v5}, Llb4;->s([BJB)V

    move-wide/from16 v12, v18

    const-wide/16 v4, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v11, -0x4

    add-long/2addr v11, v6

    cmp-long v15, v4, v11

    if-gtz v15, :cond_7

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_6

    .line 11
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 12
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    .line 13
    invoke-static {v1, v4, v5, v15}, Llb4;->s([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    .line 14
    invoke-static {v1, v13, v14, v12}, Llb4;->s([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    .line 15
    invoke-static {v1, v4, v5, v12}, Llb4;->s([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    .line 16
    invoke-static {v1, v14, v15, v2}, Llb4;->s([BJB)V

    move v2, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x80

    move-wide/from16 v20, v4

    move-wide v4, v12

    move-wide/from16 v11, v20

    goto/16 :goto_1

    :cond_5
    move v2, v3

    .line 17
    :cond_6
    new-instance v0, Lob4;

    add-int/lit8 v2, v2, -0x1

    .line 18
    invoke-direct {v0, v2, v8}, Lob4;-><init>(II)V

    throw v0

    :cond_7
    if-lt v13, v14, :cond_9

    if-gt v13, v3, :cond_9

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_8

    .line 19
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    new-instance v0, Lob4;

    .line 20
    invoke-direct {v0, v2, v8}, Lob4;-><init>(II)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    long-to-int v0, v4

    return v0

    :cond_b
    long-to-int v0, v4

    return v0

    .line 22
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 23
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
