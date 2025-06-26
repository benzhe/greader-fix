.class public Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$c;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lnr6;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lnr6;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.noinnion.android.greader.reader.action.ITEM_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-wide v1, p1, Lnr6;->e:J

    const-string v3, "itemId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v1

    const-string v2, "cursorPosition"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$c;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {v1, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->J(Landroid/content/Intent;)V

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$c;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    iget-wide v1, p1, Lnr6;->e:J

    .line 8
    iput-wide v1, v0, Ler6;->o:J

    :cond_0
    return-void
.end method
