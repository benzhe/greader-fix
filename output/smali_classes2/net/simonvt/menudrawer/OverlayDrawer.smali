.class public Lnet/simonvt/menudrawer/OverlayDrawer;
.super Lnet/simonvt/menudrawer/DraggableDrawer;
.source "SourceFile"


# instance fields
.field public v0:I

.field public w0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lnet/simonvt/menudrawer/OverlayDrawer$a;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/OverlayDrawer$a;-><init>(Lnet/simonvt/menudrawer/OverlayDrawer;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->w0:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lnet/simonvt/menudrawer/OverlayDrawer$a;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/OverlayDrawer$a;-><init>(Lnet/simonvt/menudrawer/OverlayDrawer;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->w0:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lnet/simonvt/menudrawer/OverlayDrawer$a;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/OverlayDrawer$a;-><init>(Lnet/simonvt/menudrawer/OverlayDrawer;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->w0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->t0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->t0:Z

    .line 3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    invoke-super {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->B()V

    .line 2
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->w0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public C()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->t0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->t0:Z

    .line 3
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public F(FF)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d0:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d0:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public G()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 3
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez v3, :cond_1

    iget v4, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j0:F

    iget v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gez v4, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    iget v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j0:F

    int-to-float v0, v0

    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    add-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 4
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 5
    iget v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i0:F

    float-to-int v3, v3

    .line 6
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez v4, :cond_5

    iget v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    sub-int v5, v0, v5

    if-ge v3, v5, :cond_6

    :cond_5
    if-eqz v4, :cond_7

    int-to-float v3, v3

    int-to-float v0, v0

    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    add-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1

    .line 7
    :cond_8
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez v0, :cond_9

    iget v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j0:F

    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-lez v3, :cond_a

    :cond_9
    if-eqz v0, :cond_b

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j0:F

    iget v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_b

    :cond_a
    const/4 v1, 0x1

    :cond_b
    return v1

    .line 8
    :cond_c
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez v0, :cond_d

    iget v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i0:F

    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-lez v3, :cond_e

    :cond_d
    if-eqz v0, :cond_f

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i0:F

    iget v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_f

    :cond_e
    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public H(IFF)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:I

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_10

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_6

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    return v4

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 4
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez v0, :cond_2

    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j0:F

    iget v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_2

    cmpg-float p3, p3, v3

    if-ltz p3, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    int-to-float p1, p1

    int-to-float p2, p2

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    sub-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-gez p1, :cond_5

    :cond_3
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->v0:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_4

    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_0
    return v2

    .line 6
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    .line 7
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez v0, :cond_7

    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i0:F

    iget v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    sub-int v5, p3, v5

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_7

    cmpg-float p2, p2, v3

    if-ltz p2, :cond_a

    :cond_7
    if-eqz v0, :cond_8

    int-to-float p1, p1

    int-to-float p2, p3

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    sub-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-gez p1, :cond_a

    :cond_8
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->v0:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_9

    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    :cond_a
    :goto_1
    return v2

    .line 9
    :cond_b
    iget-boolean p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez p2, :cond_c

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j0:F

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    cmpl-float p3, p3, v3

    if-gtz p3, :cond_f

    :cond_c
    if-eqz p2, :cond_d

    int-to-float p1, p1

    iget p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    cmpg-float p1, p1, p2

    if-lez p1, :cond_f

    :cond_d
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->v0:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_e

    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz p1, :cond_e

    goto :goto_2

    :cond_e
    const/4 v2, 0x0

    :cond_f
    :goto_2
    return v2

    .line 11
    :cond_10
    iget-boolean p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez p3, :cond_11

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i0:F

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_11

    cmpl-float p2, p2, v3

    if-gtz p2, :cond_14

    :cond_11
    if-eqz p3, :cond_12

    int-to-float p1, p1

    iget p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    cmpg-float p1, p1, p2

    if-lez p1, :cond_14

    :cond_12
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->v0:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_13

    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz p1, :cond_13

    goto :goto_3

    :cond_13
    const/4 v2, 0x0

    :cond_14
    :goto_3
    return v2
.end method

.method public final I(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3
    iget v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    .line 6
    iget-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->p(IIZ)V

    return-void
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 3
    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    float-to-int v3, v2

    .line 4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 5
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v3

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v3

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    :goto_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x43390000    # 185.0f

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 11
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/DraggableDrawer;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 5
    iput-boolean v0, p1, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->f:Z

    .line 6
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x14

    .line 7
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->c(I)I

    move-result p1

    iput p1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->v0:I

    return-void
.end method

.method public getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0

    .line 5
    :cond_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public h(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public i(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    neg-int v0, v0

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    .line 4
    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->p(IIZ)V

    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 6
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v2}, Ln56;->Y0(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 7
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 10
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v2}, Ln56;->O0(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 11
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 14
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v2}, Ln56;->C0(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 15
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 18
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v2}, Ln56;->U0(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 19
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_19

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez v0, :cond_1

    .line 2
    iget-boolean v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->x()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    .line 3
    invoke-virtual {p0, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    .line 4
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->B()V

    .line 5
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->u()V

    .line 6
    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/MenuDrawer;->setDrawerState(I)V

    .line 7
    iput-boolean v4, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    .line 8
    :cond_1
    iget-boolean v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz v6, :cond_9

    .line 9
    iget v6, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    if-eq v6, v2, :cond_2

    .line 10
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-ne v6, v2, :cond_3

    :cond_2
    const/4 v6, 0x0

    .line 11
    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    .line 12
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 13
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_7

    if-eq v8, v3, :cond_6

    if-eq v8, v1, :cond_5

    if-eq v8, v5, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v5}, Ln56;->Y0(Landroid/view/View;)I

    move-result v5

    if-le v5, v6, :cond_8

    goto :goto_0

    .line 15
    :cond_5
    iget-object v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v5}, Ln56;->O0(Landroid/view/View;)I

    move-result v5

    if-le v5, v7, :cond_8

    goto :goto_0

    .line 16
    :cond_6
    iget-object v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v5}, Ln56;->C0(Landroid/view/View;)I

    move-result v5

    if-ge v5, v6, :cond_8

    goto :goto_0

    .line 17
    :cond_7
    iget-object v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v5}, Ln56;->U0(Landroid/view/View;)I

    move-result v5

    if-ge v5, v7, :cond_8

    :goto_0
    const/4 v5, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_9

    return v3

    .line 18
    :cond_9
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    if-nez v5, :cond_a

    iget v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:I

    if-nez v5, :cond_a

    return v4

    :cond_a
    if-eqz v0, :cond_b

    .line 19
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    if-eqz v5, :cond_b

    return v3

    :cond_b
    if-eqz v0, :cond_14

    if-eq v0, v1, :cond_d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    goto/16 :goto_4

    .line 20
    :cond_c
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/OverlayDrawer;->I(Landroid/view/MotionEvent;)V

    .line 21
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 22
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    goto/16 :goto_4

    .line 23
    :cond_d
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    if-ne v0, v2, :cond_e

    goto/16 :goto_4

    .line 24
    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_f

    .line 25
    iput-boolean v4, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    .line 26
    iput v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    .line 27
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->t()V

    .line 28
    invoke-virtual {p0, v4, v4, v3}, Lnet/simonvt/menudrawer/DraggableDrawer;->p(IIZ)V

    return v4

    .line 29
    :cond_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 30
    iget v5, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    sub-float v5, v2, v5

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 32
    iget v6, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    sub-float v6, v0, v6

    .line 33
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d0:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gez v7, :cond_10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d0:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_11

    .line 34
    :cond_10
    iget-object v7, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->w0:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 35
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->u()V

    .line 36
    :cond_11
    invoke-virtual {p0, v5, v6}, Lnet/simonvt/menudrawer/OverlayDrawer;->F(FF)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 37
    iget-object v7, p0, Lnet/simonvt/menudrawer/MenuDrawer;->I:Lnet/simonvt/menudrawer/MenuDrawer$d;

    if-eqz v7, :cond_13

    iget v7, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:I

    if-eq v7, v1, :cond_12

    iget-boolean v7, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz v7, :cond_13

    :cond_12
    float-to-int v7, v5

    float-to-int v8, v6

    float-to-int v9, v2

    float-to-int v10, v0

    .line 38
    invoke-virtual {p0, v7, v8, v9, v10}, Lnet/simonvt/menudrawer/DraggableDrawer;->s(IIII)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 39
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->t()V

    .line 40
    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/OverlayDrawer;->requestDisallowInterceptTouchEvent(Z)V

    return v4

    :cond_13
    float-to-int v4, v2

    .line 41
    invoke-virtual {p0, v4, v5, v6}, Lnet/simonvt/menudrawer/OverlayDrawer;->H(IFF)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 42
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->u()V

    .line 43
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->B()V

    .line 44
    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDrawerState(I)V

    .line 45
    iput-boolean v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    .line 46
    iput v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 47
    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    goto :goto_4

    .line 48
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i0:F

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j0:F

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    .line 50
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->G()Z

    move-result v0

    .line 51
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    if-eqz v0, :cond_17

    .line 52
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz v0, :cond_15

    const/16 v0, 0x8

    goto :goto_3

    :cond_15
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setDrawerState(I)V

    .line 53
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->B()V

    .line 54
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->u()V

    .line 55
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez v0, :cond_16

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i0:F

    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->v0:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    .line 56
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->w0:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    :cond_16
    iput-boolean v4, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    .line 58
    :cond_17
    :goto_4
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_18

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    .line 59
    :cond_18
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 60
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    return p1

    .line 61
    :cond_19
    :goto_5
    iget-object p1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->w0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 62
    iput v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    .line 63
    iput-boolean v4, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    .line 64
    iget-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1a

    .line 65
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    .line 67
    :cond_1a
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1b

    .line 68
    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/OverlayDrawer;->i(Z)V

    goto :goto_6

    .line 69
    :cond_1b
    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/OverlayDrawer;->b(Z)V

    :goto_6
    return v4
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 2
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    sub-int p3, p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    sub-int p3, p4, p3

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    invoke-virtual {p1, p2, p2, p4, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    invoke-virtual {p1, p2, p2, p3, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

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

    move-result v0

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 5
    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/OverlayDrawer;->i(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 7
    iget p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    invoke-static {p1, v4, p2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 8
    invoke-static {p1, v4, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 10
    iget v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    invoke-static {p2, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    move v5, v2

    move v2, p2

    move p2, v5

    .line 11
    :goto_0
    iget-object v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v3, p2, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 12
    invoke-static {p1, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 13
    invoke-static {p1, v4, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    .line 14
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v2, p2, p1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 16
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->n()V

    return-void

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must measure with an exact size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/OverlayDrawer;->h(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:I

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    .line 4
    :cond_1
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-eq v0, v2, :cond_c

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_6

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/OverlayDrawer;->I(Landroid/view/MotionEvent;)V

    .line 6
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 7
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    goto/16 :goto_6

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    goto/16 :goto_6

    .line 12
    :cond_4
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 13
    iput-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    .line 14
    iput v4, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    .line 15
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->t()V

    .line 16
    invoke-virtual {p0, v1, v1, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->p(IIZ)V

    return v1

    .line 17
    :cond_5
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    if-nez v1, :cond_7

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 19
    iget v4, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    sub-float v4, v1, v4

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 21
    iget v7, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    sub-float v7, v6, v7

    .line 22
    invoke-virtual {p0, v4, v7}, Lnet/simonvt/menudrawer/OverlayDrawer;->F(FF)Z

    move-result v8

    if-eqz v8, :cond_7

    float-to-int v8, v1

    .line 23
    invoke-virtual {p0, v8, v4, v7}, Lnet/simonvt/menudrawer/OverlayDrawer;->H(IFF)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 24
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->u()V

    .line 25
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->B()V

    .line 26
    invoke-virtual {p0, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->setDrawerState(I)V

    .line 27
    iput-boolean v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    .line 28
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 29
    iput v6, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    goto :goto_0

    .line 30
    :cond_6
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i0:F

    .line 31
    iput v6, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j0:F

    .line 32
    :cond_7
    :goto_0
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    if-eqz v1, :cond_1d

    .line 33
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->A()V

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 35
    iget v4, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    sub-float v4, v1, v4

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 37
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    sub-float v0, p1, v0

    .line 38
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 39
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    .line 40
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    if-eq p1, v2, :cond_a

    if-eq p1, v5, :cond_9

    if-eq p1, v3, :cond_8

    goto/16 :goto_6

    .line 41
    :cond_8
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    add-float/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    goto/16 :goto_6

    .line 42
    :cond_9
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    add-float/2addr p1, v4

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    goto/16 :goto_6

    .line 43
    :cond_a
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    add-float/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    goto/16 :goto_6

    .line 44
    :cond_b
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    add-float/2addr p1, v4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    goto/16 :goto_6

    .line 45
    :cond_c
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->w0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 46
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_d

    const/4 v0, 0x0

    .line 47
    :cond_d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 49
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v7, 0x3e8

    if-eqz v0, :cond_17

    if-eq v0, v2, :cond_14

    if-eq v0, v5, :cond_11

    if-eq v0, v3, :cond_e

    goto/16 :goto_5

    .line 50
    :cond_e
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    iget v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->o0:I

    int-to-float v3, v3

    invoke-virtual {v0, v7, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 52
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->w(Landroid/view/VelocityTracker;)F

    move-result v0

    float-to-int v0, v0

    int-to-float p1, p1

    .line 53
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    if-gez v0, :cond_f

    .line 54
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    neg-int p1, p1

    goto :goto_1

    :cond_f
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->p(IIZ)V

    goto/16 :goto_5

    .line 55
    :cond_10
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz p1, :cond_1a

    .line 56
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/OverlayDrawer;->b(Z)V

    goto/16 :goto_5

    .line 57
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 58
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    if-eqz p1, :cond_13

    .line 59
    iget-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->o0:I

    int-to-float v0, v0

    invoke-virtual {p1, v7, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 60
    iget-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->v(Landroid/view/VelocityTracker;)F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, v6

    .line 61
    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    if-lez p1, :cond_12

    const/4 v0, 0x0

    goto :goto_2

    .line 62
    :cond_12
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    neg-int v0, v0

    :goto_2
    invoke-virtual {p0, v0, p1, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->p(IIZ)V

    goto :goto_5

    .line 63
    :cond_13
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz p1, :cond_1a

    .line 64
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/OverlayDrawer;->b(Z)V

    goto :goto_5

    .line 65
    :cond_14
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    if-eqz v0, :cond_16

    .line 66
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    iget v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->o0:I

    int-to-float v3, v3

    invoke-virtual {v0, v7, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 67
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->w(Landroid/view/VelocityTracker;)F

    move-result v0

    float-to-int v0, v0

    int-to-float p1, p1

    .line 68
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    if-lez v0, :cond_15

    .line 69
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    goto :goto_3

    :cond_15
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0, p1, v0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->p(IIZ)V

    goto :goto_5

    .line 70
    :cond_16
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz p1, :cond_1a

    .line 71
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/OverlayDrawer;->b(Z)V

    goto :goto_5

    .line 72
    :cond_17
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    if-eqz p1, :cond_19

    .line 73
    iget-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->o0:I

    int-to-float v0, v0

    invoke-virtual {p1, v7, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 74
    iget-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->v(Landroid/view/VelocityTracker;)F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, v6

    .line 75
    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    if-lez p1, :cond_18

    .line 76
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    goto :goto_4

    :cond_18
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0, v0, p1, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->p(IIZ)V

    goto :goto_5

    .line 77
    :cond_19
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz p1, :cond_1a

    .line 78
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/OverlayDrawer;->b(Z)V

    .line 79
    :cond_1a
    :goto_5
    iput v4, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    .line 80
    iput-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    goto :goto_6

    .line 81
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->i0:F

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->j0:F

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    .line 83
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->G()Z

    move-result v0

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    if-eqz v0, :cond_1d

    .line 85
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->B()V

    .line 86
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->u()V

    .line 87
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez p1, :cond_1c

    iget p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    iget v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->v0:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1c

    .line 88
    iget-object p1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->w0:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :cond_1c
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->A()V

    :cond_1d
    :goto_6
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    iget-object p1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->w0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->r0:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->u()V

    const/4 p1, 0x0

    const/16 v0, 0x1388

    .line 5
    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->o(II)V

    :cond_0
    return-void
.end method
