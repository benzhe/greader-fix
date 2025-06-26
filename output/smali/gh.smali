.class public Lgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lih$a;

.field public final synthetic b:Lih;


# direct methods
.method public constructor <init>(Lih;Lih$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgh;->b:Lih;

    iput-object p2, p0, Lgh;->a:Lih$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lgh;->b:Lih;

    iget-object v1, p0, Lgh;->a:Lih$a;

    invoke-virtual {v0, p1, v1}, Lih;->d(FLih$a;)V

    .line 3
    iget-object v0, p0, Lgh;->b:Lih;

    iget-object v1, p0, Lgh;->a:Lih$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lih;->a(FLih$a;Z)V

    .line 4
    iget-object p1, p0, Lgh;->b:Lih;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
