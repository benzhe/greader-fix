.class public Lh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh1$a;
    }
.end annotation


# instance fields
.field public e:Landroid/content/Context;

.field public f:Landroid/view/LayoutInflater;

.field public g:Lj1;

.field public h:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public i:I

.field public j:Lp1$a;

.field public k:Lh1$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lh1;->i:I

    .line 3
    iput-object p1, p0, Lh1;->e:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh1;->f:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lh1;->k:Lh1$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lh1$a;

    invoke-direct {v0, p0}, Lh1$a;-><init>(Lh1;)V

    iput-object v0, p0, Lh1;->k:Lh1$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lh1;->k:Lh1$a;

    return-object v0
.end method

.method public b(Lj1;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh1;->j:Lp1$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lp1$a;->b(Lj1;Z)V

    :cond_0
    return-void
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lh1;->k:Lh1$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lh1$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lh1;->g:Lj1;

    iget-object p2, p0, Lh1;->k:Lh1$a;

    invoke-virtual {p2, p3}, Lh1$a;->b(I)Ll1;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lj1;->s(Landroid/view/MenuItem;Lp1;I)Z

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(Lj1;Ll1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public r(Lj1;Ll1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public s(Lp1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh1;->j:Lp1$a;

    return-void
.end method

.method public t(Landroid/content/Context;Lj1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh1;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lh1;->e:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lh1;->f:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh1;->f:Landroid/view/LayoutInflater;

    .line 5
    :cond_0
    iput-object p2, p0, Lh1;->g:Lj1;

    .line 6
    iget-object p1, p0, Lh1;->k:Lh1$a;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lh1$a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public u(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lh1;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public v(Lu1;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lj1;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance v0, Lk1;

    invoke-direct {v0, p1}, Lk1;-><init>(Lj1;)V

    .line 3
    new-instance v1, La0$a;

    .line 4
    iget-object v2, p1, Lj1;->a:Landroid/content/Context;

    .line 5
    invoke-direct {v1, v2}, La0$a;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v2, Lh1;

    .line 7
    iget-object v3, v1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 8
    sget v4, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Lh1;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lk1;->g:Lh1;

    .line 9
    iput-object v0, v2, Lh1;->j:Lp1$a;

    .line 10
    iget-object v3, v0, Lk1;->e:Lj1;

    .line 11
    iget-object v4, v3, Lj1;->a:Landroid/content/Context;

    invoke-virtual {v3, v2, v4}, Lj1;->b(Lp1;Landroid/content/Context;)V

    .line 12
    iget-object v2, v0, Lk1;->g:Lh1;

    invoke-virtual {v2}, Lh1;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 13
    iget-object v3, v1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->q:Landroid/widget/ListAdapter;

    .line 14
    iput-object v0, v3, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 15
    iget-object v2, p1, Lj1;->o:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 16
    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->f:Landroid/view/View;

    goto :goto_0

    .line 17
    :cond_1
    iget-object v2, p1, Lj1;->n:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    .line 19
    iget-object v2, p1, Lj1;->m:Ljava/lang/CharSequence;

    .line 20
    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    .line 21
    :goto_0
    iput-object v0, v3, Landroidx/appcompat/app/AlertController$b;->o:Landroid/content/DialogInterface$OnKeyListener;

    .line 22
    invoke-virtual {v1}, La0$a;->a()La0;

    move-result-object v1

    iput-object v1, v0, Lk1;->f:La0;

    .line 23
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 24
    iget-object v1, v0, Lk1;->f:La0;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    .line 25
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 26
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 27
    iget-object v0, v0, Lk1;->f:La0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 28
    iget-object v0, p0, Lh1;->j:Lp1$a;

    if-eqz v0, :cond_2

    .line 29
    invoke-interface {v0, p1}, Lp1$a;->c(Lj1;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public w()Landroid/os/Parcelable;
    .locals 3

    .line 1
    iget-object v0, p0, Lh1;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4
    iget-object v2, p0, Lh1;->h:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_1
    const-string v2, "android:menu:list"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method
