.class public Lcom/noinnion/android/greader/service/CleanService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/service/CleanService$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CleanService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    const-string v0, "power"

    move-object/from16 v1, p0

    .line 1
    invoke-virtual {v1, v0}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cache_auto_cleanup_images"

    .line 4
    invoke-static {v0, v2}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x3e8

    :goto_0
    const/4 v4, 0x0

    if-gez v2, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-static {v0}, Liw6;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_3
    new-instance v5, Ljava/io/File;

    const-string v6, "/gReader/.image-cache/"

    invoke-static {v0, v6}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    array-length v5, v0

    if-gt v5, v2, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    array-length v6, v0

    new-array v6, v6, [Lmx6;

    const/4 v7, 0x0

    .line 14
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_6

    .line 15
    new-instance v8, Lmx6;

    aget-object v9, v0, v7

    invoke-direct {v8, v9}, Lmx6;-><init>(Ljava/io/File;)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 16
    :cond_6
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    sub-int/2addr v5, v2

    .line 17
    new-array v0, v5, [Ljava/lang/String;

    .line 18
    new-array v2, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_7

    .line 19
    aget-object v8, v6, v7

    iget-object v8, v8, Lmx6;->f:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    .line 20
    aget-object v8, v6, v7

    iget-object v8, v8, Lmx6;->f:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 21
    :cond_7
    invoke-static {v2}, Lhy6;->d([Ljava/lang/String;)V

    .line 22
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-static {v0}, Liw6;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 25
    :cond_9
    new-instance v5, Ljava/io/File;

    const-string v6, "/gReader/cache/"

    invoke-static {v2, v6}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 27
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 28
    array-length v6, v2

    if-nez v6, :cond_a

    goto/16 :goto_8

    .line 29
    :cond_a
    array-length v6, v2

    .line 30
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_4
    if-eq v9, v8, :cond_b

    if-lt v9, v3, :cond_c

    .line 31
    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lap6;->B:Landroid/net/Uri;

    sget-object v13, Lap6;->J:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v9, "sync_time DESC limit "

    invoke-static {v9}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int/lit16 v14, v10, 0x3e8

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", 1000"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v14, "cached > 0"

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_12

    const/4 v7, 0x0

    :cond_c
    if-eqz v7, :cond_11

    .line 32
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_d

    goto :goto_7

    .line 33
    :cond_d
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v6, v0, :cond_e

    goto/16 :goto_8

    .line 34
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    array-length v3, v2

    :goto_5
    if-ge v4, v3, :cond_f

    aget-object v6, v2, v4

    .line 36
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 37
    :cond_f
    invoke-interface {v0, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 38
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 44
    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 45
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lhy6;->d([Ljava/lang/String;)V

    goto :goto_8

    .line 46
    :cond_11
    :goto_7
    invoke-static {v0}, Ln56;->n0(Landroid/content/Context;)V

    goto :goto_8

    .line 47
    :cond_12
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 48
    :cond_13
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_13

    .line 50
    :cond_14
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 51
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    .line 52
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 53
    throw v0

    :cond_15
    :goto_8
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/noinnion/android/greader/service/CleanService$a;

    invoke-direct {p1, p0}, Lcom/noinnion/android/greader/service/CleanService$a;-><init>(Lcom/noinnion/android/greader/service/CleanService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11001d

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f1101bf

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "clean_service_v2"

    const-string v5, "Clean Service"

    .line 5
    invoke-static {p1, v4, v5}, Lvx6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Lm7;

    invoke-direct {v5, p1, v4}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5, v0}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    invoke-virtual {v5, v1}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    invoke-virtual {v5, v1}, Lm7;->j(Ljava/lang/CharSequence;)Lm7;

    .line 8
    iget-object p1, v5, Lm7;->s:Landroid/app/Notification;

    const v0, 0x7f080146

    iput v0, p1, Landroid/app/Notification;->icon:I

    .line 9
    iput-wide v2, p1, Landroid/app/Notification;->when:J

    const/4 p1, 0x1

    const/16 v0, 0x10

    .line 10
    invoke-virtual {v5, v0, p1}, Lm7;->f(IZ)V

    .line 11
    invoke-virtual {v5}, Lm7;->b()Landroid/app/Notification;

    move-result-object p1

    const v0, 0x7f090219

    invoke-virtual {p0, v0, p1}, Landroid/app/IntentService;->startForeground(ILandroid/app/Notification;)V

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/CleanService;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {p0}, Lxo6;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/IntentService;->stopForeground(Z)V

    const-string p1, "notification"

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {p0}, Lxo6;->a(Landroid/content/Context;)V

    .line 18
    throw p1
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
