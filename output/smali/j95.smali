.class public Lj95;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lk95;


# direct methods
.method public constructor <init>(Lk95;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj95;->a:Lk95;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lj95;->a:Lk95;

    invoke-virtual {p1}, Lk95;->a()V

    .line 3
    iget-object p1, p0, Lj95;->a:Lk95;

    iget-object v0, p1, Lk95;->k:Loi;

    iget-object p1, p1, Lq95;->a:Lr95;

    invoke-virtual {v0, p1}, Loi;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
