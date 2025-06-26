.class public Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;
.super Ljb$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tr4android/recyclerviewslideitem/SwipeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;


# direct methods
.method public constructor <init>(Lcom/tr4android/recyclerviewslideitem/SwipeItem;Lcom/tr4android/recyclerviewslideitem/SwipeItem$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    invoke-direct {p0}, Ljb$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 2
    iput p2, v0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->o:I

    if-lez p2, :cond_1

    .line 3
    iget-object p2, v0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 4
    iget v0, p2, Ls27;->g:F

    .line 5
    iget-object p2, p2, Ls27;->i:Landroid/view/animation/Interpolator;

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p2, p3

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, v0, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 9
    iget v0, p2, Ls27;->h:F

    .line 10
    iget-object p2, p2, Ls27;->j:Landroid/view/animation/Interpolator;

    if-eqz p2, :cond_2

    .line 11
    invoke-interface {p2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p2, p3

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    :goto_0
    add-int/2addr p2, p1

    return p2
.end method

.method public c(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 2
    iget p1, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->g:I

    return p1
.end method

.method public i(I)V
    .locals 3

    if-nez p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 2
    iget-object v0, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 3
    iget v0, v0, Ls27;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 4
    iget v0, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->o:I

    .line 5
    invoke-static {p1}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->a(Lcom/tr4android/recyclerviewslideitem/SwipeItem;)I

    move-result p1

    if-le v0, p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 7
    iget-object v0, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->f:Lcom/tr4android/recyclerviewslideitem/SwipeItem$d;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 8
    iget-boolean p1, p1, Ls27;->e:Z

    if-eqz p1, :cond_0

    .line 9
    check-cast v0, Lt27$a;

    .line 10
    iget-object p1, v0, Lt27$a;->b:Lt27;

    iget-object v0, v0, Lt27$a;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v0

    check-cast p1, Ler6;

    .line 11
    iget-object p1, p1, Ler6;->r:Lan6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "EVENT_ITEM_LEFT_SWIPE_ACTION"

    invoke-virtual {p1, v2, v0}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 13
    iget-object v0, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 14
    iget v0, v0, Ls27;->h:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 15
    iget v0, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->o:I

    .line 16
    invoke-static {p1}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->b(Lcom/tr4android/recyclerviewslideitem/SwipeItem;)I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 18
    iget-object v0, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->f:Lcom/tr4android/recyclerviewslideitem/SwipeItem$d;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 19
    iget-boolean p1, p1, Ls27;->f:Z

    if-eqz p1, :cond_1

    .line 20
    check-cast v0, Lt27$a;

    .line 21
    iget-object p1, v0, Lt27$a;->b:Lt27;

    iget-object v0, v0, Lt27$a;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v0

    check-cast p1, Ler6;

    .line 22
    iget-object p1, p1, Ler6;->r:Lan6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "EVENT_ITEM_RIGHT_SWIPE_ACTION"

    invoke-virtual {p1, v1, v0}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    const/4 v0, 0x0

    .line 24
    iput v0, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->o:I

    :cond_2
    return-void
.end method

.method public j(Landroid/view/View;IIII)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 2
    iget p3, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->n:I

    if-ne p2, p3, :cond_0

    goto :goto_3

    :cond_0
    const/4 p4, 0x1

    const/high16 p5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-lez p2, :cond_3

    if-gtz p3, :cond_1

    .line 3
    iget-object p3, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 4
    iget p3, p3, Ls27;->c:I

    .line 5
    invoke-virtual {p1, p3}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->setSwipeBackgroundColor(I)V

    .line 6
    iget-object p3, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 7
    iget p3, p3, Ls27;->a:I

    .line 8
    invoke-virtual {p1, p3}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->setSwipeLeftImageResource(I)V

    .line 9
    :cond_1
    iget-object p3, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 10
    iget p3, p3, Ls27;->g:F

    cmpl-float p5, p3, p5

    if-eqz p5, :cond_2

    .line 11
    invoke-virtual {p1, p3}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->c(F)I

    move-result p3

    if-le p2, p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 12
    :goto_0
    invoke-virtual {p1, p4}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->setSwipeLeftImageVisibility(Z)V

    goto :goto_2

    :cond_3
    if-gez p2, :cond_6

    if-ltz p3, :cond_4

    .line 13
    iget-object p3, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 14
    iget p3, p3, Ls27;->d:I

    .line 15
    invoke-virtual {p1, p3}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->setSwipeBackgroundColor(I)V

    .line 16
    iget-object p3, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 17
    iget p3, p3, Ls27;->b:I

    .line 18
    invoke-virtual {p1, p3}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->setSwipeRightImageResource(I)V

    .line 19
    :cond_4
    iget-object p3, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->l:Ls27;

    .line 20
    iget p3, p3, Ls27;->h:F

    cmpl-float p5, p3, p5

    if-eqz p5, :cond_5

    neg-float p3, p3

    .line 21
    invoke-virtual {p1, p3}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->c(F)I

    move-result p3

    if-ge p2, p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    .line 22
    :goto_1
    invoke-virtual {p1, p4}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->setSwipeRightImageVisibility(Z)V

    .line 23
    :cond_6
    :goto_2
    iput p2, p1, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->n:I

    :goto_3
    return-void
.end method

.method public k(Landroid/view/View;FF)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 2
    iget-object p2, p2, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->e:Ljb;

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Ljb;->x(II)Z

    .line 4
    iget-object p1, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public l(Landroid/view/View;I)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/tr4android/recyclerviewslideitem/SwipeItem$b;->a:Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    .line 2
    iget-object p2, p2, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->h:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
