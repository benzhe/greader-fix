.class public Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.noinnion.android.greader.reader.action.UNREAD_MODIFIED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    .line 3
    invoke-virtual {p1, v0, v0}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r(ZZ)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->s:Z

    .line 6
    invoke-virtual {p1, v0, v0}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r(ZZ)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST_POSITION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "cursorPosition"

    const/4 v1, -0x1

    .line 9
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-virtual {v1}, Lt27;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {v1, p1}, Landroid/support/v7/widget/LayoutManagerHelper;->scrollToPosition(Landroidx/recyclerview/widget/RecyclerView$m;I)V

    .line 12
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    .line 13
    invoke-virtual {v1, p1}, Lt27;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Ler6;->o:J

    .line 14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 15
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iput-boolean v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->j:Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iput p1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->h:I

    :goto_0
    const-string p1, "itemId"

    const-wide/16 v0, 0x0

    .line 17
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_4

    .line 18
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    .line 19
    iput-wide p1, v0, Ler6;->o:J

    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void
.end method
