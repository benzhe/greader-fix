.class public abstract Lnet/simonvt/menudrawer/MenuDrawer;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/menudrawer/MenuDrawer$SavedState;,
        Lnet/simonvt/menudrawer/MenuDrawer$d;,
        Lnet/simonvt/menudrawer/MenuDrawer$c;
    }
.end annotation


# static fields
.field public static final b0:Landroid/view/animation/Interpolator;

.field public static final c0:Landroid/view/animation/Interpolator;


# instance fields
.field public A:Z

.field public B:Lls7;

.field public C:Ljava/lang/Runnable;

.field public D:I

.field public E:F

.field public F:Z

.field public G:Landroid/os/Bundle;

.field public H:I

.field public I:Lnet/simonvt/menudrawer/MenuDrawer$d;

.field public J:Lqs7;

.field public K:Landroid/graphics/drawable/Drawable;

.field public L:Z

.field public M:Lss7;

.field public N:I

.field public O:I

.field public P:I

.field public Q:Lns7;

.field public R:Lns7;

.field public final S:Landroid/graphics/Rect;

.field public T:Z

.field public final U:Landroid/graphics/Rect;

.field public V:F

.field public W:Z

.field public a0:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Z

.field public g:I

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Z

.field public j:I

.field public k:Landroid/graphics/Bitmap;

.field public l:Landroid/view/View;

.field public m:I

.field public n:Z

.field public final o:Landroid/graphics/Rect;

.field public final p:Landroid/graphics/Rect;

.field public q:Landroid/view/View;

.field public r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

.field public s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

.field public t:I

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:Lnet/simonvt/menudrawer/MenuDrawer$c;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrs7;

    invoke-direct {v0}, Lrs7;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer;->b0:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer;->c0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lnet/simonvt/menudrawer/R$attr;->menuDrawerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->o:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:I

    .line 8
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->A:Z

    .line 9
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$a;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/MenuDrawer$a;-><init>(Lnet/simonvt/menudrawer/MenuDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Ljava/lang/Runnable;

    const/16 v0, 0x258

    .line 10
    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->H:I

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    .line 13
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$b;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/MenuDrawer$b;-><init>(Lnet/simonvt/menudrawer/MenuDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->a0:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getIndicatorStartPos()I
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
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    .line 5
    :cond_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private setPosition(Lns7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->Q:Lns7;

    .line 2
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object p1

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lns7;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Lls7;

    .line 2
    iget-boolean v1, v0, Lls7;->h:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lls7;->d:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 4
    iget v4, v0, Lls7;->e:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_1

    int-to-float v1, v1

    .line 5
    iget v4, v0, Lls7;->f:F

    mul-float v1, v1, v4

    sub-float/2addr v1, v3

    mul-float v4, v1, v1

    mul-float v4, v4, v1

    mul-float v4, v4, v1

    mul-float v4, v4, v1

    add-float/2addr v4, v3

    .line 6
    iget v1, v0, Lls7;->a:F

    iget v6, v0, Lls7;->g:F

    mul-float v4, v4, v6

    add-float/2addr v4, v1

    iput v4, v0, Lls7;->c:F

    goto :goto_0

    .line 7
    :cond_1
    iget v1, v0, Lls7;->b:F

    iput v1, v0, Lls7;->c:F

    .line 8
    iput-boolean v5, v0, Lls7;->h:Z

    :goto_0
    if-eqz v5, :cond_2

    .line 9
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Lls7;

    .line 10
    iget v0, v0, Lls7;->c:F

    .line 11
    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->E:F

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 13
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Lls7;

    .line 14
    iget-boolean v0, v0, Lls7;->h:Z

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 16
    :cond_2
    iput v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->E:F

    .line 17
    iput-boolean v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->F:Z

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public abstract b(Z)V
.end method

.method public c(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public abstract d(Landroid/graphics/Canvas;)V
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    float-to-int v0, v0

    .line 3
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->W:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->d(Landroid/graphics/Canvas;)V

    .line 5
    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->f:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->T:Z

    if-eqz v1, :cond_3

    .line 6
    :cond_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 7
    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->g:I

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowColor(I)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->m()V

    .line 9
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_3
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->k:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->g(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_13

    if-nez v0, :cond_5

    .line 12
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->T:Z

    if-eqz v0, :cond_13

    .line 13
    :cond_5
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:Landroid/view/View;

    sget v1, Lnet/simonvt/menudrawer/R$id;->mdActiveViewPosition:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    .line 14
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15
    :goto_1
    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->m:I

    if-ne v0, v1, :cond_13

    .line 16
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:Landroid/view/View;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 17
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:Landroid/view/View;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 18
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->T:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 19
    :goto_2
    sget-object v4, Lnet/simonvt/menudrawer/MenuDrawer;->c0:Landroid/view/animation/Interpolator;

    sub-float v0, v1, v0

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float/2addr v1, v0

    .line 20
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 21
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v5, v0

    mul-float v5, v5, v1

    float-to-int v5, v5

    int-to-float v6, v4

    mul-float v6, v6, v1

    float-to-int v1, v6

    .line 22
    iget v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:I

    .line 23
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v7, :cond_a

    if-eq v7, v2, :cond_8

    if-eq v7, v8, :cond_a

    if-eq v7, v9, :cond_8

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_3

    .line 24
    :cond_8
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->o:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/2addr v4, v8

    add-int/2addr v4, v7

    .line 25
    iget-boolean v7, p0, Lnet/simonvt/menudrawer/MenuDrawer;->F:Z

    if-eqz v7, :cond_9

    int-to-float v7, v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    .line 26
    iget v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->E:F

    mul-float v4, v4, v6

    add-float/2addr v4, v7

    float-to-int v4, v4

    :cond_9
    add-int/2addr v0, v4

    move v7, v4

    const/4 v6, 0x0

    move v4, v0

    const/4 v0, 0x0

    goto :goto_4

    .line 27
    :cond_a
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->o:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, v4

    div-int/2addr v0, v8

    add-int/2addr v0, v7

    .line 28
    iget-boolean v7, p0, Lnet/simonvt/menudrawer/MenuDrawer;->F:Z

    if-eqz v7, :cond_b

    int-to-float v7, v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    .line 29
    iget v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->E:F

    mul-float v0, v0, v6

    add-float/2addr v0, v7

    float-to-int v0, v0

    :cond_b
    add-int/2addr v4, v0

    :goto_3
    move v6, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 30
    :goto_4
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_f

    if-eq v10, v2, :cond_e

    if-eq v10, v8, :cond_d

    if-eq v10, v9, :cond_c

    goto :goto_5

    .line 31
    :cond_c
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Ln56;->C0(Landroid/view/View;)I

    move-result v0

    add-int v6, v0, v1

    goto :goto_5

    .line 32
    :cond_d
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Ln56;->U0(Landroid/view/View;)I

    move-result v7

    add-int v4, v7, v5

    goto :goto_5

    .line 33
    :cond_e
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Ln56;->Y0(Landroid/view/View;)I

    move-result v6

    sub-int v0, v6, v1

    goto :goto_5

    .line 34
    :cond_f
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Ln56;->O0(Landroid/view/View;)I

    move-result v4

    sub-int v7, v4, v5

    .line 35
    :goto_5
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 36
    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 37
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 38
    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 41
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_12

    if-eq v0, v2, :cond_12

    if-eq v0, v8, :cond_11

    if-eq v0, v9, :cond_10

    const/4 v0, 0x0

    goto :goto_6

    .line 42
    :cond_10
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 43
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_6

    .line 44
    :cond_11
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v3, v0, v1

    .line 45
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_6

    .line 46
    :cond_12
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 47
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 48
    :goto_6
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->k:Landroid/graphics/Bitmap;

    int-to-float v2, v3

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    return-void
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 3
    sget-object v0, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer:[I

    sget v1, Lnet/simonvt/menudrawer/R$attr;->menuDrawerStyle:I

    sget v2, Lnet/simonvt/menudrawer/R$style;->Widget_MenuDrawer:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    sget v0, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdContentBackground:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    sget v1, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdMenuBackground:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdMenuSize:I

    const/16 v3, 0xf0

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->c(I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    .line 7
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdActiveIndicator:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->k:Landroid/graphics/Bitmap;

    .line 9
    :cond_0
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdDropShadowEnabled:I

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->f:Z

    .line 10
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdDropShadow:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Landroid/graphics/drawable/Drawable;

    const/high16 v4, -0x1000000

    if-nez v2, :cond_1

    .line 11
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdDropShadowColor:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->g:I

    goto :goto_0

    .line 12
    :cond_1
    iput-boolean v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->i:Z

    .line 13
    :goto_0
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdDropShadowSize:I

    const/4 v5, 0x6

    .line 14
    invoke-virtual {p0, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->c(I)I

    move-result v5

    .line 15
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:I

    .line 16
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdTouchBezelSize:I

    const/16 v5, 0x18

    .line 17
    invoke-virtual {p0, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->c(I)I

    move-result v5

    .line 18
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:I

    .line 19
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdAllowIndicatorAnimation:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->n:Z

    .line 20
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdMaxAnimationDuration:I

    const/16 v5, 0x258

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->H:I

    .line 21
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdSlideDrawable:I

    const/4 v5, -0x1

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 22
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->setSlideDrawable(I)V

    .line 23
    :cond_2
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdDrawerOpenUpContentDescription:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->O:I

    .line 24
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdDrawerClosedUpContentDescription:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->P:I

    .line 25
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdDrawOverlay:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->W:Z

    .line 26
    sget v2, Lnet/simonvt/menudrawer/R$styleable;->MenuDrawer_mdPosition:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 27
    sget-object v2, Lns7;->l:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lns7;

    .line 28
    invoke-direct {p0, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->setPosition(Lns7;)V

    .line 29
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    new-instance p2, Lnet/simonvt/menudrawer/NoClickThroughFrameLayout;

    invoke-direct {p2, p1}, Lnet/simonvt/menudrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 31
    sget p3, Lnet/simonvt/menudrawer/R$id;->md__menu:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 32
    iget-object p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    new-instance p2, Lnet/simonvt/menudrawer/NoClickThroughFrameLayout;

    invoke-direct {p2, p1}, Lnet/simonvt/menudrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 34
    sget p1, Lnet/simonvt/menudrawer/R$id;->md__content:I

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 35
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    new-instance p1, Lks7;

    invoke-direct {p1, v4}, Lks7;-><init>(I)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:Landroid/graphics/drawable/Drawable;

    .line 37
    new-instance p1, Lls7;

    sget-object p2, Lnet/simonvt/menudrawer/MenuDrawer;->b0:Landroid/view/animation/Interpolator;

    invoke-direct {p1, p2}, Lls7;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Lls7;

    return-void
.end method

.method public abstract f()Z
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public g(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAllowIndicatorAnimation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->n:Z

    return v0
.end method

.method public getContentContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    return-object v0
.end method

.method public getDrawOverlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->W:Z

    return v0
.end method

.method public getDrawerState()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    return v0
.end method

.method public getDropShadow()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
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
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0

    .line 5
    :cond_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public getMenuContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    return-object v0
.end method

.method public getMenuSize()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    return v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Landroid/view/View;

    return-object v0
.end method

.method public abstract getOffsetMenuEnabled()Z
.end method

.method public getPosition()Lns7;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 2
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->Q:Lns7;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->Q:Lns7;

    return-object v0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 4
    sget-object v0, Lns7;->f:Lns7;

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lns7;->h:Lns7;

    return-object v0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 6
    sget-object v0, Lns7;->h:Lns7;

    return-object v0

    .line 7
    :cond_3
    sget-object v0, Lns7;->f:Lns7;

    return-object v0
.end method

.method public abstract getTouchBezelSize()I
.end method

.method public abstract getTouchMode()I
.end method

.method public abstract h(I)V
.end method

.method public abstract i(Z)V
.end method

.method public j(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:Landroid/os/Bundle;

    return-void
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract l(Z)V
.end method

.method public m()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Ln56;->C0(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 8
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Ln56;->U0(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 9
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 12
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Ln56;->Y0(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 13
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 16
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Ln56;->O0(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 17
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:I

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->a0:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->a0:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    sget v0, Lnet/simonvt/menudrawer/R$id;->mdMenu:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuView(Landroid/view/View;)V

    .line 5
    :cond_0
    sget v0, Lnet/simonvt/menudrawer/R$id;->mdContent:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setContentView(Landroid/view/View;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Menu and content view added in xml must have id\'s @id/mdMenu and @id/mdContent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget-object p1, p1, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->e:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->j(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->g:I

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowColor(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lns7;

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lns7;

    .line 5
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->J:Lqs7;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_0
    iput-boolean v1, v0, Lqs7;->h:Z

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    invoke-direct {v1, v0}, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:Landroid/os/Bundle;

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->k(Landroid/os/Bundle;)V

    .line 5
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:Landroid/os/Bundle;

    iput-object v0, v1, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->e:Landroid/os/Bundle;

    return-object v1
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActiveView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setActiveView(Landroid/view/View;I)V

    return-void
.end method

.method public setActiveView(Landroid/view/View;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:Landroid/view/View;

    .line 3
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:Landroid/view/View;

    .line 4
    iput p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->m:I

    .line 5
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->n:Z

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getIndicatorStartPos()I

    move-result p1

    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->F:Z

    .line 8
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Lls7;

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p1, Lls7;->h:Z

    const/16 p2, 0x320

    .line 10
    iput p2, p1, Lls7;->e:I

    .line 11
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lls7;->d:J

    const/4 p2, 0x0

    .line 12
    iput p2, p1, Lls7;->a:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 13
    iput p2, p1, Lls7;->b:F

    .line 14
    iput p2, p1, Lls7;->g:F

    .line 15
    iget v0, p1, Lls7;->e:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p1, Lls7;->f:F

    .line 16
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->a()V

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setAllowIndicatorAnimation(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->n:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->n:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->E:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->F:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDrawOverlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->W:Z

    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:Lss7;

    if-eqz v0, :cond_2

    .line 2
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->L:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->J:Lqs7;

    .line 4
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->O:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->P:I

    .line 5
    :goto_0
    invoke-virtual {v0, p1, v1}, Lss7;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->K:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lss7;->a(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setupUpIndicator(Activity) has not been called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDrawerState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    .line 3
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->y:Lnet/simonvt/menudrawer/MenuDrawer$c;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lnet/simonvt/menudrawer/MenuDrawer$c;->b(II)V

    :cond_0
    return-void
.end method

.method public setDropShadow(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadow(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDropShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->i:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setDropShadowColor(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v0

    const v1, 0xffffff

    and-int/2addr v1, p1

    .line 2
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput v1, v3, p1

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setDropShadowEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->f:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setDropShadowSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public abstract setHardwareLayerEnabled(Z)V
.end method

.method public setMaxAnimationDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->H:I

    return-void
.end method

.method public abstract setMenuSize(I)V
.end method

.method public setMenuView(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setMenuView(Landroid/view/View;)V
    .locals 2

    .line 4
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 7
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public abstract setOffsetMenuEnabled(Z)V
.end method

.method public setOffsetPixels(F)V
    .locals 7

    .line 1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    float-to-int v0, v0

    float-to-int v1, p1

    .line 2
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:F

    .line 3
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->J:Lqs7;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 5
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->J:Lqs7;

    .line 6
    iput p1, v2, Lqs7;->f:F

    .line 7
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->O:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->P:I

    .line 9
    :goto_0
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->L:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:Lss7;

    if-eqz v2, :cond_1

    iget v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->N:I

    if-eq p1, v5, :cond_1

    .line 10
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->N:I

    .line 11
    iget-object v5, v2, Lss7;->b:Ljava/lang/Object;

    iget-object v2, v2, Lss7;->a:Landroid/app/Activity;

    .line 12
    check-cast v5, Lts7$a;

    .line 13
    iget-object v6, v5, Lts7$a;->a:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    .line 14
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 15
    iget-object v5, v5, Lts7$a;->b:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :cond_1
    :goto_1
    if-eq v1, v0, :cond_3

    .line 16
    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->h(I)V

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 17
    :cond_2
    iput-boolean v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    .line 18
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 19
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->y:Lnet/simonvt/menudrawer/MenuDrawer$c;

    if-eqz v0, :cond_3

    .line 20
    invoke-interface {v0, p1, v1}, Lnet/simonvt/menudrawer/MenuDrawer$c;->a(FI)V

    :cond_3
    return-void
.end method

.method public setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/MenuDrawer$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->y:Lnet/simonvt/menudrawer/MenuDrawer$c;

    return-void
.end method

.method public setOnInterceptMoveEventListener(Lnet/simonvt/menudrawer/MenuDrawer$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->I:Lnet/simonvt/menudrawer/MenuDrawer$d;

    return-void
.end method

.method public setSlideDrawable(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setSlideDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSlideDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2
    new-instance v0, Lqs7;

    invoke-direct {v0, p1}, Lqs7;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->J:Lqs7;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, v0, Lqs7;->h:Z

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:Lss7;

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p1, Lss7;->a:Landroid/app/Activity;

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 10
    :cond_1
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->L:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:Lss7;

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->J:Lqs7;

    .line 12
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->O:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->P:I

    .line 13
    :goto_1
    invoke-virtual {p1, v0, v1}, Lss7;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    return-void
.end method

.method public abstract setTouchBezelSize(I)V
.end method

.method public abstract setTouchMode(I)V
.end method

.method public setupUpIndicator(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:Lss7;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lss7;

    invoke-direct {v0, p1}, Lss7;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:Lss7;

    .line 3
    sget-object v0, Lts7;->a:[I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->K:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->L:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:Lss7;

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->J:Lqs7;

    .line 9
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->O:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->P:I

    .line 10
    :goto_0
    invoke-virtual {p1, v0, v1}, Lss7;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    return-void
.end method
