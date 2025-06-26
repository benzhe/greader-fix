.class public Ld6;
.super Lk6;
.source "SourceFile"


# instance fields
.field public D0:Lm6;

.field public E0:Lp6;

.field public F0:Lm6$b;

.field public G0:Z

.field public H0:Lu5;

.field public I0:I

.field public J0:I

.field public K0:I

.field public L0:I

.field public M0:[La6;

.field public N0:[La6;

.field public O0:I

.field public P0:Z

.field public Q0:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lk6;-><init>()V

    .line 2
    new-instance v0, Lm6;

    invoke-direct {v0, p0}, Lm6;-><init>(Ld6;)V

    iput-object v0, p0, Ld6;->D0:Lm6;

    .line 3
    new-instance v0, Lp6;

    invoke-direct {v0, p0}, Lp6;-><init>(Ld6;)V

    iput-object v0, p0, Ld6;->E0:Lp6;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ld6;->F0:Lm6$b;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ld6;->G0:Z

    .line 6
    new-instance v1, Lu5;

    invoke-direct {v1}, Lu5;-><init>()V

    iput-object v1, p0, Ld6;->H0:Lu5;

    .line 7
    iput v0, p0, Ld6;->K0:I

    .line 8
    iput v0, p0, Ld6;->L0:I

    const/4 v1, 0x4

    new-array v2, v1, [La6;

    .line 9
    iput-object v2, p0, Ld6;->M0:[La6;

    new-array v1, v1, [La6;

    .line 10
    iput-object v1, p0, Ld6;->N0:[La6;

    const/16 v1, 0x107

    .line 11
    iput v1, p0, Ld6;->O0:I

    .line 12
    iput-boolean v0, p0, Ld6;->P0:Z

    .line 13
    iput-boolean v0, p0, Ld6;->Q0:Z

    return-void
.end method


# virtual methods
.method public J(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lc6;->J(ZZ)V

    .line 2
    iget-object v0, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6;

    .line 4
    invoke-virtual {v2, p1, p2}, Lc6;->J(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    sget-object v2, Lc6$a;->f:Lc6$a;

    sget-object v3, Lc6$a;->e:Lc6$a;

    const/4 v4, 0x0

    iput v4, v1, Lc6;->R:I

    .line 2
    iput v4, v1, Lc6;->S:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Lc6;->t()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Lc6;->n()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5
    iput-boolean v4, v1, Ld6;->P0:Z

    .line 6
    iput-boolean v4, v1, Ld6;->Q0:Z

    .line 7
    iget v0, v1, Ld6;->O0:I

    and-int/lit8 v7, v0, 0x40

    const/16 v8, 0x40

    const/4 v9, 0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_3

    and-int/lit16 v7, v0, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 8
    :goto_3
    iget-object v8, v1, Ld6;->H0:Lu5;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-boolean v4, v8, Lu5;->f:Z

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 10
    iput-boolean v9, v8, Lu5;->f:Z

    .line 11
    :cond_4
    iget-object v0, v1, Lc6;->L:[Lc6$a;

    aget-object v7, v0, v9

    .line 12
    aget-object v8, v0, v4

    .line 13
    iget-object v10, v1, Lk6;->C0:Ljava/util/ArrayList;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lc6;->o()Lc6$a;

    move-result-object v0

    if-eq v0, v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lc6;->s()Lc6$a;

    move-result-object v0

    if-ne v0, v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v11, 0x1

    .line 15
    :goto_5
    iput v4, v1, Ld6;->K0:I

    .line 16
    iput v4, v1, Ld6;->L0:I

    .line 17
    iget-object v0, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v12, :cond_8

    .line 18
    iget-object v13, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc6;

    .line 19
    instance-of v14, v13, Lk6;

    if-eqz v14, :cond_7

    .line 20
    check-cast v13, Lk6;

    invoke-virtual {v13}, Lk6;->L()V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_7
    if-eqz v13, :cond_18

    add-int/lit8 v15, v0, 0x1

    .line 21
    :try_start_0
    iget-object v0, v1, Ld6;->H0:Lu5;

    invoke-virtual {v0}, Lu5;->t()V

    .line 22
    iput v4, v1, Ld6;->K0:I

    .line 23
    iput v4, v1, Ld6;->L0:I

    .line 24
    iget-object v0, v1, Ld6;->H0:Lu5;

    invoke-virtual {v1, v0}, Lc6;->j(Lu5;)V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v12, :cond_9

    .line 25
    iget-object v9, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc6;

    .line 26
    iget-object v4, v1, Ld6;->H0:Lu5;

    invoke-virtual {v9, v4}, Lc6;->j(Lu5;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_8

    .line 27
    :cond_9
    iget-object v0, v1, Ld6;->H0:Lu5;

    invoke-virtual {v1, v0}, Ld6;->N(Lu5;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :try_start_1
    iget-object v0, v1, Ld6;->H0:Lu5;

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v0, Lu5;->f:Z

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    .line 30
    :goto_9
    iget v9, v0, Lu5;->i:I

    if-ge v4, v9, :cond_b

    .line 31
    iget-object v9, v0, Lu5;->e:[Ls5;

    aget-object v9, v9, v4

    .line 32
    iget-boolean v9, v9, Ls5;->e:Z

    if-nez v9, :cond_a

    const/4 v4, 0x0

    goto :goto_a

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_b
    const/4 v4, 0x1

    :goto_a
    if-nez v4, :cond_c

    .line 33
    iget-object v4, v0, Lu5;->b:Lu5$a;

    invoke-virtual {v0, v4}, Lu5;->q(Lu5$a;)V

    goto :goto_b

    .line 34
    :cond_c
    invoke-virtual {v0}, Lu5;->j()V

    goto :goto_b

    .line 35
    :cond_d
    iget-object v4, v0, Lu5;->b:Lu5$a;

    invoke-virtual {v0, v4}, Lu5;->q(Lu5$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_b
    const/16 v16, 0x1

    goto :goto_d

    :catch_0
    move-exception v0

    const/4 v13, 0x1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 36
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v13

    const-string v13, "EXCEPTION : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_d
    const/4 v0, 0x2

    if-eqz v16, :cond_e

    .line 38
    iget-object v4, v1, Ld6;->H0:Lu5;

    sget-object v9, Li6;->a:[Z

    const/4 v13, 0x0

    .line 39
    aput-boolean v13, v9, v0

    .line 40
    invoke-virtual {v1, v4}, Lc6;->K(Lu5;)V

    .line 41
    iget-object v9, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v9, :cond_f

    .line 42
    iget-object v0, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6;

    .line 43
    invoke-virtual {v0, v4}, Lc6;->K(Lu5;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x2

    goto :goto_e

    .line 44
    :cond_e
    iget-object v0, v1, Ld6;->H0:Lu5;

    invoke-virtual {v1, v0}, Lc6;->K(Lu5;)V

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v12, :cond_f

    .line 45
    iget-object v4, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc6;

    .line 46
    iget-object v9, v1, Ld6;->H0:Lu5;

    invoke-virtual {v4, v9}, Lc6;->K(Lu5;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_f
    if-eqz v11, :cond_12

    const/16 v0, 0x8

    if-ge v15, v0, :cond_12

    .line 47
    sget-object v0, Li6;->a:[Z

    const/4 v4, 0x2

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_10
    if-ge v0, v12, :cond_10

    .line 48
    iget-object v13, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc6;

    move/from16 v16, v11

    .line 49
    iget v11, v13, Lc6;->R:I

    invoke-virtual {v13}, Lc6;->t()I

    move-result v17

    add-int v11, v17, v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 50
    iget v11, v13, Lc6;->S:I

    invoke-virtual {v13}, Lc6;->n()I

    move-result v13

    add-int/2addr v13, v11

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v16

    goto :goto_10

    :cond_10
    move/from16 v16, v11

    .line 51
    iget v0, v1, Lc6;->Y:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    iget v4, v1, Lc6;->Z:I

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v8, v2, :cond_11

    .line 53
    invoke-virtual/range {p0 .. p0}, Lc6;->t()I

    move-result v9

    if-ge v9, v0, :cond_11

    .line 54
    invoke-virtual {v1, v0}, Lc6;->I(I)V

    .line 55
    iget-object v0, v1, Lc6;->L:[Lc6$a;

    const/4 v9, 0x0

    aput-object v2, v0, v9

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_11

    :cond_11
    const/4 v0, 0x0

    :goto_11
    if-ne v7, v2, :cond_13

    .line 56
    invoke-virtual/range {p0 .. p0}, Lc6;->n()I

    move-result v9

    if-ge v9, v4, :cond_13

    .line 57
    invoke-virtual {v1, v4}, Lc6;->D(I)V

    .line 58
    iget-object v0, v1, Lc6;->L:[Lc6$a;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_12

    :cond_12
    move/from16 v16, v11

    const/4 v0, 0x0

    .line 59
    :cond_13
    :goto_12
    iget v4, v1, Lc6;->Y:I

    invoke-virtual/range {p0 .. p0}, Lc6;->t()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 60
    invoke-virtual/range {p0 .. p0}, Lc6;->t()I

    move-result v9

    if-le v4, v9, :cond_14

    .line 61
    invoke-virtual {v1, v4}, Lc6;->I(I)V

    .line 62
    iget-object v0, v1, Lc6;->L:[Lc6$a;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v0, 0x1

    const/4 v14, 0x1

    .line 63
    :cond_14
    iget v4, v1, Lc6;->Z:I

    invoke-virtual/range {p0 .. p0}, Lc6;->n()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 64
    invoke-virtual/range {p0 .. p0}, Lc6;->n()I

    move-result v9

    if-le v4, v9, :cond_15

    .line 65
    invoke-virtual {v1, v4}, Lc6;->D(I)V

    .line 66
    iget-object v0, v1, Lc6;->L:[Lc6$a;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_13

    :cond_15
    const/4 v4, 0x1

    :goto_13
    if-nez v14, :cond_17

    .line 67
    iget-object v9, v1, Lc6;->L:[Lc6$a;

    const/4 v11, 0x0

    aget-object v9, v9, v11

    if-ne v9, v2, :cond_16

    if-lez v5, :cond_16

    .line 68
    invoke-virtual/range {p0 .. p0}, Lc6;->t()I

    move-result v9

    if-le v9, v5, :cond_16

    .line 69
    iput-boolean v4, v1, Ld6;->P0:Z

    .line 70
    iget-object v0, v1, Lc6;->L:[Lc6$a;

    aput-object v3, v0, v11

    .line 71
    invoke-virtual {v1, v5}, Lc6;->I(I)V

    const/4 v0, 0x1

    const/4 v14, 0x1

    .line 72
    :cond_16
    iget-object v9, v1, Lc6;->L:[Lc6$a;

    aget-object v9, v9, v4

    if-ne v9, v2, :cond_17

    if-lez v6, :cond_17

    .line 73
    invoke-virtual/range {p0 .. p0}, Lc6;->n()I

    move-result v9

    if-le v9, v6, :cond_17

    .line 74
    iput-boolean v4, v1, Ld6;->Q0:Z

    .line 75
    iget-object v0, v1, Lc6;->L:[Lc6$a;

    aput-object v3, v0, v4

    .line 76
    invoke-virtual {v1, v6}, Lc6;->D(I)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    goto :goto_14

    :cond_17
    move v13, v0

    :goto_14
    move v0, v15

    move/from16 v11, v16

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto/16 :goto_7

    .line 77
    :cond_18
    iput-object v10, v1, Lk6;->C0:Ljava/util/ArrayList;

    if-eqz v14, :cond_19

    .line 78
    iget-object v0, v1, Lc6;->L:[Lc6$a;

    const/4 v2, 0x0

    aput-object v8, v0, v2

    const/4 v2, 0x1

    .line 79
    aput-object v7, v0, v2

    .line 80
    :cond_19
    iget-object v0, v1, Ld6;->H0:Lu5;

    .line 81
    iget-object v0, v0, Lu5;->k:Lt5;

    .line 82
    invoke-virtual {v1, v0}, Lk6;->B(Lt5;)V

    return-void
.end method

.method public M(Lc6;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1
    iget p2, p0, Ld6;->K0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Ld6;->N0:[La6;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    .line 2
    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    .line 3
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [La6;

    iput-object p2, p0, Ld6;->N0:[La6;

    .line 4
    :cond_0
    iget-object p2, p0, Ld6;->N0:[La6;

    iget v1, p0, Ld6;->K0:I

    new-instance v2, La6;

    const/4 v3, 0x0

    .line 5
    iget-boolean v4, p0, Ld6;->G0:Z

    .line 6
    invoke-direct {v2, p1, v3, v4}, La6;-><init>(Lc6;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Ld6;->K0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 8
    iget p2, p0, Ld6;->L0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Ld6;->M0:[La6;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    .line 9
    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    .line 10
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [La6;

    iput-object p2, p0, Ld6;->M0:[La6;

    .line 11
    :cond_2
    iget-object p2, p0, Ld6;->M0:[La6;

    iget v1, p0, Ld6;->L0:I

    new-instance v2, La6;

    .line 12
    iget-boolean v3, p0, Ld6;->G0:Z

    .line 13
    invoke-direct {v2, p1, v0, v3}, La6;-><init>(Lc6;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Ld6;->L0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public N(Lu5;)Z
    .locals 13

    .line 1
    sget-object v0, Lc6$a;->e:Lc6$a;

    sget-object v1, Lc6$a;->f:Lc6$a;

    invoke-virtual {p0, p1}, Lc6;->d(Lu5;)V

    .line 2
    iget-object v2, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_1

    .line 3
    iget-object v7, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc6;

    .line 4
    iget-object v8, v7, Lc6;->K:[Z

    aput-boolean v3, v8, v3

    .line 5
    aput-boolean v3, v8, v6

    .line 6
    instance-of v7, v7, Lz5;

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_7

    .line 7
    iget-object v7, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc6;

    .line 8
    instance-of v8, v7, Lz5;

    if-eqz v8, :cond_6

    .line 9
    check-cast v7, Lz5;

    const/4 v8, 0x0

    .line 10
    :goto_2
    iget v9, v7, Lh6;->D0:I

    if-ge v8, v9, :cond_6

    .line 11
    iget-object v9, v7, Lh6;->C0:[Lc6;

    aget-object v9, v9, v8

    .line 12
    iget v10, v7, Lz5;->E0:I

    if-eqz v10, :cond_4

    if-ne v10, v6, :cond_2

    goto :goto_3

    :cond_2
    if-eq v10, v4, :cond_3

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 13
    :cond_3
    iget-object v9, v9, Lc6;->K:[Z

    aput-boolean v6, v9, v6

    goto :goto_4

    .line 14
    :cond_4
    :goto_3
    iget-object v9, v9, Lc6;->K:[Z

    aput-boolean v6, v9, v3

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_b

    .line 15
    iget-object v7, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc6;

    .line 16
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    instance-of v8, v7, Lj6;

    if-nez v8, :cond_9

    instance-of v8, v7, Lf6;

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_a

    .line 18
    invoke-virtual {v7, p1}, Lc6;->d(Lu5;)V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_17

    .line 19
    iget-object v7, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc6;

    .line 20
    instance-of v8, v7, Ld6;

    if-eqz v8, :cond_f

    .line 21
    iget-object v8, v7, Lc6;->L:[Lc6$a;

    aget-object v9, v8, v3

    .line 22
    aget-object v10, v8, v6

    if-ne v9, v1, :cond_c

    .line 23
    aput-object v0, v8, v3

    :cond_c
    if-ne v10, v1, :cond_d

    .line 24
    aput-object v0, v8, v6

    .line 25
    :cond_d
    invoke-virtual {v7, p1}, Lc6;->d(Lu5;)V

    if-ne v9, v1, :cond_e

    .line 26
    invoke-virtual {v7, v9}, Lc6;->E(Lc6$a;)V

    :cond_e
    if-ne v10, v1, :cond_16

    .line 27
    invoke-virtual {v7, v10}, Lc6;->H(Lc6$a;)V

    goto/16 :goto_b

    .line 28
    :cond_f
    sget-object v8, Lc6$a;->h:Lc6$a;

    const/4 v9, -0x1

    iput v9, v7, Lc6;->h:I

    .line 29
    iput v9, v7, Lc6;->i:I

    .line 30
    iget-object v9, p0, Lc6;->L:[Lc6$a;

    aget-object v9, v9, v3

    if-eq v9, v1, :cond_10

    iget-object v9, v7, Lc6;->L:[Lc6$a;

    aget-object v9, v9, v3

    if-ne v9, v8, :cond_10

    .line 31
    iget-object v9, v7, Lc6;->A:Lb6;

    iget v9, v9, Lb6;->e:I

    .line 32
    invoke-virtual {p0}, Lc6;->t()I

    move-result v10

    iget-object v11, v7, Lc6;->C:Lb6;

    iget v11, v11, Lb6;->e:I

    sub-int/2addr v10, v11

    .line 33
    iget-object v11, v7, Lc6;->A:Lb6;

    invoke-virtual {p1, v11}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v12

    iput-object v12, v11, Lb6;->g:Lx5;

    .line 34
    iget-object v11, v7, Lc6;->C:Lb6;

    invoke-virtual {p1, v11}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v12

    iput-object v12, v11, Lb6;->g:Lx5;

    .line 35
    iget-object v11, v7, Lc6;->A:Lb6;

    iget-object v11, v11, Lb6;->g:Lx5;

    invoke-virtual {p1, v11, v9}, Lu5;->e(Lx5;I)V

    .line 36
    iget-object v11, v7, Lc6;->C:Lb6;

    iget-object v11, v11, Lb6;->g:Lx5;

    invoke-virtual {p1, v11, v10}, Lu5;->e(Lx5;I)V

    .line 37
    iput v4, v7, Lc6;->h:I

    .line 38
    iput v9, v7, Lc6;->R:I

    sub-int/2addr v10, v9

    .line 39
    iput v10, v7, Lc6;->N:I

    .line 40
    iget v9, v7, Lc6;->Y:I

    if-ge v10, v9, :cond_10

    .line 41
    iput v9, v7, Lc6;->N:I

    .line 42
    :cond_10
    iget-object v9, p0, Lc6;->L:[Lc6$a;

    aget-object v9, v9, v6

    if-eq v9, v1, :cond_13

    iget-object v9, v7, Lc6;->L:[Lc6$a;

    aget-object v9, v9, v6

    if-ne v9, v8, :cond_13

    .line 43
    iget-object v8, v7, Lc6;->B:Lb6;

    iget v8, v8, Lb6;->e:I

    .line 44
    invoke-virtual {p0}, Lc6;->n()I

    move-result v9

    iget-object v10, v7, Lc6;->D:Lb6;

    iget v10, v10, Lb6;->e:I

    sub-int/2addr v9, v10

    .line 45
    iget-object v10, v7, Lc6;->B:Lb6;

    invoke-virtual {p1, v10}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v11

    iput-object v11, v10, Lb6;->g:Lx5;

    .line 46
    iget-object v10, v7, Lc6;->D:Lb6;

    invoke-virtual {p1, v10}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v11

    iput-object v11, v10, Lb6;->g:Lx5;

    .line 47
    iget-object v10, v7, Lc6;->B:Lb6;

    iget-object v10, v10, Lb6;->g:Lx5;

    invoke-virtual {p1, v10, v8}, Lu5;->e(Lx5;I)V

    .line 48
    iget-object v10, v7, Lc6;->D:Lb6;

    iget-object v10, v10, Lb6;->g:Lx5;

    invoke-virtual {p1, v10, v9}, Lu5;->e(Lx5;I)V

    .line 49
    iget v10, v7, Lc6;->X:I

    if-gtz v10, :cond_11

    .line 50
    iget v10, v7, Lc6;->e0:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_12

    .line 51
    :cond_11
    iget-object v10, v7, Lc6;->E:Lb6;

    invoke-virtual {p1, v10}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v11

    iput-object v11, v10, Lb6;->g:Lx5;

    .line 52
    iget-object v10, v7, Lc6;->E:Lb6;

    iget-object v10, v10, Lb6;->g:Lx5;

    iget v11, v7, Lc6;->X:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v11}, Lu5;->e(Lx5;I)V

    .line 53
    :cond_12
    iput v4, v7, Lc6;->i:I

    .line 54
    iput v8, v7, Lc6;->S:I

    sub-int/2addr v9, v8

    .line 55
    iput v9, v7, Lc6;->O:I

    .line 56
    iget v8, v7, Lc6;->Z:I

    if-ge v9, v8, :cond_13

    .line 57
    iput v8, v7, Lc6;->O:I

    .line 58
    :cond_13
    instance-of v8, v7, Lj6;

    if-nez v8, :cond_15

    instance-of v8, v7, Lf6;

    if-eqz v8, :cond_14

    goto :goto_9

    :cond_14
    const/4 v8, 0x0

    goto :goto_a

    :cond_15
    :goto_9
    const/4 v8, 0x1

    :goto_a
    if-nez v8, :cond_16

    .line 59
    invoke-virtual {v7, p1}, Lc6;->d(Lu5;)V

    :cond_16
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 60
    :cond_17
    iget v0, p0, Ld6;->K0:I

    if-lez v0, :cond_18

    .line 61
    invoke-static {p0, p1, v3}, Ld0$h;->a(Ld6;Lu5;I)V

    .line 62
    :cond_18
    iget v0, p0, Ld6;->L0:I

    if-lez v0, :cond_19

    .line 63
    invoke-static {p0, p1, v6}, Ld0$h;->a(Ld6;Lu5;I)V

    :cond_19
    return v6
.end method

.method public O(ZI)Z
    .locals 13

    .line 1
    iget-object v0, p0, Ld6;->E0:Lp6;

    .line 2
    sget-object v1, Lc6$a;->h:Lc6$a;

    sget-object v2, Lc6$a;->f:Lc6$a;

    sget-object v3, Lc6$a;->e:Lc6$a;

    const/4 v4, 0x1

    and-int/2addr p1, v4

    .line 3
    iget-object v5, v0, Lp6;->a:Ld6;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lc6;->m(I)Lc6$a;

    move-result-object v5

    .line 4
    iget-object v7, v0, Lp6;->a:Ld6;

    invoke-virtual {v7, v4}, Lc6;->m(I)Lc6$a;

    move-result-object v7

    .line 5
    iget-object v8, v0, Lp6;->a:Ld6;

    invoke-virtual {v8}, Lc6;->u()I

    move-result v8

    .line 6
    iget-object v9, v0, Lp6;->a:Ld6;

    invoke-virtual {v9}, Lc6;->v()I

    move-result v9

    if-eqz p1, :cond_4

    if-eq v5, v2, :cond_0

    if-ne v7, v2, :cond_4

    .line 7
    :cond_0
    iget-object v10, v0, Lp6;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lx6;

    .line 8
    iget v12, v11, Lx6;->f:I

    if-ne v12, p2, :cond_1

    .line 9
    invoke-virtual {v11}, Lx6;->k()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 p1, 0x0

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    if-ne v5, v2, :cond_4

    .line 10
    iget-object p1, v0, Lp6;->a:Ld6;

    .line 11
    iget-object v2, p1, Lc6;->L:[Lc6$a;

    aput-object v3, v2, v6

    .line 12
    invoke-virtual {v0, p1, v6}, Lp6;->d(Ld6;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lc6;->I(I)V

    .line 13
    iget-object p1, v0, Lp6;->a:Ld6;

    iget-object v2, p1, Lc6;->d:Lu6;

    iget-object v2, v2, Lx6;->e:Lr6;

    invoke-virtual {p1}, Lc6;->t()I

    move-result p1

    invoke-virtual {v2, p1}, Lr6;->c(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-ne v7, v2, :cond_4

    .line 14
    iget-object p1, v0, Lp6;->a:Ld6;

    .line 15
    iget-object v2, p1, Lc6;->L:[Lc6$a;

    aput-object v3, v2, v4

    .line 16
    invoke-virtual {v0, p1, v4}, Lp6;->d(Ld6;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lc6;->D(I)V

    .line 17
    iget-object p1, v0, Lp6;->a:Ld6;

    iget-object v2, p1, Lc6;->e:Lw6;

    iget-object v2, v2, Lx6;->e:Lr6;

    invoke-virtual {p1}, Lc6;->n()I

    move-result p1

    invoke-virtual {v2, p1}, Lr6;->c(I)V

    :cond_4
    :goto_0
    if-nez p2, :cond_6

    .line 18
    iget-object p1, v0, Lp6;->a:Ld6;

    iget-object v2, p1, Lc6;->L:[Lc6$a;

    aget-object v9, v2, v6

    if-eq v9, v3, :cond_5

    aget-object v2, v2, v6

    if-ne v2, v1, :cond_7

    .line 19
    :cond_5
    invoke-virtual {p1}, Lc6;->t()I

    move-result p1

    add-int/2addr p1, v8

    .line 20
    iget-object v1, v0, Lp6;->a:Ld6;

    iget-object v1, v1, Lc6;->d:Lu6;

    iget-object v1, v1, Lx6;->i:Lq6;

    invoke-virtual {v1, p1}, Lq6;->c(I)V

    .line 21
    iget-object v1, v0, Lp6;->a:Ld6;

    iget-object v1, v1, Lc6;->d:Lu6;

    iget-object v1, v1, Lx6;->e:Lr6;

    sub-int/2addr p1, v8

    invoke-virtual {v1, p1}, Lr6;->c(I)V

    goto :goto_2

    .line 22
    :cond_6
    iget-object p1, v0, Lp6;->a:Ld6;

    iget-object v2, p1, Lc6;->L:[Lc6$a;

    aget-object v8, v2, v4

    if-eq v8, v3, :cond_8

    aget-object v2, v2, v4

    if-ne v2, v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    goto :goto_3

    .line 23
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lc6;->n()I

    move-result p1

    add-int/2addr p1, v9

    .line 24
    iget-object v1, v0, Lp6;->a:Ld6;

    iget-object v1, v1, Lc6;->e:Lw6;

    iget-object v1, v1, Lx6;->i:Lq6;

    invoke-virtual {v1, p1}, Lq6;->c(I)V

    .line 25
    iget-object v1, v0, Lp6;->a:Ld6;

    iget-object v1, v1, Lc6;->e:Lw6;

    iget-object v1, v1, Lx6;->e:Lr6;

    sub-int/2addr p1, v9

    invoke-virtual {v1, p1}, Lr6;->c(I)V

    :goto_2
    const/4 p1, 0x1

    .line 26
    :goto_3
    invoke-virtual {v0}, Lp6;->g()V

    .line 27
    iget-object v1, v0, Lp6;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx6;

    .line 28
    iget v3, v2, Lx6;->f:I

    if-eq v3, p2, :cond_9

    goto :goto_4

    .line 29
    :cond_9
    iget-object v3, v2, Lx6;->b:Lc6;

    iget-object v8, v0, Lp6;->a:Ld6;

    if-ne v3, v8, :cond_a

    iget-boolean v3, v2, Lx6;->g:Z

    if-nez v3, :cond_a

    goto :goto_4

    .line 30
    :cond_a
    invoke-virtual {v2}, Lx6;->e()V

    goto :goto_4

    .line 31
    :cond_b
    iget-object v1, v0, Lp6;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx6;

    .line 32
    iget v3, v2, Lx6;->f:I

    if-eq v3, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    .line 33
    iget-object v3, v2, Lx6;->b:Lc6;

    iget-object v8, v0, Lp6;->a:Ld6;

    if-ne v3, v8, :cond_e

    goto :goto_5

    .line 34
    :cond_e
    iget-object v3, v2, Lx6;->h:Lq6;

    iget-boolean v3, v3, Lq6;->j:Z

    if-nez v3, :cond_f

    goto :goto_6

    .line 35
    :cond_f
    iget-object v3, v2, Lx6;->i:Lq6;

    iget-boolean v3, v3, Lq6;->j:Z

    if-nez v3, :cond_10

    goto :goto_6

    .line 36
    :cond_10
    instance-of v3, v2, Ln6;

    if-nez v3, :cond_c

    iget-object v2, v2, Lx6;->e:Lr6;

    iget-boolean v2, v2, Lq6;->j:Z

    if-nez v2, :cond_c

    :goto_6
    const/4 v4, 0x0

    .line 37
    :cond_11
    iget-object p1, v0, Lp6;->a:Ld6;

    invoke-virtual {p1, v5}, Lc6;->E(Lc6$a;)V

    .line 38
    iget-object p1, v0, Lp6;->a:Ld6;

    invoke-virtual {p1, v7}, Lc6;->H(Lc6$a;)V

    return v4
.end method

.method public P()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld6;->E0:Lp6;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lp6;->b:Z

    return-void
.end method

.method public Q(Lm6$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ld6;->F0:Lm6$b;

    .line 2
    iget-object v0, p0, Ld6;->E0:Lp6;

    .line 3
    iput-object p1, v0, Lp6;->f:Lm6$b;

    return-void
.end method

.method public R(I)V
    .locals 1

    .line 1
    iput p1, p0, Ld6;->O0:I

    const/16 v0, 0x100

    .line 2
    invoke-static {p1, v0}, Li6;->a(II)Z

    move-result p1

    sput-boolean p1, Lu5;->p:Z

    return-void
.end method

.method public S()V
    .locals 7

    .line 1
    iget-object v0, p0, Ld6;->D0:Lm6;

    .line 2
    iget-object v1, v0, Lm6;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v1, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    iget-object v3, p0, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6;

    .line 5
    invoke-virtual {v3}, Lc6;->o()Lc6$a;

    move-result-object v4

    sget-object v5, Lc6$a;->g:Lc6$a;

    if-eq v4, v5, :cond_0

    .line 6
    invoke-virtual {v3}, Lc6;->o()Lc6$a;

    move-result-object v4

    sget-object v6, Lc6$a;->h:Lc6$a;

    if-eq v4, v6, :cond_0

    .line 7
    invoke-virtual {v3}, Lc6;->s()Lc6$a;

    move-result-object v4

    if-eq v4, v5, :cond_0

    .line 8
    invoke-virtual {v3}, Lc6;->s()Lc6$a;

    move-result-object v4

    if-ne v4, v6, :cond_1

    .line 9
    :cond_0
    iget-object v4, v0, Lm6;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Ld6;->P()V

    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld6;->H0:Lu5;

    invoke-virtual {v0}, Lu5;->t()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld6;->I0:I

    .line 3
    iput v0, p0, Ld6;->J0:I

    .line 4
    invoke-super {p0}, Lk6;->z()V

    return-void
.end method
