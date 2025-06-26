.class public Landroid/support/v7/widget/HeaderViewRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/HeaderViewRecyclerAdapter$StaticViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Landroidx/recyclerview/widget/RecyclerView$a0;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADAPTER_MAX_TYPES:I = 0x64

.field private static final FOOTERS_START:I = -0x7ffffff6

.field private static final HEADERS_START:I = -0x80000000

.field private static final ITEMS_START:I = -0x7fffffec


# instance fields
.field private mDataObserver:Landroidx/recyclerview/widget/RecyclerView$g;

.field private mFooterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTypesOffset:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$1;-><init>(Landroid/support/v7/widget/HeaderViewRecyclerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mHeaderViews:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mFooterViews:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mItemTypesOffset:Ljava/util/Map;

    .line 6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->setWrappedAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void
.end method

.method private getAdapterTypeOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mItemTypesOffset:Ljava/util/Map;

    iget-object v1, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private putAdapterTypeOffset(Ljava/lang/Class;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mItemTypesOffset:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    const v2, -0x7fffffec

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setWrappedAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mItemTypesOffset:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->putAdapterTypeOffset(Ljava/lang/Class;)V

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mFooterViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mHeaderViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFooterCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mFooterViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mHeaderViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getHeaderCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getFooterCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getWrappedItemCount()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getHeaderCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/high16 v0, -0x80000000

    add-int/2addr p1, v0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v1

    add-int v2, v0, v1

    if-ge p1, v2, :cond_1

    .line 3
    invoke-direct {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getAdapterTypeOffset()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemViewType(I)I

    move-result p1

    add-int/2addr p1, v1

    return p1

    :cond_1
    const v2, -0x7ffffff6

    add-int/2addr p1, v2

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    return p1
.end method

.method public getWrappedItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getHeaderCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getHeaderCount()I

    move-result v0

    const/high16 v1, -0x80000000

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 2
    new-instance p1, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$StaticViewHolder;

    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mHeaderViews:Ljava/util/List;

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$StaticViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getFooterCount()I

    move-result v0

    const v1, -0x7ffffff6

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    .line 4
    new-instance p1, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$StaticViewHolder;

    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mFooterViews:Ljava/util/List;

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter$StaticViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-direct {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getAdapterTypeOffset()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object p1

    return-object p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getHeaderCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeRemoved(II)V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->setWrappedAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getHeaderCount()I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->mWrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    return-void
.end method
