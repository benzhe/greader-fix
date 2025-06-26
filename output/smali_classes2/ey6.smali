.class public Ley6;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ley6$b;
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:Landroid/graphics/Paint;

.field public final g:I

.field public final h:Landroid/graphics/Paint;

.field public final i:I

.field public j:I

.field public k:F

.field public l:Lcom/noinnion/android/reader/widget/SlidingTabLayout$d;

.field public final m:Ley6$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 4
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v4, 0x1010030

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 6
    iget p1, v3, Landroid/util/TypedValue;->data:I

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v6, 0x26

    invoke-static {v6, v3, v4, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 8
    iput p1, p0, Ley6;->i:I

    .line 9
    new-instance v3, Ley6$b;

    invoke-direct {v3, v0}, Ley6$b;-><init>(Ley6$a;)V

    iput-object v3, p0, Ley6;->m:Ley6$b;

    new-array v0, v5, [I

    const v4, -0xcc4a1b

    aput v4, v0, v1

    .line 10
    iput-object v0, v3, Ley6$b;->a:[I

    const/4 v0, 0x0

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 11
    iput v0, p0, Ley6;->e:I

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ley6;->f:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40400000    # 3.0f

    mul-float v2, v2, p1

    float-to-int p1, v2

    .line 14
    iput p1, p0, Ley6;->g:I

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ley6;->h:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 3
    iget-object v3, v0, Ley6;->l:Lcom/noinnion/android/reader/widget/SlidingTabLayout$d;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Ley6;->m:Ley6$b;

    :goto_0
    if-lez v2, :cond_3

    .line 4
    iget v2, v0, Ley6;->j:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 7
    iget v5, v0, Ley6;->j:I

    invoke-interface {v3, v5}, Lcom/noinnion/android/reader/widget/SlidingTabLayout$d;->a(I)I

    move-result v5

    .line 8
    iget v6, v0, Ley6;->k:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, v0, Ley6;->j:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    .line 9
    iget v6, v0, Ley6;->j:I

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v3, v6}, Lcom/noinnion/android/reader/widget/SlidingTabLayout$d;->a(I)I

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v5, v3, :cond_1

    .line 10
    iget v7, v0, Ley6;->k:F

    sub-float v8, v6, v7

    .line 11
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v7

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v8

    add-float/2addr v10, v9

    .line 12
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v7

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v8

    add-float/2addr v11, v9

    .line 13
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v8

    add-float/2addr v5, v3

    float-to-int v3, v10

    float-to-int v7, v11

    float-to-int v5, v5

    .line 14
    invoke-static {v3, v7, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    move v5, v3

    .line 15
    :cond_1
    iget v3, v0, Ley6;->j:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 16
    iget v7, v0, Ley6;->k:F

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    iget v8, v0, Ley6;->k:F

    sub-float v9, v6, v8

    int-to-float v4, v4

    mul-float v9, v9, v4

    add-float/2addr v9, v7

    float-to-int v4, v9

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    mul-float v8, v8, v3

    iget v3, v0, Ley6;->k:F

    sub-float/2addr v6, v3

    int-to-float v2, v2

    mul-float v6, v6, v2

    add-float/2addr v6, v8

    float-to-int v2, v6

    .line 19
    :cond_2
    iget-object v3, v0, Ley6;->h:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, v4

    .line 20
    iget v3, v0, Ley6;->g:I

    sub-int v3, v1, v3

    int-to-float v8, v3

    int-to-float v9, v2

    int-to-float v10, v1

    iget-object v11, v0, Ley6;->h:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    const/4 v13, 0x0

    .line 21
    iget v2, v0, Ley6;->e:I

    sub-int v2, v1, v2

    int-to-float v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v15, v2

    int-to-float v1, v1

    iget-object v2, v0, Ley6;->f:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
