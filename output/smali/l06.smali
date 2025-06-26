.class public Ll06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll06$b;
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:Landroid/view/View;

.field public j:Ll06$b;

.field public k:I

.field public l:F

.field public m:F

.field public n:Z

.field public o:I

.field public p:Ljava/lang/Object;

.field public q:Landroid/view/VelocityTracker;

.field public r:F


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Ll06$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ll06;->k:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Ll06;->e:I

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Ll06;->f:I

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Ll06;->g:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ll06;->h:J

    .line 8
    iput-object p1, p0, Ll06;->i:Landroid/view/View;

    .line 9
    iput-object p2, p0, Ll06;->p:Ljava/lang/Object;

    .line 10
    iput-object p3, p0, Ll06;->j:Ll06$b;

    return-void
.end method


# virtual methods
.method public final a(FFLandroid/animation/AnimatorListenerAdapter;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ll06;->b()F

    move-result v2

    sub-float v3, p1, v2

    .line 2
    iget-object p1, p0, Ll06;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float v5, p2, v4

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4
    iget-wide v0, p0, Ll06;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance p2, Ll06$a;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ll06$a;-><init>(Ll06;FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b()F
    .locals 1

    .line 1
    iget-object v0, p0, Ll06;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public c(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll06;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget p1, p0, Ll06;->r:F

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2
    iget p1, p0, Ll06;->k:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Ll06;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Ll06;->k:I

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_15

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eq p1, v5, :cond_7

    const/4 v6, 0x3

    if-eq p1, v1, :cond_3

    if-eq p1, v6, :cond_1

    goto/16 :goto_8

    .line 5
    :cond_1
    iget-object p1, p0, Ll06;->q:Landroid/view/VelocityTracker;

    if-nez p1, :cond_2

    goto/16 :goto_8

    .line 6
    :cond_2
    invoke-virtual {p0, v0, v4, v3}, Ll06;->a(FFLandroid/animation/AnimatorListenerAdapter;)V

    .line 7
    iget-object p1, p0, Ll06;->q:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    iput-object v3, p0, Ll06;->q:Landroid/view/VelocityTracker;

    .line 9
    iput v0, p0, Ll06;->r:F

    .line 10
    iput v0, p0, Ll06;->l:F

    .line 11
    iput v0, p0, Ll06;->m:F

    .line 12
    iput-boolean v2, p0, Ll06;->n:Z

    goto/16 :goto_8

    .line 13
    :cond_3
    iget-object p1, p0, Ll06;->q:Landroid/view/VelocityTracker;

    if-nez p1, :cond_4

    goto/16 :goto_8

    .line 14
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Ll06;->l:F

    sub-float/2addr p1, v1

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Ll06;->m:F

    sub-float/2addr v1, v3

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p0, Ll06;->e:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v3, v3, v7

    if-lez v3, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v8

    cmpg-float v1, v1, v3

    if-gez v1, :cond_6

    .line 18
    iput-boolean v5, p0, Ll06;->n:Z

    cmpl-float v1, p1, v0

    if-lez v1, :cond_5

    .line 19
    iget v1, p0, Ll06;->e:I

    goto :goto_0

    :cond_5
    iget v1, p0, Ll06;->e:I

    neg-int v1, v1

    :goto_0
    iput v1, p0, Ll06;->o:I

    .line 20
    iget-object v1, p0, Ll06;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 21
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v6

    .line 23
    invoke-virtual {v1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 24
    iget-object p2, p0, Ll06;->i:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 26
    :cond_6
    iget-boolean p2, p0, Ll06;->n:Z

    if-eqz p2, :cond_14

    .line 27
    iput p1, p0, Ll06;->r:F

    .line 28
    iget p2, p0, Ll06;->o:I

    int-to-float p2, p2

    sub-float p2, p1, p2

    invoke-virtual {p0, p2}, Ll06;->c(F)V

    .line 29
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v8

    iget p2, p0, Ll06;->k:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    sub-float p1, v4, p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 30
    iget-object p2, p0, Ll06;->i:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return v5

    .line 31
    :cond_7
    iget-object p1, p0, Ll06;->q:Landroid/view/VelocityTracker;

    if-nez p1, :cond_8

    goto/16 :goto_8

    .line 32
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v6, p0, Ll06;->l:F

    sub-float/2addr p1, v6

    .line 33
    iget-object v6, p0, Ll06;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 34
    iget-object p2, p0, Ll06;->q:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {p2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 35
    iget-object p2, p0, Ll06;->q:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 36
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 37
    iget-object v7, p0, Ll06;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 38
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Ll06;->k:I

    div-int/2addr v9, v1

    int-to-float v1, v9

    cmpl-float v1, v8, v1

    if-lez v1, :cond_a

    iget-boolean v1, p0, Ll06;->n:Z

    if-eqz v1, :cond_a

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    goto :goto_5

    .line 39
    :cond_a
    iget v1, p0, Ll06;->f:I

    int-to-float v1, v1

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_f

    iget v1, p0, Ll06;->g:I

    int-to-float v1, v1

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_f

    cmpg-float v1, v7, v6

    if-gez v1, :cond_f

    if-gez v1, :cond_f

    iget-boolean v1, p0, Ll06;->n:Z

    if-eqz v1, :cond_f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_b

    const/4 p2, 0x1

    goto :goto_1

    :cond_b
    const/4 p2, 0x0

    :goto_1
    cmpg-float p1, p1, v0

    if-gez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_2

    :cond_c
    const/4 p1, 0x0

    :goto_2
    if-ne p2, p1, :cond_d

    const/4 p1, 0x1

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    .line 40
    :goto_3
    iget-object p2, p0, Ll06;->q:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    :goto_4
    move v10, v5

    move v5, p1

    move p1, v10

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_11

    if-eqz p1, :cond_10

    .line 41
    iget p1, p0, Ll06;->k:I

    goto :goto_6

    :cond_10
    iget p1, p0, Ll06;->k:I

    neg-int p1, p1

    :goto_6
    int-to-float p1, p1

    .line 42
    new-instance p2, Lk06;

    invoke-direct {p2, p0}, Lk06;-><init>(Ll06;)V

    invoke-virtual {p0, p1, v0, p2}, Ll06;->a(FFLandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_7

    .line 43
    :cond_11
    iget-boolean p1, p0, Ll06;->n:Z

    if-eqz p1, :cond_12

    .line 44
    invoke-virtual {p0, v0, v4, v3}, Ll06;->a(FFLandroid/animation/AnimatorListenerAdapter;)V

    .line 45
    :cond_12
    :goto_7
    iget-object p1, p0, Ll06;->q:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_13

    .line 46
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 47
    :cond_13
    iput-object v3, p0, Ll06;->q:Landroid/view/VelocityTracker;

    .line 48
    iput v0, p0, Ll06;->r:F

    .line 49
    iput v0, p0, Ll06;->l:F

    .line 50
    iput v0, p0, Ll06;->m:F

    .line 51
    iput-boolean v2, p0, Ll06;->n:Z

    :cond_14
    :goto_8
    return v2

    .line 52
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Ll06;->l:F

    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Ll06;->m:F

    .line 54
    iget-object p1, p0, Ll06;->j:Ll06$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Ll06;->q:Landroid/view/VelocityTracker;

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return v2
.end method
