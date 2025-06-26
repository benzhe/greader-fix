.class public final Lom6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lpm6;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lpm6;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lom6;->a:Lpm6;

    iput-object p2, p0, Lom6;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lom6;->a:Lpm6;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lom6;->a:Lpm6;

    check-cast p1, Lmm6;

    .line 2
    iget-object p1, p1, Lmm6;->a:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 3
    iget-object p1, p1, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->t:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lom6;->a:Lpm6;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
