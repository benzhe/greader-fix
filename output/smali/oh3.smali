.class public final Loh3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [I

    const-string v1, "isom"

    .line 1
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "iso2"

    .line 2
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "iso3"

    .line 3
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string v1, "iso4"

    .line 4
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string v1, "iso5"

    .line 5
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const-string v1, "iso6"

    .line 6
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    const-string v1, "avc1"

    .line 7
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    const-string v1, "hvc1"

    .line 8
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const-string v1, "hev1"

    .line 9
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    const-string v1, "mp41"

    .line 10
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    const-string v1, "mp42"

    .line 11
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    const-string v1, "3g2a"

    .line 12
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    const-string v1, "3g2b"

    .line 13
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    const-string v1, "3gr6"

    .line 14
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    const-string v1, "3gs6"

    .line 15
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    const-string v1, "3ge6"

    .line 16
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xf

    aput v1, v0, v2

    const-string v1, "3gg6"

    .line 17
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x10

    aput v1, v0, v2

    const-string v1, "M4V "

    .line 18
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    aput v1, v0, v2

    const-string v1, "M4A "

    .line 19
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x12

    aput v1, v0, v2

    const-string v1, "f4v "

    .line 20
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x13

    aput v1, v0, v2

    const-string v1, "kddi"

    .line 21
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    aput v1, v0, v2

    const-string v1, "M4VP"

    .line 22
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    aput v1, v0, v2

    const-string v1, "qt  "

    .line 23
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x16

    aput v1, v0, v2

    const-string v1, "MSNV"

    .line 24
    invoke-static {v1}, Lel3;->f(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x17

    aput v1, v0, v2

    sput-object v0, Loh3;->a:[I

    return-void
.end method

.method public static a(Lgg3;Z)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    check-cast v0, Leg3;

    .line 2
    iget-wide v1, v0, Leg3;->b:J

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x1000

    cmp-long v7, v1, v3

    if-eqz v7, :cond_0

    cmp-long v3, v1, v5

    if-lez v3, :cond_1

    :cond_0
    move-wide v1, v5

    :cond_1
    long-to-int v2, v1

    .line 3
    new-instance v1, Lal3;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Lal3;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    :goto_0
    if-ge v4, v2, :cond_f

    const/16 v7, 0x8

    .line 4
    invoke-virtual {v1, v7}, Lal3;->f(I)V

    .line 5
    iget-object v8, v1, Lal3;->a:[B

    invoke-virtual {v0, v8, v3, v7}, Leg3;->b([BII)V

    .line 6
    invoke-virtual {v1}, Lal3;->n()J

    move-result-wide v8

    .line 7
    invoke-virtual {v1}, Lal3;->b()I

    move-result v10

    const-wide/16 v11, 0x1

    const/16 v13, 0x10

    cmp-long v14, v8, v11

    if-nez v14, :cond_3

    .line 8
    iget-object v8, v1, Lal3;->a:[B

    invoke-virtual {v0, v8, v7, v7}, Leg3;->b([BII)V

    .line 9
    invoke-virtual {v1, v13}, Lal3;->g(I)V

    .line 10
    invoke-virtual {v1}, Lal3;->p()J

    move-result-wide v8

    goto :goto_1

    :cond_3
    const/16 v13, 0x8

    :goto_1
    int-to-long v11, v13

    cmp-long v14, v8, v11

    if-gez v14, :cond_4

    return v3

    :cond_4
    add-int/2addr v4, v13

    .line 11
    sget v13, Lah3;->C:I

    if-eq v10, v13, :cond_2

    .line 12
    sget v13, Lah3;->L:I

    if-eq v10, v13, :cond_e

    sget v13, Lah3;->N:I

    if-ne v10, v13, :cond_5

    goto :goto_8

    :cond_5
    int-to-long v13, v4

    add-long/2addr v13, v8

    sub-long/2addr v13, v11

    int-to-long v6, v2

    cmp-long v15, v13, v6

    if-gez v15, :cond_f

    sub-long/2addr v8, v11

    long-to-int v6, v8

    add-int/2addr v4, v6

    .line 13
    sget v7, Lah3;->b:I

    if-ne v10, v7, :cond_d

    const/16 v7, 0x8

    if-ge v6, v7, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {v1, v6}, Lal3;->f(I)V

    .line 15
    iget-object v7, v1, Lal3;->a:[B

    invoke-virtual {v0, v7, v3, v6}, Leg3;->b([BII)V

    .line 16
    div-int/lit8 v6, v6, 0x4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_c

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    const/4 v8, 0x4

    .line 17
    invoke-virtual {v1, v8}, Lal3;->i(I)V

    goto :goto_6

    .line 18
    :cond_7
    invoke-virtual {v1}, Lal3;->b()I

    move-result v8

    ushr-int/lit8 v9, v8, 0x8

    const-string v10, "3gp"

    .line 19
    invoke-static {v10}, Lel3;->f(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_8

    goto :goto_4

    .line 20
    :cond_8
    sget-object v9, Loh3;->a:[I

    array-length v10, v9

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_a

    aget v12, v9, v11

    if-ne v12, v8, :cond_9

    :goto_4
    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_b

    const/4 v5, 0x1

    goto :goto_7

    :cond_b
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_c
    :goto_7
    if-nez v5, :cond_2

    return v3

    :cond_d
    if-eqz v6, :cond_2

    .line 21
    invoke-virtual {v0, v6}, Leg3;->g(I)Z

    goto/16 :goto_0

    :cond_e
    :goto_8
    const/4 v8, 0x1

    goto :goto_9

    :cond_f
    const/4 v8, 0x0

    :goto_9
    if-eqz v5, :cond_10

    move/from16 v0, p1

    if-ne v0, v8, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    return v3
.end method
