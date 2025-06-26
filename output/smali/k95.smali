.class public final Lk95;
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

.field public static final n:[I

.field public static final o:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lk95;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lk95;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroid/animation/ObjectAnimator;

.field public final f:Luc;

.field public final g:Lg95;

.field public h:I

.field public i:F

.field public j:F

.field public k:Loi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Float;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lk95;->l:[I

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lk95;->m:[I

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lk95;->n:[I

    .line 4
    new-instance v1, Lk95$a;

    const-string v2, "animationFraction"

    invoke-direct {v1, v0, v2}, Lk95$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lk95;->o:Landroid/util/Property;

    .line 5
    new-instance v1, Lk95$b;

    const-string v2, "completeEndFraction"

    invoke-direct {v1, v0, v2}, Lk95$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lk95;->p:Landroid/util/Property;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x546
        0xa8c
        0xfd2
    .end array-data

    :array_1
    .array-data 4
        0x29b
        0x7e1
        0xd27
        0x126d
    .end array-data

    :array_2
    .array-data 4
        0x3e8
        0x92e
        0xe74
        0x13ba
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lq95;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk95;->h:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lk95;->k:Loi;

    .line 4
    iput-object p1, p0, Lk95;->g:Lg95;

    .line 5
    new-instance p1, Luc;

    invoke-direct {p1}, Luc;-><init>()V

    iput-object p1, p0, Lk95;->f:Luc;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk95;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk95;->h()V

    return-void
.end method

.method public d(Loi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk95;->k:Loi;

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk95;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lq95;->a:Lr95;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lk95;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lk95;->a()V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk95;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lk95;->o:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lk95;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1518

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object v0, p0, Lk95;->d:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lk95;->d:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lk95;->d:Landroid/animation/ObjectAnimator;

    new-instance v2, Li95;

    invoke-direct {v2, p0}, Li95;-><init>(Lk95;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lk95;->e:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lk95;->p:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lk95;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 10
    iget-object v0, p0, Lk95;->e:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lk95;->f:Luc;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object v0, p0, Lk95;->e:Landroid/animation/ObjectAnimator;

    new-instance v1, Lj95;

    invoke-direct {v1, p0}, Lj95;-><init>(Lk95;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Lk95;->h()V

    .line 13
    iget-object v0, p0, Lk95;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lk95;->k:Loi;

    return-void
.end method

.method public h()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lk95;->h:I

    .line 2
    iget-object v1, p0, Lq95;->c:[I

    iget-object v2, p0, Lk95;->g:Lg95;

    iget-object v2, v2, Lg95;->c:[I

    aget v2, v2, v0

    iget-object v3, p0, Lq95;->a:Lr95;

    .line 3
    iget v3, v3, Lo95;->n:I

    .line 4
    invoke-static {v2, v3}, Lc50;->H(II)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lk95;->j:F

    return-void
.end method
