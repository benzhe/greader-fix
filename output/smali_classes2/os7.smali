.class public Los7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:[F

.field public static p:F

.field public static q:F


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:Z

.field public m:Landroid/view/animation/Interpolator;

.field public final n:F


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    const/16 v0, 0x65

    new-array v0, v0, [F

    .line 2
    sput-object v0, Los7;->o:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    const/high16 v3, 0x3f800000    # 1.0f

    if-gt v1, v2, :cond_2

    int-to-float v2, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, v2, v4

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    sub-float v5, v2, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v5

    sub-float v7, v3, v5

    mul-float v6, v6, v7

    const v8, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v8

    const v8, 0x3f19999a    # 0.6f

    mul-float v8, v8, v5

    add-float/2addr v8, v7

    mul-float v8, v8, v6

    mul-float v7, v5, v5

    mul-float v7, v7, v5

    add-float/2addr v8, v7

    sub-float v9, v8, v4

    .line 3
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v9, v11

    if-gez v13, :cond_0

    add-float/2addr v6, v7

    .line 4
    sget-object v2, Los7;->o:[F

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v6, v8, v4

    if-lez v6, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_1

    .line 5
    :cond_2
    sget-object v0, Los7;->o:[F

    aput v3, v0, v2

    const/high16 v0, 0x41000000    # 8.0f

    .line 6
    sput v0, Los7;->p:F

    .line 7
    sput v3, Los7;->q:F

    .line 8
    invoke-static {v3}, Los7;->d(F)F

    move-result v0

    div-float/2addr v3, v0

    sput v3, Los7;->q:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Los7;->l:Z

    .line 4
    iput-object p2, p0, Los7;->m:Landroid/view/animation/Interpolator;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float p1, p1, p2

    iput p1, p0, Los7;->n:F

    .line 6
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    return-void
.end method

.method public static d(F)F
    .locals 4

    .line 1
    sget v0, Los7;->p:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v1, v1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const v1, 0x3ebc5ab2

    sub-float p0, v0, p0

    float-to-double v2, p0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float p0, v2

    const v2, 0x3f21d2a7

    invoke-static {v0, p0, v2, v1}, Ljo;->a(FFFF)F

    move-result p0

    .line 4
    :goto_0
    sget v0, Los7;->q:F

    mul-float p0, p0, v0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget v0, p0, Los7;->c:I

    iput v0, p0, Los7;->e:I

    .line 2
    iget v0, p0, Los7;->d:I

    iput v0, p0, Los7;->f:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Los7;->l:Z

    return-void
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Los7;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Los7;->g:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 3
    iget v0, p0, Los7;->h:I

    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    int-to-float v0, v1

    .line 4
    iget v1, p0, Los7;->i:F

    mul-float v0, v0, v1

    .line 5
    iget-object v1, p0, Los7;->m:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1

    .line 6
    invoke-static {v0}, Los7;->d(F)F

    move-result v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 8
    :goto_0
    iget v1, p0, Los7;->a:I

    iget v3, p0, Los7;->j:F

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Los7;->e:I

    .line 9
    iget v1, p0, Los7;->b:I

    iget v3, p0, Los7;->k:F

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Los7;->f:I

    goto :goto_1

    .line 10
    :cond_2
    iget v0, p0, Los7;->c:I

    iput v0, p0, Los7;->e:I

    .line 11
    iget v0, p0, Los7;->d:I

    iput v0, p0, Los7;->f:I

    .line 12
    iput-boolean v2, p0, Los7;->l:Z

    :goto_1
    return v2
.end method

.method public c(IIIII)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Los7;->l:Z

    .line 2
    iput p5, p0, Los7;->h:I

    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Los7;->g:J

    .line 4
    iput p1, p0, Los7;->a:I

    .line 5
    iput p2, p0, Los7;->b:I

    add-int/2addr p1, p3

    .line 6
    iput p1, p0, Los7;->c:I

    add-int/2addr p2, p4

    .line 7
    iput p2, p0, Los7;->d:I

    int-to-float p1, p3

    .line 8
    iput p1, p0, Los7;->j:F

    int-to-float p1, p4

    .line 9
    iput p1, p0, Los7;->k:F

    .line 10
    iget p1, p0, Los7;->h:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Los7;->i:F

    return-void
.end method
