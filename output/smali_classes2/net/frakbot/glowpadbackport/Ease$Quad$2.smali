.class public final Lnet/frakbot/glowpadbackport/Ease$Quad$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/frakbot/glowpadbackport/util/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/frakbot/glowpadbackport/Ease$Quad;
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
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    const/high16 v0, -0x40800000    # -1.0f

    mul-float v0, v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ljo;->a(FFFF)F

    move-result p1

    return p1
.end method
