.class public final Lu65;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lw65;


# direct methods
.method public constructor <init>(Lw65;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu65;->a:Lw65;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lu65;->a:Lw65;

    invoke-interface {p1}, Lw65;->b()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lu65;->a:Lw65;

    invoke-interface {p1}, Lw65;->a()V

    return-void
.end method
