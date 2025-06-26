.class public Lnet/frakbot/glowpadbackport/PointCloud$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/frakbot/glowpadbackport/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Point"
.end annotation


# instance fields
.field public radius:F

.field public final synthetic this$0:Lnet/frakbot/glowpadbackport/PointCloud;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lnet/frakbot/glowpadbackport/PointCloud;FFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/PointCloud$Point;->this$0:Lnet/frakbot/glowpadbackport/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lnet/frakbot/glowpadbackport/PointCloud$Point;->x:F

    .line 3
    iput p3, p0, Lnet/frakbot/glowpadbackport/PointCloud$Point;->y:F

    .line 4
    iput p4, p0, Lnet/frakbot/glowpadbackport/PointCloud$Point;->radius:F

    return-void
.end method
