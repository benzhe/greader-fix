.class public final synthetic Lxq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxq6;->e:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lxq6;->e:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    .line 1
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vListSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vEmptySwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
