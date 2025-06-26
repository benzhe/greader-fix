.class public Lgr6;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-boolean v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->i:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->j:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {v0}, Landroid/support/v7/widget/LayoutManagerHelper;->getFirstVisiblePosition(Landroidx/recyclerview/widget/RecyclerView$m;)I

    move-result v0

    if-nez p2, :cond_5

    .line 3
    iget-object p2, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->j:Z

    .line 4
    iget p2, p2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->k:I

    if-gt p2, v0, :cond_5

    sub-int p2, v0, p2

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v4, v4, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->f:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getFooterCount()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 9
    :cond_2
    instance-of v1, v3, Lnr6;

    if-eqz v1, :cond_4

    .line 10
    check-cast v3, Lnr6;

    iget-wide v3, v3, Lnr6;->e:J

    .line 11
    iget-object v1, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-virtual {v1}, Lt27;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Lt27;->getItemId(I)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    if-gt v1, p1, :cond_3

    .line 13
    iget-object p1, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {p1}, Landroid/support/v7/widget/LayoutManagerHelper;->getLastVisiblePosition(Landroidx/recyclerview/widget/RecyclerView$m;)I

    move-result p1

    iget-object v1, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->f:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getFooterCount()I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p2, p1

    :cond_3
    if-lez p2, :cond_4

    .line 14
    iget-object p1, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget v1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->k:I

    .line 15
    invoke-virtual {p1, v1, p2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->l(II)V

    .line 16
    :cond_4
    iget-object p1, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iput v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->k:I

    :cond_5
    :goto_1
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object p2, p2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {p2}, Landroid/support/v7/widget/LayoutManagerHelper;->getFirstVisiblePosition(Landroidx/recyclerview/widget/RecyclerView$m;)I

    move-result p2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 3
    iget-object p3, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object p3, p3, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-virtual {p3}, Lt27;->getItemCount()I

    move-result p3

    add-int/2addr p2, p1

    add-int/lit8 p3, p3, -0x1

    if-lt p2, p3, :cond_0

    .line 4
    iget-object p1, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    iget-object p1, p1, Ler6;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lon6;->a:Lew6;

    .line 6
    iget p2, p1, Lew6;->h:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lew6;->h:I

    .line 7
    iget-object p1, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    .line 8
    iget-object p1, p1, Ler6;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object p1, p0, Lgr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    .line 10
    invoke-virtual {p1, p2, p2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r(ZZ)V

    :cond_0
    return-void
.end method
