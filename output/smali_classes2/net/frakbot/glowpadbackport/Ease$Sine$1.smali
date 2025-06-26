.class public final Lnet/frakbot/glowpadbackport/Ease$Sine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/frakbot/glowpadbackport/util/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/frakbot/glowpadbackport/Ease$Sine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    float-to-double v1, p1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v1, v1, v3

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float p1, v1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    const/4 v0, 0x0

    add-float/2addr p1, v0

    return p1
.end method
