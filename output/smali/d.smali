.class public final Ld;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ld;->a:I

    iput-object p2, p0, Ld;->b:Ljava/lang/Object;

    iput-object p3, p0, Ld;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget p1, p0, Ld;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_4

    if-ne p1, v0, :cond_3

    .line 1
    iget-object p1, p0, Ld;->b:Ljava/lang/Object;

    check-cast p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 2
    sget v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->O:I

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "item_list_mark_read_on_scroll"

    .line 4
    invoke-static {v0, v2, p2}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-nez v0, :cond_0

    move-object p1, v3

    :cond_0
    check-cast p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz p1, :cond_2

    .line 6
    iput-boolean p2, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->i:Z

    .line 7
    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->h(Z)V

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lwq6;

    invoke-direct {v0, p1}, Lwq6;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    return-void

    .line 10
    :cond_3
    throw v3

    .line 11
    :cond_4
    iget-object p1, p0, Ld;->b:Ljava/lang/Object;

    check-cast p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 12
    sget v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->O:I

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v4

    iput-boolean p2, v4, Lhw6;->d:Z

    const-string v4, "rich_article_list"

    .line 15
    invoke-static {v0, v4, p2}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 16
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of p2, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, p1

    :goto_1
    check-cast v3, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v1, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r(ZZ)V

    :cond_6
    return-void

    .line 17
    :cond_7
    iget-object p1, p0, Ld;->b:Ljava/lang/Object;

    check-cast p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 18
    sget v4, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->O:I

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 20
    invoke-static {v4}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v4

    .line 21
    iput-boolean p2, v4, Lhw6;->h:Z

    .line 22
    iget-object v4, v4, Lhw6;->a:Landroid/content/Context;

    const-string v5, "item_group_by_feed"

    .line 23
    invoke-static {v4, v5, p2}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 24
    invoke-static {p1, v2, v1, v0, v3}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->L(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;ZZILjava/lang/Object;)V

    return-void
.end method
