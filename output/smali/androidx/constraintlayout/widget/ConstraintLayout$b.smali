.class public Landroidx/constraintlayout/widget/ConstraintLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public final a(Lc6;Lm6$a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lc6$a;->e:Lc6$a;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v4, v1, Lc6;->e0:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    .line 3
    iget-boolean v4, v1, Lc6;->z:Z

    if-nez v4, :cond_1

    .line 4
    iput v6, v2, Lm6$a;->e:I

    .line 5
    iput v6, v2, Lm6$a;->f:I

    .line 6
    iput v6, v2, Lm6$a;->g:I

    return-void

    .line 7
    :cond_1
    iget-object v4, v2, Lm6$a;->a:Lc6$a;

    .line 8
    iget-object v5, v2, Lm6$a;->b:Lc6$a;

    .line 9
    iget v7, v2, Lm6$a;->c:I

    .line 10
    iget v8, v2, Lm6$a;->d:I

    .line 11
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    add-int/2addr v9, v10

    .line 12
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 13
    iget-object v11, v1, Lc6;->c0:Ljava/lang/Object;

    .line 14
    check-cast v11, Landroid/view/View;

    .line 15
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x1

    if-eqz v12, :cond_d

    if-eq v12, v13, :cond_c

    if-eq v12, v14, :cond_5

    if-eq v12, v15, :cond_2

    const/4 v7, 0x0

    :goto_0
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 16
    :cond_2
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 17
    iget-object v12, v1, Lc6;->A:Lb6;

    if-eqz v12, :cond_3

    .line 18
    iget v12, v12, Lb6;->e:I

    add-int/2addr v12, v6

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 19
    :goto_1
    iget-object v15, v1, Lc6;->C:Lb6;

    if-eqz v15, :cond_4

    .line 20
    iget v15, v15, Lb6;->e:I

    add-int/2addr v12, v15

    :cond_4
    add-int/2addr v10, v12

    const/4 v12, -0x1

    .line 21
    invoke-static {v7, v10, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 22
    iget-object v10, v1, Lc6;->g:[I

    aput v12, v10, v14

    goto :goto_0

    .line 23
    :cond_5
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    const/4 v12, -0x2

    invoke-static {v7, v10, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 24
    iget v10, v1, Lc6;->j:I

    if-ne v10, v13, :cond_6

    const/4 v10, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    .line 25
    :goto_2
    iget-object v12, v1, Lc6;->g:[I

    aput v6, v12, v14

    .line 26
    iget-boolean v15, v2, Lm6$a;->j:Z

    if-eqz v15, :cond_b

    if-eqz v10, :cond_7

    const/4 v15, 0x3

    .line 27
    aget v18, v12, v15

    if-eqz v18, :cond_7

    aget v12, v12, v6

    .line 28
    invoke-virtual/range {p1 .. p1}, Lc6;->t()I

    move-result v15

    if-ne v12, v15, :cond_8

    :cond_7
    instance-of v12, v11, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v12, :cond_9

    :cond_8
    const/4 v12, 0x1

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    :goto_3
    if-eqz v10, :cond_a

    if-eqz v12, :cond_b

    .line 29
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lc6;->t()I

    move-result v7

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_0

    :cond_b
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_4

    :cond_c
    const/high16 v12, 0x40000000    # 2.0f

    .line 30
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    const/4 v15, -0x2

    invoke-static {v7, v10, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 31
    iget-object v10, v1, Lc6;->g:[I

    aput v15, v10, v14

    :goto_4
    const/4 v10, 0x1

    goto :goto_5

    :cond_d
    const/high16 v12, 0x40000000    # 2.0f

    .line 32
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 33
    iget-object v12, v1, Lc6;->g:[I

    aput v7, v12, v14

    move v7, v10

    goto :goto_0

    .line 34
    :goto_5
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_19

    if-eq v12, v13, :cond_18

    if-eq v12, v14, :cond_11

    const/4 v8, 0x3

    if-eq v12, v8, :cond_e

    const/4 v8, 0x0

    :goto_6
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 35
    :cond_e
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 36
    iget-object v12, v1, Lc6;->A:Lb6;

    if-eqz v12, :cond_f

    .line 37
    iget-object v12, v1, Lc6;->B:Lb6;

    iget v12, v12, Lb6;->e:I

    add-int/2addr v12, v6

    goto :goto_7

    :cond_f
    const/4 v12, 0x0

    .line 38
    :goto_7
    iget-object v15, v1, Lc6;->C:Lb6;

    if-eqz v15, :cond_10

    .line 39
    iget-object v15, v1, Lc6;->D:Lb6;

    iget v15, v15, Lb6;->e:I

    add-int/2addr v12, v15

    :cond_10
    add-int/2addr v9, v12

    const/4 v12, -0x1

    .line 40
    invoke-static {v8, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 41
    iget-object v9, v1, Lc6;->g:[I

    const/4 v15, 0x3

    aput v12, v9, v15

    goto :goto_6

    :cond_11
    const/4 v15, 0x3

    .line 42
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    const/4 v12, -0x2

    invoke-static {v8, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 43
    iget v9, v1, Lc6;->k:I

    if-ne v9, v13, :cond_12

    const/4 v9, 0x1

    goto :goto_8

    :cond_12
    const/4 v9, 0x0

    .line 44
    :goto_8
    iget-object v12, v1, Lc6;->g:[I

    aput v6, v12, v15

    .line 45
    iget-boolean v15, v2, Lm6$a;->j:Z

    if-eqz v15, :cond_17

    if-eqz v9, :cond_13

    .line 46
    aget v15, v12, v14

    if-eqz v15, :cond_13

    aget v12, v12, v13

    .line 47
    invoke-virtual/range {p1 .. p1}, Lc6;->n()I

    move-result v15

    if-ne v12, v15, :cond_14

    :cond_13
    instance-of v12, v11, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v12, :cond_15

    :cond_14
    const/4 v12, 0x1

    goto :goto_9

    :cond_15
    const/4 v12, 0x0

    :goto_9
    if-eqz v9, :cond_16

    if-eqz v12, :cond_17

    .line 48
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lc6;->n()I

    move-result v8

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_6

    :cond_17
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_a

    :cond_18
    const/high16 v12, 0x40000000    # 2.0f

    .line 49
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    const/4 v15, -0x2

    invoke-static {v8, v9, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 50
    iget-object v9, v1, Lc6;->g:[I

    const/16 v16, 0x3

    aput v15, v9, v16

    :goto_a
    const/4 v9, 0x1

    goto :goto_b

    :cond_19
    const/high16 v12, 0x40000000    # 2.0f

    const/16 v16, 0x3

    .line 51
    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 52
    iget-object v12, v1, Lc6;->g:[I

    aput v8, v12, v16

    move v8, v9

    goto/16 :goto_6

    .line 53
    :goto_b
    sget-object v12, Lc6$a;->g:Lc6$a;

    if-ne v4, v12, :cond_1a

    const/4 v15, 0x1

    goto :goto_c

    :cond_1a
    const/4 v15, 0x0

    :goto_c
    if-ne v5, v12, :cond_1b

    const/4 v12, 0x1

    goto :goto_d

    :cond_1b
    const/4 v12, 0x0

    .line 54
    :goto_d
    sget-object v13, Lc6$a;->h:Lc6$a;

    if-eq v5, v13, :cond_1d

    if-ne v5, v3, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v5, 0x0

    goto :goto_f

    :cond_1d
    :goto_e
    const/4 v5, 0x1

    :goto_f
    if-eq v4, v13, :cond_1f

    if-ne v4, v3, :cond_1e

    goto :goto_10

    :cond_1e
    const/4 v3, 0x0

    goto :goto_11

    :cond_1f
    :goto_10
    const/4 v3, 0x1

    :goto_11
    const/4 v4, 0x0

    if-eqz v15, :cond_20

    .line 55
    iget v13, v1, Lc6;->P:F

    cmpl-float v13, v13, v4

    if-lez v13, :cond_20

    const/4 v13, 0x1

    goto :goto_12

    :cond_20
    const/4 v13, 0x0

    :goto_12
    if-eqz v12, :cond_21

    .line 56
    iget v14, v1, Lc6;->P:F

    cmpl-float v4, v14, v4

    if-lez v4, :cond_21

    const/4 v4, 0x1

    goto :goto_13

    :cond_21
    const/4 v4, 0x0

    .line 57
    :goto_13
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 58
    iget-boolean v6, v2, Lm6$a;->j:Z

    if-nez v6, :cond_23

    if-eqz v15, :cond_23

    iget v6, v1, Lc6;->j:I

    if-nez v6, :cond_23

    if-eqz v12, :cond_23

    iget v6, v1, Lc6;->k:I

    if-eqz v6, :cond_22

    goto :goto_14

    :cond_22
    const/4 v0, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    goto/16 :goto_1d

    .line 59
    :cond_23
    :goto_14
    instance-of v6, v11, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v6, :cond_24

    instance-of v6, v1, Lj6;

    if-eqz v6, :cond_24

    .line 60
    move-object v6, v1

    check-cast v6, Lj6;

    .line 61
    move-object v12, v11

    check-cast v12, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v12, v6, v7, v8}, Landroidx/constraintlayout/widget/VirtualLayout;->s(Lj6;II)V

    goto :goto_15

    .line 62
    :cond_24
    invoke-virtual {v11, v7, v8}, Landroid/view/View;->measure(II)V

    .line 63
    :goto_15
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 64
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 65
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v15

    if-eqz v10, :cond_25

    .line 66
    iget-object v10, v1, Lc6;->g:[I

    const/16 v19, 0x0

    aput v6, v10, v19

    const/16 v18, 0x2

    .line 67
    aput v12, v10, v18

    goto :goto_16

    :cond_25
    const/16 v18, 0x2

    const/16 v19, 0x0

    .line 68
    iget-object v10, v1, Lc6;->g:[I

    aput v19, v10, v19

    .line 69
    aput v19, v10, v18

    :goto_16
    if-eqz v9, :cond_26

    .line 70
    iget-object v9, v1, Lc6;->g:[I

    const/4 v10, 0x1

    aput v12, v9, v10

    const/16 v17, 0x3

    .line 71
    aput v6, v9, v17

    goto :goto_17

    :cond_26
    const/4 v10, 0x1

    const/16 v17, 0x3

    .line 72
    iget-object v9, v1, Lc6;->g:[I

    aput v19, v9, v10

    .line 73
    aput v19, v9, v17

    .line 74
    :goto_17
    iget v9, v1, Lc6;->m:I

    if-lez v9, :cond_27

    .line 75
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_18

    :cond_27
    move v9, v6

    .line 76
    :goto_18
    iget v10, v1, Lc6;->n:I

    if-lez v10, :cond_28

    .line 77
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 78
    :cond_28
    iget v10, v1, Lc6;->p:I

    if-lez v10, :cond_29

    .line 79
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_19

    :cond_29
    move v10, v12

    .line 80
    :goto_19
    iget v0, v1, Lc6;->q:I

    if-lez v0, :cond_2a

    .line 81
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_2a
    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v13, :cond_2b

    if-eqz v5, :cond_2b

    .line 82
    iget v3, v1, Lc6;->P:F

    int-to-float v4, v10

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    float-to-int v9, v4

    goto :goto_1a

    :cond_2b
    if-eqz v4, :cond_2c

    if-eqz v3, :cond_2c

    .line 83
    iget v3, v1, Lc6;->P:F

    int-to-float v4, v9

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v10, v4

    :cond_2c
    :goto_1a
    if-ne v6, v9, :cond_2e

    if-eq v12, v10, :cond_2d

    goto :goto_1c

    :cond_2d
    :goto_1b
    const/4 v0, -0x1

    goto :goto_1d

    :cond_2e
    :goto_1c
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v6, v9, :cond_2f

    .line 84
    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_2f
    if-eq v12, v10, :cond_30

    .line 85
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 86
    :cond_30
    invoke-virtual {v11, v7, v8}, Landroid/view/View;->measure(II)V

    .line 87
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 88
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 89
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v15

    goto :goto_1b

    :goto_1d
    if-eq v15, v0, :cond_31

    const/4 v0, 0x1

    goto :goto_1e

    :cond_31
    const/4 v0, 0x0

    .line 90
    :goto_1e
    iget v3, v2, Lm6$a;->c:I

    if-ne v9, v3, :cond_33

    iget v3, v2, Lm6$a;->d:I

    if-eq v10, v3, :cond_32

    goto :goto_1f

    :cond_32
    const/4 v6, 0x0

    goto :goto_20

    :cond_33
    :goto_1f
    const/4 v6, 0x1

    :goto_20
    iput-boolean v6, v2, Lm6$a;->i:Z

    .line 91
    iget-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    if-eqz v3, :cond_34

    const/4 v0, 0x1

    :cond_34
    if-eqz v0, :cond_35

    const/4 v3, -0x1

    if-eq v15, v3, :cond_35

    .line 92
    iget v1, v1, Lc6;->X:I

    if-eq v1, v15, :cond_35

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, v2, Lm6$a;->i:Z

    .line 94
    :cond_35
    iput v9, v2, Lm6$a;->e:I

    .line 95
    iput v10, v2, Lm6$a;->f:I

    .line 96
    iput-boolean v0, v2, Lm6$a;->h:Z

    .line 97
    iput v15, v2, Lm6$a;->g:I

    return-void
.end method
