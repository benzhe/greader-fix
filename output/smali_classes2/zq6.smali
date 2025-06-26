.class public final synthetic Lzq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luw6$c;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzq6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lzq6;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 3
    invoke-static {v0, p2}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_1
    const/16 p2, 0x191

    if-ne p1, p2, :cond_2

    .line 4
    invoke-static {v0}, Liw6;->W(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
