.class public Lt95;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lu95;


# direct methods
.method public constructor <init>(Lu95;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt95;->a:Lu95;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lt95;->a:Lu95;

    .line 3
    iget v0, p1, Lu95;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 4
    iget-object v2, p1, Lu95;->f:Lg95;

    .line 5
    iget-object v2, v2, Lg95;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 6
    iput v0, p1, Lu95;->g:I

    .line 7
    iput-boolean v1, p1, Lu95;->h:Z

    return-void
.end method
