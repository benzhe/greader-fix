.class public Lnf;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lof$a;

.field public final synthetic b:Landroid/view/ViewPropertyAnimator;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lof;


# direct methods
.method public constructor <init>(Lof;Lof$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnf;->d:Lof;

    iput-object p2, p0, Lnf;->a:Lof$a;

    iput-object p3, p0, Lnf;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lnf;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lnf;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Lnf;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lnf;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    iget-object p1, p0, Lnf;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    iget-object p1, p0, Lnf;->d:Lof;

    iget-object v0, p0, Lnf;->a:Lof$a;

    iget-object v0, v0, Lof$a;->b:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$j;->c(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 7
    iget-object p1, p0, Lnf;->d:Lof;

    iget-object p1, p1, Lof;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Lnf;->a:Lof$a;

    iget-object v0, v0, Lof$a;->b:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lnf;->d:Lof;

    invoke-virtual {p1}, Lof;->k()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lnf;->d:Lof;

    iget-object v0, p0, Lnf;->a:Lof$a;

    iget-object v0, v0, Lof$a;->b:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
