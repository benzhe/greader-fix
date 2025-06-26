.class public final Lnet/frakbot/glowpadbackport/Ease$Quint$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/frakbot/glowpadbackport/util/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/frakbot/glowpadbackport/Ease$Quint;
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
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr p1, v2

    mul-float v3, p1, p1

    mul-float v3, v3, p1

    mul-float v3, v3, p1

    mul-float v3, v3, p1

    add-float/2addr v3, v2

    mul-float v3, v3, v0

    add-float v0, v3, v1

    :goto_0
    return v0
.end method
