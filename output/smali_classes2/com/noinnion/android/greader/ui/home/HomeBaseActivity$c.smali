.class public final Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
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
.field public a:J

.field public b:Z

.field public final c:Lip6;

.field public final d:Llp6;

.field public final e:Ljava/lang/String;

.field public final synthetic f:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->f:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->b:Z

    .line 3
    sget-object p1, Lon6;->a:Lew6;

    iget-object v0, p1, Lew6;->a:Lip6;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->c:Lip6;

    .line 4
    iget-object v0, p1, Lew6;->b:Llp6;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->d:Llp6;

    .line 5
    iget-object p1, p1, Lew6;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->e:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    const-string v2, "params"

    .line 2
    invoke-static {v0, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->f:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v2

    .line 5
    iget-object v3, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, " = 0"

    const-string v5, "keep_unread"

    const-string v6, " = 0 AND "

    const-string v7, "read_time"

    const-string v8, "read"

    const/4 v9, 0x1

    .line 6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v3, :cond_1

    .line 7
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 8
    iget-object v3, v2, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 9
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    :try_start_0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-virtual {v14, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v14, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\'"

    const-string v5, ""

    .line 17
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lep6;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " AND ("

    .line 20
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_0
    sget-object v0, Lap6;->B:Landroid/net/Uri;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v3, v0, v14, v4, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 22
    invoke-virtual {v2}, Lep6;->Y()V

    .line 23
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    iget-object v0, v2, Lep6;->a:Landroid/content/Context;

    .line 26
    invoke-static {v0, v9, v9}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 27
    invoke-virtual {v2}, Lep6;->O()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    .line 28
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 29
    throw v0

    .line 30
    :cond_1
    iget-object v3, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->c:Lip6;

    const-wide/16 v12, 0x0

    if-eqz v3, :cond_4

    .line 31
    iget-wide v4, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->a:J

    cmp-long v0, v4, v12

    if-nez v0, :cond_3

    .line 32
    sput-boolean v9, Lon6;->i:Z

    .line 33
    iget-wide v3, v3, Lip6;->o:J

    cmp-long v0, v3, v12

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_0
    iput-wide v3, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->a:J

    .line 34
    :cond_3
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->c:Lip6;

    iget-wide v3, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->a:J

    iget-boolean v5, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->b:Z

    invoke-virtual {v2, v0, v3, v4, v5}, Lep6;->Q(Lip6;JZ)V

    goto/16 :goto_3

    .line 35
    :cond_4
    iget-object v3, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->d:Llp6;

    if-eqz v3, :cond_7

    .line 36
    iget-wide v4, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->a:J

    cmp-long v0, v4, v12

    if-nez v0, :cond_6

    .line 37
    sput-boolean v9, Lon6;->i:Z

    .line 38
    iget-wide v3, v3, Llp6;->k:J

    cmp-long v0, v3, v12

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->a:J

    .line 39
    :cond_6
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->d:Llp6;

    iget-wide v3, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->a:J

    iget-boolean v5, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->b:Z

    invoke-virtual {v2, v0, v3, v4, v5}, Lep6;->R(Llp6;JZ)V

    goto/16 :goto_3

    .line 40
    :cond_7
    iget-wide v14, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->a:J

    cmp-long v3, v14, v12

    if-nez v3, :cond_9

    .line 41
    invoke-static {v0}, Liw6;->z(Landroid/content/Context;)J

    move-result-wide v14

    cmp-long v3, v14, v12

    if-lez v3, :cond_8

    invoke-static {v0}, Liw6;->z(Landroid/content/Context;)J

    move-result-wide v12

    goto :goto_2

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    :goto_2
    iput-wide v12, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->a:J

    .line 42
    :cond_9
    iget-wide v12, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->a:J

    iget-boolean v0, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->b:Z

    .line 43
    iget-object v3, v2, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 44
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    :try_start_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 46
    invoke-virtual {v14, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v14, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "sync_time"

    .line 48
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v14, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_a

    const-string v0, " AND "

    .line 51
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "updated_time"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, v12, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_a
    sget-object v0, Lap6;->B:Landroid/net/Uri;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v3, v0, v14, v4, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    invoke-virtual {v2}, Lep6;->Y()V

    .line 54
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 56
    iget-object v0, v2, Lep6;->a:Landroid/content/Context;

    .line 57
    invoke-static {v0, v9, v9}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 58
    :try_start_2
    invoke-virtual {v2}, Lep6;->m()Lrn6;

    move-result-object v0

    invoke-virtual {v0, v11, v11, v12, v13}, Lrn6;->markAllAsRead(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 59
    :catch_0
    invoke-virtual {v2, v9, v11, v12, v13}, Lep6;->z(ILjava/lang/String;J)V

    :goto_3
    return-object v11

    :catchall_1
    move-exception v0

    .line 60
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 61
    throw v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->f:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->A()V

    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->c:Lip6;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->d:Llp6;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->b:Z

    if-nez v0, :cond_2

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->f:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    const/4 v1, 0x0

    const v2, 0x7f1101cb

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->w:Landroid/app/ProgressDialog;

    :cond_2
    return-void
.end method
