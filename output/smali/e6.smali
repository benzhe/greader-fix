.class public Le6;
.super Lj6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6$a;
    }
.end annotation


# instance fields
.field public P0:I

.field public Q0:I

.field public R0:I

.field public S0:I

.field public T0:I

.field public U0:I

.field public V0:F

.field public W0:F

.field public X0:F

.field public Y0:F

.field public Z0:F

.field public a1:F

.field public b1:I

.field public c1:I

.field public d1:I

.field public e1:I

.field public f1:I

.field public g1:I

.field public h1:I

.field public i1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le6$a;",
            ">;"
        }
    .end annotation
.end field

.field public j1:[Lc6;

.field public k1:[Lc6;

.field public l1:[I

.field public m1:[Lc6;

.field public n1:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lj6;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le6;->P0:I

    .line 3
    iput v0, p0, Le6;->Q0:I

    .line 4
    iput v0, p0, Le6;->R0:I

    .line 5
    iput v0, p0, Le6;->S0:I

    .line 6
    iput v0, p0, Le6;->T0:I

    .line 7
    iput v0, p0, Le6;->U0:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 8
    iput v1, p0, Le6;->V0:F

    .line 9
    iput v1, p0, Le6;->W0:F

    .line 10
    iput v1, p0, Le6;->X0:F

    .line 11
    iput v1, p0, Le6;->Y0:F

    .line 12
    iput v1, p0, Le6;->Z0:F

    .line 13
    iput v1, p0, Le6;->a1:F

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Le6;->b1:I

    .line 15
    iput v1, p0, Le6;->c1:I

    const/4 v2, 0x2

    .line 16
    iput v2, p0, Le6;->d1:I

    .line 17
    iput v2, p0, Le6;->e1:I

    .line 18
    iput v1, p0, Le6;->f1:I

    .line 19
    iput v0, p0, Le6;->g1:I

    .line 20
    iput v1, p0, Le6;->h1:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le6;->i1:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Le6;->j1:[Lc6;

    .line 23
    iput-object v0, p0, Le6;->k1:[Lc6;

    .line 24
    iput-object v0, p0, Le6;->l1:[I

    .line 25
    iput v1, p0, Le6;->n1:I

    return-void
.end method


# virtual methods
.method public L(IIII)V
    .locals 33

    move-object/from16 v8, p0

    .line 1
    sget-object v9, Lc6$a;->g:Lc6$a;

    sget-object v10, Lc6$a;->f:Lc6$a;

    iget v0, v8, Lh6;->D0:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v0, :cond_9

    .line 2
    iget-object v0, v8, Lc6;->M:Lc6;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ld6;

    .line 4
    iget-object v0, v0, Ld6;->F0:Lm6$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_1
    iget v3, v8, Lh6;->D0:I

    if-ge v2, v3, :cond_8

    .line 6
    iget-object v3, v8, Lh6;->C0:[Lc6;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    instance-of v4, v3, Lf6;

    if-eqz v4, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    invoke-virtual {v3, v12}, Lc6;->m(I)Lc6$a;

    move-result-object v4

    .line 9
    invoke-virtual {v3, v11}, Lc6;->m(I)Lc6$a;

    move-result-object v5

    if-ne v4, v9, :cond_4

    .line 10
    iget v6, v3, Lc6;->j:I

    if-eq v6, v11, :cond_4

    if-ne v5, v9, :cond_4

    iget v6, v3, Lc6;->k:I

    if-eq v6, v11, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    if-ne v4, v9, :cond_6

    move-object v4, v10

    :cond_6
    if-ne v5, v9, :cond_7

    move-object v5, v10

    .line 11
    :cond_7
    iget-object v6, v8, Lj6;->N0:Lm6$a;

    iput-object v4, v6, Lm6$a;->a:Lc6$a;

    .line 12
    iput-object v5, v6, Lm6$a;->b:Lc6$a;

    .line 13
    invoke-virtual {v3}, Lc6;->t()I

    move-result v4

    iput v4, v6, Lm6$a;->c:I

    .line 14
    iget-object v4, v8, Lj6;->N0:Lm6$a;

    invoke-virtual {v3}, Lc6;->n()I

    move-result v5

    iput v5, v4, Lm6$a;->d:I

    .line 15
    iget-object v4, v8, Lj6;->N0:Lm6$a;

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v5, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(Lc6;Lm6$a;)V

    .line 16
    iget-object v4, v8, Lj6;->N0:Lm6$a;

    iget v4, v4, Lm6$a;->e:I

    invoke-virtual {v3, v4}, Lc6;->I(I)V

    .line 17
    iget-object v4, v8, Lj6;->N0:Lm6$a;

    iget v4, v4, Lm6$a;->f:I

    invoke-virtual {v3, v4}, Lc6;->D(I)V

    .line 18
    iget-object v4, v8, Lj6;->N0:Lm6$a;

    iget v4, v4, Lm6$a;->g:I

    invoke-virtual {v3, v4}, Lc6;->C(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_9

    .line 19
    iput v12, v8, Lj6;->L0:I

    .line 20
    iput v12, v8, Lj6;->M0:I

    .line 21
    iput-boolean v12, v8, Lj6;->K0:Z

    return-void

    .line 22
    :cond_9
    iget v13, v8, Lj6;->I0:I

    .line 23
    iget v14, v8, Lj6;->J0:I

    .line 24
    iget v15, v8, Lj6;->E0:I

    .line 25
    iget v7, v8, Lj6;->F0:I

    const/4 v0, 0x2

    new-array v6, v0, [I

    sub-int v2, p2, v13

    sub-int/2addr v2, v14

    .line 26
    iget v3, v8, Le6;->h1:I

    if-ne v3, v11, :cond_a

    sub-int v2, p4, v15

    sub-int/2addr v2, v7

    :cond_a
    move v5, v2

    const/4 v2, -0x1

    if-nez v3, :cond_c

    .line 27
    iget v3, v8, Le6;->P0:I

    if-ne v3, v2, :cond_b

    .line 28
    iput v12, v8, Le6;->P0:I

    .line 29
    :cond_b
    iget v3, v8, Le6;->Q0:I

    if-ne v3, v2, :cond_e

    .line 30
    iput v12, v8, Le6;->Q0:I

    goto :goto_5

    .line 31
    :cond_c
    iget v3, v8, Le6;->P0:I

    if-ne v3, v2, :cond_d

    .line 32
    iput v12, v8, Le6;->P0:I

    .line 33
    :cond_d
    iget v3, v8, Le6;->Q0:I

    if-ne v3, v2, :cond_e

    .line 34
    iput v12, v8, Le6;->Q0:I

    .line 35
    :cond_e
    :goto_5
    iget-object v2, v8, Lh6;->C0:[Lc6;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36
    :goto_6
    iget v12, v8, Lh6;->D0:I

    const/16 v1, 0x8

    if-ge v3, v12, :cond_10

    .line 37
    iget-object v12, v8, Lh6;->C0:[Lc6;

    aget-object v12, v12, v3

    .line 38
    iget v12, v12, Lc6;->e0:I

    if-ne v12, v1, :cond_f

    add-int/lit8 v4, v4, 0x1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_10
    if-lez v4, :cond_12

    sub-int/2addr v12, v4

    .line 39
    new-array v2, v12, [Lc6;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 40
    :goto_7
    iget v12, v8, Lh6;->D0:I

    if-ge v3, v12, :cond_13

    .line 41
    iget-object v12, v8, Lh6;->C0:[Lc6;

    aget-object v12, v12, v3

    .line 42
    iget v0, v12, Lc6;->e0:I

    if-eq v0, v1, :cond_11

    .line 43
    aput-object v12, v2, v4

    add-int/lit8 v4, v4, 0x1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x2

    goto :goto_7

    :cond_12
    move v4, v12

    :cond_13
    move-object v12, v2

    .line 44
    iput-object v12, v8, Le6;->m1:[Lc6;

    .line 45
    iput v4, v8, Le6;->n1:I

    .line 46
    iget v0, v8, Le6;->f1:I

    if-eqz v0, :cond_56

    if-eq v0, v11, :cond_3b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    goto/16 :goto_2e

    .line 47
    :cond_14
    iget v0, v8, Le6;->h1:I

    if-nez v0, :cond_1a

    .line 48
    iget v1, v8, Le6;->g1:I

    if-gtz v1, :cond_19

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v1, v4, :cond_18

    if-lez v1, :cond_15

    .line 49
    iget v9, v8, Le6;->b1:I

    add-int/2addr v2, v9

    .line 50
    :cond_15
    aget-object v9, v12, v1

    if-nez v9, :cond_16

    goto :goto_9

    .line 51
    :cond_16
    invoke-virtual {v8, v9, v5}, Le6;->O(Lc6;I)I

    move-result v9

    add-int/2addr v9, v2

    if-le v9, v5, :cond_17

    goto :goto_a

    :cond_17
    add-int/lit8 v3, v3, 0x1

    move v2, v9

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    :goto_a
    move v1, v3

    :cond_19
    move v2, v1

    const/4 v1, 0x0

    goto :goto_e

    .line 52
    :cond_1a
    iget v1, v8, Le6;->g1:I

    if-gtz v1, :cond_1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v1, v4, :cond_1e

    if-lez v1, :cond_1b

    .line 53
    iget v9, v8, Le6;->c1:I

    add-int/2addr v2, v9

    .line 54
    :cond_1b
    aget-object v9, v12, v1

    if-nez v9, :cond_1c

    goto :goto_c

    .line 55
    :cond_1c
    invoke-virtual {v8, v9, v5}, Le6;->N(Lc6;I)I

    move-result v9

    add-int/2addr v9, v2

    if-le v9, v5, :cond_1d

    goto :goto_d

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    move v2, v9

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1e
    :goto_d
    move v1, v3

    :cond_1f
    const/4 v2, 0x0

    .line 56
    :goto_e
    iget-object v3, v8, Le6;->l1:[I

    if-nez v3, :cond_20

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 57
    iput-object v3, v8, Le6;->l1:[I

    :cond_20
    if-nez v1, :cond_21

    if-eq v0, v11, :cond_22

    :cond_21
    if-nez v2, :cond_23

    if-nez v0, :cond_23

    :cond_22
    move/from16 v3, p3

    move/from16 v21, v4

    move v9, v5

    move-object v10, v6

    move-object v11, v8

    move-object/from16 v20, v11

    move/from16 v17, v14

    move/from16 v18, v15

    move/from16 v4, p4

    move v5, v0

    move-object v14, v12

    move v15, v13

    move/from16 v0, p1

    move-object v12, v10

    move v13, v7

    move v6, v1

    move v7, v2

    const/4 v2, 0x1

    move/from16 v1, p2

    goto/16 :goto_1c

    :cond_23
    move/from16 v3, p4

    move v9, v5

    move-object v10, v6

    move-object v11, v8

    move-object/from16 v20, v11

    move/from16 v17, v14

    move/from16 v18, v15

    const/16 v19, 0x0

    move v5, v1

    move-object v14, v12

    move v15, v13

    move/from16 v1, p2

    move-object v12, v10

    move v13, v7

    move v6, v2

    move v7, v4

    move/from16 v2, p3

    move v4, v0

    move/from16 v0, p1

    :goto_f
    if-nez v19, :cond_3a

    if-nez v4, :cond_24

    int-to-float v5, v7

    move/from16 p1, v0

    int-to-float v0, v6

    div-float/2addr v5, v0

    move/from16 p2, v1

    float-to-double v0, v5

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v0

    move v0, v6

    goto :goto_10

    :cond_24
    move/from16 p1, v0

    move/from16 p2, v1

    int-to-float v0, v7

    int-to-float v1, v5

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v5

    .line 60
    :goto_10
    iget-object v5, v11, Le6;->k1:[Lc6;

    if-eqz v5, :cond_26

    array-length v6, v5

    if-ge v6, v0, :cond_25

    goto :goto_11

    :cond_25
    const/4 v6, 0x0

    .line 61
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_26
    :goto_11
    const/4 v6, 0x0

    .line 62
    new-array v5, v0, [Lc6;

    iput-object v5, v11, Le6;->k1:[Lc6;

    .line 63
    :goto_12
    iget-object v5, v11, Le6;->j1:[Lc6;

    if-eqz v5, :cond_28

    array-length v6, v5

    if-ge v6, v1, :cond_27

    goto :goto_13

    :cond_27
    const/4 v6, 0x0

    .line 64
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    .line 65
    :cond_28
    :goto_13
    new-array v5, v1, [Lc6;

    iput-object v5, v11, Le6;->j1:[Lc6;

    :goto_14
    const/4 v5, 0x0

    :goto_15
    if-ge v5, v0, :cond_31

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v1, :cond_30

    mul-int v21, v6, v0

    add-int v21, v21, v5

    move/from16 p3, v2

    const/4 v2, 0x1

    if-ne v4, v2, :cond_29

    mul-int v2, v5, v1

    add-int v21, v2, v6

    :cond_29
    move/from16 p4, v3

    move/from16 v2, v21

    .line 66
    array-length v3, v14

    if-lt v2, v3, :cond_2a

    goto :goto_17

    .line 67
    :cond_2a
    aget-object v2, v14, v2

    if-nez v2, :cond_2b

    :goto_17
    move/from16 v21, v7

    goto :goto_18

    .line 68
    :cond_2b
    invoke-virtual {v11, v2, v9}, Le6;->O(Lc6;I)I

    move-result v3

    move/from16 v21, v7

    .line 69
    iget-object v7, v11, Le6;->k1:[Lc6;

    aget-object v22, v7, v5

    if-eqz v22, :cond_2c

    aget-object v7, v7, v5

    .line 70
    invoke-virtual {v7}, Lc6;->t()I

    move-result v7

    if-ge v7, v3, :cond_2d

    .line 71
    :cond_2c
    iget-object v3, v11, Le6;->k1:[Lc6;

    aput-object v2, v3, v5

    .line 72
    :cond_2d
    invoke-virtual {v11, v2, v9}, Le6;->N(Lc6;I)I

    move-result v3

    .line 73
    iget-object v7, v11, Le6;->j1:[Lc6;

    aget-object v22, v7, v6

    if-eqz v22, :cond_2e

    aget-object v7, v7, v6

    .line 74
    invoke-virtual {v7}, Lc6;->n()I

    move-result v7

    if-ge v7, v3, :cond_2f

    .line 75
    :cond_2e
    iget-object v3, v11, Le6;->j1:[Lc6;

    aput-object v2, v3, v6

    :cond_2f
    :goto_18
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v7, v21

    goto :goto_16

    :cond_30
    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 v21, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_31
    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 v21, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v2, v0, :cond_34

    .line 76
    iget-object v5, v11, Le6;->k1:[Lc6;

    aget-object v5, v5, v2

    if-eqz v5, :cond_33

    if-lez v2, :cond_32

    .line 77
    iget v6, v11, Le6;->b1:I

    add-int/2addr v3, v6

    .line 78
    :cond_32
    invoke-virtual {v11, v5, v9}, Le6;->O(Lc6;I)I

    move-result v5

    add-int/2addr v5, v3

    move v3, v5

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_34
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1a
    if-ge v2, v1, :cond_37

    .line 79
    iget-object v6, v11, Le6;->j1:[Lc6;

    aget-object v6, v6, v2

    if-eqz v6, :cond_36

    if-lez v2, :cond_35

    .line 80
    iget v7, v11, Le6;->c1:I

    add-int/2addr v5, v7

    .line 81
    :cond_35
    invoke-virtual {v11, v6, v9}, Le6;->N(Lc6;I)I

    move-result v6

    add-int/2addr v6, v5

    move v5, v6

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_37
    const/4 v2, 0x0

    .line 82
    aput v3, v12, v2

    const/4 v2, 0x1

    .line 83
    aput v5, v12, v2

    if-nez v4, :cond_38

    if-le v3, v9, :cond_39

    if-le v0, v2, :cond_39

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_38
    if-le v5, v9, :cond_39

    if-le v1, v2, :cond_39

    add-int/lit8 v1, v1, -0x1

    :goto_1b
    move v6, v0

    move v5, v1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v7, v21

    goto/16 :goto_f

    :cond_39
    move/from16 v3, p3

    move v7, v0

    move v6, v1

    move v5, v4

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v4, p4

    :goto_1c
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v21

    const/16 v19, 0x1

    goto/16 :goto_f

    :cond_3a
    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    const/4 v2, 0x1

    .line 84
    iget-object v0, v11, Le6;->l1:[I

    const/4 v1, 0x0

    aput v6, v0, v1

    .line 85
    aput v5, v0, v2

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v6, v10

    move v7, v13

    move v13, v15

    move/from16 v14, v17

    move/from16 v15, v18

    goto/16 :goto_2f

    .line 86
    :cond_3b
    iget v11, v8, Le6;->h1:I

    if-nez v4, :cond_3c

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v20, v8

    goto/16 :goto_2f

    .line 87
    :cond_3c
    iget-object v0, v8, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    new-instance v3, Le6$a;

    iget-object v2, v8, Lc6;->A:Lb6;

    iget-object v1, v8, Lc6;->B:Lb6;

    iget-object v0, v8, Lc6;->C:Lb6;

    move-object/from16 v16, v6

    iget-object v6, v8, Lc6;->D:Lb6;

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move v2, v11

    move/from16 v27, v13

    move-object v13, v3

    move-object/from16 v3, v19

    move/from16 v28, v14

    move v14, v4

    move-object/from16 v4, v18

    move/from16 v29, v5

    move-object/from16 v5, v17

    move-object/from16 v30, v16

    move/from16 v31, v7

    move/from16 v7, v29

    invoke-direct/range {v0 .. v7}, Le6$a;-><init>(Le6;ILb6;Lb6;Lb6;Lb6;I)V

    .line 89
    iget-object v0, v8, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_44

    move-object v3, v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v14, :cond_43

    .line 90
    aget-object v7, v12, v13

    move/from16 v6, v29

    .line 91
    invoke-virtual {v8, v7, v6}, Le6;->O(Lc6;I)I

    move-result v16

    .line 92
    invoke-virtual {v7}, Lc6;->o()Lc6$a;

    move-result-object v2

    if-ne v2, v9, :cond_3d

    add-int/lit8 v0, v0, 0x1

    :cond_3d
    move/from16 v17, v0

    if-eq v1, v6, :cond_3e

    .line 93
    iget v0, v8, Le6;->b1:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v6, :cond_3f

    .line 94
    :cond_3e
    iget-object v0, v3, Le6$a;->b:Lc6;

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_1e

    :cond_3f
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_40

    if-lez v13, :cond_40

    .line 95
    iget v2, v8, Le6;->g1:I

    if-lez v2, :cond_40

    rem-int v2, v13, v2

    if-nez v2, :cond_40

    const/4 v0, 0x1

    :cond_40
    if-eqz v0, :cond_41

    .line 96
    new-instance v5, Le6$a;

    iget-object v3, v8, Lc6;->A:Lb6;

    iget-object v4, v8, Lc6;->B:Lb6;

    iget-object v2, v8, Lc6;->C:Lb6;

    iget-object v1, v8, Lc6;->D:Lb6;

    move-object v0, v5

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move v2, v11

    move/from16 v29, v15

    move-object v15, v5

    move-object/from16 v5, v19

    move/from16 v32, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v10

    move-object v10, v7

    move/from16 v7, v32

    invoke-direct/range {v0 .. v7}, Le6$a;-><init>(Le6;ILb6;Lb6;Lb6;Lb6;I)V

    .line 97
    iput v13, v15, Le6$a;->n:I

    .line 98
    iget-object v0, v8, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v15

    goto :goto_1f

    :cond_41
    move/from16 v32, v6

    move-object/from16 v18, v10

    move/from16 v29, v15

    move-object v10, v7

    if-lez v13, :cond_42

    .line 99
    iget v0, v8, Le6;->b1:I

    add-int v0, v0, v16

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_20

    :cond_42
    :goto_1f
    move/from16 v1, v16

    .line 100
    :goto_20
    invoke-virtual {v3, v10}, Le6$a;->a(Lc6;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    move-object/from16 v10, v18

    move/from16 v15, v29

    move/from16 v29, v32

    goto :goto_1d

    :cond_43
    move-object/from16 v18, v10

    move/from16 v32, v29

    move/from16 v29, v15

    goto/16 :goto_25

    :cond_44
    move-object/from16 v18, v10

    move/from16 v32, v29

    move/from16 v29, v15

    move-object v3, v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_21
    if-ge v10, v14, :cond_4b

    .line 101
    aget-object v13, v12, v10

    move/from16 v15, v32

    .line 102
    invoke-virtual {v8, v13, v15}, Le6;->N(Lc6;I)I

    move-result v16

    .line 103
    invoke-virtual {v13}, Lc6;->s()Lc6$a;

    move-result-object v2

    if-ne v2, v9, :cond_45

    add-int/lit8 v0, v0, 0x1

    :cond_45
    move/from16 v17, v0

    if-eq v1, v15, :cond_46

    .line 104
    iget v0, v8, Le6;->c1:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v15, :cond_47

    .line 105
    :cond_46
    iget-object v0, v3, Le6$a;->b:Lc6;

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    goto :goto_22

    :cond_47
    const/4 v0, 0x0

    :goto_22
    if-nez v0, :cond_48

    if-lez v10, :cond_48

    .line 106
    iget v2, v8, Le6;->g1:I

    if-lez v2, :cond_48

    rem-int v2, v10, v2

    if-nez v2, :cond_48

    const/4 v0, 0x1

    :cond_48
    if-eqz v0, :cond_49

    .line 107
    new-instance v7, Le6$a;

    iget-object v3, v8, Lc6;->A:Lb6;

    iget-object v4, v8, Lc6;->B:Lb6;

    iget-object v5, v8, Lc6;->C:Lb6;

    iget-object v6, v8, Lc6;->D:Lb6;

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v11

    move-object/from16 v19, v9

    move-object v9, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Le6$a;-><init>(Le6;ILb6;Lb6;Lb6;Lb6;I)V

    .line 108
    iput v10, v9, Le6$a;->n:I

    .line 109
    iget-object v0, v8, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v9

    goto :goto_23

    :cond_49
    move-object/from16 v19, v9

    if-lez v10, :cond_4a

    .line 110
    iget v0, v8, Le6;->c1:I

    add-int v0, v0, v16

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_24

    :cond_4a
    :goto_23
    move/from16 v1, v16

    .line 111
    :goto_24
    invoke-virtual {v3, v13}, Le6$a;->a(Lc6;)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v32, v15

    move/from16 v0, v17

    move-object/from16 v9, v19

    goto :goto_21

    :cond_4b
    :goto_25
    move/from16 v15, v32

    .line 112
    iget-object v1, v8, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 113
    iget-object v2, v8, Lc6;->A:Lb6;

    .line 114
    iget-object v3, v8, Lc6;->B:Lb6;

    .line 115
    iget-object v4, v8, Lc6;->C:Lb6;

    .line 116
    iget-object v5, v8, Lc6;->D:Lb6;

    .line 117
    iget v6, v8, Lj6;->I0:I

    .line 118
    iget v7, v8, Lj6;->E0:I

    .line 119
    iget v9, v8, Lj6;->J0:I

    .line 120
    iget v10, v8, Lj6;->F0:I

    .line 121
    invoke-virtual/range {p0 .. p0}, Lc6;->o()Lc6$a;

    move-result-object v12

    move-object/from16 v13, v18

    if-eq v12, v13, :cond_4d

    .line 122
    invoke-virtual/range {p0 .. p0}, Lc6;->s()Lc6$a;

    move-result-object v12

    if-ne v12, v13, :cond_4c

    goto :goto_26

    :cond_4c
    const/4 v12, 0x0

    goto :goto_27

    :cond_4d
    :goto_26
    const/4 v12, 0x1

    :goto_27
    if-lez v0, :cond_4f

    if-eqz v12, :cond_4f

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v1, :cond_4f

    .line 123
    iget-object v12, v8, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le6$a;

    if-nez v11, :cond_4e

    .line 124
    invoke-virtual {v12}, Le6$a;->d()I

    move-result v13

    sub-int v13, v15, v13

    invoke-virtual {v12, v13}, Le6$a;->e(I)V

    goto :goto_29

    .line 125
    :cond_4e
    invoke-virtual {v12}, Le6$a;->c()I

    move-result v13

    sub-int v13, v15, v13

    invoke-virtual {v12, v13}, Le6$a;->e(I)V

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_4f
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2a
    if-ge v0, v1, :cond_55

    .line 126
    iget-object v14, v8, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le6$a;

    if-nez v11, :cond_52

    add-int/lit8 v5, v1, -0x1

    if-ge v0, v5, :cond_50

    .line 127
    iget-object v5, v8, Le6;->i1:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le6$a;

    .line 128
    iget-object v5, v5, Le6$a;->b:Lc6;

    .line 129
    iget-object v5, v5, Lc6;->B:Lb6;

    move/from16 v32, v1

    const/4 v10, 0x0

    goto :goto_2b

    .line 130
    :cond_50
    iget-object v5, v8, Lc6;->D:Lb6;

    .line 131
    iget v10, v8, Lj6;->F0:I

    move/from16 v32, v1

    .line 132
    :goto_2b
    iget-object v1, v14, Le6$a;->b:Lc6;

    .line 133
    iget-object v1, v1, Lc6;->D:Lb6;

    move-object/from16 v16, v14

    move/from16 v17, v11

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v15

    .line 134
    invoke-virtual/range {v16 .. v26}, Le6$a;->f(ILb6;Lb6;Lb6;Lb6;IIIII)V

    .line 135
    invoke-virtual {v14}, Le6$a;->d()I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 136
    invoke-virtual {v14}, Le6$a;->c()I

    move-result v7

    add-int/2addr v7, v13

    if-lez v0, :cond_51

    .line 137
    iget v12, v8, Le6;->c1:I

    add-int/2addr v7, v12

    :cond_51
    move v12, v3

    move v13, v7

    const/4 v7, 0x0

    move-object v3, v1

    goto :goto_2d

    :cond_52
    move/from16 v32, v1

    add-int/lit8 v1, v32, -0x1

    if-ge v0, v1, :cond_53

    .line 138
    iget-object v1, v8, Le6;->i1:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6$a;

    .line 139
    iget-object v1, v1, Le6$a;->b:Lc6;

    .line 140
    iget-object v1, v1, Lc6;->A:Lb6;

    const/4 v4, 0x0

    goto :goto_2c

    .line 141
    :cond_53
    iget-object v1, v8, Lc6;->C:Lb6;

    .line 142
    iget v4, v8, Lj6;->J0:I

    .line 143
    :goto_2c
    iget-object v9, v14, Le6$a;->b:Lc6;

    .line 144
    iget-object v9, v9, Lc6;->C:Lb6;

    move-object/from16 v16, v14

    move/from16 v17, v11

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v4

    move/from16 v25, v10

    move/from16 v26, v15

    .line 145
    invoke-virtual/range {v16 .. v26}, Le6$a;->f(ILb6;Lb6;Lb6;Lb6;IIIII)V

    .line 146
    invoke-virtual {v14}, Le6$a;->d()I

    move-result v2

    add-int/2addr v2, v12

    .line 147
    invoke-virtual {v14}, Le6$a;->c()I

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v0, :cond_54

    .line 148
    iget v12, v8, Le6;->b1:I

    add-int/2addr v2, v12

    :cond_54
    move v12, v2

    move v13, v6

    move-object v2, v9

    const/4 v6, 0x0

    move v9, v4

    move-object v4, v1

    :goto_2d
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v32

    goto/16 :goto_2a

    :cond_55
    const/4 v0, 0x0

    aput v12, v30, v0

    const/4 v0, 0x1

    aput v13, v30, v0

    goto :goto_2e

    :cond_56
    move-object/from16 v30, v6

    move/from16 v31, v7

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move v14, v4

    move v15, v5

    .line 149
    iget v2, v8, Le6;->h1:I

    if-nez v14, :cond_57

    :goto_2e
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v20, v8

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v15, v29

    move-object/from16 v6, v30

    move/from16 v7, v31

    :goto_2f
    move v4, v2

    move v5, v3

    move-object/from16 v9, v20

    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x1

    goto/16 :goto_32

    .line 150
    :cond_57
    iget-object v0, v8, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_58

    .line 151
    new-instance v9, Le6$a;

    iget-object v3, v8, Lc6;->A:Lb6;

    iget-object v4, v8, Lc6;->B:Lb6;

    iget-object v5, v8, Lc6;->C:Lb6;

    iget-object v6, v8, Lc6;->D:Lb6;

    move-object v0, v9

    move-object/from16 v1, p0

    move v7, v15

    invoke-direct/range {v0 .. v7}, Le6$a;-><init>(Le6;ILb6;Lb6;Lb6;Lb6;I)V

    .line 152
    iget-object v0, v8, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 153
    :cond_58
    iget-object v0, v8, Le6;->i1:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le6$a;

    .line 154
    iput v1, v9, Le6$a;->c:I

    const/4 v0, 0x0

    .line 155
    iput-object v0, v9, Le6$a;->b:Lc6;

    .line 156
    iput v1, v9, Le6$a;->l:I

    .line 157
    iput v1, v9, Le6$a;->m:I

    .line 158
    iput v1, v9, Le6$a;->n:I

    .line 159
    iput v1, v9, Le6$a;->o:I

    .line 160
    iput v1, v9, Le6$a;->p:I

    .line 161
    iget-object v0, v8, Lc6;->A:Lb6;

    iget-object v1, v8, Lc6;->B:Lb6;

    iget-object v3, v8, Lc6;->C:Lb6;

    iget-object v4, v8, Lc6;->D:Lb6;

    .line 162
    iget v5, v8, Lj6;->I0:I

    .line 163
    iget v6, v8, Lj6;->E0:I

    .line 164
    iget v7, v8, Lj6;->J0:I

    .line 165
    iget v10, v8, Lj6;->F0:I

    move-object/from16 v16, v9

    move/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v10

    move/from16 v26, v15

    .line 166
    invoke-virtual/range {v16 .. v26}, Le6$a;->f(ILb6;Lb6;Lb6;Lb6;IIIII)V

    :goto_30
    const/4 v2, 0x0

    :goto_31
    if-ge v2, v14, :cond_59

    .line 167
    aget-object v0, v12, v2

    .line 168
    invoke-virtual {v9, v0}, Le6$a;->a(Lc6;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 169
    :cond_59
    invoke-virtual {v9}, Le6$a;->d()I

    move-result v0

    const/4 v2, 0x0

    aput v0, v30, v2

    .line 170
    invoke-virtual {v9}, Le6$a;->c()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v30, v1

    move/from16 v0, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v9, v8

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v15, v29

    move-object/from16 v6, v30

    move/from16 v7, v31

    .line 171
    :goto_32
    aget v10, v6, v2

    add-int/2addr v10, v13

    add-int/2addr v10, v14

    .line 172
    aget v6, v6, v1

    add-int/2addr v6, v15

    add-int/2addr v6, v7

    const/high16 v7, -0x80000000

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v0, v11, :cond_5a

    move v0, v3

    goto :goto_33

    :cond_5a
    if-ne v0, v7, :cond_5b

    .line 173
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_33

    :cond_5b
    if-nez v0, :cond_5c

    move v0, v10

    goto :goto_33

    :cond_5c
    const/4 v0, 0x0

    :goto_33
    if-ne v4, v11, :cond_5d

    move v3, v5

    goto :goto_34

    :cond_5d
    if-ne v4, v7, :cond_5e

    .line 174
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_34

    :cond_5e
    if-nez v4, :cond_5f

    move v3, v6

    goto :goto_34

    :cond_5f
    const/4 v3, 0x0

    .line 175
    :goto_34
    iput v0, v9, Lj6;->L0:I

    .line 176
    iput v3, v9, Lj6;->M0:I

    .line 177
    invoke-virtual {v9, v0}, Lc6;->I(I)V

    .line 178
    invoke-virtual {v9, v3}, Lc6;->D(I)V

    .line 179
    iget v0, v9, Lh6;->D0:I

    if-lez v0, :cond_60

    const/4 v11, 0x1

    goto :goto_35

    :cond_60
    const/4 v11, 0x0

    .line 180
    :goto_35
    iput-boolean v11, v9, Lj6;->K0:Z

    return-void
.end method

.method public final N(Lc6;I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lc6;->s()Lc6$a;

    move-result-object v1

    sget-object v2, Lc6$a;->g:Lc6$a;

    if-ne v1, v2, :cond_5

    .line 2
    iget v1, p1, Lc6;->k:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 3
    iget v0, p1, Lc6;->r:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 4
    invoke-virtual {p1}, Lc6;->n()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lc6;->o()Lc6$a;

    move-result-object v3

    invoke-virtual {p1}, Lc6;->t()I

    move-result v4

    sget-object v5, Lc6$a;->e:Lc6$a;

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lj6;->M(Lc6;Lc6$a;ILc6$a;I)V

    :cond_2
    return p2

    :cond_3
    const/4 p2, 0x1

    if-ne v1, p2, :cond_4

    .line 6
    invoke-virtual {p1}, Lc6;->n()I

    move-result p1

    return p1

    :cond_4
    const/4 p2, 0x3

    if-ne v1, p2, :cond_5

    .line 7
    invoke-virtual {p1}, Lc6;->t()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Lc6;->P:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    .line 8
    :cond_5
    invoke-virtual {p1}, Lc6;->n()I

    move-result p1

    return p1
.end method

.method public final O(Lc6;I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lc6;->o()Lc6$a;

    move-result-object v1

    sget-object v2, Lc6$a;->g:Lc6$a;

    if-ne v1, v2, :cond_5

    .line 2
    iget v1, p1, Lc6;->j:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 3
    iget v0, p1, Lc6;->o:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 4
    invoke-virtual {p1}, Lc6;->t()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 5
    sget-object v3, Lc6$a;->e:Lc6$a;

    invoke-virtual {p1}, Lc6;->s()Lc6$a;

    move-result-object v5

    invoke-virtual {p1}, Lc6;->n()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lj6;->M(Lc6;Lc6$a;ILc6$a;I)V

    :cond_2
    return p2

    :cond_3
    const/4 p2, 0x1

    if-ne v1, p2, :cond_4

    .line 6
    invoke-virtual {p1}, Lc6;->t()I

    move-result p1

    return p1

    :cond_4
    const/4 p2, 0x3

    if-ne v1, p2, :cond_5

    .line 7
    invoke-virtual {p1}, Lc6;->n()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Lc6;->P:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    .line 8
    :cond_5
    invoke-virtual {p1}, Lc6;->t()I

    move-result p1

    return p1
.end method

.method public d(Lu5;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lc6;->d(Lu5;)V

    .line 2
    iget-object p1, p0, Lc6;->M:Lc6;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Ld6;

    .line 4
    iget-boolean p1, p1, Ld6;->G0:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget v1, p0, Le6;->f1:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-eq v1, v2, :cond_17

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto/16 :goto_c

    .line 6
    :cond_1
    iget-object v1, p0, Le6;->l1:[I

    if-eqz v1, :cond_1a

    iget-object v1, p0, Le6;->k1:[Lc6;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Le6;->j1:[Lc6;

    if-nez v1, :cond_2

    goto/16 :goto_c

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_1
    iget v3, p0, Le6;->n1:I

    if-ge v1, v3, :cond_3

    .line 8
    iget-object v3, p0, Le6;->m1:[Lc6;

    aget-object v3, v3, v1

    .line 9
    invoke-virtual {v3}, Lc6;->A()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Le6;->l1:[I

    aget v3, v1, v0

    .line 11
    aget v1, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x8

    if-ge v5, v3, :cond_a

    if-eqz p1, :cond_4

    sub-int v7, v3, v5

    sub-int/2addr v7, v2

    goto :goto_3

    :cond_4
    move v7, v5

    .line 12
    :goto_3
    iget-object v8, p0, Le6;->k1:[Lc6;

    aget-object v7, v8, v7

    if-eqz v7, :cond_9

    .line 13
    iget v8, v7, Lc6;->e0:I

    if-ne v8, v6, :cond_5

    goto :goto_4

    :cond_5
    if-nez v5, :cond_6

    .line 14
    iget-object v6, v7, Lc6;->A:Lb6;

    iget-object v8, p0, Lc6;->A:Lb6;

    .line 15
    iget v9, p0, Lj6;->I0:I

    .line 16
    invoke-virtual {v7, v6, v8, v9}, Lc6;->h(Lb6;Lb6;I)V

    .line 17
    iget v6, p0, Le6;->P0:I

    .line 18
    iput v6, v7, Lc6;->t0:I

    .line 19
    iget v6, p0, Le6;->V0:F

    .line 20
    iput v6, v7, Lc6;->a0:F

    :cond_6
    add-int/lit8 v6, v3, -0x1

    if-ne v5, v6, :cond_7

    .line 21
    iget-object v6, v7, Lc6;->C:Lb6;

    iget-object v8, p0, Lc6;->C:Lb6;

    .line 22
    iget v9, p0, Lj6;->J0:I

    .line 23
    invoke-virtual {v7, v6, v8, v9}, Lc6;->h(Lb6;Lb6;I)V

    :cond_7
    if-lez v5, :cond_8

    .line 24
    iget-object v6, v7, Lc6;->A:Lb6;

    iget-object v8, v4, Lc6;->C:Lb6;

    iget v9, p0, Le6;->b1:I

    invoke-virtual {v7, v6, v8, v9}, Lc6;->h(Lb6;Lb6;I)V

    .line 25
    iget-object v6, v4, Lc6;->C:Lb6;

    iget-object v8, v7, Lc6;->A:Lb6;

    invoke-virtual {v4, v6, v8, v0}, Lc6;->h(Lb6;Lb6;I)V

    :cond_8
    move-object v4, v7

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_5
    if-ge p1, v1, :cond_10

    .line 26
    iget-object v5, p0, Le6;->j1:[Lc6;

    aget-object v5, v5, p1

    if-eqz v5, :cond_f

    .line 27
    iget v7, v5, Lc6;->e0:I

    if-ne v7, v6, :cond_b

    goto :goto_6

    :cond_b
    if-nez p1, :cond_c

    .line 28
    iget-object v7, v5, Lc6;->B:Lb6;

    iget-object v8, p0, Lc6;->B:Lb6;

    .line 29
    iget v9, p0, Lj6;->E0:I

    .line 30
    invoke-virtual {v5, v7, v8, v9}, Lc6;->h(Lb6;Lb6;I)V

    .line 31
    iget v7, p0, Le6;->Q0:I

    .line 32
    iput v7, v5, Lc6;->u0:I

    .line 33
    iget v7, p0, Le6;->W0:F

    .line 34
    iput v7, v5, Lc6;->b0:F

    :cond_c
    add-int/lit8 v7, v1, -0x1

    if-ne p1, v7, :cond_d

    .line 35
    iget-object v7, v5, Lc6;->D:Lb6;

    iget-object v8, p0, Lc6;->D:Lb6;

    .line 36
    iget v9, p0, Lj6;->F0:I

    .line 37
    invoke-virtual {v5, v7, v8, v9}, Lc6;->h(Lb6;Lb6;I)V

    :cond_d
    if-lez p1, :cond_e

    .line 38
    iget-object v7, v5, Lc6;->B:Lb6;

    iget-object v8, v4, Lc6;->D:Lb6;

    iget v9, p0, Le6;->c1:I

    invoke-virtual {v5, v7, v8, v9}, Lc6;->h(Lb6;Lb6;I)V

    .line 39
    iget-object v7, v4, Lc6;->D:Lb6;

    iget-object v8, v5, Lc6;->B:Lb6;

    invoke-virtual {v4, v7, v8, v0}, Lc6;->h(Lb6;Lb6;I)V

    :cond_e
    move-object v4, v5

    :cond_f
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    :goto_7
    if-ge p1, v3, :cond_1a

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_16

    mul-int v5, v4, v3

    add-int/2addr v5, p1

    .line 40
    iget v7, p0, Le6;->h1:I

    if-ne v7, v2, :cond_11

    mul-int v5, p1, v1

    add-int/2addr v5, v4

    .line 41
    :cond_11
    iget-object v7, p0, Le6;->m1:[Lc6;

    array-length v8, v7

    if-lt v5, v8, :cond_12

    goto :goto_9

    .line 42
    :cond_12
    aget-object v5, v7, v5

    if-eqz v5, :cond_15

    .line 43
    iget v7, v5, Lc6;->e0:I

    if-ne v7, v6, :cond_13

    goto :goto_9

    .line 44
    :cond_13
    iget-object v7, p0, Le6;->k1:[Lc6;

    aget-object v7, v7, p1

    .line 45
    iget-object v8, p0, Le6;->j1:[Lc6;

    aget-object v8, v8, v4

    if-eq v5, v7, :cond_14

    .line 46
    iget-object v9, v5, Lc6;->A:Lb6;

    iget-object v10, v7, Lc6;->A:Lb6;

    invoke-virtual {v5, v9, v10, v0}, Lc6;->h(Lb6;Lb6;I)V

    .line 47
    iget-object v9, v5, Lc6;->C:Lb6;

    iget-object v7, v7, Lc6;->C:Lb6;

    invoke-virtual {v5, v9, v7, v0}, Lc6;->h(Lb6;Lb6;I)V

    :cond_14
    if-eq v5, v8, :cond_15

    .line 48
    iget-object v7, v5, Lc6;->B:Lb6;

    iget-object v9, v8, Lc6;->B:Lb6;

    invoke-virtual {v5, v7, v9, v0}, Lc6;->h(Lb6;Lb6;I)V

    .line 49
    iget-object v7, v5, Lc6;->D:Lb6;

    iget-object v8, v8, Lc6;->D:Lb6;

    invoke-virtual {v5, v7, v8, v0}, Lc6;->h(Lb6;Lb6;I)V

    :cond_15
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 50
    :cond_17
    iget-object v1, p0, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_1a

    .line 51
    iget-object v4, p0, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le6$a;

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_18

    const/4 v5, 0x1

    goto :goto_b

    :cond_18
    const/4 v5, 0x0

    .line 52
    :goto_b
    invoke-virtual {v4, p1, v3, v5}, Le6$a;->b(ZIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 53
    :cond_19
    iget-object v1, p0, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 54
    iget-object v1, p0, Le6;->i1:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6$a;

    .line 55
    invoke-virtual {v1, p1, v0, v2}, Le6$a;->b(ZIZ)V

    .line 56
    :cond_1a
    :goto_c
    iput-boolean v0, p0, Lj6;->K0:Z

    return-void
.end method

.method public i(Lc6;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc6;",
            "Ljava/util/HashMap<",
            "Lc6;",
            "Lc6;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lh6;->i(Lc6;Ljava/util/HashMap;)V

    .line 2
    check-cast p1, Le6;

    .line 3
    iget p2, p1, Le6;->P0:I

    iput p2, p0, Le6;->P0:I

    .line 4
    iget p2, p1, Le6;->Q0:I

    iput p2, p0, Le6;->Q0:I

    .line 5
    iget p2, p1, Le6;->R0:I

    iput p2, p0, Le6;->R0:I

    .line 6
    iget p2, p1, Le6;->S0:I

    iput p2, p0, Le6;->S0:I

    .line 7
    iget p2, p1, Le6;->T0:I

    iput p2, p0, Le6;->T0:I

    .line 8
    iget p2, p1, Le6;->U0:I

    iput p2, p0, Le6;->U0:I

    .line 9
    iget p2, p1, Le6;->V0:F

    iput p2, p0, Le6;->V0:F

    .line 10
    iget p2, p1, Le6;->W0:F

    iput p2, p0, Le6;->W0:F

    .line 11
    iget p2, p1, Le6;->X0:F

    iput p2, p0, Le6;->X0:F

    .line 12
    iget p2, p1, Le6;->Y0:F

    iput p2, p0, Le6;->Y0:F

    .line 13
    iget p2, p1, Le6;->Z0:F

    iput p2, p0, Le6;->Z0:F

    .line 14
    iget p2, p1, Le6;->a1:F

    iput p2, p0, Le6;->a1:F

    .line 15
    iget p2, p1, Le6;->b1:I

    iput p2, p0, Le6;->b1:I

    .line 16
    iget p2, p1, Le6;->c1:I

    iput p2, p0, Le6;->c1:I

    .line 17
    iget p2, p1, Le6;->d1:I

    iput p2, p0, Le6;->d1:I

    .line 18
    iget p2, p1, Le6;->e1:I

    iput p2, p0, Le6;->e1:I

    .line 19
    iget p2, p1, Le6;->f1:I

    iput p2, p0, Le6;->f1:I

    .line 20
    iget p2, p1, Le6;->g1:I

    iput p2, p0, Le6;->g1:I

    .line 21
    iget p1, p1, Le6;->h1:I

    iput p1, p0, Le6;->h1:I

    return-void
.end method
