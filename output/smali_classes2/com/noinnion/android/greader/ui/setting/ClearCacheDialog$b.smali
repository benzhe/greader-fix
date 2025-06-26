.class public Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public final synthetic e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    .line 2
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v3

    .line 5
    iget-boolean v4, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->a:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    new-array v4, v5, [Ljava/lang/String;

    const v7, 0x7f110096

    .line 6
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 7
    invoke-static {v0}, Ln56;->l0(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v4

    invoke-virtual {v4}, Lhz6;->i()Lty6;

    move-result-object v4

    invoke-interface {v4}, Lty6;->clear()V

    .line 9
    :cond_1
    iget-boolean v4, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->b:Z

    if-eqz v4, :cond_2

    new-array v4, v5, [Ljava/lang/String;

    const v7, 0x7f110095

    .line 10
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 11
    iget-object v4, v3, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 12
    sget-object v8, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 13
    :try_start_0
    sget-object v7, Lap6;->B:Landroid/net/Uri;

    invoke-virtual {v4, v7, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    invoke-virtual {v3}, Lep6;->Y()V

    .line 15
    sget-object v8, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sget-object v8, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    iget-object v4, v3, Lep6;->a:Landroid/content/Context;

    .line 18
    invoke-static {v4, v5, v5}, Ln56;->I1(Landroid/content/Context;ZZ)V

    const-wide/16 v7, 0x0

    const-string v4, "last_sync_time"

    .line 19
    invoke-static {v0, v4, v7, v8}, Liw6;->U(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v4, "unread_count"

    .line 20
    invoke-static {v0, v4, v6}, Liw6;->T(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 21
    sget-object v8, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    throw v0

    .line 23
    :cond_2
    :goto_0
    iget-boolean v4, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->a:Z

    if-nez v4, :cond_3

    iget-boolean v4, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->b:Z

    if-eqz v4, :cond_4

    :cond_3
    new-array v4, v5, [Ljava/lang/String;

    const v7, 0x7f110099

    .line 24
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 25
    invoke-static {v0}, Ln56;->n0(Landroid/content/Context;)V

    .line 26
    :cond_4
    iget-boolean v4, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->a:Z

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->b:Z

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->c:Z

    if-eqz v4, :cond_6

    :cond_5
    new-array v4, v5, [Ljava/lang/String;

    const v7, 0x7f110098

    .line 27
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 28
    invoke-static {v0}, Ln56;->m0(Landroid/content/Context;)V

    .line 29
    :cond_6
    iget-boolean v4, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->d:Z

    if-eqz v4, :cond_12

    new-array v4, v5, [Ljava/lang/String;

    const v7, 0x7f110097

    .line 30
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    const-string v0, "title"

    const-string v4, "link"

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_1
    const-string v10, "_id"

    const-string v11, ", 1000"

    const/16 v12, 0x3e8

    if-eq v8, v7, :cond_7

    if-lt v8, v12, :cond_b

    .line 32
    :cond_7
    iget-object v13, v3, Lep6;->a:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v8, " item.link, item.read, item.updated_time DESC limit "

    invoke-static {v8}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-int/lit16 v5, v9, 0x3e8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v19, -0x1

    invoke-static/range {v13 .. v20}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 33
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    .line 34
    :cond_8
    :goto_2
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 35
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    if-lez v8, :cond_8

    .line 36
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 37
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v8, -0x1

    .line 38
    invoke-interface {v5, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 39
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 40
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 41
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_9
    invoke-interface {v5, v8}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 43
    :cond_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 45
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 46
    throw v0

    :cond_b
    :goto_3
    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_4
    const/4 v8, 0x1

    if-eq v4, v7, :cond_c

    if-lt v4, v12, :cond_d

    .line 47
    :cond_c
    iget-object v13, v3, Lep6;->a:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v4, " item.title, item.read, item.updated_time DESC limit "

    invoke-static {v4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit16 v9, v5, 0x3e8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v19, -0x1

    invoke-static/range {v13 .. v20}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_f

    .line 48
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_5

    .line 49
    :cond_e
    iget-object v0, v3, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 50
    sget-object v10, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    :try_start_2
    sget-object v0, Lap6;->B:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    .line 52
    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v7}, Ln56;->e1([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 54
    invoke-virtual {v3}, Lep6;->Y()V

    .line 55
    sget-object v10, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 56
    sget-object v10, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 57
    iget-object v3, v3, Lep6;->a:Landroid/content/Context;

    .line 58
    invoke-static {v3, v8, v8}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 59
    :goto_5
    iget-object v3, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 60
    iget-object v3, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v5, 0x7f110094

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    .line 61
    sget-object v10, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 62
    throw v0

    .line 63
    :cond_f
    :goto_6
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 64
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    if-lez v8, :cond_f

    .line 65
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 66
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v15, v8, -0x1

    .line 67
    invoke-interface {v4, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 68
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 69
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 70
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_10
    invoke-interface {v4, v8}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    .line 72
    :cond_11
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 73
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    .line 74
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 75
    throw v0

    :cond_12
    :goto_7
    return-object v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    const v1, 0x7f1101be

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0, v0}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {p1}, Lrb;->dismissAllowingStateLoss()V

    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lyo6;->i(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->e:Landroid/app/ProgressDialog;

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    iget-object v2, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->e:Landroid/app/ProgressDialog;

    const v3, 0x7f1101bf

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->completeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->a:Z

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->articlesCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->b:Z

    .line 9
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->imagesCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->c:Z

    .line 10
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->duplicatesCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->d:Z

    .line 11
    iget-boolean v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->c:Z

    if-eqz v0, :cond_2

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 13
    :try_start_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;->e:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
