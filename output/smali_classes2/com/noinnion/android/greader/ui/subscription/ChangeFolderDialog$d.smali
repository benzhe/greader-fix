.class public Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lky6;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->f:Lip6;

    iget-wide v0, v0, Lip6;->e:J

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-lez v6, :cond_3

    const-string v3, "sub_id = "

    .line 6
    invoke-static {v3, v0, v1}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lkp6;->e:Landroid/net/Uri;

    const-string v0, "tag_uid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 12
    throw p1

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v2, v2, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->g:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 16
    invoke-static {p1, v1, v5, v5}, Llp6;->c(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llp6;

    .line 18
    new-instance v2, Lky6;

    iget-object v3, v1, Llp6;->i:Ljava/lang/String;

    iget-object v4, v1, Llp6;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lky6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object v1, v2, Lky6;->d:Ljava/lang/Object;

    .line 20
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v3, v3, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->g:Ljava/util/Set;

    iget-object v1, v1, Llp6;->f:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v2, Lky6;->e:Z

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object p1, v0

    :goto_4
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    new-instance p1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c002f

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v3, v3, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->h:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;-><init>(Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->i:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
