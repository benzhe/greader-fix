.class public Lcom/google/android/material/timepicker/RadialViewGroup;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public final v:Ljava/lang/Runnable;

.field public w:I

.field public x:Lla5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->material_radial_view_group:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    new-instance v0, Lla5;

    invoke-direct {v0}, Lla5;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->x:Lla5;

    .line 5
    new-instance v1, Lna5;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Lna5;-><init>(F)V

    .line 6
    iget-object v2, v0, Lla5;->e:Lla5$b;

    iget-object v2, v2, Lla5$b;->a:Lpa5;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v3, Lpa5$b;

    invoke-direct {v3, v2}, Lpa5$b;-><init>(Lpa5;)V

    .line 9
    iput-object v1, v3, Lpa5$b;->e:Lga5;

    .line 10
    iput-object v1, v3, Lpa5$b;->f:Lga5;

    .line 11
    iput-object v1, v3, Lpa5$b;->g:Lga5;

    .line 12
    iput-object v1, v3, Lpa5$b;->h:Lga5;

    .line 13
    invoke-virtual {v3}, Lpa5$b;->a()Lpa5;

    move-result-object v1

    .line 14
    iget-object v2, v0, Lla5;->e:Lla5$b;

    iput-object v1, v2, Lla5$b;->a:Lpa5;

    .line 15
    invoke-virtual {v0}, Lla5;->invalidateSelf()V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->x:Lla5;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lla5;->t(Landroid/content/res/ColorStateList;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->x:Lla5;

    .line 18
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    sget-object v0, Lcom/google/android/material/R$styleable;->RadialViewGroup:[I

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 22
    sget p2, Lcom/google/android/material/R$styleable;->RadialViewGroup_materialCircleRadius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->w:I

    .line 23
    new-instance p2, Lcom/google/android/material/timepicker/RadialViewGroup$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/RadialViewGroup$a;-><init>(Lcom/google/android/material/timepicker/RadialViewGroup;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->v:Ljava/lang/Runnable;

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 3
    sget-object p2, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->r()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public r()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "skip"

    if-ge v3, v0, :cond_1

    .line 2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v3, La7;

    invoke-direct {v3}, La7;-><init>()V

    .line 5
    invoke-virtual {v3, p0}, La7;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v6, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    sget v9, Lcom/google/android/material/R$id;->circle_center:I

    if-eq v8, v9, :cond_3

    .line 8
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    iget v8, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->w:I

    .line 10
    invoke-virtual {v3, v7}, La7;->g(I)La7$a;

    move-result-object v7

    .line 11
    iget-object v7, v7, La7$a;->d:La7$b;

    iput v9, v7, La7$b;->x:I

    .line 12
    iput v8, v7, La7$b;->y:I

    .line 13
    iput v6, v7, La7$b;->z:F

    const/high16 v7, 0x43b40000    # 360.0f

    sub-int v8, v0, v4

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v6

    move v6, v7

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v3, p0, v2}, La7;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(La7;)V

    .line 16
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->x:Lla5;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lla5;->t(Landroid/content/res/ColorStateList;)V

    return-void
.end method
