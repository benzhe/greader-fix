.class public Lnet/simonvt/menudrawer/BuildLayerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->f:Z

    .line 3
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->h:Z

    .line 4
    sget-object p1, Lnet/simonvt/menudrawer/MenuDrawer;->b0:Landroid/view/animation/Interpolator;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->f:Z

    .line 8
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->h:Z

    .line 9
    sget-object p1, Lnet/simonvt/menudrawer/MenuDrawer;->b0:Landroid/view/animation/Interpolator;

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->f:Z

    .line 13
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->h:Z

    .line 14
    sget-object p1, Lnet/simonvt/menudrawer/MenuDrawer;->b0:Landroid/view/animation/Interpolator;

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->e:Z

    if-eqz p1, :cond_0

    sget-object p1, Lnet/simonvt/menudrawer/MenuDrawer;->b0:Landroid/view/animation/Interpolator;

    .line 3
    new-instance p1, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$b;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$b;-><init>(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->e:Z

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->g:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->g:Z

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    sget-object p1, Lnet/simonvt/menudrawer/MenuDrawer;->b0:Landroid/view/animation/Interpolator;

    iget-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->f:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$a;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$a;-><init>(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
