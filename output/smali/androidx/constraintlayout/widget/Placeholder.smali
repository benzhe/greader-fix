.class public Landroidx/constraintlayout/widget/Placeholder;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Landroid/view/View;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->e:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->g:I

    .line 5
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Placeholder;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->e:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    const/4 p1, 0x4

    .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->g:I

    .line 10
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/Placeholder;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->e:I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    const/4 p1, 0x4

    .line 14
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->g:I

    .line 15
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/Placeholder;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->g:I

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->e:I

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 6
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder_content:I

    if-ne v2, v3, :cond_0

    .line 7
    iget v3, p0, Landroidx/constraintlayout/widget/Placeholder;->e:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/Placeholder;->e:I

    goto :goto_1

    .line 8
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder_placeholder_emptyVisibility:I

    if-ne v2, v3, :cond_1

    .line 9
    iget v3, p0, Landroidx/constraintlayout/widget/Placeholder;->g:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/Placeholder;->g:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 5
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    const/4 v3, 0x0

    .line 6
    iput v3, v2, Lc6;->e0:I

    .line 7
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    invoke-virtual {v2}, Lc6;->o()Lc6$a;

    move-result-object v2

    sget-object v3, Lc6$a;->e:Lc6$a;

    if-eq v2, v3, :cond_1

    .line 8
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    invoke-virtual {v4}, Lc6;->t()I

    move-result v4

    invoke-virtual {v2, v4}, Lc6;->I(I)V

    .line 9
    :cond_1
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    invoke-virtual {v2}, Lc6;->s()Lc6$a;

    move-result-object v2

    if-eq v2, v3, :cond_2

    .line 10
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    invoke-virtual {v2}, Lc6;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lc6;->D(I)V

    .line 11
    :cond_2
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    const/16 v1, 0x8

    .line 12
    iput v1, v0, Lc6;->e0:I

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    return-object v0
.end method

.method public getEmptyVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->g:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdf

    .line 2
    invoke-virtual {p1, v0, v0, v0}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0xd2

    .line 4
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 5
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 12
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v5, "?"

    const/4 v6, 0x1

    .line 13
    invoke-virtual {v0, v5, v2, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v2, v6

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v2, v6

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v6, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v6, v1

    .line 16
    invoke-virtual {p1, v5, v2, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setContentId(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->e:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 6
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    .line 8
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setEmptyVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->g:I

    return-void
.end method
