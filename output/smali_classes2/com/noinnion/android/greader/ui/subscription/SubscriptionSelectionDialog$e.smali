.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_9

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->h:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lky6;

    .line 8
    iget-object v4, v3, Lky6;->d:Ljava/lang/Object;

    check-cast v4, Lip6;

    .line 9
    iget-object v5, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    iget-object v5, v5, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    sget-object v6, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->e:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v5, v6, :cond_1

    .line 10
    iget-boolean v3, v3, Lky6;->e:Z

    iput-boolean v3, v4, Lip6;->r:Z

    goto :goto_1

    .line 11
    :cond_1
    sget-object v6, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v5, v6, :cond_2

    .line 12
    iget-boolean v3, v3, Lky6;->e:Z

    iput-boolean v3, v4, Lip6;->s:Z

    goto :goto_1

    .line 13
    :cond_2
    sget-object v6, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->g:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v5, v6, :cond_3

    .line 14
    iget-boolean v3, v3, Lky6;->e:Z

    iput-boolean v3, v4, Lip6;->t:Z

    goto :goto_1

    .line 15
    :cond_3
    sget-object v6, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->h:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v5, v6, :cond_4

    .line 16
    iget-wide v5, v3, Lky6;->a:J

    long-to-int v3, v5

    iput v3, v4, Lip6;->u:I

    goto :goto_1

    .line 17
    :cond_4
    sget-object v6, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->i:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v5, v6, :cond_5

    .line 18
    iget-wide v5, v3, Lky6;->a:J

    long-to-int v3, v5

    iput v3, v4, Lip6;->v:I

    goto :goto_1

    .line 19
    :cond_5
    sget-object v6, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->j:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v5, v6, :cond_6

    .line 20
    iget-wide v5, v3, Lky6;->a:J

    long-to-int v3, v5

    iput v3, v4, Lip6;->w:I

    goto :goto_1

    .line 21
    :cond_6
    sget-object v6, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->k:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v5, v6, :cond_7

    .line 22
    iget-wide v5, v3, Lky6;->a:J

    long-to-int v3, v5

    iput v3, v4, Lip6;->x:I

    goto :goto_1

    .line 23
    :cond_7
    sget-object v6, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->l:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v5, v6, :cond_8

    .line 24
    iget-wide v5, v3, Lky6;->a:J

    long-to-int v3, v5

    iput v3, v4, Lip6;->y:I

    .line 25
    :cond_8
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lip6;

    .line 27
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 29
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "uid"

    .line 31
    iget-object v4, v1, Lip6;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    .line 32
    iget-object v4, v1, Lip6;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feed_url"

    .line 33
    iget-object v4, v1, Lip6;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "html_url"

    .line 34
    iget-object v4, v1, Lip6;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "icon_url"

    .line 35
    iget-object v4, v1, Lip6;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sortid"

    .line 36
    iget-object v4, v1, Lip6;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "unread_count"

    .line 37
    iget v4, v1, Lip6;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "newest_item_time"

    .line 38
    iget-wide v4, v1, Lip6;->n:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "sync_time"

    .line 39
    iget-wide v4, v1, Lip6;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "sync_excluded"

    .line 40
    iget-boolean v4, v1, Lip6;->p:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "image_fit"

    .line 41
    iget-boolean v4, v1, Lip6;->s:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "javascript"

    .line 42
    iget-boolean v4, v1, Lip6;->t:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "offline_content"

    .line 43
    iget v4, v1, Lip6;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "display_content"

    .line 44
    iget v4, v1, Lip6;->v:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "link_format"

    .line 45
    iget v4, v1, Lip6;->w:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "auto_readability"

    .line 46
    iget v4, v1, Lip6;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "notification"

    .line 47
    iget-boolean v4, v1, Lip6;->r:Z

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "charset"

    .line 48
    iget-object v4, v1, Lip6;->z:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "hidden"

    .line 49
    iget-boolean v4, v1, Lip6;->q:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    iget-wide v3, v1, Lip6;->e:J

    const-wide/16 v9, 0x0

    cmp-long v1, v3, v9

    if-lez v1, :cond_f

    const-string v1, "_id = ?"

    new-array v5, v5, [Ljava/lang/String;

    .line 51
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    .line 52
    sget-object v3, Lip6;->A:Landroid/net/Uri;

    invoke-virtual {v8, v3, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_8

    .line 53
    :cond_f
    sget-object v1, Lip6;->A:Landroid/net/Uri;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 54
    :goto_8
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 56
    throw p1

    :cond_10
    :goto_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->e:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->i:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$d;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$d;->a()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    invoke-virtual {p1}, Lrb;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    const v4, 0x7f1101d3

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->e:Landroid/app/ProgressDialog;

    return-void
.end method
