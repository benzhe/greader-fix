.class public final Ll95$a;
.super Lmb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll95;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb<",
        "Ll95;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)F
    .locals 1

    .line 1
    check-cast p1, Ll95;

    .line 2
    iget p1, p1, Ll95;->s:F

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public b(Ljava/lang/Object;F)V
    .locals 1

    .line 1
    check-cast p1, Ll95;

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p2, v0

    .line 2
    iput p2, p1, Ll95;->s:F

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
