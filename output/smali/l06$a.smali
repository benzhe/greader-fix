.class public Ll06$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll06;->a(FFLandroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Ll06;


# direct methods
.method public constructor <init>(Ll06;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll06$a;->e:Ll06;

    iput p2, p0, Ll06$a;->a:F

    iput p3, p0, Ll06$a;->b:F

    iput p4, p0, Ll06$a;->c:F

    iput p5, p0, Ll06$a;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget v0, p0, Ll06$a;->a:F

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget v2, p0, Ll06$a;->b:F

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    .line 3
    iget v0, p0, Ll06$a;->c:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v2, p0, Ll06$a;->d:F

    mul-float p1, p1, v2

    add-float/2addr p1, v0

    .line 4
    iget-object v0, p0, Ll06$a;->e:Ll06;

    invoke-virtual {v0, v1}, Ll06;->c(F)V

    .line 5
    iget-object v0, p0, Ll06$a;->e:Ll06;

    .line 6
    iget-object v0, v0, Ll06;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
