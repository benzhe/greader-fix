.class public Lto;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lto$b;
    }
.end annotation


# instance fields
.field public e:Z

.field public f:I

.field public g:Landroid/view/LayoutInflater;

.field public h:Landroid/widget/ListAdapter;

.field public i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lto$b;",
            ">;"
        }
    .end annotation
.end field

.field public j:[Lto$b;

.field public k:Landroid/content/Context;

.field public l:Landroid/view/View;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Landroid/widget/GridView;

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lto;->e:Z

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lto;->i:Landroid/util/SparseArray;

    const/4 v0, 0x0

    new-array v0, v0, [Lto$b;

    .line 4
    iput-object v0, p0, Lto;->j:[Lto$b;

    const-string v0, "layout_inflater"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lto;->g:Landroid/view/LayoutInflater;

    .line 6
    iput p3, p0, Lto;->f:I

    .line 7
    iput p4, p0, Lto;->v:I

    .line 8
    iput p5, p0, Lto;->w:I

    .line 9
    iput-object p2, p0, Lto;->h:Landroid/widget/ListAdapter;

    .line 10
    iput-object p1, p0, Lto;->k:Landroid/content/Context;

    .line 11
    new-instance p1, Lto$a;

    invoke-direct {p1, p0}, Lto$a;-><init>(Lto;)V

    invoke-interface {p2, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 9

    .line 1
    iget v0, p0, Lto;->m:I

    if-lez v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lto;->o:I

    iget-object v1, p0, Lto;->u:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lto;->u:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getStretchMode()I

    move-result v0

    iput v0, p0, Lto;->r:I

    .line 4
    iget-object v0, p0, Lto;->u:Landroid/widget/GridView;

    check-cast v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v0

    .line 6
    iget-object v1, p0, Lto;->u:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lto;->u:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lto;->o:I

    .line 7
    iget-object v0, p0, Lto;->u:Landroid/widget/GridView;

    check-cast v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getNumColumns()I

    move-result v0

    iput v0, p0, Lto;->n:I

    .line 8
    iget-object v0, p0, Lto;->u:Landroid/widget/GridView;

    check-cast v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getColumnWidth()I

    move-result v0

    iput v0, p0, Lto;->s:I

    .line 9
    iget-object v0, p0, Lto;->u:Landroid/widget/GridView;

    check-cast v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getHorizontalSpacing()I

    move-result v0

    iput v0, p0, Lto;->t:I

    .line 10
    :cond_1
    iget v0, p0, Lto;->o:I

    iget v1, p0, Lto;->n:I

    iget v2, p0, Lto;->s:I

    mul-int v3, v1, v2

    sub-int v3, v0, v3

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lto;->t:I

    mul-int v4, v4, v5

    sub-int/2addr v3, v4

    .line 11
    iget v4, p0, Lto;->r:I

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v6, :cond_4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    const/4 v8, 0x3

    if-eq v4, v8, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iput v2, p0, Lto;->p:I

    .line 13
    iput v5, p0, Lto;->q:I

    sub-int/2addr v0, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    .line 14
    iput v5, p0, Lto;->o:I

    goto :goto_0

    .line 15
    :cond_3
    div-int/2addr v3, v1

    add-int/2addr v3, v2

    iput v3, p0, Lto;->p:I

    .line 16
    iput v5, p0, Lto;->q:I

    goto :goto_0

    .line 17
    :cond_4
    iput v2, p0, Lto;->p:I

    if-le v1, v6, :cond_5

    add-int/lit8 v0, v1, -0x1

    .line 18
    div-int/2addr v3, v0

    add-int/2addr v3, v5

    iput v3, p0, Lto;->q:I

    goto :goto_0

    :cond_5
    add-int/2addr v5, v3

    .line 19
    iput v5, p0, Lto;->q:I

    goto :goto_0

    :cond_6
    sub-int/2addr v0, v3

    .line 20
    iput v0, p0, Lto;->o:I

    .line 21
    iput v2, p0, Lto;->p:I

    .line 22
    iput v5, p0, Lto;->q:I

    .line 23
    :goto_0
    iget v0, p0, Lto;->o:I

    sub-int/2addr v1, v6

    iget v2, p0, Lto;->p:I

    iget v3, p0, Lto;->q:I

    add-int/2addr v2, v3

    mul-int v2, v2, v1

    add-int/2addr v2, v0

    iput v2, p0, Lto;->m:I

    return v2
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lto;->h:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lto;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lto$b;

    iget v2, v2, Lto$b;->b:I

    if-le v2, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/2addr p1, v1

    return p1
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lto;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lto;->h:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lto;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lto;->i:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lto;->h:Landroid/widget/ListAdapter;

    .line 3
    invoke-virtual {p0, p1}, Lto;->c(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lto;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    iget-object v1, p0, Lto;->i:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lto;->h:Landroid/widget/ListAdapter;

    .line 3
    invoke-virtual {p0, p1}, Lto;->c(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lto;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lto;->getViewTypeCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lto;->h:Landroid/widget/ListAdapter;

    .line 3
    invoke-virtual {p0, p1}, Lto;->c(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lto;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lto;->g:Landroid/view/LayoutInflater;

    iget v1, p0, Lto;->f:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lto;->v:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    iget-object p2, p0, Lto;->g:Landroid/view/LayoutInflater;

    iget v1, p0, Lto;->f:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 5
    :cond_1
    :goto_0
    iget-object p3, p0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lto$b;

    iget p3, p3, Lto$b;->d:I

    const/4 v1, 0x1

    if-eq p3, v1, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    .line 6
    iget-object p1, p0, Lto;->l:Landroid/view/View;

    .line 7
    new-instance p2, Lso;

    iget-object p3, p0, Lto;->k:Landroid/content/Context;

    invoke-direct {p2, p3}, Lso;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object p1, p2, Lso;->e:Landroid/view/View;

    goto :goto_1

    .line 9
    :cond_2
    iget p3, p0, Lto;->v:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/cocosw/bottomsheet/HeaderLayout;

    .line 10
    iget-object v1, p0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lto$b;

    iget-object v1, v1, Lto$b;->c:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    iget v1, p0, Lto;->w:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12
    iget-object v2, p0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lto$b;

    iget-object p1, p1, Lto$b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_3
    iput v0, p3, Lcom/cocosw/bottomsheet/HeaderLayout;->e:I

    goto :goto_1

    .line 14
    :cond_4
    iget p3, p0, Lto;->v:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/cocosw/bottomsheet/HeaderLayout;

    .line 15
    iget-object v0, p0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lto$b;

    iget-object v0, v0, Lto$b;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    iget v0, p0, Lto;->w:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 17
    iget-object v1, p0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lto$b;

    iget-object p1, p1, Lto$b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_5
    invoke-virtual {p0}, Lto;->a()I

    move-result p1

    .line 19
    iput p1, p3, Lcom/cocosw/bottomsheet/HeaderLayout;->e:I

    goto :goto_1

    .line 20
    :cond_6
    iget-object v0, p0, Lto;->h:Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lto;->c(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 21
    iput-object p2, p0, Lto;->l:Landroid/view/View;

    :goto_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lto;->h:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lto;->h:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lto;->h:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lto;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lto;->h:Landroid/widget/ListAdapter;

    .line 2
    invoke-virtual {p0, p1}, Lto;->c(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    :goto_0
    return p1
.end method
