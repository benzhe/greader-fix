.class public final Lu95;
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
.field public static final j:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lu95;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Luc;

.field public final f:Lg95;

.field public g:I

.field public h:Z

.field public i:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu95$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lu95$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lu95;->j:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lq95;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lu95;->g:I

    .line 3
    iput-object p1, p0, Lu95;->f:Lg95;

    .line 4
    new-instance p1, Luc;

    invoke-direct {p1}, Luc;-><init>()V

    iput-object p1, p0, Lu95;->e:Luc;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu95;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu95;->h()V

    return-void
.end method

.method public d(Loi;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu95;->d:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lu95;->j:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lu95;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object v0, p0, Lu95;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lu95;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lu95;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Lt95;

    invoke-direct {v1, p0}, Lt95;-><init>(Lu95;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lu95;->h()V

    .line 8
    iget-object v0, p0, Lu95;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lu95;->h:Z

    .line 2
    iput v0, p0, Lu95;->g:I

    .line 3
    iget-object v0, p0, Lq95;->c:[I

    iget-object v1, p0, Lu95;->f:Lg95;

    iget-object v1, v1, Lg95;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lq95;->a:Lr95;

    .line 4
    iget v2, v2, Lo95;->n:I

    .line 5
    invoke-static {v1, v2}, Lc50;->H(II)I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method
