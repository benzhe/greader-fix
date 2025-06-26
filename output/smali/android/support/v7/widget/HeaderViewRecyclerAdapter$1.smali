.class public Landroid/support/v7/widget/HeaderViewRecyclerAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/HeaderViewRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/HeaderViewRecyclerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$1;->this$0:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->onChanged()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$1;->this$0:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->onItemRangeChanged(II)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$1;->this$0:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getHeaderCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->onItemRangeInserted(II)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$1;->this$0:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getHeaderCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->onItemRangeMoved(III)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$1;->this$0:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getHeaderCount()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$1;->this$0:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->onItemRangeRemoved(II)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$1;->this$0:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getHeaderCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeRemoved(II)V

    return-void
.end method
