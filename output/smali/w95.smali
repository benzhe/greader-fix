.class public final Lw95;
.super Lq95;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq95<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:[I

.field public static final m:[I

.field public static final n:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lw95;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public final e:[Landroid/view/animation/Interpolator;

.field public final f:Lg95;

.field public g:I

.field public h:Z

.field public i:F

.field public j:Z

.field public k:Loi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lw95;->l:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lw95;->m:[I

    .line 3
    new-instance v0, Lw95$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lw95$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lw95;->n:Landroid/util/Property;

    return-void

    nop

    :array_0
    .array-data 4
        0x215
        0x237
        0x352
        0x2ee
    .end array-data

    :array_1
    .array-data 4
        0x4f3
        0x3e8
        0x14d
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lq95;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lw95;->g:I

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lw95;->k:Loi;

    .line 4
    iput-object p2, p0, Lw95;->f:Lg95;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/view/animation/Interpolator;

    .line 5
    sget v2, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_head_interpolator:I

    .line 6
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    .line 7
    sget v2, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_tail_interpolator:I

    .line 8
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, p2, v1

    .line 9
    sget v1, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_head_interpolator:I

    .line 10
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x3

    .line 11
    sget v1, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_tail_interpolator:I

    .line 12
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    aput-object p1, p2, v0

    .line 13
    iput-object p2, p0, Lw95;->e:[Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lw95;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw95;->h()V

    return-void
.end method

.method public d(Loi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw95;->k:Loi;

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq95;->a:Lr95;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lw95;->j:Z

    .line 3
    iget-object v0, p0, Lw95;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lw95;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw95;->d:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lw95;->n:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lw95;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x708

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object v0, p0, Lw95;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lw95;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lw95;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Lv95;

    invoke-direct {v1, p0}, Lv95;-><init>(Lw95;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lw95;->h()V

    .line 8
    iget-object v0, p0, Lw95;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lw95;->k:Loi;

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lw95;->g:I

    .line 2
    iget-object v1, p0, Lw95;->f:Lg95;

    iget-object v1, v1, Lg95;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lq95;->a:Lr95;

    .line 3
    iget v2, v2, Lo95;->n:I

    .line 4
    invoke-static {v1, v2}, Lc50;->H(II)I

    move-result v1

    .line 5
    iget-object v2, p0, Lq95;->c:[I

    aput v1, v2, v0

    const/4 v0, 0x1

    .line 6
    aput v1, v2, v0

    return-void
.end method
