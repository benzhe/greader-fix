.class public Llh;
.super Lki;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llh$b;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lki;-><init>()V

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lki;->B:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public M(Landroid/view/ViewGroup;Landroid/view/View;Lyh;Lyh;)Landroid/animation/Animator;
    .locals 0

    .line 1
    sget-object p1, Lci;->a:Lii;

    invoke-virtual {p1, p2}, Lii;->c(Landroid/view/View;)V

    .line 2
    iget-object p1, p3, Lyh;->a:Ljava/util/Map;

    const-string p3, "android:fade:transitionAlpha"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 p3, 0x0

    .line 4
    invoke-virtual {p0, p2, p1, p3}, Llh;->N(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final N(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 2

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object v0, Lci;->a:Lii;

    invoke-virtual {v0, p1, p2}, Lii;->e(Landroid/view/View;F)V

    .line 2
    sget-object p2, Lci;->b:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 3
    new-instance p3, Llh$b;

    invoke-direct {p3, p1}, Llh$b;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    new-instance p3, Llh$a;

    invoke-direct {p3, p0, p1}, Llh$a;-><init>(Llh;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lqh;->b(Lqh$d;)Lqh;

    return-object p2
.end method

.method public h(Lyh;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lki;->K(Lyh;)V

    .line 2
    iget-object v0, p1, Lyh;->a:Ljava/util/Map;

    iget-object p1, p1, Lyh;->b:Landroid/view/View;

    .line 3
    invoke-static {p1}, Lci;->a(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:fade:transitionAlpha"

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
