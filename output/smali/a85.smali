.class public La85;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Li85;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Li85;)V
    .locals 0

    .line 1
    iput-object p2, p0, La85;->b:Li85;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, La85;->a:Z

    .line 2
    iget-object p1, p0, La85;->b:Li85;

    invoke-interface {p1}, Li85;->a()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, La85;->b:Li85;

    invoke-interface {p1}, Li85;->e()V

    .line 2
    iget-boolean p1, p0, La85;->a:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, La85;->b:Li85;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Li85;->g(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, La85;->b:Li85;

    invoke-interface {v0, p1}, Li85;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, La85;->a:Z

    return-void
.end method
