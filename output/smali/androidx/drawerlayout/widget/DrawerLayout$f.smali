.class public Landroidx/drawerlayout/widget/DrawerLayout$f;
.super Ljb$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final a:I

.field public b:Ljb;

.field public final c:Ljava/lang/Runnable;

.field public final synthetic d:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Ljb$c;-><init>()V

    .line 2
    new-instance p1, Landroidx/drawerlayout/widget/DrawerLayout$f$a;

    invoke-direct {p1, p0}, Landroidx/drawerlayout/widget/DrawerLayout$f$a;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$f;)V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->c:Ljava/lang/Runnable;

    .line 3
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p3, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;II)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(II)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->b:Ljb;

    invoke-virtual {v0, p1, p2}, Ljb;->c(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public f(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->c:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public h(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Z

    .line 3
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout$f;->m()V

    return-void
.end method

.method public i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->b:Ljb;

    .line 2
    iget-object v1, v1, Ljb;->s:Landroid/view/View;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->o(ILandroid/view/View;)V

    return-void
.end method

.method public j(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 2
    iget-object p4, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 p5, 0x3

    invoke-virtual {p4, p1, p5}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/2addr p2, p3

    int-to-float p2, p2

    goto :goto_0

    .line 3
    :cond_0
    iget-object p4, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-float p2, p4

    :goto_0
    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 4
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p3, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;F)V

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 5
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public k(Landroid/view/View;FF)V
    .locals 5

    .line 1
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget p3, p3, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    cmpl-float p2, p2, v3

    if-gtz p2, :cond_1

    if-nez p2, :cond_0

    cmpl-float p2, p3, v2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    cmpg-float v4, p2, v3

    if-ltz v4, :cond_3

    cmpl-float p2, p2, v3

    if-nez p2, :cond_4

    cmpl-float p2, p3, v2

    if-lez p2, :cond_4

    :cond_3
    sub-int/2addr v1, v0

    :cond_4
    move p2, v1

    .line 7
    :goto_1
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->b:Ljb;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Ljb;->x(II)Z

    .line 8
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public l(Landroid/view/View;I)Z
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->a:I

    invoke-virtual {p2, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final m()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x5

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
