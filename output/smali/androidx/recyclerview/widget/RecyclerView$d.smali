.class public Landroidx/recyclerview/widget/RecyclerView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$j$c;Landroidx/recyclerview/widget/RecyclerView$j$c;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$a0;->setIsRecyclable(Z)V

    .line 4
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroidx/recyclerview/widget/RecyclerView$j;

    move-object v2, v1

    check-cast v2, Lcg;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 6
    iget v4, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->a:I

    iget v6, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->a:I

    if-ne v4, v6, :cond_0

    iget v1, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    if-eq v1, v3, :cond_1

    .line 7
    :cond_0
    iget v5, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    iget v7, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcg;->i(Landroidx/recyclerview/widget/RecyclerView$a0;IIII)Z

    move-result p1

    goto :goto_0

    .line 8
    :cond_1
    check-cast v2, Lof;

    .line 9
    invoke-virtual {v2, p1}, Lof;->n(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 10
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 11
    iget-object p2, v2, Lof;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->Z()V

    :cond_2
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$j$c;Landroidx/recyclerview/widget/RecyclerView$j$c;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->k(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$a0;->setIsRecyclable(Z)V

    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroidx/recyclerview/widget/RecyclerView$j;

    move-object v2, v1

    check-cast v2, Lcg;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v4, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->a:I

    .line 8
    iget v5, p2, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    .line 9
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->a:I

    :goto_0
    move v6, v1

    if-nez p3, :cond_1

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$j$c;->b:I

    :goto_1
    move v7, p3

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v4, v6, :cond_2

    if-eq v5, v7, :cond_3

    .line 13
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v6

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    .line 15
    invoke-virtual {p2, v6, v7, p3, v1}, Landroid/view/View;->layout(IIII)V

    move-object v3, p1

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcg;->i(Landroidx/recyclerview/widget/RecyclerView$a0;IIII)Z

    move-result p1

    goto :goto_2

    .line 17
    :cond_3
    check-cast v2, Lof;

    .line 18
    invoke-virtual {v2, p1}, Lof;->n(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 19
    iget-object p2, v2, Lof;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->Z()V

    :cond_4
    return-void
.end method
