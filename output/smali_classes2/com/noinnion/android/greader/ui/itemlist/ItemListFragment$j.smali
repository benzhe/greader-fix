.class public Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$j;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$j;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, [Ljava/lang/Long;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$j;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    .line 3
    iget-object v1, v1, Lt27;->f:Landroid/database/Cursor;

    .line 4
    :try_start_0
    sget-object v2, Lon6;->a:Lew6;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lew6;->g:J

    .line 5
    iget-boolean v2, v2, Lew6;->f:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->s:Z

    :cond_0
    const/4 v0, 0x0

    .line 7
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "_id"

    .line 11
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "read"

    .line 12
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "keep_unread"

    .line 13
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "sub_id"

    .line 14
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 15
    :cond_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 16
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-nez v11, :cond_2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-nez v11, :cond_2

    .line 17
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    .line 19
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    cmp-long v11, v9, v2

    if-nez v11, :cond_1

    .line 20
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v1, :cond_4

    .line 21
    :try_start_1
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$j;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$j;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v5

    .line 24
    invoke-static {p1}, Ln56;->A(Ljava/util/List;)[J

    move-result-object v6

    const/4 v7, 0x0

    .line 25
    invoke-static {v4}, Ln56;->B(Ljava/util/Set;)[J

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 26
    invoke-virtual/range {v5 .. v10}, Lep6;->A([J[J[JZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    :catch_0
    :cond_4
    :try_start_2
    sget-object p1, Lon6;->a:Lew6;

    .line 28
    iget-object v1, p1, Lew6;->a:Lip6;

    if-eqz v1, :cond_5

    .line 29
    iget p1, v1, Lip6;->m:I

    sub-int/2addr p1, v0

    iput p1, v1, Lip6;->m:I

    goto :goto_0

    .line 30
    :cond_5
    iget-object p1, p1, Lew6;->b:Llp6;

    if-eqz p1, :cond_6

    .line 31
    iget v1, p1, Llp6;->j:I

    sub-int/2addr v1, v0

    iput v1, p1, Llp6;->j:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$j;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$j;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r(ZZ)V

    :goto_0
    return-void
.end method
