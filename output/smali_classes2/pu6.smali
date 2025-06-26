.class public Lpu6;
.super Ll07;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpu6;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    invoke-direct {p0}, Ll07;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    iget-object v2, v0, Lpu6;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0x3100

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_17

    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_17

    .line 6
    sget-object v7, Lcf;->a:Lcf$b;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v7, Ldf;->d:Ldf;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v7, Ldf;->e:Ldf;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v7, Ldf;->f:Ldf;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v7, Ldf;->g:Ldf;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v7, Ldf;->h:Ldf;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v7, Ldf;->i:Ldf;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 13
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v10, v10, v9

    if-le v10, v5, :cond_0

    int-to-double v7, v5

    int-to-double v9, v10

    div-double/2addr v7, v9

    .line 14
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    :cond_0
    const-wide/16 v9, 0x0

    const/4 v5, 0x0

    cmpg-double v11, v7, v9

    if-gtz v11, :cond_1

    move-object v7, v1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-double v9, v9

    mul-double v9, v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 17
    invoke-static {v1, v9, v7, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 18
    :goto_0
    new-instance v15, Lbf;

    .line 19
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 20
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    mul-int v8, v14, v16

    .line 21
    new-array v13, v8, [I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object v8, v7

    move-object v9, v13

    move v11, v14

    move-object v5, v13

    move/from16 v13, v17

    move-object v4, v15

    move/from16 v15, v16

    .line 22
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 23
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcf$b;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcf$b;

    :goto_1
    const/16 v8, 0x10

    invoke-direct {v4, v5, v8, v6}, Lbf;-><init>([II[Lcf$b;)V

    if-eq v7, v1, :cond_3

    .line 24
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    :cond_3
    iget-object v4, v4, Lbf;->c:Ljava/util/List;

    .line 26
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 27
    new-instance v6, Lf4;

    invoke-direct {v6}, Lf4;-><init>()V

    .line 28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/high16 v8, -0x80000000

    const/4 v8, 0x0

    const/high16 v10, -0x80000000

    const/4 v11, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    .line 29
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcf$c;

    .line 30
    iget v13, v12, Lcf$c;->e:I

    if-le v13, v10, :cond_4

    move-object v11, v12

    move v10, v13

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 31
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_15

    .line 32
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldf;

    .line 33
    iget-object v12, v10, Ldf;->c:[F

    array-length v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v14, v12, :cond_7

    .line 34
    iget-object v9, v10, Ldf;->c:[F

    aget v9, v9, v14

    cmpl-float v16, v9, v13

    if-lez v16, :cond_6

    add-float/2addr v15, v9

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_7
    cmpl-float v9, v15, v13

    if-eqz v9, :cond_9

    .line 35
    iget-object v9, v10, Ldf;->c:[F

    array-length v9, v9

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v9, :cond_9

    .line 36
    iget-object v14, v10, Ldf;->c:[F

    aget v16, v14, v12

    cmpl-float v16, v16, v13

    if-lez v16, :cond_8

    .line 37
    aget v16, v14, v12

    div-float v16, v16, v15

    aput v16, v14, v12

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 38
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6
    const/4 v13, 0x1

    if-ge v12, v9, :cond_13

    .line 39
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcf$c;

    .line 40
    invoke-virtual {v0}, Lcf$c;->b()[F

    move-result-object v17

    .line 41
    aget v18, v17, v13

    .line 42
    iget-object v13, v10, Ldf;->a:[F

    const/16 v20, 0x0

    aget v21, v13, v20

    const/16 v22, 0x2

    cmpl-float v18, v18, v21

    if-ltz v18, :cond_a

    const/16 v18, 0x1

    .line 43
    aget v21, v17, v18

    .line 44
    aget v13, v13, v22

    cmpg-float v13, v21, v13

    if-gtz v13, :cond_a

    .line 45
    aget v13, v17, v22

    move-object/from16 v18, v3

    .line 46
    iget-object v3, v10, Ldf;->b:[F

    aget v21, v3, v20

    cmpl-float v13, v13, v21

    if-ltz v13, :cond_b

    .line 47
    aget v13, v17, v22

    .line 48
    aget v3, v3, v22

    cmpg-float v3, v13, v3

    if-gtz v3, :cond_b

    .line 49
    iget v3, v0, Lcf$c;->d:I

    .line 50
    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v18, v3

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_11

    .line 51
    invoke-virtual {v0}, Lcf$c;->b()[F

    move-result-object v3

    if-eqz v11, :cond_c

    .line 52
    iget v13, v11, Lcf$c;->e:I

    move-object/from16 v17, v4

    goto :goto_8

    :cond_c
    move-object/from16 v17, v4

    const/4 v13, 0x1

    .line 53
    :goto_8
    iget-object v4, v10, Ldf;->c:[F

    const/16 v20, 0x0

    aget v21, v4, v20

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    cmpl-float v21, v21, v16

    if-lez v21, :cond_d

    .line 54
    aget v4, v4, v20

    const/16 v19, 0x1

    .line 55
    aget v21, v3, v19

    move/from16 p1, v7

    .line 56
    iget-object v7, v10, Ldf;->a:[F

    aget v7, v7, v19

    sub-float v21, v21, v7

    .line 57
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v7, v23, v7

    mul-float v4, v4, v7

    goto :goto_9

    :cond_d
    move/from16 p1, v7

    const/16 v19, 0x1

    const/4 v4, 0x0

    .line 58
    :goto_9
    iget-object v7, v10, Ldf;->c:[F

    aget v21, v7, v19

    const/16 v16, 0x0

    cmpl-float v21, v21, v16

    if-lez v21, :cond_e

    .line 59
    aget v7, v7, v19

    .line 60
    aget v3, v3, v22

    move/from16 v21, v9

    .line 61
    iget-object v9, v10, Ldf;->b:[F

    aget v9, v9, v19

    sub-float/2addr v3, v9

    .line 62
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v23, v23, v3

    mul-float v3, v23, v7

    goto :goto_a

    :cond_e
    move/from16 v21, v9

    const/4 v3, 0x0

    .line 63
    :goto_a
    iget-object v7, v10, Ldf;->c:[F

    aget v9, v7, v22

    const/16 v16, 0x0

    cmpl-float v9, v9, v16

    if-lez v9, :cond_f

    .line 64
    aget v7, v7, v22

    .line 65
    iget v9, v0, Lcf$c;->e:I

    int-to-float v9, v9

    int-to-float v13, v13

    div-float/2addr v9, v13

    mul-float v7, v7, v9

    goto :goto_b

    :cond_f
    const/4 v7, 0x0

    :goto_b
    add-float/2addr v4, v3

    add-float/2addr v4, v7

    if-eqz v14, :cond_10

    cmpl-float v3, v4, v15

    if-lez v3, :cond_12

    :cond_10
    move-object v14, v0

    move v15, v4

    goto :goto_c

    :cond_11
    move-object/from16 v17, v4

    move/from16 p1, v7

    move/from16 v21, v9

    const/16 v16, 0x0

    const/16 v20, 0x0

    :cond_12
    :goto_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move/from16 v9, v21

    goto/16 :goto_6

    :cond_13
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move/from16 p1, v7

    const/16 v20, 0x0

    if-eqz v14, :cond_14

    .line 66
    iget v0, v14, Lcf$c;->d:I

    const/4 v3, 0x1

    .line 67
    invoke-virtual {v5, v0, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 68
    :cond_14
    invoke-virtual {v6, v10, v14}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto/16 :goto_3

    .line 69
    :cond_15
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 70
    iget-object v0, v2, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vImageContainer:Landroid/view/View;

    const v3, -0xbbbbbc

    .line 71
    sget-object v4, Ldf;->e:Ldf;

    .line 72
    invoke-virtual {v6, v4}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcf$c;

    if-eqz v4, :cond_16

    .line 73
    iget v3, v4, Lcf$c;->d:I

    .line 74
    :cond_16
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    iget-object v0, v2, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 76
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
