.class public Loo;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loo$a;
    }
.end annotation


# instance fields
.field public final synthetic e:Lro;


# direct methods
.method public constructor <init>(Lro;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loo;->e:Lro;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Loo;->e:Lro;

    .line 2
    iget-object v0, v0, Lro;->w:Lko;

    .line 3
    iget-object v0, v0, Lko;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Loo;->e:Lro;

    .line 2
    iget-object v0, v0, Lro;->w:Lko;

    .line 3
    invoke-virtual {v0}, Lko;->size()I

    move-result v0

    iget-object v1, p0, Loo;->e:Lro;

    .line 4
    iget-object v1, v1, Lro;->e:Landroid/util/SparseIntArray;

    .line 5
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Loo;->e:Lro;

    .line 2
    iget-object v0, v0, Lro;->w:Lko;

    .line 3
    iget-object v0, v0, Lko;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p0, Loo;->e:Lro;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "layout_inflater"

    .line 2
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 3
    iget-object v1, p0, Loo;->e:Lro;

    .line 4
    iget-object v2, v1, Lro;->p:Lro$c;

    .line 5
    iget-boolean v2, v2, Lro$c;->e:Z

    if-eqz v2, :cond_0

    .line 6
    iget v1, v1, Lro;->l:I

    .line 7
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_0
    iget v1, v1, Lro;->k:I

    .line 9
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 10
    :goto_0
    new-instance p3, Loo$a;

    invoke-direct {p3, p0}, Loo$a;-><init>(Loo;)V

    .line 11
    sget v1, Lcom/cocosw/bottomsheet/R$id;->bs_list_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12
    iput-object v1, p3, Loo$a;->a:Landroid/widget/TextView;

    .line 13
    sget v1, Lcom/cocosw/bottomsheet/R$id;->bs_list_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 14
    iput-object v1, p3, Loo$a;->b:Landroid/widget/ImageView;

    .line 15
    sget v1, Lcom/cocosw/bottomsheet/R$id;->bs_list_check:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 16
    iput-object v1, p3, Loo$a;->c:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Loo$a;

    :goto_1
    const/4 v1, 0x0

    .line 19
    :goto_2
    iget-object v2, p0, Loo;->e:Lro;

    .line 20
    iget-object v2, v2, Lro;->e:Landroid/util/SparseIntArray;

    .line 21
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 22
    iget-object v2, p0, Loo;->e:Lro;

    .line 23
    iget-object v2, v2, Lro;->e:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-gt v2, p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {p0, p1}, Loo;->a(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 26
    iget-object v1, p3, Loo$a;->a:Landroid/widget/TextView;

    .line 27
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_5

    .line 29
    iget-object v1, p3, Loo$a;->b:Landroid/widget/ImageView;

    .line 30
    iget-object v3, p0, Loo;->e:Lro;

    .line 31
    iget-boolean v3, v3, Lro;->m:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    goto :goto_3

    :cond_4
    const/4 v3, 0x4

    .line 32
    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 33
    :cond_5
    iget-object v1, p3, Loo$a;->b:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object v1, p3, Loo$a;->b:Landroid/widget/ImageView;

    .line 36
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :goto_4
    iget-object v1, p3, Loo$a;->b:Landroid/widget/ImageView;

    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 39
    iget-object v1, p3, Loo$a;->a:Landroid/widget/TextView;

    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 41
    iget-object p3, p3, Loo$a;->c:Landroid/widget/ImageView;

    if-eqz p3, :cond_7

    .line 42
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    const/16 v0, 0x8

    :goto_5
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Loo;->e:Lro;

    .line 2
    iget-object v0, v0, Lro;->w:Lko;

    .line 3
    iget-object v0, v0, Lko;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p1

    return p1
.end method
