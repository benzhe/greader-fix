.class public final Lbh3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "vide"

    .line 1
    invoke-static {v0}, Lel3;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbh3;->a:I

    const-string v0, "soun"

    .line 2
    invoke-static {v0}, Lel3;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbh3;->b:I

    const-string v0, "text"

    .line 3
    invoke-static {v0}, Lel3;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbh3;->c:I

    const-string v0, "sbtl"

    .line 4
    invoke-static {v0}, Lel3;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbh3;->d:I

    const-string v0, "subt"

    .line 5
    invoke-static {v0}, Lel3;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbh3;->e:I

    const-string v0, "clcp"

    .line 6
    invoke-static {v0}, Lel3;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbh3;->f:I

    const-string v0, "cenc"

    .line 7
    invoke-static {v0}, Lel3;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbh3;->g:I

    const-string v0, "meta"

    .line 8
    invoke-static {v0}, Lel3;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbh3;->h:I

    return-void
.end method

.method public static a(Lal3;IILgh3;I)I
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lal3;->b:I

    :goto_0
    sub-int v2, v1, p1

    const/4 v3, 0x0

    move/from16 v4, p2

    if-ge v2, v4, :cond_d

    .line 2
    invoke-virtual {v0, v1}, Lal3;->h(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lal3;->b()I

    move-result v2

    const/4 v5, 0x1

    if-lez v2, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const-string v7, "childAtomSize should be positive"

    .line 4
    invoke-static {v6, v7}, Lc50;->s(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lal3;->b()I

    move-result v6

    .line 6
    sget v7, Lah3;->W:I

    if-ne v6, v7, :cond_c

    add-int/lit8 v6, v1, 0x8

    const/4 v7, 0x0

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    :goto_2
    sub-int v11, v6, v1

    if-ge v11, v2, :cond_8

    .line 7
    invoke-virtual {v0, v6}, Lal3;->h(I)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lal3;->b()I

    move-result v11

    .line 9
    invoke-virtual/range {p0 .. p0}, Lal3;->b()I

    move-result v12

    .line 10
    sget v13, Lah3;->c0:I

    if-ne v12, v13, :cond_1

    .line 11
    invoke-virtual/range {p0 .. p0}, Lal3;->b()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5

    .line 12
    :cond_1
    sget v13, Lah3;->X:I

    if-ne v12, v13, :cond_3

    const/4 v8, 0x4

    .line 13
    invoke-virtual {v0, v8}, Lal3;->i(I)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lal3;->b()I

    move-result v8

    sget v12, Lbh3;->g:I

    if-ne v8, v12, :cond_2

    const/4 v8, 0x1

    goto :goto_5

    :cond_2
    const/4 v8, 0x0

    goto :goto_5

    .line 15
    :cond_3
    sget v13, Lah3;->Y:I

    if-ne v12, v13, :cond_7

    add-int/lit8 v10, v6, 0x8

    :goto_3
    sub-int v12, v10, v6

    if-ge v12, v11, :cond_6

    .line 16
    invoke-virtual {v0, v10}, Lal3;->h(I)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lal3;->b()I

    move-result v12

    .line 18
    invoke-virtual/range {p0 .. p0}, Lal3;->b()I

    move-result v13

    .line 19
    sget v14, Lah3;->Z:I

    if-ne v13, v14, :cond_5

    const/4 v10, 0x6

    .line 20
    invoke-virtual {v0, v10}, Lal3;->i(I)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lal3;->d()I

    move-result v10

    if-ne v10, v5, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 22
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lal3;->d()I

    move-result v12

    const/16 v13, 0x10

    new-array v14, v13, [B

    .line 23
    iget-object v15, v0, Lal3;->a:[B

    iget v5, v0, Lal3;->b:I

    invoke-static {v15, v5, v14, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget v5, v0, Lal3;->b:I

    add-int/2addr v5, v13

    iput v5, v0, Lal3;->b:I

    .line 25
    new-instance v5, Lqh3;

    invoke-direct {v5, v10, v12, v14}, Lqh3;-><init>(ZI[B)V

    move-object v10, v5

    goto :goto_5

    :cond_5
    add-int/2addr v10, v12

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    move-object v10, v7

    :cond_7
    :goto_5
    add-int/2addr v6, v11

    const/4 v5, 0x1

    goto :goto_2

    :cond_8
    if-eqz v8, :cond_b

    if-eqz v9, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    const-string v6, "frma atom is mandatory"

    .line 26
    invoke-static {v5, v6}, Lc50;->s(ZLjava/lang/Object;)V

    if-eqz v10, :cond_a

    const/4 v3, 0x1

    :cond_a
    const-string v5, "schi->tenc atom is mandatory"

    .line 27
    invoke-static {v3, v5}, Lc50;->s(ZLjava/lang/Object;)V

    .line 28
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    :cond_b
    if-eqz v7, :cond_c

    move-object/from16 v5, p3

    .line 29
    iget-object v0, v5, Lgh3;->a:[Lqh3;

    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lqh3;

    aput-object v1, v0, p4

    .line 30
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_c
    move-object/from16 v5, p3

    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_d
    return v3
.end method

.method public static b(Lzg3;Lch3;JLcom/google/android/gms/internal/ads/zzjo;Z)Lrh3;
    .locals 65
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lne3;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget v1, Lah3;->F:I

    invoke-virtual {v0, v1}, Lzg3;->c(I)Lzg3;

    move-result-object v1

    .line 2
    sget v2, Lah3;->T:I

    invoke-virtual {v1, v2}, Lzg3;->b(I)Lch3;

    move-result-object v2

    iget-object v2, v2, Lch3;->P0:Lal3;

    const/16 v3, 0x10

    .line 3
    invoke-virtual {v2, v3}, Lal3;->h(I)V

    .line 4
    invoke-virtual {v2}, Lal3;->b()I

    move-result v2

    .line 5
    sget v4, Lbh3;->b:I

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x4

    if-ne v2, v4, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    .line 6
    :cond_0
    sget v4, Lbh3;->a:I

    if-ne v2, v4, :cond_1

    const/4 v12, 0x2

    goto :goto_1

    .line 7
    :cond_1
    sget v4, Lbh3;->c:I

    if-eq v2, v4, :cond_4

    sget v4, Lbh3;->d:I

    if-eq v2, v4, :cond_4

    sget v4, Lbh3;->e:I

    if-eq v2, v4, :cond_4

    sget v4, Lbh3;->f:I

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget v4, Lbh3;->h:I

    if-ne v2, v4, :cond_3

    const/4 v12, 0x4

    goto :goto_1

    :cond_3
    const/4 v12, -0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v12, 0x3

    :goto_1
    const/4 v2, 0x0

    if-ne v12, v6, :cond_5

    return-object v2

    .line 9
    :cond_5
    sget v4, Lah3;->P:I

    invoke-virtual {v0, v4}, Lzg3;->b(I)Lch3;

    move-result-object v4

    iget-object v4, v4, Lch3;->P0:Lal3;

    const/16 v10, 0x8

    .line 10
    invoke-virtual {v4, v10}, Lal3;->h(I)V

    .line 11
    invoke-virtual {v4}, Lal3;->b()I

    move-result v11

    shr-int/lit8 v11, v11, 0x18

    and-int/lit16 v11, v11, 0xff

    if-nez v11, :cond_6

    const/16 v13, 0x8

    goto :goto_2

    :cond_6
    const/16 v13, 0x10

    .line 12
    :goto_2
    invoke-virtual {v4, v13}, Lal3;->i(I)V

    .line 13
    invoke-virtual {v4}, Lal3;->b()I

    move-result v13

    .line 14
    invoke-virtual {v4, v7}, Lal3;->i(I)V

    .line 15
    iget v14, v4, Lal3;->b:I

    if-nez v11, :cond_7

    const/4 v15, 0x4

    goto :goto_3

    :cond_7
    const/16 v15, 0x8

    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v15, :cond_9

    .line 16
    iget-object v9, v4, Lal3;->a:[B

    add-int v19, v14, v8

    aget-byte v9, v9, v19

    if-eq v9, v6, :cond_8

    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    const/4 v8, 0x1

    :goto_5
    const-wide/16 v19, 0x0

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_a

    .line 17
    invoke-virtual {v4, v15}, Lal3;->i(I)V

    goto :goto_7

    :cond_a
    if-nez v11, :cond_b

    .line 18
    invoke-virtual {v4}, Lal3;->n()J

    move-result-wide v8

    goto :goto_6

    :cond_b
    invoke-virtual {v4}, Lal3;->p()J

    move-result-wide v8

    :goto_6
    cmp-long v11, v8, v19

    if-nez v11, :cond_c

    :goto_7
    move-wide/from16 v8, v21

    .line 19
    :cond_c
    invoke-virtual {v4, v3}, Lal3;->i(I)V

    .line 20
    invoke-virtual {v4}, Lal3;->b()I

    move-result v11

    .line 21
    invoke-virtual {v4}, Lal3;->b()I

    move-result v14

    .line 22
    invoke-virtual {v4, v7}, Lal3;->i(I)V

    .line 23
    invoke-virtual {v4}, Lal3;->b()I

    move-result v15

    .line 24
    invoke-virtual {v4}, Lal3;->b()I

    move-result v4

    const/high16 v6, 0x10000

    const/high16 v7, -0x10000

    if-nez v11, :cond_d

    if-ne v14, v6, :cond_d

    if-ne v15, v7, :cond_d

    if-nez v4, :cond_d

    const/16 v4, 0x5a

    goto :goto_8

    :cond_d
    if-nez v11, :cond_e

    if-ne v14, v7, :cond_e

    if-ne v15, v6, :cond_e

    if-nez v4, :cond_e

    const/16 v4, 0x10e

    goto :goto_8

    :cond_e
    if-ne v11, v7, :cond_f

    if-nez v14, :cond_f

    if-nez v15, :cond_f

    if-ne v4, v7, :cond_f

    const/16 v4, 0xb4

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_8
    cmp-long v6, p2, v21

    if-nez v6, :cond_10

    move-object/from16 v6, p1

    move-wide/from16 v25, v8

    goto :goto_9

    :cond_10
    move-object/from16 v6, p1

    move-wide/from16 v25, p2

    .line 25
    :goto_9
    iget-object v6, v6, Lch3;->P0:Lal3;

    .line 26
    invoke-virtual {v6, v10}, Lal3;->h(I)V

    .line 27
    invoke-virtual {v6}, Lal3;->b()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_11

    const/16 v7, 0x8

    goto :goto_a

    :cond_11
    const/16 v7, 0x10

    .line 28
    :goto_a
    invoke-virtual {v6, v7}, Lal3;->i(I)V

    .line 29
    invoke-virtual {v6}, Lal3;->n()J

    move-result-wide v6

    cmp-long v8, v25, v21

    if-nez v8, :cond_12

    goto :goto_b

    :cond_12
    const-wide/32 v27, 0xf4240

    move-wide/from16 v29, v6

    .line 30
    invoke-static/range {v25 .. v30}, Lel3;->b(JJJ)J

    move-result-wide v8

    move-wide/from16 v21, v8

    .line 31
    :goto_b
    sget v8, Lah3;->G:I

    invoke-virtual {v1, v8}, Lzg3;->c(I)Lzg3;

    move-result-object v8

    sget v9, Lah3;->H:I

    .line 32
    invoke-virtual {v8, v9}, Lzg3;->c(I)Lzg3;

    move-result-object v8

    .line 33
    sget v9, Lah3;->S:I

    invoke-virtual {v1, v9}, Lzg3;->b(I)Lch3;

    move-result-object v1

    iget-object v1, v1, Lch3;->P0:Lal3;

    .line 34
    invoke-virtual {v1, v10}, Lal3;->h(I)V

    .line 35
    invoke-virtual {v1}, Lal3;->b()I

    move-result v9

    shr-int/lit8 v9, v9, 0x18

    and-int/lit16 v9, v9, 0xff

    if-nez v9, :cond_13

    const/16 v11, 0x8

    goto :goto_c

    :cond_13
    const/16 v11, 0x10

    .line 36
    :goto_c
    invoke-virtual {v1, v11}, Lal3;->i(I)V

    .line 37
    invoke-virtual {v1}, Lal3;->n()J

    move-result-wide v14

    if-nez v9, :cond_14

    const/4 v9, 0x4

    goto :goto_d

    :cond_14
    const/16 v9, 0x8

    .line 38
    :goto_d
    invoke-virtual {v1, v9}, Lal3;->i(I)V

    .line 39
    invoke-virtual {v1}, Lal3;->e()I

    move-result v1

    shr-int/lit8 v9, v1, 0xa

    const/16 v11, 0x1f

    and-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x60

    int-to-char v9, v9

    shr-int/lit8 v25, v1, 0x5

    and-int/lit8 v25, v25, 0x1f

    add-int/lit8 v3, v25, 0x60

    int-to-char v3, v3

    and-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    .line 40
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 42
    sget v3, Lah3;->U:I

    invoke-virtual {v8, v3}, Lzg3;->b(I)Lch3;

    move-result-object v3

    iget-object v3, v3, Lch3;->P0:Lal3;

    .line 43
    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const/16 v9, 0xc

    .line 44
    invoke-virtual {v3, v9}, Lal3;->h(I)V

    .line 45
    invoke-virtual {v3}, Lal3;->b()I

    move-result v9

    .line 46
    new-instance v11, Lgh3;

    invoke-direct {v11, v9}, Lgh3;-><init>(I)V

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v9, :cond_68

    .line 47
    iget v15, v3, Lal3;->b:I

    .line 48
    invoke-virtual {v3}, Lal3;->b()I

    move-result v5

    if-lez v5, :cond_15

    const/4 v2, 0x1

    goto :goto_f

    :cond_15
    const/4 v2, 0x0

    :goto_f
    const-string v10, "childAtomSize should be positive"

    .line 49
    invoke-static {v2, v10}, Lc50;->s(ZLjava/lang/Object;)V

    .line 50
    invoke-virtual {v3}, Lal3;->b()I

    move-result v2

    move/from16 p2, v9

    .line 51
    sget v9, Lah3;->c:I

    if-eq v2, v9, :cond_4c

    sget v9, Lah3;->d:I

    if-eq v2, v9, :cond_4c

    sget v9, Lah3;->a0:I

    if-eq v2, v9, :cond_4c

    sget v9, Lah3;->l0:I

    if-eq v2, v9, :cond_4c

    sget v9, Lah3;->e:I

    if-eq v2, v9, :cond_4c

    sget v9, Lah3;->f:I

    if-eq v2, v9, :cond_4c

    sget v9, Lah3;->g:I

    if-eq v2, v9, :cond_4c

    sget v9, Lah3;->K0:I

    if-eq v2, v9, :cond_4c

    sget v9, Lah3;->L0:I

    if-ne v2, v9, :cond_16

    goto/16 :goto_2b

    .line 52
    :cond_16
    sget v9, Lah3;->j:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->b0:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->o:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->q:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->s:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->v:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->t:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->u:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->y0:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->z0:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->m:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->n:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->k:I

    if-eq v2, v9, :cond_20

    sget v9, Lah3;->O0:I

    if-ne v2, v9, :cond_17

    goto/16 :goto_13

    .line 53
    :cond_17
    sget v9, Lah3;->k0:I

    if-eq v2, v9, :cond_1a

    sget v10, Lah3;->u0:I

    if-eq v2, v10, :cond_1a

    sget v10, Lah3;->v0:I

    if-eq v2, v10, :cond_1a

    sget v10, Lah3;->w0:I

    if-eq v2, v10, :cond_1a

    sget v10, Lah3;->x0:I

    if-ne v2, v10, :cond_18

    goto :goto_10

    .line 54
    :cond_18
    sget v9, Lah3;->N0:I

    if-ne v2, v9, :cond_19

    .line 55
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    .line 56
    new-instance v2, Lcom/google/android/gms/internal/ads/zzht;

    move-object/from16 v37, v2

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, -0x1

    const/16 v43, -0x1

    const/16 v44, -0x1

    const/16 v45, -0x1

    const/high16 v46, -0x40800000    # -1.0f

    const/16 v47, -0x1

    const/high16 v48, -0x40800000    # -1.0f

    const/16 v49, 0x0

    const/16 v50, -0x1

    const/16 v51, 0x0

    const/16 v52, -0x1

    const/16 v53, -0x1

    const/16 v54, -0x1

    const/16 v55, -0x1

    const/16 v56, -0x1

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, -0x1

    const-wide v60, 0x7fffffffffffffffL

    const/16 v62, 0x0

    const/16 v64, 0x0

    const-string v40, "application/x-camera-motion"

    move-object/from16 v63, p4

    invoke-direct/range {v37 .. v64}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V

    .line 57
    iput-object v2, v11, Lgh3;->b:Lcom/google/android/gms/internal/ads/zzht;

    :cond_19
    move-object/from16 v40, v1

    move/from16 v41, v4

    move-wide/from16 v37, v6

    goto/16 :goto_16

    :cond_1a
    :goto_10
    add-int/lit8 v10, v15, 0x8

    const/16 v25, 0x8

    add-int/lit8 v10, v10, 0x8

    .line 58
    invoke-virtual {v3, v10}, Lal3;->h(I)V

    const-wide v25, 0x7fffffffffffffffL

    const-string v10, "application/ttml+xml"

    if-ne v2, v9, :cond_1b

    move-wide/from16 v37, v6

    goto :goto_11

    .line 59
    :cond_1b
    sget v9, Lah3;->u0:I

    if-ne v2, v9, :cond_1c

    add-int/lit8 v2, v5, -0x8

    add-int/lit8 v2, v2, -0x8

    .line 60
    new-array v9, v2, [B

    .line 61
    iget-object v10, v3, Lal3;->a:[B

    move-wide/from16 v37, v6

    iget v6, v3, Lal3;->b:I

    const/4 v7, 0x0

    invoke-static {v10, v6, v9, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v6, v3, Lal3;->b:I

    add-int/2addr v6, v2

    iput v6, v3, Lal3;->b:I

    .line 63
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "application/x-quicktime-tx3g"

    move-object/from16 v32, v2

    move-wide/from16 v30, v25

    move-object/from16 v26, v6

    goto :goto_12

    :cond_1c
    move-wide/from16 v37, v6

    .line 64
    sget v6, Lah3;->v0:I

    if-ne v2, v6, :cond_1d

    const-string v10, "application/x-mp4-vtt"

    goto :goto_11

    .line 65
    :cond_1d
    sget v6, Lah3;->w0:I

    if-ne v2, v6, :cond_1e

    move-object/from16 v26, v10

    move-wide/from16 v30, v19

    const/16 v32, 0x0

    goto :goto_12

    .line 66
    :cond_1e
    sget v6, Lah3;->x0:I

    if-ne v2, v6, :cond_1f

    const/4 v2, 0x1

    .line 67
    iput v2, v11, Lgh3;->d:I

    const-string v10, "application/x-mp4-cea-608"

    :goto_11
    move-wide/from16 v30, v25

    const/16 v32, 0x0

    move-object/from16 v26, v10

    .line 68
    :goto_12
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    move-object/from16 v28, v8

    move-object/from16 v29, p4

    invoke-static/range {v25 .. v32}, Lcom/google/android/gms/internal/ads/zzht;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v2

    iput-object v2, v11, Lgh3;->b:Lcom/google/android/gms/internal/ads/zzht;

    goto :goto_15

    .line 69
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_20
    :goto_13
    move-wide/from16 v37, v6

    add-int/lit8 v6, v15, 0x8

    const/16 v7, 0x8

    add-int/2addr v6, v7

    .line 70
    invoke-virtual {v3, v6}, Lal3;->h(I)V

    const/4 v6, 0x6

    if-eqz p5, :cond_21

    .line 71
    invoke-virtual {v3}, Lal3;->e()I

    move-result v9

    .line 72
    invoke-virtual {v3, v6}, Lal3;->i(I)V

    move v7, v9

    goto :goto_14

    .line 73
    :cond_21
    invoke-virtual {v3, v7}, Lal3;->i(I)V

    const/4 v7, 0x0

    :goto_14
    if-eqz v7, :cond_24

    const/4 v9, 0x1

    if-ne v7, v9, :cond_22

    goto :goto_17

    :cond_22
    const/4 v9, 0x2

    if-ne v7, v9, :cond_23

    const/16 v7, 0x10

    .line 74
    invoke-virtual {v3, v7}, Lal3;->i(I)V

    .line 75
    invoke-virtual {v3}, Lal3;->c()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v25

    .line 76
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v7, v6

    .line 77
    invoke-virtual {v3}, Lal3;->o()I

    move-result v6

    const/16 v9, 0x14

    .line 78
    invoke-virtual {v3, v9}, Lal3;->i(I)V

    move-object/from16 v40, v1

    move/from16 v39, v12

    goto :goto_18

    :cond_23
    :goto_15
    move-object/from16 v40, v1

    move/from16 v41, v4

    :goto_16
    move/from16 v39, v12

    move v4, v14

    const/4 v7, 0x3

    const/16 v23, 0x4

    goto/16 :goto_3a

    .line 79
    :cond_24
    :goto_17
    invoke-virtual {v3}, Lal3;->e()I

    move-result v6

    const/4 v9, 0x6

    .line 80
    invoke-virtual {v3, v9}, Lal3;->i(I)V

    .line 81
    iget-object v9, v3, Lal3;->a:[B

    move/from16 v25, v6

    iget v6, v3, Lal3;->b:I

    move/from16 v39, v12

    add-int/lit8 v12, v6, 0x1

    iput v12, v3, Lal3;->b:I

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v26, 0x8

    shl-int/lit8 v6, v6, 0x8

    move-object/from16 v40, v1

    add-int/lit8 v1, v12, 0x1

    iput v1, v3, Lal3;->b:I

    aget-byte v9, v9, v12

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v6, v9

    const/4 v9, 0x2

    add-int/2addr v1, v9

    .line 82
    iput v1, v3, Lal3;->b:I

    const/4 v1, 0x1

    if-ne v7, v1, :cond_25

    const/16 v1, 0x10

    .line 83
    invoke-virtual {v3, v1}, Lal3;->i(I)V

    :cond_25
    move v7, v6

    move/from16 v6, v25

    .line 84
    :goto_18
    iget v1, v3, Lal3;->b:I

    .line 85
    sget v9, Lah3;->b0:I

    if-ne v2, v9, :cond_26

    .line 86
    invoke-static {v3, v15, v5, v11, v14}, Lbh3;->a(Lal3;IILgh3;I)I

    move-result v2

    .line 87
    invoke-virtual {v3, v1}, Lal3;->h(I)V

    .line 88
    :cond_26
    sget v9, Lah3;->o:I

    const-string v12, "audio/raw"

    if-ne v2, v9, :cond_27

    const-string v2, "audio/ac3"

    goto :goto_1b

    .line 89
    :cond_27
    sget v9, Lah3;->q:I

    if-ne v2, v9, :cond_28

    const-string v2, "audio/eac3"

    goto :goto_1b

    .line 90
    :cond_28
    sget v9, Lah3;->s:I

    if-ne v2, v9, :cond_29

    const-string v2, "audio/vnd.dts"

    goto :goto_1b

    .line 91
    :cond_29
    sget v9, Lah3;->t:I

    if-eq v2, v9, :cond_32

    sget v9, Lah3;->u:I

    if-ne v2, v9, :cond_2a

    goto :goto_1a

    .line 92
    :cond_2a
    sget v9, Lah3;->v:I

    if-ne v2, v9, :cond_2b

    const-string v2, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_1b

    .line 93
    :cond_2b
    sget v9, Lah3;->y0:I

    if-ne v2, v9, :cond_2c

    const-string v2, "audio/3gpp"

    goto :goto_1b

    .line 94
    :cond_2c
    sget v9, Lah3;->z0:I

    if-ne v2, v9, :cond_2d

    const-string v2, "audio/amr-wb"

    goto :goto_1b

    .line 95
    :cond_2d
    sget v9, Lah3;->m:I

    if-eq v2, v9, :cond_31

    sget v9, Lah3;->n:I

    if-ne v2, v9, :cond_2e

    goto :goto_19

    .line 96
    :cond_2e
    sget v9, Lah3;->k:I

    if-ne v2, v9, :cond_2f

    const-string v2, "audio/mpeg"

    goto :goto_1b

    .line 97
    :cond_2f
    sget v9, Lah3;->O0:I

    if-ne v2, v9, :cond_30

    const-string v2, "audio/alac"

    goto :goto_1b

    :cond_30
    const/4 v2, 0x0

    goto :goto_1b

    :cond_31
    :goto_19
    move-object v2, v12

    goto :goto_1b

    :cond_32
    :goto_1a
    const-string v2, "audio/vnd.dts.hd"

    :goto_1b
    const/4 v9, 0x0

    :goto_1c
    sub-int v0, v1, v15

    if-ge v0, v5, :cond_48

    .line 98
    invoke-virtual {v3, v1}, Lal3;->h(I)V

    .line 99
    invoke-virtual {v3}, Lal3;->b()I

    move-result v0

    move/from16 v41, v4

    if-lez v0, :cond_33

    const/4 v4, 0x1

    goto :goto_1d

    :cond_33
    const/4 v4, 0x0

    .line 100
    :goto_1d
    invoke-static {v4, v10}, Lc50;->s(ZLjava/lang/Object;)V

    .line 101
    invoke-virtual {v3}, Lal3;->b()I

    move-result v4

    move/from16 v42, v5

    .line 102
    sget v5, Lah3;->K:I

    move/from16 v43, v14

    if-eq v4, v5, :cond_3b

    if-eqz p5, :cond_34

    sget v14, Lah3;->l:I

    if-ne v4, v14, :cond_34

    goto/16 :goto_20

    .line 103
    :cond_34
    sget v5, Lah3;->p:I

    if-ne v4, v5, :cond_37

    add-int/lit8 v4, v1, 0x8

    .line 104
    invoke-virtual {v3, v4}, Lal3;->h(I)V

    .line 105
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 106
    invoke-virtual {v3}, Lal3;->d()I

    move-result v4

    and-int/lit16 v4, v4, 0xc0

    const/4 v5, 0x6

    shr-int/2addr v4, v5

    .line 107
    sget-object v5, Lve3;->b:[I

    aget v28, v5, v4

    .line 108
    invoke-virtual {v3}, Lal3;->d()I

    move-result v4

    .line 109
    sget-object v5, Lve3;->c:[I

    and-int/lit8 v14, v4, 0x38

    const/16 v26, 0x3

    shr-int/lit8 v14, v14, 0x3

    aget v5, v5, v14

    const/4 v14, 0x4

    and-int/2addr v4, v14

    if-eqz v4, :cond_35

    add-int/lit8 v5, v5, 0x1

    :cond_35
    move/from16 v27, v5

    const-string v26, "audio/ac3"

    move-object/from16 v29, p4

    move-object/from16 v30, v8

    .line 110
    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzht;->c(Ljava/lang/String;Ljava/lang/String;IILcom/google/android/gms/internal/ads/zzjo;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v4

    .line 111
    iput-object v4, v11, Lgh3;->b:Lcom/google/android/gms/internal/ads/zzht;

    :cond_36
    :goto_1e
    const/4 v14, 0x0

    goto/16 :goto_1f

    .line 112
    :cond_37
    sget v5, Lah3;->r:I

    if-ne v4, v5, :cond_39

    add-int/lit8 v4, v1, 0x8

    .line 113
    invoke-virtual {v3, v4}, Lal3;->h(I)V

    .line 114
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/4 v4, 0x2

    .line 115
    invoke-virtual {v3, v4}, Lal3;->i(I)V

    .line 116
    invoke-virtual {v3}, Lal3;->d()I

    move-result v4

    and-int/lit16 v4, v4, 0xc0

    const/4 v5, 0x6

    shr-int/2addr v4, v5

    .line 117
    sget-object v5, Lve3;->b:[I

    aget v28, v5, v4

    .line 118
    invoke-virtual {v3}, Lal3;->d()I

    move-result v4

    .line 119
    sget-object v5, Lve3;->c:[I

    and-int/lit8 v14, v4, 0xe

    const/16 v18, 0x1

    shr-int/lit8 v14, v14, 0x1

    aget v5, v5, v14

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_38

    add-int/lit8 v5, v5, 0x1

    :cond_38
    move/from16 v27, v5

    const-string v26, "audio/eac3"

    move-object/from16 v29, p4

    move-object/from16 v30, v8

    .line 120
    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzht;->c(Ljava/lang/String;Ljava/lang/String;IILcom/google/android/gms/internal/ads/zzjo;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v4

    .line 121
    iput-object v4, v11, Lgh3;->b:Lcom/google/android/gms/internal/ads/zzht;

    goto :goto_1e

    .line 122
    :cond_39
    sget v5, Lah3;->w:I

    if-ne v4, v5, :cond_3a

    .line 123
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v2

    move/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v29, p4

    move-object/from16 v30, v8

    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzht;->c(Ljava/lang/String;Ljava/lang/String;IILcom/google/android/gms/internal/ads/zzjo;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v4

    iput-object v4, v11, Lgh3;->b:Lcom/google/android/gms/internal/ads/zzht;

    goto :goto_1e

    .line 124
    :cond_3a
    sget v5, Lah3;->O0:I

    if-ne v4, v5, :cond_36

    .line 125
    new-array v9, v0, [B

    .line 126
    invoke-virtual {v3, v1}, Lal3;->h(I)V

    .line 127
    iget-object v4, v3, Lal3;->a:[B

    iget v5, v3, Lal3;->b:I

    const/4 v14, 0x0

    invoke-static {v4, v5, v9, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget v4, v3, Lal3;->b:I

    add-int/2addr v4, v0

    iput v4, v3, Lal3;->b:I

    :goto_1f
    move-object/from16 v25, v10

    goto/16 :goto_26

    :cond_3b
    :goto_20
    const/4 v14, 0x0

    if-ne v4, v5, :cond_3c

    move v4, v1

    move-object/from16 v25, v10

    goto :goto_22

    .line 129
    :cond_3c
    iget v4, v3, Lal3;->b:I

    :goto_21
    sub-int v5, v4, v1

    if-ge v5, v0, :cond_3f

    .line 130
    invoke-virtual {v3, v4}, Lal3;->h(I)V

    .line 131
    invoke-virtual {v3}, Lal3;->b()I

    move-result v5

    if-lez v5, :cond_3d

    const/4 v14, 0x1

    .line 132
    :cond_3d
    invoke-static {v14, v10}, Lc50;->s(ZLjava/lang/Object;)V

    .line 133
    invoke-virtual {v3}, Lal3;->b()I

    move-result v14

    move-object/from16 v25, v10

    .line 134
    sget v10, Lah3;->K:I

    if-ne v14, v10, :cond_3e

    goto :goto_22

    :cond_3e
    add-int/2addr v4, v5

    move-object/from16 v10, v25

    const/4 v14, 0x0

    goto :goto_21

    :cond_3f
    move-object/from16 v25, v10

    const/4 v4, -0x1

    :goto_22
    const/4 v5, -0x1

    if-eq v4, v5, :cond_47

    .line 135
    invoke-static {v3, v4}, Lbh3;->d(Lal3;I)Landroid/util/Pair;

    move-result-object v2

    .line 136
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 137
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    const-string v5, "audio/mp4a-latm"

    .line 138
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 139
    new-instance v5, Lbl3;

    invoke-direct {v5, v2}, Lbl3;-><init>([B)V

    const/4 v6, 0x5

    .line 140
    invoke-virtual {v5, v6}, Lbl3;->a(I)I

    move-result v7

    const/16 v9, 0x1f

    if-ne v7, v9, :cond_40

    const/4 v9, 0x6

    .line 141
    invoke-virtual {v5, v9}, Lbl3;->a(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x20

    .line 142
    :cond_40
    invoke-static {v5}, Luk3;->a(Lbl3;)I

    move-result v9

    const/4 v10, 0x4

    .line 143
    invoke-virtual {v5, v10}, Lbl3;->a(I)I

    move-result v14

    if-eq v7, v6, :cond_42

    const/16 v10, 0x1d

    if-ne v7, v10, :cond_41

    goto :goto_23

    :cond_41
    const/4 v6, 0x4

    const/16 v10, 0x1f

    goto :goto_24

    .line 144
    :cond_42
    :goto_23
    invoke-static {v5}, Luk3;->a(Lbl3;)I

    move-result v9

    .line 145
    invoke-virtual {v5, v6}, Lbl3;->a(I)I

    move-result v6

    const/16 v10, 0x1f

    if-ne v6, v10, :cond_43

    const/4 v7, 0x6

    .line 146
    invoke-virtual {v5, v7}, Lbl3;->a(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x20

    :cond_43
    const/16 v7, 0x16

    if-ne v6, v7, :cond_44

    const/4 v6, 0x4

    .line 147
    invoke-virtual {v5, v6}, Lbl3;->a(I)I

    move-result v14

    goto :goto_24

    :cond_44
    const/4 v6, 0x4

    .line 148
    :goto_24
    sget-object v5, Luk3;->c:[I

    aget v5, v5, v14

    const/4 v14, -0x1

    if-eq v5, v14, :cond_45

    const/4 v7, 0x1

    goto :goto_25

    :cond_45
    const/4 v7, 0x0

    .line 149
    :goto_25
    invoke-static {v7}, Lc50;->j(Z)V

    .line 150
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 151
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 152
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v9, v2

    move-object v2, v4

    move v6, v5

    const/4 v5, 0x6

    goto :goto_27

    :cond_46
    const/4 v5, 0x6

    const/16 v10, 0x1f

    const/4 v14, -0x1

    const/16 v23, 0x4

    move-object v9, v2

    move-object v2, v4

    goto :goto_28

    :cond_47
    :goto_26
    const/4 v5, 0x6

    const/16 v10, 0x1f

    const/4 v14, -0x1

    :goto_27
    const/16 v23, 0x4

    :goto_28
    add-int/2addr v1, v0

    move-object/from16 v10, v25

    move/from16 v4, v41

    move/from16 v5, v42

    move/from16 v14, v43

    goto/16 :goto_1c

    :cond_48
    move/from16 v41, v4

    move/from16 v42, v5

    move/from16 v43, v14

    const/16 v10, 0x1f

    const/4 v14, -0x1

    const/16 v23, 0x4

    .line 153
    iget-object v0, v11, Lgh3;->b:Lcom/google/android/gms/internal/ads/zzht;

    if-nez v0, :cond_4b

    if-eqz v2, :cond_4b

    .line 154
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v30, 0x2

    goto :goto_29

    :cond_49
    const/16 v30, -0x1

    .line 155
    :goto_29
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v27, -0x1

    if-nez v9, :cond_4a

    const/16 v31, 0x0

    goto :goto_2a

    .line 156
    :cond_4a
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v31, v0

    :goto_2a
    const/16 v33, 0x0

    move-object/from16 v26, v2

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v32, p4

    move-object/from16 v34, v8

    .line 157
    invoke-static/range {v25 .. v34}, Lcom/google/android/gms/internal/ads/zzht;->a(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v0

    iput-object v0, v11, Lgh3;->b:Lcom/google/android/gms/internal/ads/zzht;

    :cond_4b
    move/from16 v5, v42

    move/from16 v4, v43

    const/4 v7, 0x3

    goto/16 :goto_3a

    :cond_4c
    :goto_2b
    move-object/from16 v40, v1

    move/from16 v41, v4

    move/from16 v42, v5

    move-wide/from16 v37, v6

    move-object/from16 v25, v10

    move/from16 v39, v12

    move/from16 v43, v14

    const/16 v10, 0x1f

    const/4 v14, -0x1

    const/16 v23, 0x4

    add-int/lit8 v0, v15, 0x8

    const/16 v1, 0x8

    add-int/2addr v0, v1

    .line 158
    invoke-virtual {v3, v0}, Lal3;->h(I)V

    const/16 v0, 0x10

    .line 159
    invoke-virtual {v3, v0}, Lal3;->i(I)V

    .line 160
    invoke-virtual {v3}, Lal3;->e()I

    move-result v28

    .line 161
    invoke-virtual {v3}, Lal3;->e()I

    move-result v29

    const/16 v1, 0x32

    .line 162
    invoke-virtual {v3, v1}, Lal3;->i(I)V

    .line 163
    iget v1, v3, Lal3;->b:I

    .line 164
    sget v4, Lah3;->a0:I

    if-ne v2, v4, :cond_4d

    move/from16 v5, v42

    move/from16 v4, v43

    .line 165
    invoke-static {v3, v15, v5, v11, v4}, Lbh3;->a(Lal3;IILgh3;I)I

    move-result v2

    .line 166
    invoke-virtual {v3, v1}, Lal3;->h(I)V

    goto :goto_2c

    :cond_4d
    move/from16 v5, v42

    move/from16 v4, v43

    :goto_2c
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/16 v26, 0x0

    const/16 v30, 0x0

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, -0x1

    :goto_2d
    sub-int v7, v1, v15

    if-ge v7, v5, :cond_66

    .line 167
    invoke-virtual {v3, v1}, Lal3;->h(I)V

    .line 168
    iget v7, v3, Lal3;->b:I

    .line 169
    invoke-virtual {v3}, Lal3;->b()I

    move-result v9

    if-nez v9, :cond_4e

    .line 170
    iget v12, v3, Lal3;->b:I

    sub-int/2addr v12, v15

    if-eq v12, v5, :cond_66

    :cond_4e
    move-object/from16 v0, v25

    if-lez v9, :cond_4f

    const/4 v12, 0x1

    goto :goto_2e

    :cond_4f
    const/4 v12, 0x0

    .line 171
    :goto_2e
    invoke-static {v12, v0}, Lc50;->s(ZLjava/lang/Object;)V

    .line 172
    invoke-virtual {v3}, Lal3;->b()I

    move-result v12

    .line 173
    sget v10, Lah3;->I:I

    if-ne v12, v10, :cond_52

    if-nez v26, :cond_50

    const/4 v10, 0x1

    goto :goto_2f

    :cond_50
    const/4 v10, 0x0

    .line 174
    :goto_2f
    invoke-static {v10}, Lc50;->D(Z)V

    add-int/lit8 v7, v7, 0x8

    .line 175
    invoke-virtual {v3, v7}, Lal3;->h(I)V

    .line 176
    invoke-static {v3}, Lfl3;->a(Lal3;)Lfl3;

    move-result-object v7

    .line 177
    iget-object v10, v7, Lfl3;->a:Ljava/util/List;

    .line 178
    iget v12, v7, Lfl3;->b:I

    iput v12, v11, Lgh3;->c:I

    if-nez v6, :cond_51

    .line 179
    iget v7, v7, Lfl3;->c:F

    move/from16 v32, v7

    :cond_51
    const-string v7, "video/avc"

    goto :goto_31

    .line 180
    :cond_52
    sget v10, Lah3;->J:I

    if-ne v12, v10, :cond_55

    if-nez v26, :cond_53

    const/4 v10, 0x1

    goto :goto_30

    :cond_53
    const/4 v10, 0x0

    .line 181
    :goto_30
    invoke-static {v10}, Lc50;->D(Z)V

    add-int/lit8 v7, v7, 0x8

    .line 182
    invoke-virtual {v3, v7}, Lal3;->h(I)V

    .line 183
    invoke-static {v3}, Lkl3;->a(Lal3;)Lkl3;

    move-result-object v7

    .line 184
    iget-object v10, v7, Lkl3;->a:Ljava/util/List;

    .line 185
    iget v7, v7, Lkl3;->b:I

    iput v7, v11, Lgh3;->c:I

    const-string v7, "video/hevc"

    :goto_31
    move-object/from16 v26, v7

    move-object/from16 v30, v10

    :goto_32
    move-object/from16 v25, v0

    :cond_54
    :goto_33
    const/4 v7, 0x3

    goto/16 :goto_39

    .line 186
    :cond_55
    sget v10, Lah3;->M0:I

    if-ne v12, v10, :cond_58

    if-nez v26, :cond_56

    const/4 v7, 0x1

    goto :goto_34

    :cond_56
    const/4 v7, 0x0

    .line 187
    :goto_34
    invoke-static {v7}, Lc50;->D(Z)V

    .line 188
    sget v7, Lah3;->K0:I

    if-ne v2, v7, :cond_57

    const-string v7, "video/x-vnd.on2.vp8"

    goto :goto_36

    :cond_57
    const-string v7, "video/x-vnd.on2.vp9"

    goto :goto_36

    .line 189
    :cond_58
    sget v10, Lah3;->h:I

    if-ne v12, v10, :cond_5a

    if-nez v26, :cond_59

    const/4 v7, 0x1

    goto :goto_35

    :cond_59
    const/4 v7, 0x0

    .line 190
    :goto_35
    invoke-static {v7}, Lc50;->D(Z)V

    const-string v7, "video/3gpp"

    :goto_36
    move-object/from16 v26, v7

    goto :goto_32

    .line 191
    :cond_5a
    sget v10, Lah3;->K:I

    if-ne v12, v10, :cond_5c

    if-nez v26, :cond_5b

    const/4 v10, 0x1

    goto :goto_37

    :cond_5b
    const/4 v10, 0x0

    .line 192
    :goto_37
    invoke-static {v10}, Lc50;->D(Z)V

    .line 193
    invoke-static {v3, v7}, Lbh3;->d(Lal3;I)Landroid/util/Pair;

    move-result-object v7

    .line 194
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 195
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [B

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v26, v10

    goto :goto_32

    .line 196
    :cond_5c
    sget v10, Lah3;->j0:I

    if-ne v12, v10, :cond_5d

    add-int/lit8 v7, v7, 0x8

    .line 197
    invoke-virtual {v3, v7}, Lal3;->h(I)V

    .line 198
    invoke-virtual {v3}, Lal3;->o()I

    move-result v6

    .line 199
    invoke-virtual {v3}, Lal3;->o()I

    move-result v7

    int-to-float v6, v6

    int-to-float v7, v7

    div-float v32, v6, v7

    move-object/from16 v25, v0

    const/4 v6, 0x1

    goto :goto_33

    .line 200
    :cond_5d
    sget v10, Lah3;->I0:I

    if-ne v12, v10, :cond_60

    add-int/lit8 v10, v7, 0x8

    :goto_38
    sub-int v12, v10, v7

    if-ge v12, v9, :cond_5f

    .line 201
    invoke-virtual {v3, v10}, Lal3;->h(I)V

    .line 202
    invoke-virtual {v3}, Lal3;->b()I

    move-result v12

    .line 203
    invoke-virtual {v3}, Lal3;->b()I

    move-result v14

    move-object/from16 v25, v0

    .line 204
    sget v0, Lah3;->J0:I

    if-ne v14, v0, :cond_5e

    .line 205
    iget-object v0, v3, Lal3;->a:[B

    add-int/2addr v12, v10

    invoke-static {v0, v10, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v33

    goto/16 :goto_33

    :cond_5e
    add-int/2addr v10, v12

    move-object/from16 v0, v25

    const/4 v14, -0x1

    goto :goto_38

    :cond_5f
    move-object/from16 v25, v0

    const/4 v7, 0x3

    const/16 v33, 0x0

    goto :goto_39

    :cond_60
    move-object/from16 v25, v0

    .line 206
    sget v0, Lah3;->H0:I

    if-ne v12, v0, :cond_54

    .line 207
    invoke-virtual {v3}, Lal3;->d()I

    move-result v0

    const/4 v7, 0x3

    .line 208
    invoke-virtual {v3, v7}, Lal3;->i(I)V

    if-nez v0, :cond_65

    .line 209
    invoke-virtual {v3}, Lal3;->d()I

    move-result v0

    if-eqz v0, :cond_64

    const/4 v10, 0x1

    if-eq v0, v10, :cond_63

    const/4 v10, 0x2

    if-eq v0, v10, :cond_62

    if-eq v0, v7, :cond_61

    goto :goto_39

    :cond_61
    const/16 v34, 0x3

    goto :goto_39

    :cond_62
    const/16 v34, 0x2

    goto :goto_39

    :cond_63
    const/16 v34, 0x1

    goto :goto_39

    :cond_64
    const/16 v34, 0x0

    :cond_65
    :goto_39
    add-int/2addr v1, v9

    const/16 v0, 0x10

    const/16 v10, 0x1f

    const/4 v14, -0x1

    goto/16 :goto_2d

    :cond_66
    const/4 v7, 0x3

    if-eqz v26, :cond_67

    .line 210
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v27, -0x1

    const/16 v35, 0x0

    move/from16 v31, v41

    move-object/from16 v36, p4

    invoke-static/range {v25 .. v36}, Lcom/google/android/gms/internal/ads/zzht;->b(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v0

    iput-object v0, v11, Lgh3;->b:Lcom/google/android/gms/internal/ads/zzht;

    :cond_67
    :goto_3a
    add-int/2addr v15, v5

    .line 211
    invoke-virtual {v3, v15}, Lal3;->h(I)V

    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v9, p2

    move-wide/from16 v6, v37

    move/from16 v12, v39

    move-object/from16 v1, v40

    move/from16 v4, v41

    const/4 v5, 0x3

    const/16 v10, 0x8

    goto/16 :goto_e

    :cond_68
    move-object/from16 v40, v1

    move-wide/from16 v37, v6

    move/from16 v39, v12

    .line 212
    sget v0, Lah3;->Q:I

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lzg3;->c(I)Lzg3;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 213
    sget v1, Lah3;->R:I

    invoke-virtual {v0, v1}, Lzg3;->b(I)Lch3;

    move-result-object v0

    if-nez v0, :cond_69

    goto :goto_3e

    .line 214
    :cond_69
    iget-object v0, v0, Lch3;->P0:Lal3;

    const/16 v1, 0x8

    .line 215
    invoke-virtual {v0, v1}, Lal3;->h(I)V

    .line 216
    invoke-virtual {v0}, Lal3;->b()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 217
    invoke-virtual {v0}, Lal3;->o()I

    move-result v2

    .line 218
    new-array v3, v2, [J

    .line 219
    new-array v4, v2, [J

    const/4 v5, 0x0

    :goto_3b
    if-ge v5, v2, :cond_6d

    const/4 v6, 0x1

    if-ne v1, v6, :cond_6a

    .line 220
    invoke-virtual {v0}, Lal3;->p()J

    move-result-wide v7

    goto :goto_3c

    :cond_6a
    invoke-virtual {v0}, Lal3;->n()J

    move-result-wide v7

    :goto_3c
    aput-wide v7, v3, v5

    if-ne v1, v6, :cond_6b

    .line 221
    invoke-virtual {v0}, Lal3;->c()J

    move-result-wide v6

    goto :goto_3d

    :cond_6b
    invoke-virtual {v0}, Lal3;->b()I

    move-result v6

    int-to-long v6, v6

    :goto_3d
    aput-wide v6, v4, v5

    .line 222
    iget-object v6, v0, Lal3;->a:[B

    iget v7, v0, Lal3;->b:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lal3;->b:I

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v9, 0x8

    shl-int/2addr v7, v9

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lal3;->b:I

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6c

    const/4 v6, 0x2

    .line 223
    invoke-virtual {v0, v6}, Lal3;->i(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 224
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_6d
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_3f

    :cond_6e
    :goto_3e
    const/4 v0, 0x0

    .line 226
    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 227
    :goto_3f
    iget-object v2, v11, Lgh3;->b:Lcom/google/android/gms/internal/ads/zzht;

    if-nez v2, :cond_6f

    return-object v0

    .line 228
    :cond_6f
    new-instance v0, Lrh3;

    move-object/from16 v2, v40

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v11, Lgh3;->b:Lcom/google/android/gms/internal/ads/zzht;

    iget v5, v11, Lgh3;->d:I

    iget-object v6, v11, Lgh3;->a:[Lqh3;

    iget v7, v11, Lgh3;->c:I

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v23, v8

    check-cast v23, [J

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v24, v1

    check-cast v24, [J

    move-object v10, v0

    move v11, v13

    move/from16 v12, v39

    move-wide v13, v2

    move-wide/from16 v15, v37

    move-wide/from16 v17, v21

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    invoke-direct/range {v10 .. v24}, Lrh3;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzht;I[Lqh3;I[J[J)V

    return-object v0
.end method

.method public static c(Lrh3;Lzg3;Llg3;)Lsh3;
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lne3;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget v3, Lah3;->q0:I

    invoke-virtual {v1, v3}, Lzg3;->b(I)Lch3;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v4, Lfh3;

    invoke-direct {v4, v3}, Lfh3;-><init>(Lch3;)V

    goto :goto_0

    .line 3
    :cond_0
    sget v3, Lah3;->r0:I

    invoke-virtual {v1, v3}, Lzg3;->b(I)Lch3;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 4
    new-instance v4, Lhh3;

    invoke-direct {v4, v3}, Lhh3;-><init>(Lch3;)V

    .line 5
    :goto_0
    invoke-interface {v4}, Ldh3;->c()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v0, Lsh3;

    new-array v7, v5, [J

    new-array v8, v5, [I

    const/4 v9, 0x0

    new-array v10, v5, [J

    new-array v11, v5, [I

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lsh3;-><init>([J[II[J[I)V

    return-object v0

    .line 7
    :cond_1
    sget v6, Lah3;->s0:I

    invoke-virtual {v1, v6}, Lzg3;->b(I)Lch3;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 8
    sget v6, Lah3;->t0:I

    invoke-virtual {v1, v6}, Lzg3;->b(I)Lch3;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 9
    :goto_1
    iget-object v6, v6, Lch3;->P0:Lal3;

    .line 10
    sget v9, Lah3;->p0:I

    invoke-virtual {v1, v9}, Lzg3;->b(I)Lch3;

    move-result-object v9

    iget-object v9, v9, Lch3;->P0:Lal3;

    .line 11
    sget v10, Lah3;->m0:I

    invoke-virtual {v1, v10}, Lzg3;->b(I)Lch3;

    move-result-object v10

    iget-object v10, v10, Lch3;->P0:Lal3;

    .line 12
    sget v11, Lah3;->n0:I

    invoke-virtual {v1, v11}, Lzg3;->b(I)Lch3;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 13
    iget-object v11, v11, Lch3;->P0:Lal3;

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 14
    :goto_2
    sget v13, Lah3;->o0:I

    invoke-virtual {v1, v13}, Lzg3;->b(I)Lch3;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, v1, Lch3;->P0:Lal3;

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const/16 v13, 0xc

    .line 16
    invoke-virtual {v6, v13}, Lal3;->h(I)V

    .line 17
    invoke-virtual {v6}, Lal3;->o()I

    move-result v14

    .line 18
    invoke-virtual {v9, v13}, Lal3;->h(I)V

    .line 19
    invoke-virtual {v9}, Lal3;->o()I

    move-result v15

    .line 20
    invoke-virtual {v9}, Lal3;->b()I

    move-result v12

    if-ne v12, v7, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    const-string v5, "first_chunk must be 1"

    invoke-static {v12, v5}, Lc50;->E(ZLjava/lang/Object;)V

    .line 21
    invoke-virtual {v10, v13}, Lal3;->h(I)V

    .line 22
    invoke-virtual {v10}, Lal3;->o()I

    move-result v5

    sub-int/2addr v5, v7

    .line 23
    invoke-virtual {v10}, Lal3;->o()I

    move-result v12

    .line 24
    invoke-virtual {v10}, Lal3;->o()I

    move-result v7

    if-eqz v1, :cond_6

    .line 25
    invoke-virtual {v1, v13}, Lal3;->h(I)V

    .line 26
    invoke-virtual {v1}, Lal3;->o()I

    move-result v19

    move/from16 p1, v12

    goto :goto_5

    :cond_6
    move/from16 p1, v12

    const/16 v19, 0x0

    :goto_5
    const/4 v12, -0x1

    if-eqz v11, :cond_8

    .line 27
    invoke-virtual {v11, v13}, Lal3;->h(I)V

    .line 28
    invoke-virtual {v11}, Lal3;->o()I

    move-result v13

    if-lez v13, :cond_7

    .line 29
    invoke-virtual {v11}, Lal3;->o()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v16, v11

    const/4 v13, 0x0

    :goto_6
    move-object/from16 v11, v16

    const/16 v16, -0x1

    .line 30
    :goto_7
    invoke-interface {v4}, Ldh3;->a()Z

    move-result v20

    if-eqz v20, :cond_9

    iget-object v12, v0, Lrh3;->f:Lcom/google/android/gms/internal/ads/zzht;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    move/from16 v21, v15

    const-string v15, "audio/raw"

    .line 31
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    if-nez v5, :cond_a

    if-nez v19, :cond_a

    if-nez v13, :cond_a

    const/4 v12, 0x1

    goto :goto_8

    :cond_9
    move/from16 v21, v15

    :cond_a
    const/4 v12, 0x0

    :goto_8
    const-wide/16 v22, 0x0

    if-nez v12, :cond_1e

    .line 32
    new-array v12, v3, [J

    .line 33
    new-array v15, v3, [I

    move/from16 v25, v5

    .line 34
    new-array v5, v3, [J

    move/from16 v26, v13

    .line 35
    new-array v13, v3, [I

    move/from16 v27, v7

    move/from16 v7, v16

    move/from16 v31, v19

    move-wide/from16 v33, v22

    move-wide/from16 v35, v33

    move-wide/from16 v37, v35

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, -0x1

    move/from16 v19, p1

    move-object/from16 v16, v10

    move/from16 p1, v25

    move/from16 v10, v26

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_9
    if-ge v0, v3, :cond_17

    move/from16 v43, v26

    move/from16 v26, v3

    move/from16 v3, v43

    :goto_a
    if-nez v28, :cond_f

    move/from16 v39, v10

    add-int/lit8 v10, v32, 0x1

    if-ne v10, v14, :cond_b

    move/from16 v28, v21

    const/16 v21, 0x0

    goto :goto_d

    :cond_b
    if-eqz v8, :cond_c

    .line 36
    invoke-virtual {v6}, Lal3;->p()J

    move-result-wide v32

    goto :goto_b

    .line 37
    :cond_c
    invoke-virtual {v6}, Lal3;->n()J

    move-result-wide v32

    :goto_b
    if-ne v10, v3, :cond_e

    .line 38
    invoke-virtual {v9}, Lal3;->o()I

    move-result v30

    const/4 v3, 0x4

    .line 39
    invoke-virtual {v9, v3}, Lal3;->i(I)V

    add-int/lit8 v21, v21, -0x1

    if-lez v21, :cond_d

    .line 40
    invoke-virtual {v9}, Lal3;->o()I

    move-result v3

    const/16 v20, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_d
    const/4 v3, -0x1

    :cond_e
    :goto_c
    move/from16 v28, v21

    move-wide/from16 v37, v32

    const/16 v21, 0x1

    .line 41
    :goto_d
    invoke-static/range {v21 .. v21}, Lc50;->D(Z)V

    move/from16 v32, v10

    move/from16 v21, v28

    move/from16 v28, v30

    move-wide/from16 v33, v37

    move/from16 v10, v39

    goto :goto_a

    :cond_f
    move/from16 v39, v10

    if-eqz v1, :cond_11

    :goto_e
    if-nez v25, :cond_10

    if-lez v31, :cond_10

    .line 42
    invoke-virtual {v1}, Lal3;->o()I

    move-result v25

    .line 43
    invoke-virtual {v1}, Lal3;->b()I

    move-result v29

    add-int/lit8 v31, v31, -0x1

    goto :goto_e

    :cond_10
    add-int/lit8 v25, v25, -0x1

    :cond_11
    move/from16 v10, v29

    .line 44
    aput-wide v33, v12, v0

    .line 45
    invoke-interface {v4}, Ldh3;->b()I

    move-result v29

    aput v29, v15, v0

    move/from16 v29, v3

    .line 46
    aget v3, v15, v0

    if-le v3, v2, :cond_12

    .line 47
    aget v2, v15, v0

    :cond_12
    move/from16 v40, v2

    int-to-long v2, v10

    add-long v2, v35, v2

    .line 48
    aput-wide v2, v5, v0

    if-nez v11, :cond_13

    const/4 v2, 0x1

    goto :goto_f

    :cond_13
    const/4 v2, 0x0

    .line 49
    :goto_f
    aput v2, v13, v0

    if-ne v0, v7, :cond_15

    const/4 v2, 0x1

    .line 50
    aput v2, v13, v0

    add-int/lit8 v3, v39, -0x1

    if-lez v3, :cond_14

    .line 51
    invoke-virtual {v11}, Lal3;->o()I

    move-result v7

    sub-int/2addr v7, v2

    :cond_14
    move/from16 v41, v10

    move/from16 v2, v27

    goto :goto_10

    :cond_15
    move/from16 v41, v10

    move/from16 v2, v27

    move/from16 v3, v39

    :goto_10
    move-object/from16 v27, v11

    int-to-long v10, v2

    add-long v35, v35, v10

    add-int/lit8 v19, v19, -0x1

    if-nez v19, :cond_16

    if-lez p1, :cond_16

    .line 52
    invoke-virtual/range {v16 .. v16}, Lal3;->o()I

    move-result v2

    .line 53
    invoke-virtual/range {v16 .. v16}, Lal3;->o()I

    move-result v10

    add-int/lit8 v11, p1, -0x1

    move/from16 v19, v2

    move v2, v10

    goto :goto_11

    :cond_16
    move/from16 v11, p1

    .line 54
    :goto_11
    aget v10, v15, v0

    move/from16 p1, v2

    move/from16 v39, v3

    int-to-long v2, v10

    add-long v33, v33, v2

    add-int/lit8 v28, v28, -0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v26

    move/from16 v26, v29

    move/from16 v10, v39

    move/from16 v2, v40

    move/from16 v29, v41

    move-object/from16 v43, v27

    move/from16 v27, p1

    move/from16 p1, v11

    move-object/from16 v11, v43

    goto/16 :goto_9

    :cond_17
    move/from16 v26, v3

    move/from16 v39, v10

    if-nez v25, :cond_18

    const/4 v0, 0x1

    goto :goto_12

    :cond_18
    const/4 v0, 0x0

    .line 55
    :goto_12
    invoke-static {v0}, Lc50;->j(Z)V

    :goto_13
    if-lez v31, :cond_1a

    .line 56
    invoke-virtual {v1}, Lal3;->o()I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_14

    :cond_19
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lc50;->j(Z)V

    .line 57
    invoke-virtual {v1}, Lal3;->b()I

    add-int/lit8 v31, v31, -0x1

    goto :goto_13

    :cond_1a
    if-nez v39, :cond_1c

    if-nez v19, :cond_1c

    move/from16 v0, v28

    if-nez v0, :cond_1d

    if-eqz p1, :cond_1b

    goto :goto_15

    :cond_1b
    move-object/from16 v1, p0

    goto :goto_16

    :cond_1c
    move/from16 v0, v28

    :cond_1d
    :goto_15
    move-object/from16 v1, p0

    move/from16 v3, v19

    .line 58
    iget v4, v1, Lrh3;->a:I

    const/16 v6, 0xd7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Inconsistent stbl box for track "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": remainingSynchronizationSamples "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v39

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingSamplesInChunk "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p1

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AtomParsers"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    move/from16 v30, v2

    goto/16 :goto_1e

    :cond_1e
    move-object v1, v0

    move/from16 v26, v3

    .line 59
    new-array v0, v14, [J

    .line 60
    new-array v2, v14, [I

    move/from16 v15, v21

    move-wide/from16 v11, v22

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, -0x1

    :goto_17
    const/4 v13, 0x1

    add-int/2addr v10, v13

    if-ne v10, v14, :cond_1f

    const/4 v13, 0x4

    const/16 v16, 0x0

    goto :goto_1a

    :cond_1f
    if-eqz v8, :cond_20

    .line 61
    invoke-virtual {v6}, Lal3;->p()J

    move-result-wide v11

    goto :goto_18

    .line 62
    :cond_20
    invoke-virtual {v6}, Lal3;->n()J

    move-result-wide v11

    :goto_18
    if-ne v10, v3, :cond_22

    .line 63
    invoke-virtual {v9}, Lal3;->o()I

    move-result v5

    const/4 v13, 0x4

    .line 64
    invoke-virtual {v9, v13}, Lal3;->i(I)V

    add-int/lit8 v15, v15, -0x1

    if-lez v15, :cond_21

    .line 65
    invoke-virtual {v9}, Lal3;->o()I

    move-result v3

    const/16 v16, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    :cond_21
    const/4 v3, -0x1

    goto :goto_19

    :cond_22
    const/4 v13, 0x4

    :goto_19
    const/16 v16, 0x1

    :goto_1a
    if-eqz v16, :cond_23

    .line 66
    aput-wide v11, v0, v10

    .line 67
    aput v5, v2, v10

    goto :goto_17

    .line 68
    :cond_23
    invoke-interface {v4}, Ldh3;->b()I

    move-result v3

    int-to-long v4, v7

    const/16 v6, 0x2000

    .line 69
    div-int/2addr v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-ge v7, v14, :cond_24

    .line 70
    aget v9, v2, v7

    .line 71
    invoke-static {v9, v6}, Lel3;->h(II)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 72
    :cond_24
    new-array v12, v8, [J

    .line 73
    new-array v15, v8, [I

    .line 74
    new-array v7, v8, [J

    .line 75
    new-array v13, v8, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1c
    if-ge v8, v14, :cond_26

    .line 76
    aget v16, v2, v8

    .line 77
    aget-wide v24, v0, v8

    move/from16 v43, v16

    move-object/from16 v16, v0

    move/from16 v0, v43

    :goto_1d
    if-lez v0, :cond_25

    .line 78
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 79
    aput-wide v24, v12, v11

    mul-int v21, v3, v19

    .line 80
    aput v21, v15, v11

    move-object/from16 v21, v2

    .line 81
    aget v2, v15, v11

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 p1, v3

    int-to-long v2, v10

    mul-long v2, v2, v4

    .line 82
    aput-wide v2, v7, v11

    const/4 v2, 0x1

    .line 83
    aput v2, v13, v11

    .line 84
    aget v2, v15, v11

    int-to-long v2, v2

    add-long v24, v24, v2

    add-int v10, v10, v19

    sub-int v0, v0, v19

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, p1

    move-object/from16 v2, v21

    goto :goto_1d

    :cond_25
    move-object/from16 v21, v2

    move/from16 p1, v3

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    goto :goto_1c

    :cond_26
    move-object v5, v7

    move/from16 v30, v9

    move-wide/from16 v35, v22

    .line 85
    :goto_1e
    iget-object v0, v1, Lrh3;->i:[J

    if-eqz v0, :cond_3f

    move-object/from16 v2, p2

    .line 86
    iget v3, v2, Llg3;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_27

    iget v3, v2, Llg3;->b:I

    if-eq v3, v4, :cond_27

    const/4 v3, 0x1

    goto :goto_1f

    :cond_27
    const/4 v3, 0x0

    :goto_1f
    if-eqz v3, :cond_28

    goto/16 :goto_2f

    .line 87
    :cond_28
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    iget v3, v1, Lrh3;->b:I

    if-ne v3, v4, :cond_2a

    array-length v3, v5

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2a

    .line 88
    iget-object v3, v1, Lrh3;->j:[J

    const/4 v4, 0x0

    aget-wide v6, v3, v4

    .line 89
    aget-wide v37, v0, v4

    iget-wide v8, v1, Lrh3;->c:J

    iget-wide v10, v1, Lrh3;->d:J

    move-wide/from16 v39, v8

    move-wide/from16 v41, v10

    invoke-static/range {v37 .. v42}, Lel3;->b(JJJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 90
    aget-wide v10, v5, v4

    cmp-long v0, v10, v6

    if-gtz v0, :cond_2a

    const/4 v0, 0x1

    aget-wide v3, v5, v0

    cmp-long v10, v6, v3

    if-gez v10, :cond_2a

    array-length v3, v5

    sub-int/2addr v3, v0

    aget-wide v3, v5, v3

    cmp-long v0, v3, v8

    if-gez v0, :cond_2a

    cmp-long v0, v8, v35

    if-gtz v0, :cond_2a

    sub-long v37, v35, v8

    const/4 v0, 0x0

    .line 91
    aget-wide v3, v5, v0

    sub-long v31, v6, v3

    iget-object v0, v1, Lrh3;->f:Lcom/google/android/gms/internal/ads/zzht;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzht;->w:I

    int-to-long v3, v0

    iget-wide v6, v1, Lrh3;->c:J

    move-wide/from16 v33, v3

    move-wide/from16 v35, v6

    invoke-static/range {v31 .. v36}, Lel3;->b(JJJ)J

    move-result-wide v3

    .line 92
    iget-object v0, v1, Lrh3;->f:Lcom/google/android/gms/internal/ads/zzht;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzht;->w:I

    int-to-long v6, v0

    iget-wide v8, v1, Lrh3;->c:J

    move-wide/from16 v39, v6

    move-wide/from16 v41, v8

    invoke-static/range {v37 .. v42}, Lel3;->b(JJJ)J

    move-result-wide v6

    cmp-long v0, v3, v22

    if-nez v0, :cond_29

    cmp-long v0, v6, v22

    if-eqz v0, :cond_2a

    :cond_29
    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v3, v8

    if-gtz v0, :cond_2a

    cmp-long v0, v6, v8

    if-gtz v0, :cond_2a

    long-to-int v0, v3

    .line 93
    iput v0, v2, Llg3;->a:I

    long-to-int v0, v6

    .line 94
    iput v0, v2, Llg3;->b:I

    .line 95
    iget-wide v0, v1, Lrh3;->c:J

    invoke-static {v5, v0, v1}, Lel3;->c([JJ)V

    .line 96
    new-instance v0, Lsh3;

    move-object/from16 v27, v0

    move-object/from16 v28, v12

    move-object/from16 v29, v15

    move-object/from16 v31, v5

    move-object/from16 v32, v13

    invoke-direct/range {v27 .. v32}, Lsh3;-><init>([J[II[J[I)V

    return-object v0

    .line 97
    :cond_2a
    iget-object v0, v1, Lrh3;->i:[J

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    const/16 v17, 0x0

    aget-wide v2, v0, v17

    cmp-long v0, v2, v22

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    .line 98
    :goto_20
    array-length v2, v5

    if-ge v0, v2, :cond_2b

    .line 99
    aget-wide v2, v5, v0

    iget-object v4, v1, Lrh3;->j:[J

    aget-wide v6, v4, v17

    sub-long v18, v2, v6

    const-wide/32 v20, 0xf4240

    iget-wide v2, v1, Lrh3;->c:J

    move-wide/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lel3;->b(JJJ)J

    move-result-wide v2

    aput-wide v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v17, 0x0

    goto :goto_20

    .line 100
    :cond_2b
    new-instance v0, Lsh3;

    move-object/from16 v27, v0

    move-object/from16 v28, v12

    move-object/from16 v29, v15

    move-object/from16 v31, v5

    move-object/from16 v32, v13

    invoke-direct/range {v27 .. v32}, Lsh3;-><init>([J[II[J[I)V

    return-object v0

    .line 101
    :cond_2c
    iget v0, v1, Lrh3;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_21

    :cond_2d
    const/4 v2, 0x0

    :goto_21
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 102
    :goto_22
    iget-object v7, v1, Lrh3;->i:[J

    array-length v8, v7

    const-wide/16 v9, -0x1

    if-ge v4, v8, :cond_30

    .line 103
    iget-object v8, v1, Lrh3;->j:[J

    move-object/from16 p1, v13

    aget-wide v13, v8, v4

    cmp-long v8, v13, v9

    if-eqz v8, :cond_2f

    .line 104
    aget-wide v31, v7, v4

    iget-wide v7, v1, Lrh3;->c:J

    iget-wide v9, v1, Lrh3;->d:J

    move-wide/from16 v33, v7

    move-wide/from16 v35, v9

    invoke-static/range {v31 .. v36}, Lel3;->b(JJJ)J

    move-result-wide v7

    const/4 v9, 0x1

    .line 105
    invoke-static {v5, v13, v14, v9, v9}, Lel3;->e([JJZZ)I

    move-result v10

    add-long/2addr v13, v7

    const/4 v7, 0x0

    .line 106
    invoke-static {v5, v13, v14, v2, v7}, Lel3;->e([JJZZ)I

    move-result v8

    sub-int v7, v8, v10

    add-int/2addr v7, v0

    if-eq v3, v10, :cond_2e

    const/4 v0, 0x1

    goto :goto_23

    :cond_2e
    const/4 v0, 0x0

    :goto_23
    or-int/2addr v0, v6

    move v6, v0

    move v0, v7

    move v3, v8

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, p1

    goto :goto_22

    :cond_30
    move-object/from16 p1, v13

    move/from16 v3, v26

    if-eq v0, v3, :cond_31

    const/4 v3, 0x1

    goto :goto_24

    :cond_31
    const/4 v3, 0x0

    :goto_24
    or-int/2addr v3, v6

    if-eqz v3, :cond_32

    .line 107
    new-array v4, v0, [J

    goto :goto_25

    :cond_32
    move-object v4, v12

    :goto_25
    if-eqz v3, :cond_33

    .line 108
    new-array v6, v0, [I

    goto :goto_26

    :cond_33
    move-object v6, v15

    :goto_26
    if-eqz v3, :cond_34

    const/16 v30, 0x0

    :cond_34
    if-eqz v3, :cond_35

    .line 109
    new-array v7, v0, [I

    goto :goto_27

    :cond_35
    move-object/from16 v7, p1

    .line 110
    :goto_27
    new-array v0, v0, [J

    move-wide/from16 v13, v22

    move/from16 v27, v30

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 111
    :goto_28
    iget-object v9, v1, Lrh3;->i:[J

    array-length v10, v9

    if-ge v8, v10, :cond_3b

    .line 112
    iget-object v10, v1, Lrh3;->j:[J

    move-wide/from16 v28, v13

    aget-wide v13, v10, v8

    .line 113
    aget-wide v30, v9, v8

    const-wide/16 v9, -0x1

    cmp-long v16, v13, v9

    if-eqz v16, :cond_3a

    .line 114
    iget-wide v9, v1, Lrh3;->c:J

    move-object/from16 v16, v7

    move/from16 v32, v8

    iget-wide v7, v1, Lrh3;->d:J

    move-wide/from16 v19, v30

    move-wide/from16 v21, v9

    move-wide/from16 v23, v7

    invoke-static/range {v19 .. v24}, Lel3;->b(JJJ)J

    move-result-wide v7

    add-long/2addr v7, v13

    const/4 v9, 0x1

    .line 115
    invoke-static {v5, v13, v14, v9, v9}, Lel3;->e([JJZZ)I

    move-result v10

    const/4 v9, 0x0

    .line 116
    invoke-static {v5, v7, v8, v2, v9}, Lel3;->e([JJZZ)I

    move-result v7

    if-eqz v3, :cond_36

    sub-int v8, v7, v10

    .line 117
    invoke-static {v12, v10, v4, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    invoke-static {v15, v10, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v9, p1

    move-object/from16 v43, v16

    move/from16 v16, v2

    move-object/from16 v2, v43

    .line 119
    invoke-static {v9, v10, v2, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    :cond_36
    move-object/from16 v9, p1

    move-object/from16 v43, v16

    move/from16 v16, v2

    move-object/from16 v2, v43

    :goto_29
    move/from16 v8, v27

    :goto_2a
    if-ge v10, v7, :cond_39

    const-wide/32 v21, 0xf4240

    move/from16 p1, v7

    move/from16 v27, v8

    .line 120
    iget-wide v7, v1, Lrh3;->d:J

    move-wide/from16 v19, v28

    move-wide/from16 v23, v7

    invoke-static/range {v19 .. v24}, Lel3;->b(JJJ)J

    move-result-wide v7

    .line 121
    aget-wide v19, v5, v10

    sub-long v33, v19, v13

    const-wide/32 v35, 0xf4240

    move-wide/from16 v19, v13

    iget-wide v13, v1, Lrh3;->c:J

    move-wide/from16 v37, v13

    invoke-static/range {v33 .. v38}, Lel3;->b(JJJ)J

    move-result-wide v13

    add-long/2addr v7, v13

    .line 122
    aput-wide v7, v0, v11

    if-eqz v3, :cond_37

    .line 123
    aget v7, v6, v11

    move/from16 v8, v27

    if-le v7, v8, :cond_38

    .line 124
    aget v8, v15, v10

    goto :goto_2b

    :cond_37
    move/from16 v8, v27

    :cond_38
    :goto_2b
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p1

    move-wide/from16 v13, v19

    goto :goto_2a

    :cond_39
    move/from16 v27, v8

    goto :goto_2c

    :cond_3a
    move-object/from16 v9, p1

    move/from16 v16, v2

    move-object v2, v7

    move/from16 v32, v8

    :goto_2c
    add-long v13, v28, v30

    add-int/lit8 v8, v32, 0x1

    move-object v7, v2

    move-object/from16 p1, v9

    move/from16 v2, v16

    goto/16 :goto_28

    :cond_3b
    move-object v2, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 125
    :goto_2d
    array-length v5, v2

    if-ge v1, v5, :cond_3d

    if-nez v3, :cond_3d

    .line 126
    aget v5, v2, v1

    const/4 v7, 0x1

    and-int/2addr v5, v7

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    goto :goto_2e

    :cond_3c
    const/4 v5, 0x0

    :goto_2e
    or-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_3d
    if-eqz v3, :cond_3e

    .line 127
    new-instance v1, Lsh3;

    move-object/from16 v24, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    invoke-direct/range {v24 .. v29}, Lsh3;-><init>([J[II[J[I)V

    return-object v1

    .line 128
    :cond_3e
    new-instance v0, Lne3;

    const-string v1, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    :goto_2f
    move-object v9, v13

    .line 129
    iget-wide v0, v1, Lrh3;->c:J

    invoke-static {v5, v0, v1}, Lel3;->c([JJ)V

    .line 130
    new-instance v0, Lsh3;

    move-object/from16 v27, v0

    move-object/from16 v28, v12

    move-object/from16 v29, v15

    move-object/from16 v31, v5

    move-object/from16 v32, v9

    invoke-direct/range {v27 .. v32}, Lsh3;-><init>([J[II[J[I)V

    return-object v0

    .line 131
    :cond_40
    new-instance v0, Lne3;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Lal3;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lal3;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1
    invoke-virtual {p0, p1}, Lal3;->h(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lal3;->i(I)V

    .line 3
    invoke-static {p0}, Lbh3;->e(Lal3;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lal3;->i(I)V

    .line 5
    invoke-virtual {p0}, Lal3;->d()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lal3;->i(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lal3;->e()I

    move-result v2

    invoke-virtual {p0, v2}, Lal3;->i(I)V

    :cond_1
    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lal3;->i(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lal3;->i(I)V

    .line 10
    invoke-static {p0}, Lbh3;->e(Lal3;)I

    .line 11
    invoke-virtual {p0}, Lal3;->d()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_9

    const/16 v2, 0x21

    if-eq v0, v2, :cond_8

    const/16 v2, 0x23

    if-eq v0, v2, :cond_7

    const/16 v2, 0x40

    if-eq v0, v2, :cond_6

    const/16 v2, 0x6b

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_4

    const/16 v2, 0xa6

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const-string p0, "audio/vnd.dts.hd"

    .line 12
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "audio/vnd.dts"

    .line 13
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "audio/eac3"

    goto :goto_0

    :cond_4
    const-string v1, "audio/ac3"

    goto :goto_0

    :cond_5
    const-string p0, "audio/mpeg"

    .line 14
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6
    :pswitch_2
    const-string v1, "audio/mp4a-latm"

    goto :goto_0

    :cond_7
    const-string v1, "video/hevc"

    goto :goto_0

    :cond_8
    const-string v1, "video/avc"

    goto :goto_0

    :cond_9
    const-string v1, "video/mp4v-es"

    :goto_0
    const/16 v0, 0xc

    .line 15
    invoke-virtual {p0, v0}, Lal3;->i(I)V

    .line 16
    invoke-virtual {p0, p1}, Lal3;->i(I)V

    .line 17
    invoke-static {p0}, Lbh3;->e(Lal3;)I

    move-result p1

    .line 18
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 19
    iget-object v3, p0, Lal3;->a:[B

    iget v4, p0, Lal3;->b:I

    invoke-static {v3, v4, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget v2, p0, Lal3;->b:I

    add-int/2addr v2, p1

    iput v2, p0, Lal3;->b:I

    .line 21
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static e(Lal3;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lal3;->d()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lal3;->d()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
