.class public Lcom/cocosw/bottomsheet/PinnedSectionGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getColumnWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->g:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->f:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->e:I

    return v0
.end method

.method public setColumnWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->g:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->f:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->e:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method
