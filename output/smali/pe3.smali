.class public final Lpe3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lpe3;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpe3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lpe3;-><init>(FF)V

    sput-object v0, Lpe3;->d:Lpe3;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lpe3;->a:F

    .line 3
    iput p2, p0, Lpe3;->b:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lpe3;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lpe3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lpe3;

    .line 3
    iget v2, p0, Lpe3;->a:F

    iget v3, p1, Lpe3;->a:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lpe3;->b:F

    iget p1, p1, Lpe3;->b:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lpe3;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lpe3;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
