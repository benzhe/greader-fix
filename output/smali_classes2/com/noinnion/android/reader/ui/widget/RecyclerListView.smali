.class public Lcom/noinnion/android/reader/ui/widget/RecyclerListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/reader/ui/widget/RecyclerListView$a;
    }
.end annotation


# instance fields
.field public I0:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/reader/ui/widget/RecyclerListView;->I0:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/noinnion/android/reader/ui/widget/RecyclerListView;->I0:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/noinnion/android/reader/ui/widget/RecyclerListView;->I0:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method


# virtual methods
.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/ui/widget/RecyclerListView;->I0:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemId(I)J

    move-result-wide v1

    .line 4
    new-instance v3, Lcom/noinnion/android/reader/ui/widget/RecyclerListView$a;

    invoke-direct {v3, v0, v1, v2}, Lcom/noinnion/android/reader/ui/widget/RecyclerListView$a;-><init>(IJ)V

    .line 5
    iput-object v3, p0, Lcom/noinnion/android/reader/ui/widget/RecyclerListView;->I0:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
