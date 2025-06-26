.class public Lcom/noinnion/android/view/progress/DonutProgress;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:F

.field public final C:F

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:F

.field public final I:F

.field public final J:I

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/RectF;

.field public k:Landroid/graphics/RectF;

.field public l:F

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:F

.field public u:F

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/noinnion/android/view/progress/DonutProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/noinnion/android/view/progress/DonutProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->j:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->k:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->o:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->w:Ljava/lang/String;

    const-string v1, "%"

    .line 8
    iput-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->x:Ljava/lang/String;

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->y:Ljava/lang/String;

    const/16 v1, 0x42

    const/16 v2, 0x91

    const/16 v3, 0xf1

    .line 10
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iput v4, p0, Lcom/noinnion/android/view/progress/DonutProgress;->D:I

    const/16 v5, 0xcc

    .line 11
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    iput v5, p0, Lcom/noinnion/android/view/progress/DonutProgress;->E:I

    .line 12
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    iput v6, p0, Lcom/noinnion/android/view/progress/DonutProgress;->F:I

    .line 13
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->G:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v3, 0x41900000    # 18.0f

    mul-float v2, v2, v3

    .line 16
    iput v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->H:F

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 18
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v7, v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 19
    iput v7, p0, Lcom/noinnion/android/view/progress/DonutProgress;->J:I

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 21
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x40800000    # 4.0f

    mul-float v7, v7, v9

    add-float/2addr v7, v8

    .line 22
    iput v7, p0, Lcom/noinnion/android/view/progress/DonutProgress;->C:F

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 24
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v8, v8, v3

    .line 25
    iput v8, p0, Lcom/noinnion/android/view/progress/DonutProgress;->I:F

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lcom/noinnion/android/R$styleable;->DonutProgress:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 27
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_finished_color:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->q:I

    .line 28
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_unfinished_color:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->r:I

    .line 29
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_text_color:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->m:I

    .line 30
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_text_size:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->l:F

    .line 31
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_max:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/noinnion/android/view/progress/DonutProgress;->setMax(I)V

    .line 32
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_progress:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/noinnion/android/view/progress/DonutProgress;->setProgress(I)V

    .line 33
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_finished_stroke_width:I

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->t:F

    .line 34
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_unfinished_stroke_width:I

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->u:F

    .line 35
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_prefix_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->w:Ljava/lang/String;

    .line 37
    :cond_0
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_suffix_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->x:Ljava/lang/String;

    .line 39
    :cond_1
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->y:Ljava/lang/String;

    .line 41
    :cond_2
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_background_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->v:I

    .line 42
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_inner_bottom_text_size:I

    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->z:F

    .line 43
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_inner_bottom_text_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->n:I

    .line 44
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_inner_bottom_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->A:Ljava/lang/String;

    .line 45
    sget p2, Lcom/noinnion/android/R$styleable;->DonutProgress_donut_circle_starting_degree:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->s:I

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->a()V

    return-void
.end method

.method private getProgressAngle()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->h:Landroid/graphics/Paint;

    .line 2
    iget v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->l:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->i:Landroid/graphics/Paint;

    .line 6
    iget v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->n:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->i:Landroid/graphics/Paint;

    iget v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->z:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->e:Landroid/graphics/Paint;

    .line 10
    iget v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->q:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->t:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->f:Landroid/graphics/Paint;

    .line 15
    iget v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->r:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->u:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->g:Landroid/graphics/Paint;

    .line 20
    iget v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->v:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public final b(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->J:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method

.method public getFinishedStrokeColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->q:I

    return v0
.end method

.method public getFinishedStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->t:F

    return v0
.end method

.method public getInnerBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->v:I

    return v0
.end method

.method public getInnerBottomText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerBottomTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->n:I

    return v0
.end method

.method public getInnerBottomTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->z:F

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->p:I

    return v0
.end method

.method public getPrefixText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->o:I

    return v0
.end method

.method public getStartingDegree()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->s:I

    return v0
.end method

.method public getSuffixText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->m:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->l:F

    return v0
.end method

.method public getUnfinishedStrokeColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->r:I

    return v0
.end method

.method public getUnfinishedStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->u:F

    return v0
.end method

.method public invalidate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->a()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->t:F

    iget v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->u:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->j:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 6
    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->k:Landroid/graphics/RectF;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 10
    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->t:F

    iget v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->u:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->t:F

    iget v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->u:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/noinnion/android/view/progress/DonutProgress;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    iget-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getStartingDegree()I

    move-result v0

    int-to-float v2, v0

    invoke-direct {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getProgressAngle()F

    move-result v3

    iget-object v5, p0, Lcom/noinnion/android/view/progress/DonutProgress;->e:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 14
    iget-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getStartingDegree()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getProgressAngle()F

    move-result v2

    add-float/2addr v2, v0

    invoke-direct {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getProgressAngle()F

    move-result v0

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v0

    iget-object v5, p0, Lcom/noinnion/android/view/progress/DonutProgress;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 15
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v2, v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/noinnion/android/view/progress/DonutProgress;->h:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v6

    iget-object v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->z:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->B:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/noinnion/android/view/progress/DonutProgress;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v2, v1

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 22
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/noinnion/android/view/progress/DonutProgress;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/noinnion/android/view/progress/DonutProgress;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/progress/DonutProgress;->b(I)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/noinnion/android/view/progress/DonutProgress;->b(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->B:F

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "text_color"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->m:I

    const-string v0, "text_size"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->l:F

    const-string v0, "inner_bottom_text_size"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->z:F

    const-string v0, "inner_bottom_text"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->A:Ljava/lang/String;

    const-string v0, "inner_bottom_text_color"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->n:I

    const-string v0, "finished_stroke_color"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->q:I

    const-string v0, "unfinished_stroke_color"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->r:I

    const-string v0, "finished_stroke_width"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->t:F

    const-string v0, "unfinished_stroke_width"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->u:F

    const-string v0, "inner_background_color"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->v:I

    .line 13
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->a()V

    const-string v0, "max"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/noinnion/android/view/progress/DonutProgress;->setMax(I)V

    const-string v0, "starting_degree"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/noinnion/android/view/progress/DonutProgress;->setStartingDegree(I)V

    const-string v0, "progress"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/noinnion/android/view/progress/DonutProgress;->setProgress(I)V

    const-string v0, "prefix"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->w:Ljava/lang/String;

    const-string v0, "suffix"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->x:Ljava/lang/String;

    const-string v0, "text"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/view/progress/DonutProgress;->y:Ljava/lang/String;

    const-string v0, "saved_instance"

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "saved_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getTextColor()I

    move-result v1

    const-string v2, "text_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getTextSize()F

    move-result v1

    const-string v2, "text_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 5
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getInnerBottomTextSize()F

    move-result v1

    const-string v2, "inner_bottom_text_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getInnerBottomTextColor()I

    move-result v1

    int-to-float v1, v1

    const-string v2, "inner_bottom_text_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 7
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v1

    const-string v3, "inner_bottom_text"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getInnerBottomTextColor()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getFinishedStrokeColor()I

    move-result v1

    const-string v2, "finished_stroke_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getUnfinishedStrokeColor()I

    move-result v1

    const-string v2, "unfinished_stroke_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getMax()I

    move-result v1

    const-string v2, "max"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getStartingDegree()I

    move-result v1

    const-string v2, "starting_degree"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getProgress()I

    move-result v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "suffix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getPrefixText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getFinishedStrokeWidth()F

    move-result v1

    const-string v2, "finished_stroke_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 18
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getUnfinishedStrokeWidth()F

    move-result v1

    const-string v2, "unfinished_stroke_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 19
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getInnerBackgroundColor()I

    move-result v1

    const-string v2, "inner_background_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setFinishedStrokeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->q:I

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setFinishedStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->t:F

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setInnerBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->v:I

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setInnerBottomText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->A:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setInnerBottomTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->n:I

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setInnerBottomTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->z:F

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->p:I

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->w:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->o:I

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getMax()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 3
    iget p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->o:I

    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->getMax()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->o:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setStartingDegree(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->s:I

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setSuffixText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->x:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->y:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->m:I

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->l:F

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setUnfinishedStrokeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->r:I

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method

.method public setUnfinishedStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/progress/DonutProgress;->u:F

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/view/progress/DonutProgress;->invalidate()V

    return-void
.end method
