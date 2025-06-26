.class public Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$k;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, [Ljava/lang/Long;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$k;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$k;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    .line 4
    iget-object v0, v0, Lt27;->f:Landroid/database/Cursor;

    const/4 v2, 0x0

    .line 5
    :try_start_0
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "_id"

    .line 7
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    move-object v4, v1

    .line 8
    :cond_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    if-nez v4, :cond_2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "&"

    .line 10
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_4

    cmp-long v7, v5, v2

    if-nez v7, :cond_1

    goto :goto_1

    :cond_3
    move-object v4, v1

    :cond_4
    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$k;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$k;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Ln56;->L1(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
