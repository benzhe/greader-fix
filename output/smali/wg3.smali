.class public final Lwg3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lug3;


# direct methods
.method public constructor <init>(Lug3;Ltg3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg3;->a:Lug3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lne3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwg3;->a:Lug3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4489

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-float p2, p2

    iput p2, p1, Lvg3;->F:F

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-float p2, p2

    iput p2, p1, Lvg3;->E:F

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-float p2, p2

    iput p2, p1, Lvg3;->D:F

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-float p2, p2

    iput p2, p1, Lvg3;->C:F

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-float p2, p2

    iput p2, p1, Lvg3;->B:F

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-float p2, p2

    iput p2, p1, Lvg3;->A:F

    goto :goto_0

    .line 9
    :pswitch_6
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-float p2, p2

    iput p2, p1, Lvg3;->z:F

    goto :goto_0

    .line 10
    :pswitch_7
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-float p2, p2

    iput p2, p1, Lvg3;->y:F

    goto :goto_0

    .line 11
    :pswitch_8
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-float p2, p2

    iput p2, p1, Lvg3;->x:F

    goto :goto_0

    .line 12
    :pswitch_9
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-float p2, p2

    iput p2, p1, Lvg3;->w:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 13
    iput-wide p1, v0, Lug3;->r:J

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, v0, Lug3;->t:Lvg3;

    double-to-int p2, p2

    iput p2, p1, Lvg3;->I:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
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

.method public final b(IILgg3;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    .line 1
    iget-object v4, v2, Lwg3;->a:Lug3;

    .line 2
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xa1

    const/16 v6, 0xa3

    const/4 v7, 0x0

    if-eq v0, v5, :cond_5

    if-eq v0, v6, :cond_5

    const/16 v5, 0x4255

    if-eq v0, v5, :cond_4

    const/16 v5, 0x47e2

    if-eq v0, v5, :cond_3

    const/16 v5, 0x53ab

    if-eq v0, v5, :cond_2

    const/16 v5, 0x63a2

    if-eq v0, v5, :cond_1

    const/16 v5, 0x7672

    if-ne v0, v5, :cond_0

    .line 3
    iget-object v0, v4, Lug3;->t:Lvg3;

    new-array v4, v1, [B

    iput-object v4, v0, Lvg3;->o:[B

    .line 4
    move-object v0, v3

    check-cast v0, Leg3;

    .line 5
    invoke-virtual {v0, v4, v7, v1, v7}, Leg3;->c([BIIZ)Z

    goto/16 :goto_e

    .line 6
    :cond_0
    new-instance v1, Lne3;

    const/16 v3, 0x1a

    const-string v4, "Unexpected id: "

    invoke-static {v3, v4, v0}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    iget-object v0, v4, Lug3;->t:Lvg3;

    new-array v4, v1, [B

    iput-object v4, v0, Lvg3;->h:[B

    .line 8
    move-object v0, v3

    check-cast v0, Leg3;

    .line 9
    invoke-virtual {v0, v4, v7, v1, v7}, Leg3;->c([BIIZ)Z

    goto/16 :goto_e

    .line 10
    :cond_2
    iget-object v0, v4, Lug3;->i:Lal3;

    iget-object v0, v0, Lal3;->a:[B

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 11
    iget-object v0, v4, Lug3;->i:Lal3;

    iget-object v0, v0, Lal3;->a:[B

    rsub-int/lit8 v5, v1, 0x4

    check-cast v3, Leg3;

    .line 12
    invoke-virtual {v3, v0, v5, v1, v7}, Leg3;->c([BIIZ)Z

    .line 13
    iget-object v0, v4, Lug3;->i:Lal3;

    invoke-virtual {v0, v7}, Lal3;->h(I)V

    .line 14
    iget-object v0, v4, Lug3;->i:Lal3;

    invoke-virtual {v0}, Lal3;->n()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v4, Lug3;->v:I

    goto/16 :goto_e

    .line 15
    :cond_3
    new-array v0, v1, [B

    .line 16
    check-cast v3, Leg3;

    .line 17
    invoke-virtual {v3, v0, v7, v1, v7}, Leg3;->c([BIIZ)Z

    .line 18
    iget-object v1, v4, Lug3;->t:Lvg3;

    new-instance v3, Lqg3;

    invoke-direct {v3, v0}, Lqg3;-><init>([B)V

    iput-object v3, v1, Lvg3;->g:Lqg3;

    goto/16 :goto_e

    .line 19
    :cond_4
    iget-object v0, v4, Lug3;->t:Lvg3;

    new-array v4, v1, [B

    iput-object v4, v0, Lvg3;->f:[B

    .line 20
    move-object v0, v3

    check-cast v0, Leg3;

    .line 21
    invoke-virtual {v0, v4, v7, v1, v7}, Leg3;->c([BIIZ)Z

    goto/16 :goto_e

    .line 22
    :cond_5
    iget v5, v4, Lug3;->E:I

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-nez v5, :cond_6

    .line 23
    iget-object v5, v4, Lug3;->b:Lxg3;

    invoke-virtual {v5, v3, v7, v9, v8}, Lxg3;->a(Lgg3;ZZI)J

    move-result-wide v10

    long-to-int v5, v10

    iput v5, v4, Lug3;->K:I

    .line 24
    iget-object v5, v4, Lug3;->b:Lxg3;

    .line 25
    iget v5, v5, Lxg3;->c:I

    .line 26
    iput v5, v4, Lug3;->L:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    iput-wide v10, v4, Lug3;->G:J

    .line 28
    iput v9, v4, Lug3;->E:I

    .line 29
    iget-object v5, v4, Lug3;->g:Lal3;

    .line 30
    iput v7, v5, Lal3;->b:I

    .line 31
    iput v7, v5, Lal3;->c:I

    .line 32
    :cond_6
    iget-object v5, v4, Lug3;->c:Landroid/util/SparseArray;

    iget v10, v4, Lug3;->K:I

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvg3;

    if-nez v5, :cond_7

    .line 33
    iget v0, v4, Lug3;->L:I

    sub-int v0, v1, v0

    move-object v1, v3

    check-cast v1, Leg3;

    invoke-virtual {v1, v0}, Leg3;->d(I)V

    .line 34
    iput v7, v4, Lug3;->E:I

    goto/16 :goto_e

    .line 35
    :cond_7
    iget v10, v4, Lug3;->E:I

    if-ne v10, v9, :cond_1b

    const/4 v10, 0x3

    .line 36
    invoke-virtual {v4, v3, v10}, Lug3;->i(Lgg3;I)V

    .line 37
    iget-object v11, v4, Lug3;->g:Lal3;

    iget-object v11, v11, Lal3;->a:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v9

    const/16 v13, 0xff

    if-nez v11, :cond_8

    .line 38
    iput v9, v4, Lug3;->I:I

    .line 39
    iget-object v6, v4, Lug3;->J:[I

    invoke-static {v6, v9}, Lug3;->h([II)[I

    move-result-object v6

    iput-object v6, v4, Lug3;->J:[I

    .line 40
    iget v9, v4, Lug3;->L:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v10

    aput v1, v6, v7

    goto :goto_1

    :cond_8
    if-ne v0, v6, :cond_1a

    const/4 v6, 0x4

    .line 41
    invoke-virtual {v4, v3, v6}, Lug3;->i(Lgg3;I)V

    .line 42
    iget-object v14, v4, Lug3;->g:Lal3;

    iget-object v14, v14, Lal3;->a:[B

    aget-byte v14, v14, v10

    and-int/2addr v14, v13

    add-int/2addr v14, v9

    iput v14, v4, Lug3;->I:I

    .line 43
    iget-object v15, v4, Lug3;->J:[I

    .line 44
    invoke-static {v15, v14}, Lug3;->h([II)[I

    move-result-object v14

    iput-object v14, v4, Lug3;->J:[I

    if-ne v11, v12, :cond_9

    .line 45
    iget v9, v4, Lug3;->L:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v6

    iget v6, v4, Lug3;->I:I

    div-int/2addr v1, v6

    .line 46
    invoke-static {v14, v7, v6, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    :cond_9
    if-ne v11, v9, :cond_c

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 47
    :goto_0
    iget v12, v4, Lug3;->I:I

    add-int/lit8 v14, v12, -0x1

    if-ge v10, v14, :cond_b

    .line 48
    iget-object v12, v4, Lug3;->J:[I

    aput v7, v12, v10

    :cond_a
    add-int/2addr v6, v9

    .line 49
    invoke-virtual {v4, v3, v6}, Lug3;->i(Lgg3;I)V

    .line 50
    iget-object v12, v4, Lug3;->g:Lal3;

    iget-object v12, v12, Lal3;->a:[B

    add-int/lit8 v14, v6, -0x1

    aget-byte v12, v12, v14

    and-int/2addr v12, v13

    .line 51
    iget-object v14, v4, Lug3;->J:[I

    aget v15, v14, v10

    add-int/2addr v15, v12

    aput v15, v14, v10

    if-eq v12, v13, :cond_a

    .line 52
    aget v12, v14, v10

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 53
    :cond_b
    iget-object v7, v4, Lug3;->J:[I

    sub-int/2addr v12, v9

    iget v9, v4, Lug3;->L:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v6

    sub-int/2addr v1, v11

    aput v1, v7, v12

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_c
    if-ne v11, v10, :cond_19

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 54
    :goto_2
    iget v12, v4, Lug3;->I:I

    add-int/lit8 v14, v12, -0x1

    if-ge v10, v14, :cond_14

    .line 55
    iget-object v12, v4, Lug3;->J:[I

    aput v7, v12, v10

    add-int/lit8 v6, v6, 0x1

    .line 56
    invoke-virtual {v4, v3, v6}, Lug3;->i(Lgg3;I)V

    .line 57
    iget-object v7, v4, Lug3;->g:Lal3;

    iget-object v7, v7, Lal3;->a:[B

    add-int/lit8 v12, v6, -0x1

    aget-byte v7, v7, v12

    if-eqz v7, :cond_13

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_10

    rsub-int/lit8 v16, v7, 0x7

    shl-int v9, v9, v16

    .line 58
    iget-object v14, v4, Lug3;->g:Lal3;

    iget-object v14, v14, Lal3;->a:[B

    aget-byte v14, v14, v12

    and-int/2addr v14, v9

    if-eqz v14, :cond_f

    add-int/2addr v6, v7

    .line 59
    invoke-virtual {v4, v3, v6}, Lug3;->i(Lgg3;I)V

    .line 60
    iget-object v14, v4, Lug3;->g:Lal3;

    iget-object v14, v14, Lal3;->a:[B

    add-int/lit8 v15, v12, 0x1

    aget-byte v12, v14, v12

    and-int/2addr v12, v13

    not-int v9, v9

    and-int/2addr v9, v12

    int-to-long v8, v9

    :goto_4
    if-ge v15, v6, :cond_d

    const/16 v12, 0x8

    shl-long/2addr v8, v12

    .line 61
    iget-object v12, v4, Lug3;->g:Lal3;

    iget-object v12, v12, Lal3;->a:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v12, v12, v15

    and-int/2addr v12, v13

    int-to-long v12, v12

    or-long/2addr v8, v12

    const/16 v13, 0xff

    move/from16 v15, v16

    goto :goto_4

    :cond_d
    if-lez v10, :cond_e

    mul-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x6

    const-wide/16 v12, 0x1

    shl-long v15, v12, v7

    sub-long/2addr v15, v12

    sub-long v7, v8, v15

    goto :goto_5

    :cond_e
    move-wide v7, v8

    goto :goto_5

    :cond_f
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    const/16 v13, 0xff

    const/16 v8, 0x8

    goto :goto_3

    :cond_10
    const-wide/16 v7, 0x0

    :goto_5
    const-wide/32 v12, -0x80000000

    cmp-long v9, v7, v12

    if-ltz v9, :cond_12

    const-wide/32 v12, 0x7fffffff

    cmp-long v9, v7, v12

    if-gtz v9, :cond_12

    long-to-int v8, v7

    .line 62
    iget-object v7, v4, Lug3;->J:[I

    if-nez v10, :cond_11

    goto :goto_6

    :cond_11
    add-int/lit8 v9, v10, -0x1

    .line 63
    aget v9, v7, v9

    add-int/2addr v8, v9

    :goto_6
    aput v8, v7, v10

    .line 64
    aget v7, v7, v10

    add-int/2addr v11, v7

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/16 v13, 0xff

    const/16 v8, 0x8

    goto/16 :goto_2

    .line 65
    :cond_12
    new-instance v0, Lne3;

    const-string v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_13
    new-instance v0, Lne3;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_14
    iget-object v7, v4, Lug3;->J:[I

    const/4 v8, 0x1

    sub-int/2addr v12, v8

    iget v9, v4, Lug3;->L:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v6

    sub-int/2addr v1, v11

    aput v1, v7, v12

    goto/16 :goto_1

    .line 68
    :goto_7
    iget-object v6, v4, Lug3;->g:Lal3;

    iget-object v6, v6, Lal3;->a:[B

    const/4 v7, 0x0

    aget-byte v7, v6, v7

    shl-int/lit8 v7, v7, 0x8

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v7

    .line 69
    iget-wide v6, v4, Lug3;->A:J

    int-to-long v8, v1

    invoke-virtual {v4, v8, v9}, Lug3;->j(J)J

    move-result-wide v8

    add-long/2addr v8, v6

    iput-wide v8, v4, Lug3;->F:J

    .line 70
    iget-object v1, v4, Lug3;->g:Lal3;

    iget-object v1, v1, Lal3;->a:[B

    const/4 v6, 0x2

    aget-byte v7, v1, v6

    const/16 v8, 0x8

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_15

    const/4 v7, 0x1

    goto :goto_8

    :cond_15
    const/4 v7, 0x0

    .line 71
    :goto_8
    iget v8, v5, Lvg3;->c:I

    if-eq v8, v6, :cond_17

    const/16 v8, 0xa3

    if-ne v0, v8, :cond_16

    aget-byte v1, v1, v6

    const/16 v6, 0x80

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_16

    goto :goto_9

    :cond_16
    const/4 v1, 0x0

    goto :goto_a

    :cond_17
    :goto_9
    const/4 v1, 0x1

    :goto_a
    if-eqz v7, :cond_18

    const/high16 v6, -0x80000000

    goto :goto_b

    :cond_18
    const/4 v6, 0x0

    :goto_b
    or-int/2addr v1, v6

    .line 72
    iput v1, v4, Lug3;->M:I

    const/4 v1, 0x2

    .line 73
    iput v1, v4, Lug3;->E:I

    const/4 v1, 0x0

    .line 74
    iput v1, v4, Lug3;->H:I

    goto :goto_c

    .line 75
    :cond_19
    new-instance v0, Lne3;

    const/16 v1, 0x24

    const-string v3, "Unexpected lacing value: "

    invoke-static {v1, v3, v11}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1a
    new-instance v0, Lne3;

    const-string v1, "Lacing only supported in SimpleBlocks."

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_c
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1d

    .line 77
    :goto_d
    iget v0, v4, Lug3;->H:I

    iget v1, v4, Lug3;->I:I

    if-ge v0, v1, :cond_1c

    .line 78
    iget-object v1, v4, Lug3;->J:[I

    aget v0, v1, v0

    invoke-virtual {v4, v3, v5, v0}, Lug3;->d(Lgg3;Lvg3;I)V

    .line 79
    iget-wide v0, v4, Lug3;->F:J

    iget v6, v4, Lug3;->H:I

    iget v7, v5, Lvg3;->d:I

    mul-int v6, v6, v7

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 80
    invoke-virtual {v4, v5, v0, v1}, Lug3;->g(Lvg3;J)V

    .line 81
    iget v0, v4, Lug3;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lug3;->H:I

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    .line 82
    iput v0, v4, Lug3;->E:I

    goto :goto_e

    :cond_1d
    const/4 v0, 0x0

    .line 83
    iget-object v1, v4, Lug3;->J:[I

    aget v0, v1, v0

    invoke-virtual {v4, v3, v5, v0}, Lug3;->d(Lgg3;Lvg3;I)V

    :goto_e
    return-void
.end method

.method public final c(IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lne3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwg3;->a:Lug3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5031

    const/16 v2, 0x37

    const-string v3, " not supported"

    if-eq p1, v1, :cond_15

    const/16 v1, 0x5032

    const-wide/16 v4, 0x1

    if-eq p1, v1, :cond_13

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x7

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :sswitch_0
    iput-wide p2, v0, Lug3;->q:J

    goto/16 :goto_0

    .line 4
    :sswitch_1
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->d:I

    goto/16 :goto_0

    .line 5
    :sswitch_2
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->H:I

    goto/16 :goto_0

    .line 6
    :sswitch_3
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput-wide p2, p1, Lvg3;->K:J

    goto/16 :goto_0

    .line 7
    :sswitch_4
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput-wide p2, p1, Lvg3;->J:J

    goto/16 :goto_0

    .line 8
    :sswitch_5
    iget-object p1, v0, Lug3;->t:Lvg3;

    cmp-long v0, p2, v4

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p1, Lvg3;->M:Z

    goto/16 :goto_0

    .line 9
    :sswitch_6
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->m:I

    goto/16 :goto_0

    .line 10
    :sswitch_7
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->n:I

    goto/16 :goto_0

    .line 11
    :sswitch_8
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->l:I

    goto/16 :goto_0

    :sswitch_9
    long-to-int p1, p2

    if-eqz p1, :cond_4

    if-eq p1, v8, :cond_3

    if-eq p1, v6, :cond_2

    const/16 p2, 0xf

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    .line 12
    :cond_1
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput v6, p1, Lvg3;->p:I

    goto/16 :goto_0

    .line 13
    :cond_2
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput v8, p1, Lvg3;->p:I

    goto/16 :goto_0

    .line 14
    :cond_3
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput v7, p1, Lvg3;->p:I

    goto/16 :goto_0

    .line 15
    :cond_4
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput v2, p1, Lvg3;->p:I

    goto/16 :goto_0

    .line 16
    :sswitch_a
    iget-wide v1, v0, Lug3;->p:J

    add-long/2addr p2, v1

    iput-wide p2, v0, Lug3;->w:J

    goto/16 :goto_0

    :sswitch_b
    cmp-long p1, p2, v4

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 17
    :cond_5
    new-instance p1, Lne3;

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lne3;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_c
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 18
    :cond_6
    new-instance p1, Lne3;

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lne3;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_d
    cmp-long p1, p2, v4

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 19
    :cond_7
    new-instance p1, Lne3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "EBMLReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lne3;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    cmp-long p1, p2, v4

    if-ltz p1, :cond_8

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_8

    goto/16 :goto_0

    .line 20
    :cond_8
    new-instance p1, Lne3;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lne3;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    const-wide/16 v4, 0x3

    cmp-long p1, p2, v4

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 21
    :cond_9
    new-instance p1, Lne3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentCompAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lne3;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :sswitch_10
    iput-boolean v8, v0, Lug3;->X:Z

    goto/16 :goto_0

    .line 23
    :sswitch_11
    iget-boolean p1, v0, Lug3;->D:Z

    if-nez p1, :cond_16

    .line 24
    iget-object p1, v0, Lug3;->C:Lvk3;

    invoke-virtual {p1, p2, p3}, Lvk3;->a(J)V

    .line 25
    iput-boolean v8, v0, Lug3;->D:Z

    goto/16 :goto_0

    .line 26
    :sswitch_12
    invoke-virtual {v0, p2, p3}, Lug3;->j(J)J

    move-result-wide p1

    iput-wide p1, v0, Lug3;->A:J

    goto/16 :goto_0

    .line 27
    :sswitch_13
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->b:I

    goto/16 :goto_0

    .line 28
    :sswitch_14
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->k:I

    goto/16 :goto_0

    .line 29
    :sswitch_15
    iget-object p1, v0, Lug3;->B:Lvk3;

    invoke-virtual {v0, p2, p3}, Lug3;->j(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lvk3;->a(J)V

    goto/16 :goto_0

    .line 30
    :sswitch_16
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->j:I

    goto/16 :goto_0

    .line 31
    :sswitch_17
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->G:I

    goto/16 :goto_0

    .line 32
    :sswitch_18
    invoke-virtual {v0, p2, p3}, Lug3;->j(J)J

    move-result-wide p1

    iput-wide p1, v0, Lug3;->G:J

    goto/16 :goto_0

    .line 33
    :sswitch_19
    iget-object p1, v0, Lug3;->t:Lvg3;

    cmp-long v0, p2, v4

    if-nez v0, :cond_a

    const/4 v2, 0x1

    :cond_a
    iput-boolean v2, p1, Lvg3;->L:Z

    goto/16 :goto_0

    .line 34
    :sswitch_1a
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->c:I

    goto/16 :goto_0

    .line 35
    :pswitch_0
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->v:I

    goto/16 :goto_0

    .line 36
    :pswitch_1
    iget-object p1, v0, Lug3;->t:Lvg3;

    long-to-int p3, p2

    iput p3, p1, Lvg3;->u:I

    goto/16 :goto_0

    .line 37
    :pswitch_2
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput-boolean v8, p1, Lvg3;->q:Z

    long-to-int p3, p2

    if-eq p3, v8, :cond_d

    const/16 p2, 0x9

    if-eq p3, p2, :cond_c

    const/4 p2, 0x4

    if-eq p3, p2, :cond_b

    const/4 p2, 0x5

    if-eq p3, p2, :cond_b

    if-eq p3, v2, :cond_b

    if-eq p3, v1, :cond_b

    goto :goto_0

    .line 38
    :cond_b
    iput v7, p1, Lvg3;->r:I

    goto :goto_0

    .line 39
    :cond_c
    iput v2, p1, Lvg3;->r:I

    goto :goto_0

    .line 40
    :cond_d
    iput v8, p1, Lvg3;->r:I

    goto :goto_0

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v8, :cond_10

    const/16 p2, 0x10

    if-eq p1, p2, :cond_f

    const/16 p2, 0x12

    if-eq p1, p2, :cond_e

    if-eq p1, v2, :cond_10

    if-eq p1, v1, :cond_10

    goto :goto_0

    .line 41
    :cond_e
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput v1, p1, Lvg3;->s:I

    goto :goto_0

    .line 42
    :cond_f
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput v2, p1, Lvg3;->s:I

    goto :goto_0

    .line 43
    :cond_10
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput v6, p1, Lvg3;->s:I

    goto :goto_0

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v8, :cond_12

    if-eq p1, v7, :cond_11

    goto :goto_0

    .line 44
    :cond_11
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput v8, p1, Lvg3;->t:I

    goto :goto_0

    .line 45
    :cond_12
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput v7, p1, Lvg3;->t:I

    goto :goto_0

    :cond_13
    cmp-long p1, p2, v4

    if-nez p1, :cond_14

    goto :goto_0

    .line 46
    :cond_14
    new-instance p1, Lne3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lne3;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_17

    :cond_16
    :goto_0
    return-void

    .line 47
    :cond_17
    new-instance p1, Lne3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lne3;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1a
        0x88 -> :sswitch_19
        0x9b -> :sswitch_18
        0x9f -> :sswitch_17
        0xb0 -> :sswitch_16
        0xb3 -> :sswitch_15
        0xba -> :sswitch_14
        0xd7 -> :sswitch_13
        0xe7 -> :sswitch_12
        0xf1 -> :sswitch_11
        0xfb -> :sswitch_10
        0x4254 -> :sswitch_f
        0x4285 -> :sswitch_e
        0x42f7 -> :sswitch_d
        0x47e1 -> :sswitch_c
        0x47e8 -> :sswitch_b
        0x53ac -> :sswitch_a
        0x53b8 -> :sswitch_9
        0x54b0 -> :sswitch_8
        0x54b2 -> :sswitch_7
        0x54ba -> :sswitch_6
        0x55aa -> :sswitch_5
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_3
        0x6264 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lne3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwg3;->a:Lug3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    if-eq p1, v1, :cond_b

    const/16 v1, 0xae

    if-eq p1, v1, :cond_a

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_9

    const/16 v1, 0x4dbb

    const-wide/16 v2, -0x1

    if-eq p1, v1, :cond_8

    const/16 v1, 0x5035

    const/4 v4, 0x1

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55d0

    if-eq p1, v1, :cond_6

    const v1, 0x18538067

    if-eq p1, v1, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-boolean p1, v0, Lug3;->u:Z

    if-nez p1, :cond_c

    .line 4
    iget-boolean p1, v0, Lug3;->d:Z

    if-eqz p1, :cond_1

    iget-wide p1, v0, Lug3;->y:J

    cmp-long p3, p1, v2

    if-eqz p3, :cond_1

    .line 5
    iput-boolean v4, v0, Lug3;->x:Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, v0, Lug3;->Y:Lkg3;

    new-instance p2, Log3;

    iget-wide p3, v0, Lug3;->s:J

    invoke-direct {p2, p3, p4}, Log3;-><init>(J)V

    check-cast p1, Lmi3;

    .line 7
    iput-object p2, p1, Lmi3;->u:Lmg3;

    .line 8
    iget-object p2, p1, Lmi3;->r:Landroid/os/Handler;

    iget-object p1, p1, Lmi3;->p:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    iput-boolean v4, v0, Lug3;->u:Z

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Lvk3;

    invoke-direct {p1}, Lvk3;-><init>()V

    iput-object p1, v0, Lug3;->B:Lvk3;

    .line 11
    new-instance p1, Lvk3;

    invoke-direct {p1}, Lvk3;-><init>()V

    iput-object p1, v0, Lug3;->C:Lvk3;

    goto :goto_1

    .line 12
    :cond_3
    iget-wide v4, v0, Lug3;->p:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_5

    cmp-long p1, v4, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    new-instance p1, Lne3;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lne3;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    :goto_0
    iput-wide p2, v0, Lug3;->p:J

    .line 15
    iput-wide p4, v0, Lug3;->o:J

    goto :goto_1

    .line 16
    :cond_6
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput-boolean v4, p1, Lvg3;->q:Z

    goto :goto_1

    .line 17
    :cond_7
    iget-object p1, v0, Lug3;->t:Lvg3;

    iput-boolean v4, p1, Lvg3;->e:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 18
    iput p1, v0, Lug3;->v:I

    .line 19
    iput-wide v2, v0, Lug3;->w:J

    goto :goto_1

    .line 20
    :cond_9
    iput-boolean v2, v0, Lug3;->D:Z

    goto :goto_1

    .line 21
    :cond_a
    new-instance p1, Lvg3;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lvg3;-><init>(Ltg3;)V

    iput-object p1, v0, Lug3;->t:Lvg3;

    goto :goto_1

    .line 22
    :cond_b
    iput-boolean v2, v0, Lug3;->X:Z

    :cond_c
    :goto_1
    return-void
.end method
