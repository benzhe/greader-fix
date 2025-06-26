.class public Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/frakbot/glowpadbackport/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaveManager"
.end annotation


# instance fields
.field private alpha:F

.field private radius:F

.field public final synthetic this$0:Lnet/frakbot/glowpadbackport/PointCloud;

.field private width:F


# direct methods
.method public constructor <init>(Lnet/frakbot/glowpadbackport/PointCloud;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->this$0:Lnet/frakbot/glowpadbackport/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x42480000    # 50.0f

    .line 2
    iput p1, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->radius:F

    const/high16 p1, 0x43480000    # 200.0f

    .line 3
    iput p1, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->width:F

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->alpha:F

    return-void
.end method

.method public static synthetic access$400(Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->radius:F

    return p0
.end method

.method public static synthetic access$500(Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->width:F

    return p0
.end method

.method public static synthetic access$600(Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->alpha:F

    return p0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->alpha:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->radius:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->alpha:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->radius:F

    return-void
.end method
