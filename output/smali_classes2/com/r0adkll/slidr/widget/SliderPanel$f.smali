.class public Lcom/r0adkll/slidr/widget/SliderPanel$f;
.super Ld17$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/r0adkll/slidr/widget/SliderPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/r0adkll/slidr/widget/SliderPanel;


# direct methods
.method public constructor <init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-direct {p0}, Ld17$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;II)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 2
    iget p1, p1, Lcom/r0adkll/slidr/widget/SliderPanel;->f:I

    neg-int p3, p1

    .line 3
    invoke-static {p2, p3, p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->a(III)I

    move-result p1

    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 2
    iget p1, p1, Lcom/r0adkll/slidr/widget/SliderPanel;->f:I

    return p1
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 2
    iget-object v0, v0, Lcom/r0adkll/slidr/widget/SliderPanel;->i:Lcom/r0adkll/slidr/widget/SliderPanel$h;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lz07;

    .line 4
    iget-object v0, v0, Lz07;->c:La17;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 6
    iget-object p1, p1, Lcom/r0adkll/slidr/widget/SliderPanel;->g:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 9
    iget-object p1, p1, Lcom/r0adkll/slidr/widget/SliderPanel;->i:Lcom/r0adkll/slidr/widget/SliderPanel$h;

    if-eqz p1, :cond_3

    .line 10
    check-cast p1, Lz07;

    .line 11
    iget-object p1, p1, Lz07;->c:La17;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 13
    iget-object p1, p1, Lcom/r0adkll/slidr/widget/SliderPanel;->i:Lcom/r0adkll/slidr/widget/SliderPanel$h;

    if-eqz p1, :cond_3

    .line 14
    check-cast p1, Lz07;

    invoke-virtual {p1}, Lz07;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method public f(Landroid/view/View;IIII)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 2
    iget p4, p3, Lcom/r0adkll/slidr/widget/SliderPanel;->f:I

    int-to-float p4, p4

    div-float/2addr p2, p4

    sub-float/2addr p1, p2

    .line 3
    iget-object p2, p3, Lcom/r0adkll/slidr/widget/SliderPanel;->i:Lcom/r0adkll/slidr/widget/SliderPanel$h;

    if-eqz p2, :cond_0

    .line 4
    check-cast p2, Lz07;

    invoke-virtual {p2, p1}, Lz07;->b(F)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2, p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->b(Lcom/r0adkll/slidr/widget/SliderPanel;F)V

    return-void
.end method

.method public g(Landroid/view/View;FF)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 3
    iget-object v2, v2, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 4
    iget v2, v2, La17;->f:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 6
    iget-object v3, v2, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 7
    iget v3, v3, La17;->e:F

    const/4 v4, 0x0

    cmpl-float p2, p2, v3

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v3, 0x0

    cmpl-float v5, p3, v3

    if-lez v5, :cond_2

    .line 8
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 9
    iget-object v3, v2, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 10
    iget v3, v3, La17;->e:F

    cmpl-float p3, p3, v3

    if-lez p3, :cond_1

    if-nez p2, :cond_1

    .line 11
    iget v4, v2, Lcom/r0adkll/slidr/widget/SliderPanel;->f:I

    goto :goto_2

    :cond_1
    if-le v0, v1, :cond_6

    .line 12
    iget v4, v2, Lcom/r0adkll/slidr/widget/SliderPanel;->f:I

    goto :goto_2

    :cond_2
    cmpg-float v3, p3, v3

    if-gez v3, :cond_4

    .line 13
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 14
    iget-object v3, v2, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 15
    iget v3, v3, La17;->e:F

    cmpl-float p3, p3, v3

    if-lez p3, :cond_3

    if-nez p2, :cond_3

    .line 16
    iget p2, v2, Lcom/r0adkll/slidr/widget/SliderPanel;->f:I

    goto :goto_1

    :cond_3
    neg-int p2, v1

    if-ge v0, p2, :cond_6

    .line 17
    iget p2, v2, Lcom/r0adkll/slidr/widget/SliderPanel;->f:I

    goto :goto_1

    :cond_4
    if-le v0, v1, :cond_5

    .line 18
    iget v4, v2, Lcom/r0adkll/slidr/widget/SliderPanel;->f:I

    goto :goto_2

    :cond_5
    neg-int p2, v1

    if-ge v0, p2, :cond_6

    .line 19
    iget p2, v2, Lcom/r0adkll/slidr/widget/SliderPanel;->f:I

    :goto_1
    neg-int v4, p2

    .line 20
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 21
    iget-object p2, p2, Lcom/r0adkll/slidr/widget/SliderPanel;->h:Ld17;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p2, p1, v4}, Ld17;->s(II)Z

    .line 23
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public h(Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 2
    iget-object p2, p2, Lcom/r0adkll/slidr/widget/SliderPanel;->g:Landroid/view/View;

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$f;->a:Lcom/r0adkll/slidr/widget/SliderPanel;

    .line 4
    iget-object p2, p1, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 5
    iget-boolean p2, p2, La17;->g:Z

    if-eqz p2, :cond_0

    .line 6
    iget-boolean p1, p1, Lcom/r0adkll/slidr/widget/SliderPanel;->l:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
