.class public Ljb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljb$c;
    }
.end annotation


# static fields
.field public static final w:Landroid/view/animation/Interpolator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:I

.field public l:Landroid/view/VelocityTracker;

.field public m:F

.field public n:F

.field public o:I

.field public p:I

.field public q:Landroid/widget/OverScroller;

.field public final r:Ljb$c;

.field public s:Landroid/view/View;

.field public t:Z

.field public final u:Landroid/view/ViewGroup;

.field public final v:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljb$a;

    invoke-direct {v0}, Ljb$a;-><init>()V

    sput-object v0, Ljb;->w:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljb$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ljb;->c:I

    .line 3
    new-instance v0, Ljb$b;

    invoke-direct {v0, p0}, Ljb$b;-><init>(Ljb;)V

    iput-object v0, p0, Ljb;->v:Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    .line 4
    iput-object p2, p0, Ljb;->u:Landroid/view/ViewGroup;

    .line 5
    iput-object p3, p0, Ljb;->r:Ljb$c;

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p3, p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 8
    iput p3, p0, Ljb;->o:I

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Ljb;->b:I

    .line 10
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Ljb;->m:F

    .line 11
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Ljb;->n:F

    .line 12
    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Ljb;->w:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Ljb;->q:Landroid/widget/OverScroller;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static k(Landroid/view/ViewGroup;FLjb$c;)Ljb;
    .locals 2

    .line 1
    new-instance v0, Ljb;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Ljb;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljb$c;)V

    .line 2
    iget p0, v0, Ljb;->b:I

    int-to-float p0, p0

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    mul-float p2, p2, p0

    float-to-int p0, p2

    iput p0, v0, Ljb;->b:I

    return-object v0
.end method


# virtual methods
.method public A(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ljb;->s:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Ljb;->c:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Ljb;->r:Ljb$c;

    invoke-virtual {v0, p1, p2}, Ljb$c;->l(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iput p2, p0, Ljb;->c:I

    .line 4
    invoke-virtual {p0, p1, p2}, Ljb;->c(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljb;->b()V

    .line 2
    iget v0, p0, Ljb;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 4
    iget-object v1, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 5
    iget-object v2, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 6
    iget-object v2, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    .line 7
    iget-object v2, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    .line 8
    iget-object v3, p0, Ljb;->r:Ljb$c;

    iget-object v4, p0, Ljb;->s:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Ljb$c;->j(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Ljb;->w(I)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Ljb;->c:I

    .line 2
    iget-object v0, p0, Ljb;->d:[F

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 4
    iget-object v0, p0, Ljb;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 5
    iget-object v0, p0, Ljb;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 6
    iget-object v0, p0, Ljb;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 7
    iget-object v0, p0, Ljb;->h:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 8
    iget-object v0, p0, Ljb;->i:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 9
    iget-object v0, p0, Ljb;->j:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 10
    iput v1, p0, Ljb;->k:I

    .line 11
    :goto_0
    iget-object v0, p0, Ljb;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Ljb;->l:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Ljb;->u:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Ljb;->s:Landroid/view/View;

    .line 3
    iput p2, p0, Ljb;->c:I

    .line 4
    iget-object v0, p0, Ljb;->r:Ljb$c;

    invoke-virtual {v0, p1, p2}, Ljb$c;->h(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ljb;->w(I)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Ljb;->u:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(FFII)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 3
    iget-object v0, p0, Ljb;->h:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    iget v0, p0, Ljb;->p:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljb;->j:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget-object v0, p0, Ljb;->i:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget v0, p0, Ljb;->b:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    .line 4
    iget-object p2, p0, Ljb;->r:Ljb$c;

    invoke-virtual {p2, p4}, Ljb$c;->f(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p0, Ljb;->j:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    return v1

    .line 6
    :cond_1
    iget-object p2, p0, Ljb;->i:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Ljb;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final e(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Ljb;->r:Ljb$c;

    invoke-virtual {v1, p1}, Ljb$c;->c(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Ljb;->r:Ljb$c;

    invoke-virtual {v3, p1}, Ljb$c;->d(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p3, p2

    .line 3
    iget p1, p0, Ljb;->b:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    if-eqz v1, :cond_6

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Ljb;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_7

    .line 5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Ljb;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public final f(FFF)F
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    return v1

    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method public final g(III)I
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljb;->d:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljb;->o(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ljb;->d:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 3
    iget-object v0, p0, Ljb;->e:[F

    aput v1, v0, p1

    .line 4
    iget-object v0, p0, Ljb;->f:[F

    aput v1, v0, p1

    .line 5
    iget-object v0, p0, Ljb;->g:[F

    aput v1, v0, p1

    .line 6
    iget-object v0, p0, Ljb;->h:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 7
    iget-object v0, p0, Ljb;->i:[I

    aput v1, v0, p1

    .line 8
    iget-object v0, p0, Ljb;->j:[I

    aput v1, v0, p1

    .line 9
    iget v0, p0, Ljb;->k:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Ljb;->k:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(III)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Ljb;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 2
    div-int/lit8 v1, v0, 0x2

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const v3, 0x3ef1463b

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v2, v1

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v2, p2

    .line 6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public j(Z)Z
    .locals 11

    .line 1
    iget v0, p0, Ljb;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 2
    iget-object v0, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 3
    iget-object v3, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 4
    iget-object v4, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .line 5
    iget-object v4, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    .line 6
    iget-object v4, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_0

    .line 7
    iget-object v4, p0, Ljb;->s:Landroid/view/View;

    invoke-static {v4, v8}, Lha;->l(Landroid/view/View;I)V

    :cond_0
    if-eqz v9, :cond_1

    .line 8
    iget-object v4, p0, Ljb;->s:Landroid/view/View;

    invoke-static {v4, v9}, Lha;->m(Landroid/view/View;I)V

    :cond_1
    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    .line 9
    :cond_2
    iget-object v4, p0, Ljb;->r:Ljb$c;

    iget-object v5, p0, Ljb;->s:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Ljb$c;->j(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v0, :cond_4

    .line 10
    iget-object v4, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_4

    .line 11
    iget-object v0, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    :cond_4
    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Ljb;->u:Landroid/view/ViewGroup;

    iget-object v0, p0, Ljb;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0, v2}, Ljb;->w(I)V

    .line 14
    :cond_6
    :goto_0
    iget p1, p0, Ljb;->a:I

    if-ne p1, v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method public final l(FF)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ljb;->t:Z

    .line 2
    iget-object v1, p0, Ljb;->r:Ljb$c;

    iget-object v2, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Ljb$c;->k(Landroid/view/View;FF)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ljb;->t:Z

    .line 4
    iget p2, p0, Ljb;->a:I

    if-ne p2, v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Ljb;->w(I)V

    :cond_0
    return-void
.end method

.method public m(II)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Ljb;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Ljb;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Ljb;->r:Ljb$c;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(IIII)Z
    .locals 9

    .line 1
    iget-object v0, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2
    iget-object v0, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 3
    iget-object p1, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljb;->w(I)V

    return p1

    .line 5
    :cond_0
    iget-object p1, p0, Ljb;->s:Landroid/view/View;

    .line 6
    iget p2, p0, Ljb;->n:F

    float-to-int p2, p2

    iget v0, p0, Ljb;->m:F

    float-to-int v0, v0

    invoke-virtual {p0, p3, p2, v0}, Ljb;->g(III)I

    move-result p2

    .line 7
    iget p3, p0, Ljb;->n:F

    float-to-int p3, p3

    iget v0, p0, Ljb;->m:F

    float-to-int v0, v0

    invoke-virtual {p0, p4, p3, v0}, Ljb;->g(III)I

    move-result p3

    .line 8
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    .line 9
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 10
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 11
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int v7, v1, v6

    add-int v8, p4, v0

    if-eqz p2, :cond_1

    int-to-float p4, v1

    int-to-float v1, v7

    goto :goto_0

    :cond_1
    int-to-float p4, p4

    int-to-float v1, v8

    :goto_0
    div-float/2addr p4, v1

    if-eqz p3, :cond_2

    int-to-float v0, v6

    int-to-float v1, v7

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    int-to-float v1, v8

    :goto_1
    div-float/2addr v0, v1

    .line 12
    iget-object v1, p0, Ljb;->r:Ljb$c;

    invoke-virtual {v1, p1}, Ljb$c;->c(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v4, p2, v1}, Ljb;->i(III)I

    move-result p2

    .line 13
    iget-object v1, p0, Ljb;->r:Ljb$c;

    invoke-virtual {v1, p1}, Ljb$c;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, v5, p3, p1}, Ljb;->i(III)I

    move-result p1

    int-to-float p2, p2

    mul-float p2, p2, p4

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p1, p2

    float-to-int v6, p1

    .line 14
    iget-object v1, p0, Ljb;->q:Landroid/widget/OverScroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1}, Ljb;->w(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public o(I)Z
    .locals 2

    .line 1
    iget v0, p0, Ljb;->k:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final p(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljb;->o(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for this pointer before ACTION_MOVE. It likely happened because "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewDragHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public q(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public r(Landroid/view/MotionEvent;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljb;->b()V

    .line 4
    :cond_0
    iget-object v2, p0, Ljb;->l:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Ljb;->l:Landroid/view/VelocityTracker;

    .line 6
    :cond_1
    iget-object v2, p0, Ljb;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    const/4 v3, 0x1

    if-eq v0, v3, :cond_16

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    goto/16 :goto_6

    .line 7
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 8
    iget v1, p0, Ljb;->a:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Ljb;->c:I

    if-ne v0, v1, :cond_6

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_5

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 11
    iget v5, p0, Ljb;->c:I

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    .line 14
    invoke-virtual {p0, v5, v6}, Ljb;->m(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Ljb;->s:Landroid/view/View;

    if-ne v5, v6, :cond_4

    .line 15
    invoke-virtual {p0, v6, v4}, Ljb;->A(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    iget p1, p0, Ljb;->c:I

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    :goto_2
    if-ne p1, v3, :cond_6

    .line 17
    invoke-virtual {p0}, Ljb;->s()V

    .line 18
    :cond_6
    invoke-virtual {p0, v0}, Ljb;->h(I)V

    goto/16 :goto_6

    .line 19
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 22
    invoke-virtual {p0, v2, p1, v0}, Ljb;->u(FFI)V

    .line 23
    iget v1, p0, Ljb;->a:I

    if-nez v1, :cond_8

    float-to-int v1, v2

    float-to-int p1, p1

    .line 24
    invoke-virtual {p0, v1, p1}, Ljb;->m(II)Landroid/view/View;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1, v0}, Ljb;->A(Landroid/view/View;I)Z

    .line 26
    iget-object p1, p0, Ljb;->h:[I

    aget p1, p1, v0

    .line 27
    iget v1, p0, Ljb;->p:I

    and-int v2, p1, v1

    if-eqz v2, :cond_19

    .line 28
    iget-object v2, p0, Ljb;->r:Ljb$c;

    and-int/2addr p1, v1

    invoke-virtual {v2, p1, v0}, Ljb$c;->g(II)V

    goto/16 :goto_6

    :cond_8
    float-to-int v1, v2

    float-to-int p1, p1

    .line 29
    iget-object v2, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {p0, v2, v1, p1}, Ljb;->q(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 30
    iget-object p1, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Ljb;->A(Landroid/view/View;I)Z

    goto/16 :goto_6

    .line 31
    :cond_9
    iget p1, p0, Ljb;->a:I

    if-ne p1, v3, :cond_a

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1, p1}, Ljb;->l(FF)V

    .line 33
    :cond_a
    invoke-virtual {p0}, Ljb;->b()V

    goto/16 :goto_6

    .line 34
    :cond_b
    iget v0, p0, Ljb;->a:I

    if-ne v0, v3, :cond_11

    .line 35
    iget v0, p0, Ljb;->c:I

    invoke-virtual {p0, v0}, Ljb;->p(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_6

    .line 36
    :cond_c
    iget v0, p0, Ljb;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 39
    iget-object v2, p0, Ljb;->f:[F

    iget v3, p0, Ljb;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 40
    iget-object v2, p0, Ljb;->g:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 41
    iget-object v2, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    .line 42
    iget-object v4, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 43
    iget-object v5, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-eqz v1, :cond_d

    .line 44
    iget-object v6, p0, Ljb;->r:Ljb$c;

    iget-object v7, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v6, v7, v2, v1}, Ljb$c;->a(Landroid/view/View;II)I

    move-result v2

    .line 45
    iget-object v6, p0, Ljb;->s:Landroid/view/View;

    sub-int v7, v2, v4

    invoke-static {v6, v7}, Lha;->l(Landroid/view/View;I)V

    :cond_d
    move v10, v2

    if-eqz v0, :cond_e

    .line 46
    iget-object v2, p0, Ljb;->r:Ljb$c;

    iget-object v6, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual {v2, v6, v3, v0}, Ljb$c;->b(Landroid/view/View;II)I

    move-result v3

    .line 47
    iget-object v2, p0, Ljb;->s:Landroid/view/View;

    sub-int v6, v3, v5

    invoke-static {v2, v6}, Lha;->m(Landroid/view/View;I)V

    :cond_e
    move v11, v3

    if-nez v1, :cond_f

    if-eqz v0, :cond_10

    :cond_f
    sub-int v12, v10, v4

    sub-int v13, v11, v5

    .line 48
    iget-object v8, p0, Ljb;->r:Ljb$c;

    iget-object v9, p0, Ljb;->s:Landroid/view/View;

    invoke-virtual/range {v8 .. v13}, Ljb$c;->j(Landroid/view/View;IIII)V

    .line 49
    :cond_10
    invoke-virtual {p0, p1}, Ljb;->v(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 50
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_15

    .line 51
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 52
    invoke-virtual {p0, v1}, Ljb;->p(I)Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_4

    .line 53
    :cond_12
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 54
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 55
    iget-object v6, p0, Ljb;->d:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 56
    iget-object v7, p0, Ljb;->e:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 57
    invoke-virtual {p0, v6, v7, v1}, Ljb;->t(FFI)V

    .line 58
    iget v8, p0, Ljb;->a:I

    if-ne v8, v3, :cond_13

    goto :goto_5

    :cond_13
    float-to-int v4, v4

    float-to-int v5, v5

    .line 59
    invoke-virtual {p0, v4, v5}, Ljb;->m(II)Landroid/view/View;

    move-result-object v4

    .line 60
    invoke-virtual {p0, v4, v6, v7}, Ljb;->e(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 61
    invoke-virtual {p0, v4, v1}, Ljb;->A(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_5

    :cond_14
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 62
    :cond_15
    :goto_5
    invoke-virtual {p0, p1}, Ljb;->v(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 63
    :cond_16
    iget p1, p0, Ljb;->a:I

    if-ne p1, v3, :cond_17

    .line 64
    invoke-virtual {p0}, Ljb;->s()V

    .line 65
    :cond_17
    invoke-virtual {p0}, Ljb;->b()V

    goto :goto_6

    .line 66
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 68
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    .line 69
    invoke-virtual {p0, v2, v3}, Ljb;->m(II)Landroid/view/View;

    move-result-object v2

    .line 70
    invoke-virtual {p0, v0, v1, p1}, Ljb;->u(FFI)V

    .line 71
    invoke-virtual {p0, v2, p1}, Ljb;->A(Landroid/view/View;I)Z

    .line 72
    iget-object v0, p0, Ljb;->h:[I

    aget v0, v0, p1

    .line 73
    iget v1, p0, Ljb;->p:I

    and-int v2, v0, v1

    if-eqz v2, :cond_19

    .line 74
    iget-object v2, p0, Ljb;->r:Ljb$c;

    and-int/2addr v0, v1

    invoke-virtual {v2, v0, p1}, Ljb$c;->g(II)V

    :cond_19
    :goto_6
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljb;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Ljb;->m:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2
    iget-object v0, p0, Ljb;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Ljb;->c:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Ljb;->n:F

    iget v2, p0, Ljb;->m:F

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Ljb;->f(FFF)F

    move-result v0

    .line 5
    iget-object v1, p0, Ljb;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Ljb;->c:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Ljb;->n:F

    iget v3, p0, Ljb;->m:F

    .line 7
    invoke-virtual {p0, v1, v2, v3}, Ljb;->f(FFF)F

    move-result v1

    .line 8
    invoke-virtual {p0, v0, v1}, Ljb;->l(FF)V

    return-void
.end method

.method public final t(FFI)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Ljb;->d(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    .line 2
    invoke-virtual {p0, p2, p1, p3, v1}, Ljb;->d(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, p1, p2, p3, v1}, Ljb;->d(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const/16 v1, 0x8

    .line 4
    invoke-virtual {p0, p2, p1, p3, v1}, Ljb;->d(FFII)Z

    move-result p1

    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    iget-object p1, p0, Ljb;->i:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 6
    iget-object p1, p0, Ljb;->r:Ljb$c;

    invoke-virtual {p1, v0, p3}, Ljb$c;->e(II)V

    :cond_4
    return-void
.end method

.method public final u(FFI)V
    .locals 10

    .line 1
    iget-object v0, p0, Ljb;->d:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p3, :cond_2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    .line 2
    new-array v3, v2, [F

    .line 3
    new-array v4, v2, [F

    .line 4
    new-array v5, v2, [F

    .line 5
    new-array v6, v2, [F

    .line 6
    new-array v7, v2, [I

    .line 7
    new-array v8, v2, [I

    .line 8
    new-array v2, v2, [I

    if-eqz v0, :cond_1

    .line 9
    array-length v9, v0

    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v0, p0, Ljb;->e:[F

    array-length v9, v0

    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v0, p0, Ljb;->f:[F

    array-length v9, v0

    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v0, p0, Ljb;->g:[F

    array-length v9, v0

    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v0, p0, Ljb;->h:[I

    array-length v9, v0

    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v0, p0, Ljb;->i:[I

    array-length v9, v0

    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v0, p0, Ljb;->j:[I

    array-length v9, v0

    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :cond_1
    iput-object v3, p0, Ljb;->d:[F

    .line 17
    iput-object v4, p0, Ljb;->e:[F

    .line 18
    iput-object v5, p0, Ljb;->f:[F

    .line 19
    iput-object v6, p0, Ljb;->g:[F

    .line 20
    iput-object v7, p0, Ljb;->h:[I

    .line 21
    iput-object v8, p0, Ljb;->i:[I

    .line 22
    iput-object v2, p0, Ljb;->j:[I

    .line 23
    :cond_2
    iget-object v0, p0, Ljb;->d:[F

    iget-object v2, p0, Ljb;->f:[F

    aput p1, v2, p3

    aput p1, v0, p3

    .line 24
    iget-object v0, p0, Ljb;->e:[F

    iget-object v2, p0, Ljb;->g:[F

    aput p2, v2, p3

    aput p2, v0, p3

    .line 25
    iget-object v0, p0, Ljb;->h:[I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 26
    iget-object v2, p0, Ljb;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget v3, p0, Ljb;->o:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge p1, v2, :cond_3

    const/4 v1, 0x1

    .line 27
    :cond_3
    iget-object v2, p0, Ljb;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget v4, p0, Ljb;->o:I

    add-int/2addr v2, v4

    if-ge p2, v2, :cond_4

    or-int/lit8 v1, v1, 0x4

    .line 28
    :cond_4
    iget-object v2, p0, Ljb;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget v4, p0, Ljb;->o:I

    sub-int/2addr v2, v4

    if-le p1, v2, :cond_5

    or-int/lit8 v1, v1, 0x2

    .line 29
    :cond_5
    iget-object p1, p0, Ljb;->u:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v2, p0, Ljb;->o:I

    sub-int/2addr p1, v2

    if-le p2, p1, :cond_6

    or-int/lit8 v1, v1, 0x8

    .line 30
    :cond_6
    aput v1, v0, p3

    .line 31
    iget p1, p0, Ljb;->k:I

    shl-int p2, v3, p3

    or-int/2addr p1, p2

    iput p1, p0, Ljb;->k:I

    return-void
.end method

.method public final v(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 3
    invoke-virtual {p0, v2}, Ljb;->p(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 6
    iget-object v5, p0, Ljb;->f:[F

    aput v3, v5, v2

    .line 7
    iget-object v3, p0, Ljb;->g:[F

    aput v4, v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public w(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljb;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Ljb;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget v0, p0, Ljb;->a:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Ljb;->a:I

    .line 4
    iget-object v0, p0, Ljb;->r:Ljb$c;

    invoke-virtual {v0, p1}, Ljb$c;->i(I)V

    .line 5
    iget p1, p0, Ljb;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Ljb;->s:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public x(II)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Ljb;->t:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ljb;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Ljb;->c:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Ljb;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Ljb;->c:I

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 5
    invoke-virtual {p0, p1, p2, v0, v1}, Ljb;->n(IIII)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljb;->b()V

    .line 4
    :cond_0
    iget-object v4, v0, Ljb;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Ljb;->l:Landroid/view/VelocityTracker;

    .line 6
    :cond_1
    iget-object v4, v0, Ljb;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_10

    if-eq v2, v6, :cond_f

    if-eq v2, v4, :cond_6

    const/4 v7, 0x3

    if-eq v2, v7, :cond_f

    const/4 v7, 0x5

    if-eq v2, v7, :cond_4

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    :cond_2
    :goto_0
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 7
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Ljb;->h(I)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 12
    invoke-virtual {v0, v7, v1, v2}, Ljb;->u(FFI)V

    .line 13
    iget v3, v0, Ljb;->a:I

    if-nez v3, :cond_5

    .line 14
    iget-object v1, v0, Ljb;->h:[I

    aget v1, v1, v2

    .line 15
    iget v3, v0, Ljb;->p:I

    and-int v4, v1, v3

    if-eqz v4, :cond_2

    .line 16
    iget-object v4, v0, Ljb;->r:Ljb$c;

    and-int/2addr v1, v3

    invoke-virtual {v4, v1, v2}, Ljb$c;->g(II)V

    goto :goto_0

    :cond_5
    if-ne v3, v4, :cond_2

    float-to-int v3, v7

    float-to-int v1, v1

    .line 17
    invoke-virtual {v0, v3, v1}, Ljb;->m(II)Landroid/view/View;

    move-result-object v1

    .line 18
    iget-object v3, v0, Ljb;->s:Landroid/view/View;

    if-ne v1, v3, :cond_2

    .line 19
    invoke-virtual {v0, v1, v2}, Ljb;->A(Landroid/view/View;I)Z

    goto :goto_0

    .line 20
    :cond_6
    iget-object v2, v0, Ljb;->d:[F

    if-eqz v2, :cond_2

    iget-object v2, v0, Ljb;->e:[F

    if-nez v2, :cond_7

    goto :goto_0

    .line 21
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_e

    .line 22
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 23
    invoke-virtual {v0, v4}, Ljb;->p(I)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_3

    .line 24
    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 25
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 26
    iget-object v9, v0, Ljb;->d:[F

    aget v9, v9, v4

    sub-float v9, v7, v9

    .line 27
    iget-object v10, v0, Ljb;->e:[F

    aget v10, v10, v4

    sub-float v10, v8, v10

    float-to-int v7, v7

    float-to-int v8, v8

    .line 28
    invoke-virtual {v0, v7, v8}, Ljb;->m(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 29
    invoke-virtual {v0, v7, v9, v10}, Ljb;->e(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_b

    .line 30
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    float-to-int v12, v9

    add-int v13, v11, v12

    .line 31
    iget-object v14, v0, Ljb;->r:Ljb$c;

    invoke-virtual {v14, v7, v13, v12}, Ljb$c;->a(Landroid/view/View;II)I

    move-result v12

    .line 32
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    float-to-int v14, v10

    add-int v15, v13, v14

    .line 33
    iget-object v5, v0, Ljb;->r:Ljb$c;

    invoke-virtual {v5, v7, v15, v14}, Ljb$c;->b(Landroid/view/View;II)I

    move-result v5

    .line 34
    iget-object v14, v0, Ljb;->r:Ljb$c;

    invoke-virtual {v14, v7}, Ljb$c;->c(Landroid/view/View;)I

    move-result v14

    .line 35
    iget-object v15, v0, Ljb;->r:Ljb$c;

    invoke-virtual {v15, v7}, Ljb$c;->d(Landroid/view/View;)I

    move-result v15

    if-eqz v14, :cond_a

    if-lez v14, :cond_b

    if-ne v12, v11, :cond_b

    :cond_a
    if-eqz v15, :cond_e

    if-lez v15, :cond_b

    if-ne v5, v13, :cond_b

    goto :goto_4

    .line 36
    :cond_b
    invoke-virtual {v0, v9, v10, v4}, Ljb;->t(FFI)V

    .line 37
    iget v5, v0, Ljb;->a:I

    if-ne v5, v6, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v8, :cond_d

    .line 38
    invoke-virtual {v0, v7, v4}, Ljb;->A(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p1}, Ljb;->v(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 40
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljb;->b()V

    goto/16 :goto_0

    .line 41
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v5, 0x0

    .line 43
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 44
    invoke-virtual {v0, v2, v3, v1}, Ljb;->u(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    .line 45
    invoke-virtual {v0, v2, v3}, Ljb;->m(II)Landroid/view/View;

    move-result-object v2

    .line 46
    iget-object v3, v0, Ljb;->s:Landroid/view/View;

    if-ne v2, v3, :cond_11

    iget v3, v0, Ljb;->a:I

    if-ne v3, v4, :cond_11

    .line 47
    invoke-virtual {v0, v2, v1}, Ljb;->A(Landroid/view/View;I)Z

    .line 48
    :cond_11
    iget-object v2, v0, Ljb;->h:[I

    aget v2, v2, v1

    .line 49
    iget v3, v0, Ljb;->p:I

    and-int v4, v2, v3

    if-eqz v4, :cond_12

    .line 50
    iget-object v4, v0, Ljb;->r:Ljb$c;

    and-int/2addr v2, v3

    invoke-virtual {v4, v2, v1}, Ljb$c;->g(II)V

    .line 51
    :cond_12
    :goto_5
    iget v1, v0, Ljb;->a:I

    if-ne v1, v6, :cond_13

    const/4 v5, 0x1

    :cond_13
    return v5
.end method

.method public z(Landroid/view/View;II)Z
    .locals 0

    .line 1
    iput-object p1, p0, Ljb;->s:Landroid/view/View;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Ljb;->c:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p2, p3, p1, p1}, Ljb;->n(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget p2, p0, Ljb;->a:I

    if-nez p2, :cond_0

    iget-object p2, p0, Ljb;->s:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Ljb;->s:Landroid/view/View;

    :cond_0
    return p1
.end method
