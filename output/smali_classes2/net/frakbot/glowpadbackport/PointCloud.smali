.class public Lnet/frakbot/glowpadbackport/PointCloud;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/frakbot/glowpadbackport/PointCloud$Point;,
        Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;,
        Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;
    }
.end annotation


# static fields
.field private static INNER_POINTS:I = 0x8

.field private static final MAX_POINT_SIZE:F = 4.0f

.field private static final MIN_POINT_SIZE:F = 2.0f

.field private static final PI:F = 3.1415927f

.field private static final TAG:Ljava/lang/String; = "PointCloud"


# instance fields
.field public glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mInnerRadius:F

.field private mOuterRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointCloud:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/frakbot/glowpadbackport/PointCloud$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field public waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mScale:F

    .line 4
    new-instance v0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    invoke-direct {v0, p0}, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;-><init>(Lnet/frakbot/glowpadbackport/PointCloud;)V

    iput-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    .line 5
    new-instance v0, Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    invoke-direct {v0, p0}, Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;-><init>(Lnet/frakbot/glowpadbackport/PointCloud;)V

    iput-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 8
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 11
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private static hypot(FF)F
    .locals 0

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p1, p0

    float-to-double p0, p1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private interp(FFF)F
    .locals 0

    invoke-static {p2, p1, p3, p1}, Ljo;->a(FFFF)F

    move-result p1

    return p1
.end method

.method private static max(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget v1, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mScale:F

    iget v2, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mCenterX:F

    iget v3, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mCenterY:F

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/frakbot/glowpadbackport/PointCloud$Point;

    const/high16 v3, 0x40000000    # 2.0f

    .line 6
    iget v4, v2, Lnet/frakbot/glowpadbackport/PointCloud$Point;->radius:F

    iget v5, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mOuterRadius:F

    div-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, v5, v3, v4}, Lnet/frakbot/glowpadbackport/PointCloud;->interp(FFF)F

    move-result v3

    .line 7
    iget v4, v2, Lnet/frakbot/glowpadbackport/PointCloud$Point;->x:F

    iget v6, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mCenterX:F

    add-float/2addr v4, v6

    .line 8
    iget v6, v2, Lnet/frakbot/glowpadbackport/PointCloud$Point;->y:F

    iget v7, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mCenterY:F

    add-float/2addr v6, v7

    .line 9
    invoke-virtual {p0, v2}, Lnet/frakbot/glowpadbackport/PointCloud;->getAlphaForPoint(Lnet/frakbot/glowpadbackport/PointCloud$Point;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v7, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    iget-object v7, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v7, v7, v8

    .line 13
    iget-object v9, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v8

    div-float/2addr v3, v5

    .line 14
    invoke-virtual {p1, v3, v3, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-float/2addr v4, v7

    sub-float/2addr v6, v9

    .line 15
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    iget-object v3, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 17
    iget-object v2, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v5, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    iget-object v2, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlphaForPoint(Lnet/frakbot/glowpadbackport/PointCloud$Point;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    invoke-static {v0}, Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;->access$000(Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;)F

    move-result v0

    iget v1, p1, Lnet/frakbot/glowpadbackport/PointCloud$Point;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    invoke-static {v1}, Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;->access$100(Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;)F

    move-result v1

    iget v2, p1, Lnet/frakbot/glowpadbackport/PointCloud$Point;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lnet/frakbot/glowpadbackport/PointCloud;->hypot(FF)F

    move-result v0

    .line 2
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    invoke-static {v1}, Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;->access$200(Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;)F

    move-result v1

    const v2, 0x3f490fdb

    const/4 v3, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    mul-float v0, v0, v2

    .line 3
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    invoke-static {v1}, Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;->access$200(Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 4
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    invoke-static {v1}, Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;->access$300(Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;)F

    move-result v1

    float-to-double v4, v0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v3, v0}, Lnet/frakbot/glowpadbackport/PointCloud;->max(FF)F

    move-result v0

    mul-float v1, v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v0, p1, Lnet/frakbot/glowpadbackport/PointCloud$Point;->x:F

    iget p1, p1, Lnet/frakbot/glowpadbackport/PointCloud$Point;->y:F

    invoke-static {v0, p1}, Lnet/frakbot/glowpadbackport/PointCloud;->hypot(FF)F

    move-result p1

    .line 6
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    invoke-static {v0}, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->access$400(Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 7
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    invoke-static {v0}, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->access$500(Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;)F

    move-result v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v0, v4

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    mul-float p1, p1, v2

    .line 8
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    invoke-static {v0}, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->access$500(Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;)F

    move-result v0

    div-float/2addr p1, v0

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p1, v4

    .line 9
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    invoke-static {v0}, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->access$600(Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;)F

    move-result v0

    float-to-double v4, p1

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p1, v4

    invoke-static {v3, p1}, Lnet/frakbot/glowpadbackport/PointCloud;->max(FF)F

    move-result p1

    mul-float v3, v0, p1

    .line 10
    :cond_1
    invoke-static {v1, v3}, Lnet/frakbot/glowpadbackport/PointCloud;->max(FF)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getPointsMultiplier()I
    .locals 1

    .line 1
    sget v0, Lnet/frakbot/glowpadbackport/PointCloud;->INNER_POINTS:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mScale:F

    return v0
.end method

.method public makePointCloud(FF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    const-string v1, "PointCloud"

    const-string v2, "Must specify an inner radius"

    .line 1
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iput v2, v0, Lnet/frakbot/glowpadbackport/PointCloud;->mOuterRadius:F

    .line 3
    iput v1, v0, Lnet/frakbot/glowpadbackport/PointCloud;->mInnerRadius:F

    .line 4
    iget-object v3, v0, Lnet/frakbot/glowpadbackport/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sub-float/2addr v2, v1

    const v3, 0x40c90fdb

    mul-float v4, v1, v3

    .line 5
    sget v5, Lnet/frakbot/glowpadbackport/PointCloud;->INNER_POINTS:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float v5, v2, v4

    .line 6
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v6, v5

    div-float/2addr v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-gt v7, v5, :cond_2

    mul-float v8, v1, v3

    div-float/2addr v8, v4

    float-to-int v8, v8

    const v9, 0x3fc90fdb

    int-to-float v10, v8

    div-float v10, v3, v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_1

    float-to-double v12, v1

    float-to-double v14, v9

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move/from16 v18, v4

    mul-double v3, v16, v12

    double-to-float v3, v3

    .line 8
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v12

    double-to-float v4, v14

    add-float/2addr v9, v10

    .line 9
    iget-object v12, v0, Lnet/frakbot/glowpadbackport/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    new-instance v13, Lnet/frakbot/glowpadbackport/PointCloud$Point;

    invoke-direct {v13, v0, v3, v4, v1}, Lnet/frakbot/glowpadbackport/PointCloud$Point;-><init>(Lnet/frakbot/glowpadbackport/PointCloud;FFF)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v18

    const v3, 0x40c90fdb

    goto :goto_1

    :cond_1
    move/from16 v18, v4

    add-int/lit8 v7, v7, 0x1

    add-float/2addr v1, v2

    const v3, 0x40c90fdb

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setCenter(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mCenterX:F

    .line 2
    iput p2, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mCenterY:F

    return-void
.end method

.method public setPointsMultiplier(I)V
    .locals 1

    .line 1
    sput p1, Lnet/frakbot/glowpadbackport/PointCloud;->INNER_POINTS:I

    .line 2
    iget p1, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mInnerRadius:F

    iget v0, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mOuterRadius:F

    invoke-virtual {p0, p1, v0}, Lnet/frakbot/glowpadbackport/PointCloud;->makePointCloud(FF)V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/PointCloud;->mScale:F

    return-void
.end method
