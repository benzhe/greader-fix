.class public Llc5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lw65;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lw65;)V
    .locals 0

    .line 1
    iput-object p2, p0, Llc5;->a:Lw65;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Llc5;->a:Lw65;

    invoke-interface {p1}, Lw65;->getRevealInfo()Lw65$e;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    iput v0, p1, Lw65$e;->c:F

    .line 3
    iget-object v0, p0, Llc5;->a:Lw65;

    invoke-interface {v0, p1}, Lw65;->setRevealInfo(Lw65$e;)V

    return-void
.end method
