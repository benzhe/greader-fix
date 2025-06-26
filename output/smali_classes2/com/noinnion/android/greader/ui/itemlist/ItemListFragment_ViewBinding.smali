.class public Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment_ViewBinding;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    .line 3
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f090351

    const-string v2, "field \'vListSwipeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vListSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f09034c

    const-string v2, "field \'vEmptySwipeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vEmptySwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 5
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090354

    const-string v2, "field \'vProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vProgressBar:Landroid/widget/ProgressBar;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09034b

    const-string v2, "field \'vEmptyMessage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vEmptyMessage:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090355

    const-string v2, "field \'vRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment_ViewBinding;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment_ViewBinding;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vListSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vEmptySwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vProgressBar:Landroid/widget/ProgressBar;

    .line 6
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vEmptyMessage:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
