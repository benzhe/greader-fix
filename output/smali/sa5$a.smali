.class public Lsa5$a;
.super Lsa5$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsa5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lsa5$c;


# direct methods
.method public constructor <init>(Lsa5$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsa5$f;-><init>()V

    .line 2
    iput-object p1, p0, Lsa5$a;->b:Lsa5$c;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lca5;ILandroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v7, p4

    .line 1
    iget-object v3, v0, Lsa5$a;->b:Lsa5$c;

    .line 2
    iget v4, v3, Lsa5$c;->f:F

    .line 3
    iget v5, v3, Lsa5$c;->g:F

    .line 4
    new-instance v3, Landroid/graphics/RectF;

    iget-object v6, v0, Lsa5$a;->b:Lsa5$c;

    .line 5
    iget v8, v6, Lsa5$c;->b:F

    .line 6
    iget v9, v6, Lsa5$c;->c:F

    .line 7
    iget v10, v6, Lsa5$c;->d:F

    .line 8
    iget v6, v6, Lsa5$c;->e:F

    .line 9
    invoke-direct {v3, v8, v9, v10, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmpg-float v10, v5, v6

    if-gez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 10
    :goto_0
    iget-object v11, v1, Lca5;->g:Landroid/graphics/Path;

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v10, :cond_1

    .line 11
    sget-object v14, Lca5;->k:[I

    aput v8, v14, v8

    .line 12
    iget v8, v1, Lca5;->f:I

    aput v8, v14, v9

    .line 13
    iget v8, v1, Lca5;->e:I

    aput v8, v14, v13

    .line 14
    iget v8, v1, Lca5;->d:I

    aput v8, v14, v12

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    .line 16
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 17
    invoke-virtual {v11, v3, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 18
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    neg-int v14, v2

    int-to-float v14, v14

    .line 19
    invoke-virtual {v3, v14, v14}, Landroid/graphics/RectF;->inset(FF)V

    .line 20
    sget-object v14, Lca5;->k:[I

    aput v8, v14, v8

    .line 21
    iget v8, v1, Lca5;->d:I

    aput v8, v14, v9

    .line 22
    iget v8, v1, Lca5;->e:I

    aput v8, v14, v13

    .line 23
    iget v8, v1, Lca5;->f:I

    aput v8, v14, v12

    .line 24
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float v17, v8, v12

    cmpg-float v6, v17, v6

    if-gtz v6, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v2, v2

    div-float v2, v2, v17

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v2, v6, v2

    sub-float/2addr v6, v2

    div-float/2addr v6, v12

    add-float/2addr v6, v2

    .line 25
    sget-object v19, Lca5;->l:[F

    aput v2, v19, v9

    .line 26
    aput v6, v19, v13

    .line 27
    iget-object v2, v1, Lca5;->b:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/RadialGradient;

    .line 28
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    .line 29
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    sget-object v18, Lca5;->k:[I

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v6

    invoke-direct/range {v14 .. v20}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 30
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v2, p1

    .line 32
    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    if-nez v10, :cond_3

    .line 33
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v11, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 34
    iget-object v2, v1, Lca5;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    const/4 v6, 0x1

    .line 35
    iget-object v8, v1, Lca5;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p4

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 36
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    return-void
.end method
