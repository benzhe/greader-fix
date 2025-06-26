.class public Lep6$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lep6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
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
.field public final a:Lap6;

.field public final b:Llp6;

.field public final c:Z

.field public final synthetic d:Lep6;


# direct methods
.method public constructor <init>(Lep6;Lap6;Llp6;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lep6$f;->d:Lep6;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lep6$f;->a:Lap6;

    .line 3
    iput-object p3, p0, Lep6$f;->b:Llp6;

    .line 4
    iput-boolean p4, p0, Lep6$f;->c:Z

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    .line 2
    iget-object v0, v1, Lep6$f;->d:Lep6;

    .line 3
    iget-object v0, v0, Lep6;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    .line 5
    iget-object v0, v1, Lep6$f;->b:Llp6;

    iget-object v0, v0, Llp6;->f:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v6, v9

    iget-object v0, v1, Lep6$f;->a:Lap6;

    iget-object v0, v0, Lap6;->f:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v0, v6, v10

    .line 6
    iget-object v0, v1, Lep6$f;->d:Lep6;

    .line 7
    iget-object v0, v0, Lep6;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v0, Ljp6;->e:Landroid/net/Uri;

    sget-object v4, Ljp6;->f:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-string v5, "tag_uid = ? AND item_uid = ?"

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 9
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    .line 11
    iget-object v5, v1, Lep6$f;->a:Lap6;

    iget-wide v5, v5, Lap6;->e:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 12
    iget-object v5, v1, Lep6$f;->b:Llp6;

    .line 13
    iget v5, v5, Llp6;->g:I

    if-ne v5, v10, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    .line 14
    iget-boolean v5, v1, Lep6$f;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v6, "starred"

    if-eqz v5, :cond_1

    .line 15
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    :goto_1
    sget-object v5, Lap6;->B:Landroid/net/Uri;

    invoke-virtual {v8, v5, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 19
    iget-boolean v3, v1, Lep6$f;->c:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    :goto_2
    const-string v4, "action"

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_4

    .line 22
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 23
    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 24
    invoke-virtual {v8, v0, v2, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 25
    :cond_4
    iget-boolean v3, v1, Lep6$f;->c:Z

    if-eqz v3, :cond_5

    const-string v3, "item_uid"

    .line 26
    iget-object v4, v1, Lep6$f;->a:Lap6;

    iget-object v4, v4, Lap6;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "tag_uid"

    .line 27
    iget-object v4, v1, Lep6$f;->b:Llp6;

    iget-object v4, v4, Llp6;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sync_time"

    .line 28
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    invoke-virtual {v8, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    goto :goto_3

    :cond_5
    const-wide/16 v3, 0x0

    :goto_3
    move-wide v14, v3

    .line 31
    iget-object v0, v1, Lep6$f;->d:Lep6;

    new-array v2, v10, [J

    iget-object v3, v1, Lep6$f;->a:Lap6;

    iget-wide v3, v3, Lap6;->g:J

    aput-wide v3, v2, v9

    invoke-virtual {v0, v2}, Lep6;->Z([J)V

    .line 32
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 35
    iget-object v0, v1, Lep6$f;->d:Lep6;

    .line 36
    iget-object v0, v0, Lep6;->a:Landroid/content/Context;

    .line 37
    invoke-static {v0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.noinnion.android.greader.reader.action.FORCE_REFRESH_UI"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lyd;->c(Landroid/content/Intent;)Z

    .line 38
    iget-object v0, v1, Lep6$f;->d:Lep6;

    .line 39
    iget-object v0, v0, Lep6;->a:Landroid/content/Context;

    .line 40
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.noinnion.android.greader.reader.action.WIDGET_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    iget-object v0, v1, Lep6$f;->d:Lep6;

    .line 42
    iget-object v0, v0, Lep6;->a:Landroid/content/Context;

    .line 43
    iget-object v2, v1, Lep6$f;->a:Lap6;

    iget-wide v2, v2, Lap6;->g:J

    invoke-static {v0, v2, v3, v9}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 44
    :try_start_2
    iget-object v13, v1, Lep6$f;->d:Lep6;

    iget-object v2, v1, Lep6$f;->a:Lap6;

    iget-object v2, v2, Lap6;->f:Ljava/lang/String;

    iget-object v0, v0, Lip6;->f:Ljava/lang/String;

    iget-object v3, v1, Lep6$f;->b:Llp6;

    iget-object v3, v3, Llp6;->f:Ljava/lang/String;

    iget-boolean v4, v1, Lep6$f;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .line 45
    invoke-virtual/range {v13 .. v21}, Lep6;->V(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    return-object v11

    :catchall_1
    move-exception v0

    .line 47
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 48
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 49
    throw v0
.end method
