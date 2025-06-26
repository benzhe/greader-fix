.class public Ldq6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldq6;->b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    iput-object p2, p0, Ldq6;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ldq6;->b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 2
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->f0:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 4
    :cond_0
    iget-object p1, p0, Ldq6;->b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    iget-object v0, p0, Ldq6;->a:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ldq6;->b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ln56;->n1(Landroid/content/Context;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Ldq6;->b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 3
    iget v1, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->b0:Landroid/view/View;

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget v1, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->k0:I

    if-lez v1, :cond_1

    .line 7
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->c0:Landroid/view/View;

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Ldq6;->b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 10
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->d0:Landroid/view/View;

    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_2

    .line 12
    iget-object v0, p0, Ldq6;->b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 13
    iget-boolean v1, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Z:Z

    if-eqz v1, :cond_2

    .line 14
    iget p1, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    .line 15
    iget v1, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    sub-int/2addr p1, v1

    .line 16
    iget v0, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->k0:I

    sub-int v2, p1, v0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Ldq6;->b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 18
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y:Landroid/view/View;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Ldq6;->b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 20
    iget v1, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->h0:I

    .line 21
    iget v0, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    sub-int/2addr v1, v0

    .line 22
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    :cond_3
    :goto_1
    iget-object p1, p0, Ldq6;->b:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    .line 24
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
