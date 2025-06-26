.class public Leq6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leq6;->a:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Leq6;->a:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 2
    sget v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->m0:I

    .line 3
    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->T()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Leq6;->a:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 2
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->d0:Landroid/view/View;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Leq6;->a:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 5
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Leq6;->a:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 7
    iget v1, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->h0:I

    .line 8
    iget v0, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    sub-int/2addr v1, v0

    .line 9
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
