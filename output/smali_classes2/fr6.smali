.class public Lfr6;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->onChanged()V

    .line 2
    iget-object v0, p0, Lfr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-virtual {v0}, Lt27;->getItemCount()I

    move-result v0

    .line 3
    iget-object v1, p0, Lfr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vEmptySwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lfr6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    const/16 v2, 0x8

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
