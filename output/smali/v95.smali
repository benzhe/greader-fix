.class public Lv95;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lw95;


# direct methods
.method public constructor <init>(Lw95;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv95;->a:Lw95;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lv95;->a:Lw95;

    .line 3
    iget-boolean v0, p1, Lw95;->j:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lw95;->d:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    iget-object p1, p0, Lv95;->a:Lw95;

    iget-object v0, p1, Lw95;->k:Loi;

    iget-object p1, p1, Lq95;->a:Lr95;

    invoke-virtual {v0, p1}, Loi;->a(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lv95;->a:Lw95;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Lw95;->j:Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lv95;->a:Lw95;

    .line 3
    iget v0, p1, Lw95;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 4
    iget-object v2, p1, Lw95;->f:Lg95;

    .line 5
    iget-object v2, v2, Lg95;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 6
    iput v0, p1, Lw95;->g:I

    .line 7
    iput-boolean v1, p1, Lw95;->h:Z

    return-void
.end method
