.class public Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;
.super Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;
.source "SourceFile"


# instance fields
.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    const-string p3, "Layout image"

    .line 4
    invoke-static {p3}, Lc50;->s0(Ljava/lang/String;)V

    .line 5
    iget-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->i:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->f(Landroid/view/View;)I

    move-result p3

    .line 6
    iget-object p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->i:Landroid/view/View;

    invoke-virtual {p0, p4}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->e(Landroid/view/View;)I

    move-result v5

    .line 7
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->i:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->g(Landroid/view/View;IIII)V

    const-string p4, "Layout title"

    .line 8
    invoke-static {p4}, Lc50;->s0(Ljava/lang/String;)V

    .line 9
    iget-object p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->j:Landroid/view/View;

    invoke-virtual {p0, p4}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->e(Landroid/view/View;)I

    move-result p4

    .line 10
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->j:Landroid/view/View;

    move v2, p3

    move v4, p1

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->g(Landroid/view/View;IIII)V

    const-string p5, "Layout scroll"

    .line 11
    invoke-static {p5}, Lc50;->s0(Ljava/lang/String;)V

    .line 12
    iget-object p5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->k:Landroid/view/View;

    invoke-virtual {p0, p5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->e(Landroid/view/View;)I

    move-result p5

    add-int v5, p5, p4

    .line 13
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->k:Landroid/view/View;

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->g(Landroid/view/View;IIII)V

    const-string p4, "Layout action bar"

    .line 14
    invoke-static {p4}, Lc50;->s0(Ljava/lang/String;)V

    .line 15
    iget-object p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->l:Landroid/view/View;

    invoke-virtual {p0, p4}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->e(Landroid/view/View;)I

    move-result p4

    sub-int v3, p2, p4

    .line 16
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->l:Landroid/view/View;

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->g(Landroid/view/View;IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onMeasure(II)V

    .line 2
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->i:Landroid/view/View;

    .line 3
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->message_title:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->j:Landroid/view/View;

    .line 4
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->body_scroll:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->k:Landroid/view/View;

    .line 5
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->l:Landroid/view/View;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    .line 6
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->j:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->k:Landroid/view/View;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->b(I)I

    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->a(I)I

    move-result p2

    int-to-double v1, p1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v4, v4, v1

    double-to-int v1, v4

    const/4 v2, 0x4

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->h(II)I

    move-result v1

    const-string v2, "Measuring image"

    .line 10
    invoke-static {v2}, Lc50;->s0(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->i:Landroid/view/View;

    invoke-static {v2, p1, p2}, Lc50;->y0(Landroid/view/View;II)V

    .line 12
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->i:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->f(Landroid/view/View;)I

    move-result v2

    if-le v2, v1, :cond_0

    const-string v2, "Image exceeded maximum width, remeasuring image"

    .line 13
    invoke-static {v2}, Lc50;->s0(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->i:Landroid/view/View;

    invoke-static {v2, v1, p2}, Lc50;->z0(Landroid/view/View;II)V

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->i:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->e(Landroid/view/View;)I

    move-result p2

    .line 16
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->i:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->f(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float v2, v1

    int-to-float v4, p1

    const-string v5, "Max col widths (l, r)"

    .line 17
    invoke-static {v5, v2, v4}, Lc50;->v0(Ljava/lang/String;FF)V

    const-string v4, "Measuring title"

    .line 18
    invoke-static {v4}, Lc50;->s0(Ljava/lang/String;)V

    .line 19
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->j:Landroid/view/View;

    const/high16 v5, -0x80000000

    .line 20
    invoke-static {v4, p1, p2, v5, v5}, Lc50;->x0(Landroid/view/View;IIII)V

    const-string v4, "Measuring action bar"

    .line 21
    invoke-static {v4}, Lc50;->s0(Ljava/lang/String;)V

    .line 22
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->l:Landroid/view/View;

    .line 23
    invoke-static {v4, p1, p2, v5, v5}, Lc50;->x0(Landroid/view/View;IIII)V

    const-string v4, "Measuring scroll view"

    .line 24
    invoke-static {v4}, Lc50;->s0(Ljava/lang/String;)V

    .line 25
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->j:Landroid/view/View;

    .line 26
    invoke-virtual {p0, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->e(Landroid/view/View;)I

    move-result v4

    sub-int v4, p2, v4

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->l:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->e(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 27
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->k:Landroid/view/View;

    invoke-static {v5, p1, v4}, Lc50;->y0(Landroid/view/View;II)V

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->f(Landroid/view/View;)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :cond_1
    int-to-float p1, v3

    const-string v0, "Measured columns (l, r)"

    .line 30
    invoke-static {v0, v2, p1}, Lc50;->v0(Ljava/lang/String;FF)V

    add-int/2addr v1, v3

    int-to-float p1, v1

    int-to-float v0, p2

    const-string v2, "Measured dims"

    .line 31
    invoke-static {v2, p1, v0}, Lc50;->v0(Ljava/lang/String;FF)V

    .line 32
    invoke-virtual {p0, v1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method
