.class public Lm0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lm0;


# instance fields
.field public a:J

.field public b:J

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JDD)V
    .locals 15

    move-object v0, p0

    const-wide v1, 0xdc6d62da00L

    sub-long v3, p1, v1

    long-to-float v3, v3

    const v4, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v3, v4

    const v4, 0x3c8ceb25

    mul-float v4, v4, v3

    const v5, 0x40c7ae92

    add-float/2addr v4, v5

    float-to-double v5, v4

    .line 1
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v9, 0x3fa11c5fc0000000L    # 0.03341960161924362

    mul-double v7, v7, v9

    add-double/2addr v7, v5

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v9, v9, v4

    float-to-double v9, v9

    .line 2
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    const-wide v11, 0x3f36e05b00000000L    # 3.4906598739326E-4

    mul-double v9, v9, v11

    add-double/2addr v9, v7

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v4, v4, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v11, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    mul-double v7, v7, v11

    add-double/2addr v7, v9

    const-wide v9, 0x3ffcbed85e1ce332L    # 1.796593063

    add-double/2addr v7, v9

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v7, v9

    move-wide/from16 v9, p5

    neg-double v9, v9

    const-wide v11, 0x4076800000000000L    # 360.0

    div-double/2addr v9, v11

    const v4, 0x3a6bedfa    # 9.0E-4f

    sub-float/2addr v3, v4

    float-to-double v11, v3

    sub-double/2addr v11, v9

    .line 3
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-float v3, v11

    add-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v3, v9

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v9, 0x3f75b573eab367a1L    # 0.0053

    mul-double v5, v5, v9

    add-double/2addr v5, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v3, v3, v7

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide v9, -0x4083bcd35a858794L    # -0.0069

    mul-double v3, v3, v9

    add-double/2addr v3, v5

    .line 6
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v7, 0x3fda31a380000000L    # 0.4092797040939331

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    const-wide v7, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v7, v7, p3

    const-wide v9, -0x4045311600000000L    # -0.10471975803375244

    .line 7
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v13, v13, v11

    sub-double/2addr v9, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v7

    div-double/2addr v9, v5

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v9, v11

    if-ltz v8, :cond_0

    .line 9
    iput v5, v0, Lm0;->c:I

    .line 10
    iput-wide v6, v0, Lm0;->a:J

    .line 11
    iput-wide v6, v0, Lm0;->b:J

    return-void

    :cond_0
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    cmpg-double v13, v9, v11

    if-gtz v13, :cond_1

    .line 12
    iput v8, v0, Lm0;->c:I

    .line 13
    iput-wide v6, v0, Lm0;->a:J

    .line 14
    iput-wide v6, v0, Lm0;->b:J

    return-void

    .line 15
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v6, v9

    double-to-float v6, v6

    float-to-double v6, v6

    add-double v9, v3, v6

    const-wide v11, 0x4194997000000000L    # 8.64E7

    mul-double v9, v9, v11

    .line 16
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    add-long/2addr v9, v1

    iput-wide v9, v0, Lm0;->a:J

    sub-double/2addr v3, v6

    mul-double v3, v3, v11

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, v0, Lm0;->b:J

    cmp-long v1, v3, p1

    if-gez v1, :cond_2

    .line 18
    iget-wide v1, v0, Lm0;->a:J

    cmp-long v3, v1, p1

    if-lez v3, :cond_2

    .line 19
    iput v8, v0, Lm0;->c:I

    goto :goto_0

    .line 20
    :cond_2
    iput v5, v0, Lm0;->c:I

    :goto_0
    return-void
.end method
