.class public Lcom/google/android/material/slider/BaseSlider$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/slider/BaseSlider;->d(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/slider/BaseSlider;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$b;->a:Lcom/google/android/material/slider/BaseSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$b;->a:Lcom/google/android/material/slider/BaseSlider;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/slider/BaseSlider;->o:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic5;

    const v2, 0x3f99999a    # 1.2f

    .line 5
    iput v2, v1, Lic5;->Q:F

    .line 6
    iput p1, v1, Lic5;->O:F

    .line 7
    iput p1, v1, Lic5;->P:F

    .line 8
    sget-object v2, Li55;->a:Landroid/animation/TimeInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e428f5c    # 0.19f

    const/4 v4, 0x0

    cmpg-float v5, p1, v3

    if-gez v5, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    cmpl-float v5, p1, v2

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    sub-float v3, p1, v3

    const v5, 0x3f4f5c29    # 0.81f

    div-float/2addr v3, v5

    .line 9
    invoke-static {v4, v2, v3}, Li55;->a(FFF)F

    move-result v2

    .line 10
    :goto_1
    iput v2, v1, Lic5;->R:F

    .line 11
    invoke-virtual {v1}, Lla5;->invalidateSelf()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$b;->a:Lcom/google/android/material/slider/BaseSlider;

    .line 13
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
