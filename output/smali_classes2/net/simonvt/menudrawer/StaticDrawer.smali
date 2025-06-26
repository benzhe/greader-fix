.class public Lnet/simonvt/menudrawer/StaticDrawer;
.super Lnet/simonvt/menudrawer/MenuDrawer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    return-void
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->T:Z

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOffsetMenuEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTouchBezelSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public l(Z)V
    .locals 0

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    sub-int p3, p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 3
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    sub-int p3, p4, p3

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 5
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    sub-int/2addr p4, p3

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    invoke-virtual {p1, p2, p2, p4, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 7
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    invoke-virtual {p1, p2, p2, p3, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 9
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 5
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7
    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    .line 8
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    sub-int v2, p2, v2

    .line 9
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 11
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 13
    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    .line 14
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    sub-int v2, p1, v2

    .line 15
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 16
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 17
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 18
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must measure with an exact size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setHardwareLayerEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMenuSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setOffsetMenuEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setSlideDrawable(I)V
    .locals 0

    return-void
.end method

.method public setSlideDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setTouchBezelSize(I)V
    .locals 0

    return-void
.end method

.method public setTouchMode(I)V
    .locals 0

    return-void
.end method

.method public setupUpIndicator(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
