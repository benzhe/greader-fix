.class public Lev6;
.super Lvm6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvm6<",
        "Lcom/noinnion/android/reader/common/subscription/Feed;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvm6;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/noinnion/android/reader/common/subscription/Feed;

    .line 2
    iget-object v0, p0, Lvm6;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v4

    .line 5
    iget-object v7, p1, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;

    iget-object v8, p1, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    const/4 v9, 0x0

    .line 6
    invoke-virtual {v4}, Lep6;->m()Lrn6;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v10}, Lrn6;->editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z

    .line 7
    invoke-virtual {v4, v2, v3}, Lep6;->S(J)V

    const/4 v2, 0x1

    .line 8
    invoke-static {v0, v2}, Ln56;->H1(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    sget-object v3, Lip6;->A:Landroid/net/Uri;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lip6;->A:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id DESC limit 1"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    new-instance v4, Lip6;

    invoke-direct {v4, v3}, Lip6;-><init>(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_0
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_3

    .line 14
    iget-wide v5, v4, Lip6;->e:J

    const-string v3, "a"

    .line 15
    invoke-static {v0, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/noinnion/android/greader/service/SyncService;

    invoke-direct {v3, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "manual_sync"

    .line 17
    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "subId"

    .line 18
    invoke-virtual {v3, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 19
    sget-object v2, Lu7;->a:Ljava/lang/Object;

    .line 20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_2

    .line 21
    invoke-virtual {v0, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    :goto_2
    iget-object v1, v4, Lip6;->f:Ljava/lang/String;

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 24
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 25
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    .line 26
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_3
    iget-object v1, p1, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3
    return-object v1
.end method
