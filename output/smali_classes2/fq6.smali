.class public Lfq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfq6;->a:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfq6;->a:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iget-object p1, p0, Lfq6;->a:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 5
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
