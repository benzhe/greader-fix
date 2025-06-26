.class public final Lnet/frakbot/glowpadbackport/Ease$Quad$1;
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
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    const/4 p1, 0x0

    add-float/2addr v0, p1

    return v0
.end method
