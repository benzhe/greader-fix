.class public Lcom/google/android/material/imageview/ShapeableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Lta5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/imageview/ShapeableImageView$a;
    }
.end annotation


# static fields
.field public static final y:I


# instance fields
.field public final g:Lqa5;

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/Paint;

.field public final l:Landroid/graphics/Path;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Lla5;

.field public o:Lpa5;

.field public p:F

.field public q:Landroid/graphics/Path;

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ShapeableImageView:I

    sput v0, Lcom/google/android/material/imageview/ShapeableImageView;->y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    sget v0, Lcom/google/android/material/imageview/ShapeableImageView;->y:I

    invoke-static {p1, p2, p3, v0}, Lfc5;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p1, Lqa5$a;->a:Lqa5;

    .line 5
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->g:Lqa5;

    .line 6
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->l:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->x:Z

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->k:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, -0x1

    .line 11
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 13
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->h:Landroid/graphics/RectF;

    .line 14
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->i:Landroid/graphics/RectF;

    .line 15
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:Landroid/graphics/Path;

    .line 16
    sget-object v2, Lcom/google/android/material/R$styleable;->ShapeableImageView:[I

    .line 17
    invoke-virtual {v1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 18
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_strokeColor:I

    .line 19
    invoke-static {v1, v2, v4}, Lc50;->a0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:Landroid/content/res/ColorStateList;

    .line 20
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_strokeWidth:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:F

    .line 21
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPadding:I

    .line 22
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 23
    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    .line 24
    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->s:I

    .line 25
    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->t:I

    .line 26
    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->u:I

    .line 27
    sget v5, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingLeft:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    .line 28
    sget v5, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingTop:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/imageview/ShapeableImageView;->s:I

    .line 29
    sget v5, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingRight:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/imageview/ShapeableImageView;->t:I

    .line 30
    sget v5, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingBottom:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->u:I

    .line 31
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingStart:I

    const/high16 v5, -0x80000000

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->v:I

    .line 32
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingEnd:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->w:I

    .line 33
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->j:Landroid/graphics/Paint;

    .line 35
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    new-instance v2, Lea5;

    int-to-float p1, p1

    invoke-direct {v2, p1}, Lea5;-><init>(F)V

    invoke-static {v1, p2, p3, v0, v2}, Lpa5;->b(Landroid/content/Context;Landroid/util/AttributeSet;IILga5;)Lpa5$b;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lpa5$b;->a()Lpa5;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:Lpa5;

    .line 39
    new-instance p1, Lcom/google/android/material/imageview/ShapeableImageView$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/imageview/ShapeableImageView$a;-><init>(Lcom/google/android/material/imageview/ShapeableImageView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->v:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->w:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final e(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->h:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->g:Lqa5;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:Lpa5;

    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->h:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->l:Landroid/graphics/Path;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v2, v3}, Lqa5;->a(Lpa5;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->i:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->i:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->u:I

    return v0
.end method

.method public final getContentPaddingEnd()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->w:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->t:I

    :goto_0
    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->d()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->w:I

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->v:I

    if-eq v0, v1, :cond_1

    return v0

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->d()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->v:I

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->w:I

    if-eq v0, v1, :cond_1

    return v0

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->t:I

    return v0
.end method

.method public final getContentPaddingStart()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->v:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->t:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    :goto_0
    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->s:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingEnd()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingLeft()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingRight()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingStart()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingTop()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getShapeAppearanceModel()Lpa5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:Lpa5;

    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:F

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->q:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:Landroid/content/res/ColorStateList;

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    iget-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->x:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isLayoutDirectionResolved()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->x:Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPaddingRelative()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result p1

    .line 7
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result p2

    .line 8
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    .line 9
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    .line 10
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setPadding(IIII)V

    return-void

    .line 11
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result p1

    .line 12
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result p2

    .line 13
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingEnd()I

    move-result v0

    .line 14
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    .line 15
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/imageview/ShapeableImageView;->e(II)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 5

    const/high16 v0, -0x80000000

    .line 1
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->v:I

    .line 2
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->w:I

    .line 3
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 4
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->s:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 5
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->t:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 6
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->u:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p4

    .line 7
    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 8
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    .line 9
    iput p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->s:I

    .line 10
    iput p3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->t:I

    .line 11
    iput p4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->u:I

    return-void
.end method

.method public setContentPaddingRelative(IIII)V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 2
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->s:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 3
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 4
    invoke-super {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->u:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p4

    .line 5
    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->r:I

    .line 7
    iput p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->s:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->t:I

    .line 9
    iput p4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->u:I

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    move-result p1

    add-int/2addr p1, p2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingRight()I

    move-result p2

    add-int/2addr p2, p3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    move-result p3

    add-int/2addr p3, p4

    .line 5
    invoke-super {p0, v0, p1, p2, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    move-result v0

    add-int/2addr v0, p1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    move-result p1

    add-int/2addr p1, p2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    move-result p2

    add-int/2addr p2, p3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    move-result p3

    add-int/2addr p3, p4

    .line 5
    invoke-super {p0, v0, p1, p2, p3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setShapeAppearanceModel(Lpa5;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->o:Lpa5;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->n:Lla5;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lla5;->e:Lla5$b;

    iput-object p1, v1, Lla5$b;->a:Lpa5;

    .line 4
    invoke-virtual {v0}, Lla5;->invalidateSelf()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->e(II)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidateOutline()V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->m:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lp0;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->p:F

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(F)V

    return-void
.end method
