.class public Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$e;
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
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$e;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$e;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    new-instance v1, Lap6;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$e;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v2, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-virtual {v2, p1}, Lt27;->getItem(I)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {v1, p1}, Lap6;-><init>(Landroid/database/Cursor;)V

    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$e;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    iget p1, p1, Lhw6;->s:I

    invoke-virtual {v0, v1, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e(Lap6;I)V

    :cond_0
    return-void
.end method
