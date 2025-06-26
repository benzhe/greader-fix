.class public Ltv6;
.super Lrb;
.source "SourceFile"

# interfaces
.implements Lsd$a;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv6$c;,
        Ltv6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrb;",
        "Lsd$a<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/ExpandableListView$OnGroupClickListener;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;"
    }
.end annotation


# instance fields
.field public e:Ltv6$b;

.field public f:Landroid/widget/ExpandableListView;

.field public g:Ltv6$c;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ltv6$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrb;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ltv6;->h:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ltv6;->i:Ljava/lang/String;

    .line 4
    iput p1, p0, Ltv6;->h:I

    .line 5
    iput-object p2, p0, Ltv6;->i:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Ltv6;->e:Ltv6$b;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11001d

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "user/"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "uid"

    if-nez v2, :cond_3

    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "feed/"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v0, v4, p1, v3}, Lip6;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lip6;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 8
    iget-object v0, p1, Lip6;->h:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lip6;->f:Ljava/lang/String;

    iput-object p1, p0, Ltv6;->i:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v2, "all"

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f110154

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 12
    iput-object v2, p0, Ltv6;->i:Ljava/lang/String;

    goto :goto_1

    .line 13
    :cond_3
    :goto_0
    invoke-static {v0, v4, p1, v3}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p1, v0}, Llp6;->h(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object p1, p1, Llp6;->f:Ljava/lang/String;

    iput-object p1, p0, Ltv6;->i:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Ltv6;->i:Ljava/lang/String;

    .line 17
    :cond_5
    :goto_1
    iget-object p1, p0, Ltv6;->e:Ltv6$b;

    iget-object v0, p0, Ltv6;->i:Ljava/lang/String;

    check-cast p1, Lrv6;

    .line 18
    iget-object v2, p1, Lrv6;->a:Lsv6;

    iput-object v0, v2, Lsv6;->o:Ljava/lang/String;

    .line 19
    iput-object v1, v2, Lsv6;->p:Ljava/lang/String;

    .line 20
    iget v0, v2, Lsv6;->m:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 21
    iget-object v0, v2, Lsv6;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_6
    iget-object p1, p1, Lrv6;->a:Lsv6;

    invoke-virtual {p1}, Lsv6;->j()V

    .line 23
    invoke-virtual {p0}, Lrb;->dismiss()V

    return-void
.end method

.method public f(Lwd;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Landroid/database/Cursor;

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Ltv6;->g:Ltv6$c;

    invoke-virtual {p1, p2}, Landroid/widget/ResourceCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3
    iget-object p1, p0, Ltv6;->i:Ljava/lang/String;

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Ltv6;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Ltv6;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v1, "all"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Ltv6;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :cond_3
    iget-object p1, p0, Ltv6;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Ltv6;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :cond_5
    iget-object p1, p0, Ltv6;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public g(ILandroid/os/Bundle;)Lwd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lwd<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, p2, p2, v0, v0}, Lep6;->y(Landroid/content/Context;ZZZZ)Lvd;

    move-result-object p1

    return-object p1
.end method

.method public k(Lwd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ltv6;->g:Ltv6$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ResourceCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lrb;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget p1, p0, Ltv6;->h:I

    const-string v0, "all"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Ltv6;->i:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 3
    iput-object v0, p0, Ltv6;->i:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 6
    iget v3, p0, Ltv6;->h:I

    const/16 v4, 0x8

    const v5, 0x7f09029f

    const v6, 0x7f090143

    const v7, 0x7f090174

    const v8, 0x7f0c0119

    if-ne v3, v1, :cond_3

    .line 7
    invoke-virtual {p1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v9, 0x7f11001d

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 9
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v9, 0x7f0801a5

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Ltv6;->j:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v3, p0, Ltv6;->i:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 13
    iget-object v3, p0, Ltv6;->j:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v3, p0, Ltv6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 16
    :cond_3
    invoke-virtual {p1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f110154

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f08018f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Ltv6;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Ltv6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 23
    :goto_0
    new-instance p1, Ltv6$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0, v2, v2}, Ltv6$c;-><init>(Ltv6;Landroid/content/Context;Landroid/database/Cursor;Ltv6$a;)V

    iput-object p1, p0, Ltv6;->g:Ltv6$c;

    .line 24
    iget-object v0, p0, Ltv6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Lsd;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, p0}, Lsd;->c(ILandroid/os/Bundle;Lsd$a;)Lwd;

    :goto_1
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Ltv6;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lrb;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0c011a

    .line 1
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lrb;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/Window;->requestFeature(I)Z

    const p2, 0x7f090322

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    if-eqz p2, :cond_0

    const p3, 0x7f110379

    .line 4
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    const p3, 0x7f08001e

    .line 5
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 6
    new-instance p3, Ltv6$a;

    invoke-direct {p3, p0}, Ltv6$a;-><init>(Ltv6;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p2, 0x102000a

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Ltv6;->f:Landroid/widget/ExpandableListView;

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p2, p0, Ltv6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {p2, p0}, Landroid/widget/ExpandableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 10
    iget-object p2, p0, Ltv6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {p2, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 11
    iget-object p2, p0, Ltv6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {p2, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    return-object p1
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Ltv6;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
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
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Ltv6;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv6;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
