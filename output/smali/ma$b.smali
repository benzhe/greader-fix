.class public Lma$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lma;->f(Lpa;)Lma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpa;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lma;Lpa;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lma$b;->a:Lpa;

    iput-object p3, p0, Lma$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lma$b;->a:Lpa;

    check-cast p1, Lo0$c;

    .line 2
    iget-object p1, p1, Lo0$c;->a:Lo0;

    iget-object p1, p1, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
