.class public Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;
.super Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;
.source "SourceFile"


# instance fields
.field public i:Lc26;

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lc26;

    invoke-direct {p1}, Lc26;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->i:Lc26;

    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->getVisibleChildren()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->getVisibleChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, p1

    .line 9
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, 0x1

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_0

    sub-int v2, p4, p2

    .line 10
    div-int/lit8 v2, v2, 0x2

    .line 11
    div-int/lit8 v4, v4, 0x2

    sub-int v5, v2, v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_0
    add-int v2, p3, v4

    move v5, p3

    .line 12
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Layout child "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc50;->s0(Ljava/lang/String;)V

    int-to-float v4, p1

    int-to-float v6, v3

    const-string v7, "\t(top, bottom)"

    .line 13
    invoke-static {v7, v4, v6}, Lc50;->v0(Ljava/lang/String;FF)V

    int-to-float v4, v5

    int-to-float v6, v2

    const-string v7, "\t(left, right)"

    .line 14
    invoke-static {v7, v4, v6}, Lc50;->v0(Ljava/lang/String;FF)V

    .line 15
    invoke-virtual {v1, v5, p1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 p1, p5, -0x1

    if-ge v0, p1, :cond_1

    .line 17
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->j:I

    add-int/2addr v1, p1

    :cond_1
    move p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onMeasure(II)V

    const/16 v0, 0x18

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->j:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->b(I)I

    move-result p1

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->a(I)I

    move-result p2

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->getVisibleChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iget v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->j:I

    mul-int v0, v0, v4

    add-int/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->i:Lc26;

    .line 9
    iput p1, v2, Lc26;->b:I

    .line 10
    iput p2, v2, Lc26;->c:I

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lc26;->a:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 13
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 14
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->i:Lc26;

    .line 15
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/google/firebase/inappmessaging/display/R$id;->body_scroll:I

    if-eq v7, v8, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    .line 16
    :goto_2
    new-instance v8, Ld26;

    invoke-direct {v8, v5, v7}, Ld26;-><init>(Landroid/view/View;Z)V

    .line 17
    iget v5, v6, Lc26;->c:I

    .line 18
    iput v5, v8, Ld26;->c:I

    .line 19
    iget-object v5, v6, Lc26;->a:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "Screen dimens: "

    .line 20
    invoke-static {v4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc50;->s0(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->getMaxWidthPct()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->getMaxHeightPct()F

    move-result v5

    const-string v6, "Max pct"

    invoke-static {v6, v4, v5}, Lc50;->v0(Ljava/lang/String;FF)V

    int-to-float v4, p1

    int-to-float v5, p2

    const-string v6, "Base dimens"

    .line 22
    invoke-static {v6, v4, v5}, Lc50;->v0(Ljava/lang/String;FF)V

    .line 23
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->i:Lc26;

    .line 24
    iget-object v5, v5, Lc26;->a:Ljava/util/List;

    .line 25
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/high16 v7, -0x80000000

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld26;

    const-string v8, "Pre-measure child"

    .line 26
    invoke-static {v8}, Lc50;->s0(Ljava/lang/String;)V

    .line 27
    iget-object v6, v6, Ld26;->a:Landroid/view/View;

    .line 28
    invoke-static {v6, p1, p2, v7, v7}, Lc50;->x0(Landroid/view/View;IIII)V

    goto :goto_3

    .line 29
    :cond_3
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->i:Lc26;

    .line 30
    iget-object v5, v5, Lc26;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld26;

    .line 31
    invoke-virtual {v8}, Ld26;->a()I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_4

    :cond_4
    add-int/2addr v6, v0

    int-to-float v5, v0

    const-string v8, "Total reserved height"

    .line 32
    invoke-static {v8, v5}, Lc50;->u0(Ljava/lang/String;F)V

    int-to-float v5, v6

    const-string v8, "Total desired height"

    .line 33
    invoke-static {v8, v5}, Lc50;->u0(Ljava/lang/String;F)V

    if-le v6, p2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    .line 34
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total height constrained: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc50;->s0(Ljava/lang/String;)V

    if-eqz v3, :cond_e

    sub-int/2addr p2, v0

    .line 35
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->i:Lc26;

    .line 36
    iget-object v3, v3, Lc26;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld26;

    .line 37
    iget-boolean v8, v6, Ld26;->b:Z

    if-nez v8, :cond_6

    .line 38
    invoke-virtual {v6}, Ld26;->a()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_6

    :cond_7
    sub-int/2addr p2, v5

    .line 39
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->i:Lc26;

    .line 40
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v6, v3, Lc26;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld26;

    .line 43
    iget-boolean v9, v8, Ld26;->b:Z

    if-eqz v9, :cond_8

    .line 44
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 45
    :cond_9
    new-instance v6, Lb26;

    invoke-direct {v6, v3}, Lb26;-><init>(Lc26;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 46
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld26;

    .line 47
    invoke-virtual {v6}, Ld26;->a()I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_8

    .line 48
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x6

    if-ge v3, v6, :cond_d

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v8, 0x3f800000    # 1.0f

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float v3, v3, v6

    sub-float/2addr v8, v3

    const-string v3, "VVGM (minFrac, maxFrac)"

    .line 49
    invoke-static {v3, v6, v8}, Lc50;->v0(Ljava/lang/String;FF)V

    const/4 v3, 0x0

    .line 50
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ld26;

    .line 51
    invoke-virtual {v9}, Ld26;->a()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v2

    div-float/2addr v10, v11

    cmpl-float v11, v10, v8

    if-lez v11, :cond_b

    sub-float v11, v10, v8

    add-float/2addr v3, v11

    move v11, v8

    goto :goto_a

    :cond_b
    move v11, v10

    :goto_a
    cmpg-float v12, v10, v6

    if-gez v12, :cond_c

    sub-float v11, v6, v10

    .line 52
    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    add-float v12, v10, v11

    sub-float/2addr v3, v11

    move v11, v12

    :cond_c
    const-string v12, "\t(desired, granted)"

    .line 53
    invoke-static {v12, v10, v11}, Lc50;->v0(Ljava/lang/String;FF)V

    int-to-float v10, p2

    mul-float v11, v11, v10

    float-to-int v10, v11

    .line 54
    iput v10, v9, Ld26;->c:I

    goto :goto_9

    .line 55
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VerticalViewGroupMeasure only supports up to 5 children"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    sub-int p2, p1, v1

    .line 56
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->i:Lc26;

    .line 57
    iget-object v1, v1, Lc26;->a:Ljava/util/List;

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld26;

    const-string v3, "Measuring child"

    .line 59
    invoke-static {v3}, Lc50;->s0(Ljava/lang/String;)V

    .line 60
    iget-object v3, v2, Ld26;->a:Landroid/view/View;

    .line 61
    iget v5, v2, Ld26;->c:I

    .line 62
    invoke-static {v3, p2, v5, v7, v7}, Lc50;->x0(Landroid/view/View;IIII)V

    .line 63
    iget-object v2, v2, Ld26;->a:Landroid/view/View;

    .line 64
    invoke-virtual {p0, v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->e(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_b

    :cond_f
    int-to-float p2, v0

    const-string v1, "Measured dims"

    .line 65
    invoke-static {v1, v4, p2}, Lc50;->v0(Ljava/lang/String;FF)V

    .line 66
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method
