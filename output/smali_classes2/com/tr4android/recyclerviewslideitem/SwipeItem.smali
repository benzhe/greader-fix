.class public Lcom/tr4android/recyclerviewslideitem/SwipeItem;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tr4android/recyclerviewslideitem/SwipeItem$c;,
        Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;,
        Lcom/tr4android/recyclerviewslideitem/SwipeItem$d;
    }
.end annotation


# instance fields
.field public final e:Ljb;

.field public f:Lcom/tr4android/recyclerviewslideitem/SwipeItem$d;

.field public g:I

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field public l:Ls27;

.field public m:Z

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->m:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->n:I

    .line 6
    iput p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->o:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 9
    new-instance p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;-><init>(Lcom/tr4android/recyclerviewslideitem/SwipeItem;Lcom/tr4android/recyclerviewslideitem/SwipeItem$a;)V

    .line 10
    new-instance p2, Ljb;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1}, Ljb;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljb$c;)V

    .line 11
    iput-object p2, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->e:Ljb;

    return-void
.end method

.method public static synthetic a(Lcom/tr4android/recyclerviewslideitem/SwipeItem;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->getLeftThreshold()I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/tr4android/recyclerviewslideitem/SwipeItem;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->getRightThreshold()I

    move-result p0

    return p0
.end method

.method private getLeftThreshold()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 2
    iget v0, v0, Ls27;->g:F

    .line 3
    invoke-virtual {p0, v0}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->c(F)I

    move-result v0

    return v0
.end method

.method private getRightThreshold()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 2
    iget v0, v0, Ls27;->h:F

    neg-float v0, v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->c(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final c(F)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->g:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem$c;

    return p1
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->e:Ljb;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljb;->j(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$c;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/tr4android/recyclerviewslideitem/SwipeItem$c;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tr4android/recyclerviewslideitem/SwipeItem$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$c;

    invoke-direct {v0, p1}, Lcom/tr4android/recyclerviewslideitem/SwipeItem$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getConfiguration()Ls27;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeListener()Lcom/tr4android/recyclerviewslideitem/SwipeItem$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->f:Lcom/tr4android/recyclerviewslideitem/SwipeItem$d;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->m:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->n:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->m:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->n:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->e:Ljb;

    invoke-virtual {v0, p1}, Ljb;->y(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 4
    iget-boolean p3, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->m:Z

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    iput p3, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->g:I

    const/4 p3, 0x0

    .line 6
    iput-boolean p3, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->m:Z

    .line 7
    :cond_0
    iget-object p3, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->h:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 8
    iget-object p3, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->i:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 p5, 0x8

    if-eq p3, p5, :cond_1

    iget-object p3, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->i:Landroid/view/View;

    iget-object p5, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->h:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->i:Landroid/view/View;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->h:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->j:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 4
    sget v0, Lcom/tr4android/recyclerviewslideitem/R$id;->imageViewLeft:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->j:Landroid/widget/ImageView;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 6
    sget v0, Lcom/tr4android/recyclerviewslideitem/R$id;->imageViewRight:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->k:Landroid/widget/ImageView;

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->i:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 8
    iget-object v8, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->h:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move v9, p1

    move v11, p2

    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 10
    iget-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->i:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    .line 11
    iget-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->m:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->n:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->e:Ljb;

    invoke-virtual {v0, p1}, Ljb;->r(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public setSwipeBackgroundColor(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public setSwipeConfiguration(Ls27;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    return-void
.end method

.method public setSwipeLeftImageResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSwipeLeftImageVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setSwipeListener(Lcom/tr4android/recyclerviewslideitem/SwipeItem$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->f:Lcom/tr4android/recyclerviewslideitem/SwipeItem$d;

    return-void
.end method

.method public setSwipeRightImageResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSwipeRightImageVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
