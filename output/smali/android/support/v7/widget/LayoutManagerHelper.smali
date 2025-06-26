.class public Landroid/support/v7/widget/LayoutManagerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstVisiblePosition(Landroidx/recyclerview/widget/RecyclerView$m;)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p0, :cond_4

    .line 1
    instance-of v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->l1()I

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 4
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->l1()I

    move-result p0

    return p0

    .line 5
    :cond_1
    instance-of v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_4

    .line 6
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 7
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v3, v4, :cond_3

    .line 9
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    aget-object v4, v4, v3

    .line 10
    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5, v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v4

    goto :goto_1

    :cond_2
    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v2, v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v4

    .line 13
    :goto_1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    array-length p0, v1

    if-lez p0, :cond_4

    aget v0, v1, v2

    :cond_4
    return v0
.end method

.method public static getLastVisiblePosition(Landroidx/recyclerview/widget/RecyclerView$m;)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p0, :cond_4

    .line 1
    instance-of v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n1()I

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 4
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n1()I

    move-result p0

    return p0

    .line 5
    :cond_1
    instance-of v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_4

    .line 6
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 7
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v3, v4, :cond_3

    .line 9
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    aget-object v4, v4, v3

    .line 10
    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v2, v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v4

    goto :goto_1

    :cond_2
    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5, v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v4

    .line 13
    :goto_1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    array-length p0, v1

    if-lez p0, :cond_4

    aget v0, v1, v2

    :cond_4
    return v0
.end method

.method public static scrollToPosition(Landroidx/recyclerview/widget/RecyclerView$m;I)V
    .locals 4

    if-eqz p0, :cond_5

    .line 1
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:I

    .line 4
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 6
    iput v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->e:I

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->L0()V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_3

    .line 9
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:I

    .line 11
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I

    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_2

    .line 13
    iput v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->e:I

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->L0()V

    goto :goto_0

    .line 15
    :cond_3
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_5

    .line 16
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    .line 18
    iput-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->h:[I

    .line 19
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->g:I

    .line 20
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 21
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->f:I

    .line 22
    :cond_4
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    .line 23
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->L0()V

    :cond_5
    :goto_0
    return-void
.end method
