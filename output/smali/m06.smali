.class public Lm06;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:I

.field public final synthetic c:Ll06;


# direct methods
.method public constructor <init>(Ll06;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm06;->c:Ll06;

    iput-object p2, p0, Lm06;->a:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lm06;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lm06;->c:Ll06;

    .line 2
    iget-object v0, p1, Ll06;->j:Ll06$b;

    .line 3
    iget-object v1, p1, Ll06;->i:Landroid/view/View;

    .line 4
    iget-object p1, p1, Ll06;->p:Ljava/lang/Object;

    .line 5
    check-cast v0, La06;

    .line 6
    iget-object p1, v0, La06;->a:Lq06;

    invoke-virtual {p1}, Lq06;->d()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, v0, La06;->a:Lq06;

    invoke-virtual {p1}, Lq06;->d()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lm06;->c:Ll06;

    .line 9
    iget-object p1, p1, Ll06;->i:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 11
    iget-object p1, p0, Lm06;->c:Ll06;

    .line 12
    iget-object p1, p1, Ll06;->i:Landroid/view/View;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 14
    iget-object p1, p0, Lm06;->a:Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lm06;->b:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    iget-object v0, p0, Lm06;->c:Ll06;

    .line 16
    iget-object v0, v0, Ll06;->i:Landroid/view/View;

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
