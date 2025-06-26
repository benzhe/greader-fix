.class public abstract Lnet/simonvt/menudrawer/DraggableDrawer;
.super Lnet/simonvt/menudrawer/MenuDrawer;
.source "SourceFile"


# static fields
.field public static final u0:Landroid/view/animation/Interpolator;


# instance fields
.field public d0:I

.field public final e0:Ljava/lang/Runnable;

.field public final f0:Ljava/lang/Runnable;

.field public g0:Z

.field public h0:I

.field public i0:F

.field public j0:F

.field public k0:F

.field public l0:F

.field public m0:Los7;

.field public n0:Landroid/view/VelocityTracker;

.field public o0:I

.field public p0:Z

.field public q0:I

.field public r0:Z

.field public s0:Los7;

.field public t0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lms7;

    invoke-direct {v0}, Lms7;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/DraggableDrawer;->u0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lnet/simonvt/menudrawer/DraggableDrawer$a;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$a;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->e0:Ljava/lang/Runnable;

    .line 3
    new-instance p1, Lnet/simonvt/menudrawer/DraggableDrawer$b;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$b;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->f0:Ljava/lang/Runnable;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 5
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 6
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->p0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Lnet/simonvt/menudrawer/DraggableDrawer$a;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$a;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->e0:Ljava/lang/Runnable;

    .line 10
    new-instance p1, Lnet/simonvt/menudrawer/DraggableDrawer$b;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$b;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->f0:Ljava/lang/Runnable;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 12
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 13
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->p0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Lnet/simonvt/menudrawer/DraggableDrawer$a;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$a;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->e0:Ljava/lang/Runnable;

    .line 17
    new-instance p1, Lnet/simonvt/menudrawer/DraggableDrawer$b;

    invoke-direct {p1, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$b;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->f0:Ljava/lang/Runnable;

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 19
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->k0:F

    .line 20
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->l0:F

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->p0:Z

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
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->f0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->s0:Los7;

    invoke-virtual {v0}, Los7;->a()V

    .line 3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->C()V

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
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final D(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public final E(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->d0:I

    .line 4
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->o0:I

    .line 5
    new-instance p2, Los7;

    sget-object p3, Lnet/simonvt/menudrawer/MenuDrawer;->b0:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Los7;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->s0:Los7;

    .line 6
    new-instance p2, Los7;

    sget-object p3, Lnet/simonvt/menudrawer/DraggableDrawer;->u0:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Los7;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->m0:Los7;

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->c(I)I

    move-result p1

    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->q0:I

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    return v0
.end method

.method public getOffsetMenuEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->p0:Z

    return v0
.end method

.method public getTouchBezelSize()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:I

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:I

    return v0
.end method

.method public j(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:Landroid/os/Bundle;

    const-string v0, "net.simonvt.menudrawer.MenuDrawer.menuVisible"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->i(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 5
    :cond_1
    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    return-void
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "net.simonvt.menudrawer.MenuDrawer.menuVisible"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public l(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->i(Z)V

    goto :goto_1

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->b(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public o(II)V
    .locals 7

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    float-to-int v2, v0

    sub-int v4, p1, v2

    if-lez v4, :cond_0

    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDrawerState(I)V

    .line 3
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->s0:Los7;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Los7;->c(IIIII)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDrawerState(I)V

    .line 5
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->s0:Los7;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Los7;->c(IIIII)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->A()V

    .line 7
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->z()V

    return-void
.end method

.method public p(IIZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->t()V

    .line 2
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->u()V

    .line 3
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 p3, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_1
    const/high16 p2, 0x44160000    # 600.0f

    int-to-float p3, v0

    .line 6
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    mul-float p3, p3, p2

    float-to-int p2, p3

    .line 7
    :goto_0
    iget p3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->H:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;->o(II)V

    return-void

    :cond_2
    :goto_1
    int-to-float p2, p1

    .line 9
    invoke-virtual {p0, p2}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    .line 10
    :goto_2
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDrawerState(I)V

    .line 11
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->C()V

    return-void
.end method

.method public q(Landroid/view/View;ZIII)Z
    .locals 10

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/DraggableDrawer;->D(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v3

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/DraggableDrawer;->D(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v3

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/DraggableDrawer;->E(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v3

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/DraggableDrawer;->E(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v3

    if-lt p4, v5, :cond_0

    if-ge p4, v6, :cond_0

    if-lt p5, v7, :cond_0

    if-ge p5, v8, :cond_0

    const/4 v6, 0x1

    sub-int v8, p4, v5

    sub-int v9, p5, v7

    move-object v3, p0

    move v5, v6

    move v6, p3

    move v7, v8

    move v8, v9

    .line 9
    invoke-virtual/range {v3 .. v8}, Lnet/simonvt/menudrawer/DraggableDrawer;->q(Landroid/view/View;ZIII)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->I:Lnet/simonvt/menudrawer/MenuDrawer$d;

    invoke-interface {p2, p1, p3, p4, p5}, Lnet/simonvt/menudrawer/MenuDrawer$d;->a(Landroid/view/View;III)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public r(Landroid/view/View;ZIII)Z
    .locals 10

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/DraggableDrawer;->D(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v3

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/DraggableDrawer;->D(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v3

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/DraggableDrawer;->E(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v3

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/DraggableDrawer;->E(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v3

    if-lt p4, v5, :cond_0

    if-ge p4, v6, :cond_0

    if-lt p5, v7, :cond_0

    if-ge p5, v8, :cond_0

    const/4 v6, 0x1

    sub-int v8, p4, v5

    sub-int v9, p5, v7

    move-object v3, p0

    move v5, v6

    move v6, p3

    move v7, v8

    move v8, v9

    .line 9
    invoke-virtual/range {v3 .. v8}, Lnet/simonvt/menudrawer/DraggableDrawer;->r(Landroid/view/View;ZIII)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->I:Lnet/simonvt/menudrawer/MenuDrawer$d;

    invoke-interface {p2, p1, p3, p4, p5}, Lnet/simonvt/menudrawer/MenuDrawer$d;->a(Landroid/view/View;III)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public s(IIII)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez p1, :cond_1

    .line 3
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    .line 4
    invoke-static {v1}, Ln56;->O0(Landroid/view/View;)I

    move-result p1

    sub-int v4, p3, p1

    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {p1}, Ln56;->Y0(Landroid/view/View;)I

    move-result p1

    sub-int v5, p4, p1

    move-object v0, p0

    move v3, p2

    .line 5
    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->r(Landroid/view/View;ZIII)Z

    move-result p1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    .line 7
    invoke-static {v1}, Ln56;->O0(Landroid/view/View;)I

    move-result p1

    sub-int v4, p3, p1

    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {p1}, Ln56;->Y0(Landroid/view/View;)I

    move-result p1

    sub-int v5, p4, p1

    move-object v0, p0

    move v3, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->r(Landroid/view/View;ZIII)Z

    move-result p1

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-nez p2, :cond_3

    .line 10
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    .line 11
    invoke-static {v1}, Ln56;->O0(Landroid/view/View;)I

    move-result p2

    sub-int v4, p3, p2

    iget-object p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {p2}, Ln56;->Y0(Landroid/view/View;)I

    move-result p2

    sub-int v5, p4, p2

    move-object v0, p0

    move v3, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->q(Landroid/view/View;ZIII)Z

    move-result p1

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    .line 14
    invoke-static {v1}, Ln56;->O0(Landroid/view/View;)I

    move-result p2

    sub-int v4, p3, p2

    iget-object p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {p2}, Ln56;->Y0(Landroid/view/View;)I

    move-result p2

    sub-int v5, p4, p2

    move-object v0, p0

    move v3, p1

    .line 15
    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->q(Landroid/view/View;ZIII)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public setHardwareLayerEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->A:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->A:Z

    .line 3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 4
    iput-boolean p1, v0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->f:Z

    .line 5
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 6
    iput-boolean p1, v0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->f:Z

    .line 7
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->C()V

    :cond_0
    return-void
.end method

.method public setMenuSize(I)V
    .locals 2

    .line 1
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    .line 2
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    int-to-float p1, p1

    .line 3
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setOffsetMenuEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->p0:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->p0:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTouchBezelSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:I

    return-void
.end method

.method public setTouchMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:I

    .line 3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->n()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->g0:Z

    .line 2
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->n0:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->e0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->C()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->r0:Z

    return-void
.end method

.method public v(Landroid/view/VelocityTracker;)F
    .locals 1

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    return p1
.end method

.method public w(Landroid/view/VelocityTracker;)F
    .locals 1

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->h0:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    return p1
.end method

.method public x()Z
    .locals 2

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->q0:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->m0:Los7;

    invoke-virtual {v0}, Los7;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    float-to-int v0, v0

    .line 3
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->m0:Los7;

    .line 4
    iget v1, v1, Los7;->e:I

    if-eq v1, v0, :cond_0

    int-to-float v0, v1

    .line 5
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->m0:Los7;

    .line 7
    iget-boolean v0, v0, Los7;->l:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->e0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->m0:Los7;

    invoke-virtual {v0}, Los7;->a()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setDrawerState(I)V

    .line 12
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->C()V

    .line 13
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->r0:Z

    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->s0:Los7;

    invoke-virtual {v0}, Los7;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    float-to-int v0, v0

    .line 3
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->s0:Los7;

    .line 4
    iget v1, v1, Los7;->e:I

    if-eq v1, v0, :cond_0

    int-to-float v0, v1

    .line 5
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->s0:Los7;

    .line 7
    iget v0, v0, Los7;->c:I

    if-eq v1, v0, :cond_1

    .line 8
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->f0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->s0:Los7;

    invoke-virtual {v0}, Los7;->a()V

    .line 10
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->s0:Los7;

    .line 11
    iget v0, v0, Los7;->c:I

    int-to-float v1, v0

    .line 12
    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setDrawerState(I)V

    .line 14
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->C()V

    return-void
.end method
