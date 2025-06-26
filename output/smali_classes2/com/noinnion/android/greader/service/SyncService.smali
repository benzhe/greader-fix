.class public Lcom/noinnion/android/greader/service/SyncService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/service/SyncService$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SyncService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    const v0, 0x7f11032e

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sync_service_v2"

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lvx6;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/io/IOException;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyd;->c(Landroid/content/Intent;)Z

    .line 3
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ln56;->H0(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1100ca

    invoke-virtual {p0, v2}, Landroid/app/IntentService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.noinnion.android.greader.reader.action.SYNC_SUBS_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyd;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method public final d(Lcw6;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget v2, v0, Lcw6;->a:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "sync_notifiable"

    const/4 v5, 0x1

    .line 3
    invoke-static {v3, v4, v5}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v11, "notification"

    const/16 v12, 0x10

    const v13, 0x7f080146

    const-string v14, "android.intent.action.MAIN"

    if-eqz v4, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "sync_last_sync_count"

    .line 4
    invoke-static {v3, v4, v10}, Liw6;->m(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    add-int/2addr v15, v2

    .line 5
    invoke-static {v3, v4, v15}, Liw6;->T(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6
    invoke-static {v3}, Liw6;->K(Landroid/content/Context;)I

    move-result v2

    .line 7
    new-instance v4, Ljava/text/MessageFormat;

    const v6, 0x7f1101d5

    invoke-virtual {v1, v6}, Landroid/app/IntentService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v6, v9, [Ljava/lang/Integer;

    .line 8
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v5

    invoke-virtual {v4, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v6, Landroid/content/Intent;

    const-class v15, Lcom/noinnion/android/greader/ui/login/LoginActivity;

    invoke-direct {v6, v3, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v6, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {v3, v10, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const v15, 0x7f11032e

    .line 12
    invoke-virtual {v3, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/noinnion/android/greader/service/SyncService;->a()Ljava/lang/String;

    move-result-object v9

    .line 15
    new-instance v10, Lm7;

    invoke-direct {v10, v3, v9}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v10, v15}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    .line 17
    invoke-virtual {v10, v4}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    .line 18
    invoke-virtual {v10, v4}, Lm7;->j(Ljava/lang/CharSequence;)Lm7;

    .line 19
    iput v2, v10, Lm7;->g:I

    .line 20
    iget-object v2, v10, Lm7;->s:Landroid/app/Notification;

    iput v13, v2, Landroid/app/Notification;->icon:I

    .line 21
    iput-wide v7, v2, Landroid/app/Notification;->when:J

    .line 22
    invoke-virtual {v10, v12, v5}, Lm7;->f(IZ)V

    .line 23
    iput-object v6, v10, Lm7;->f:Landroid/app/PendingIntent;

    const-string v2, "sync_notify_sound"

    const/4 v4, 0x0

    .line 24
    invoke-static {v3, v2, v4}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-string v6, "sync_notify_vibrate"

    .line 25
    invoke-static {v3, v6, v4}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "sync_notify_led"

    .line 26
    invoke-static {v3, v7, v4}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_4

    const-string v2, "sync_notify_sound_ringtone"

    .line 27
    invoke-static {v3, v2}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v6, v2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    .line 28
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_3

    .line 29
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 30
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v10, v2}, Lm7;->h(Landroid/net/Uri;)Lm7;

    goto :goto_2

    :cond_3
    or-int/lit8 v4, v4, 0x1

    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    const v2, -0xff0100

    const/16 v6, 0x1f4

    const/16 v7, 0x7d0

    .line 31
    invoke-virtual {v10, v2, v6, v7}, Lm7;->g(III)Lm7;

    .line 32
    :cond_5
    iget-object v2, v10, Lm7;->s:Landroid/app/Notification;

    iput v4, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    .line 33
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/2addr v4, v5

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 34
    :cond_6
    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_7

    const v3, 0x7f090222

    .line 35
    invoke-virtual {v10}, Lm7;->b()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 36
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sync_notifiable_custom"

    .line 37
    invoke-static {v2, v3, v5}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 38
    iget v3, v0, Lcw6;->a:I

    if-nez v3, :cond_8

    goto/16 :goto_b

    .line 39
    :cond_8
    iget-object v3, v0, Lcw6;->b:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_b

    .line 40
    :cond_9
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/noinnion/android/greader/ui/login/LoginActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {v3, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 42
    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/noinnion/android/greader/service/SyncService;->a()Ljava/lang/String;

    move-result-object v8

    .line 45
    new-instance v9, Lm7;

    invoke-direct {v9, v2, v8}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    iget-object v8, v9, Lm7;->s:Landroid/app/Notification;

    iput v13, v8, Landroid/app/Notification;->icon:I

    .line 47
    iput-wide v6, v8, Landroid/app/Notification;->when:J

    .line 48
    invoke-virtual {v9, v12, v5}, Lm7;->f(IZ)V

    .line 49
    iput-object v3, v9, Lm7;->f:Landroid/app/PendingIntent;

    const-string v3, "sync_notify_custom_sound"

    .line 50
    invoke-static {v2, v3, v4}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    const-string v6, "sync_notify_custom_vibrate"

    .line 51
    invoke-static {v2, v6, v4}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "sync_notify_custom_led"

    .line 52
    invoke-static {v2, v7, v4}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_a

    const/4 v4, 0x2

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    if-eqz v3, :cond_d

    const-string v3, "sync_notify_custom_sound_ringtone"

    .line 53
    invoke-static {v2, v3}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object v6, v3

    const/4 v3, 0x2

    goto :goto_5

    :cond_b
    const/4 v3, 0x2

    .line 54
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    if-eqz v6, :cond_c

    .line 55
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 56
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v9, v3}, Lm7;->h(Landroid/net/Uri;)Lm7;

    goto :goto_6

    :cond_c
    or-int/lit8 v4, v4, 0x1

    :cond_d
    :goto_6
    if-eqz v7, :cond_e

    const v3, -0xff0100

    const/16 v6, 0x1f4

    const/16 v7, 0x7d0

    .line 57
    invoke-virtual {v9, v3, v6, v7}, Lm7;->g(III)Lm7;

    .line 58
    :cond_e
    iget-object v3, v9, Lm7;->s:Landroid/app/Notification;

    iput v4, v3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_f

    .line 59
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 60
    :cond_f
    new-instance v3, Ll7;

    invoke-direct {v3}, Ll7;-><init>()V

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    new-instance v6, Lvd;

    sget-object v18, Lip6;->A:Landroid/net/Uri;

    const-string v7, "_id"

    const-string v8, "title"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v20, "notification = 1"

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v22}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lvd;->k()Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_10

    const/4 v6, 0x0

    goto :goto_8

    .line 63
    :cond_10
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 64
    :goto_7
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x0

    .line 65
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 66
    :cond_11
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v6, v7

    :goto_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 67
    :goto_9
    iget-object v10, v0, Lcw6;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_14

    .line 68
    iget-object v10, v0, Lcw6;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 69
    iget-object v12, v0, Lcw6;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    add-int/2addr v8, v12

    if-lez v8, :cond_13

    .line 70
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    if-nez v7, :cond_12

    const-string v13, ""

    goto :goto_a

    :cond_12
    const-string v13, ", "

    .line 71
    :goto_a
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/16 v13, 0x14

    invoke-static {v10, v13}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_14
    if-nez v8, :cond_15

    goto :goto_b

    .line 72
    :cond_15
    new-instance v0, Ljava/text/MessageFormat;

    const v6, 0x7f1101d6

    invoke-virtual {v1, v6}, Landroid/app/IntentService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v6, v5, [Ljava/lang/Integer;

    .line 73
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v6, v10

    invoke-virtual {v0, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v9, v0}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    invoke-virtual {v9, v0}, Lm7;->j(Ljava/lang/CharSequence;)Lm7;

    .line 75
    iput v8, v9, Lm7;->g:I

    .line 76
    invoke-virtual {v9, v4}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    .line 77
    invoke-static {v4}, Lm7;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Ll7;->b:Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {v9, v3}, Lm7;->i(Ln7;)Lm7;

    .line 79
    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v2, 0x7f090221

    .line 80
    invoke-virtual {v9}, Lm7;->b()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 82
    throw v0

    .line 83
    :cond_16
    :goto_b
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.noinnion.android.greader.reader.action.START_SYNC_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "syncFinished"

    .line 84
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    invoke-static/range {p0 .. p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lyd;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.noinnion.android.greader.reader.action.START_SYNC_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "syncStarted"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyd;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/noinnion/android/greader/service/SyncService$a;

    invoke-direct {p1, p0}, Lcom/noinnion/android/greader/service/SyncService$a;-><init>(Lcom/noinnion/android/greader/service/SyncService;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lep6;->m()Lrn6;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrn6;->setRequestStop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {p0}, Landroid/app/IntentService;->stopSelf()V

    .line 5
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f11032e

    .line 2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f1101d7

    .line 3
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/noinnion/android/greader/service/SyncService;->a()Ljava/lang/String;

    move-result-object v7

    .line 6
    new-instance v8, Lm7;

    invoke-direct {v8, v0, v7}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v8, v3}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    .line 8
    invoke-virtual {v8, v4}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    .line 9
    invoke-virtual {v8, v4}, Lm7;->j(Ljava/lang/CharSequence;)Lm7;

    .line 10
    iget-object v0, v8, Lm7;->s:Landroid/app/Notification;

    const v3, 0x7f080146

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 11
    iput-wide v5, v0, Landroid/app/Notification;->when:J

    const/16 v0, 0x10

    const/4 v3, 0x1

    .line 12
    invoke-virtual {v8, v0, v3}, Lm7;->f(IZ)V

    .line 13
    invoke-virtual {v8}, Lm7;->b()Landroid/app/Notification;

    move-result-object v0

    const v4, 0x7f090223

    .line 14
    invoke-virtual {v1, v4, v0}, Landroid/app/IntentService;->startForeground(ILandroid/app/Notification;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "subId"

    const-wide/16 v5, 0x0

    .line 16
    invoke-virtual {v2, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v0, "subUid"

    .line 17
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    cmp-long v10, v7, v5

    if-lez v10, :cond_1

    .line 18
    invoke-static {v4, v7, v8, v3}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 19
    invoke-static {v4, v0, v3}, Lip6;->d(Landroid/content/Context;Ljava/lang/String;Z)Lip6;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v9

    :goto_0
    if-nez v0, :cond_3

    const-string v5, "tagUid"

    .line 20
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "uid"

    .line 21
    invoke-static {v4, v6, v5, v3}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v9

    .line 22
    :goto_1
    invoke-static {v4}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v10

    const/4 v6, 0x0

    .line 23
    :try_start_0
    invoke-virtual {v10}, Lep6;->m()Lrn6;

    move-result-object v7

    invoke-virtual {v7, v6}, Lrn6;->setRequestStop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 24
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v15, "com.noinnion.android.greader.reader.action.SYNC_FINISHED"

    if-eqz v0, :cond_4

    .line 25
    :try_start_1
    invoke-static {v4}, Liw6;->I(Landroid/content/Context;)I

    invoke-virtual {v10, v0, v7, v8, v6}, Lep6;->T(Lip6;JZ)I

    move-result v0
    :try_end_1
    .catch Lgw6$a; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lgw6$b; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v3, v0

    .line 26
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/noinnion/android/greader/service/SyncService;->c()V
    :try_end_2
    .catch Lgw6$a; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lgw6$b; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v15

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v15

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v5, v15

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v5, v15

    goto/16 :goto_a

    :catch_3
    move-object v5, v15

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move-object v5, v15

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v5, v15

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move-object v5, v15

    goto/16 :goto_9

    :catch_6
    move-object v5, v15

    goto/16 :goto_b

    :cond_4
    if-eqz v5, :cond_5

    .line 27
    :try_start_3
    iget-object v11, v5, Llp6;->f:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v4}, Liw6;->I(Landroid/content/Context;)I

    move-result v0
    :try_end_3
    .catch Lgw6$a; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lgw6$b; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide v12, v7

    move-object v5, v15

    move v15, v0

    :try_start_4
    invoke-virtual/range {v10 .. v15}, Lep6;->W(Ljava/lang/String;JZI)I

    move-result v0
    :try_end_4
    .catch Lgw6$a; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lgw6$b; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    add-int/2addr v3, v0

    .line 28
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/noinnion/android/greader/service/SyncService;->c()V
    :try_end_5
    .catch Lgw6$a; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lgw6$b; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto/16 :goto_8

    :catch_8
    move-exception v0

    goto/16 :goto_a

    :cond_5
    move-object v5, v15

    :try_start_6
    const-string v0, "manual_sync"

    .line 29
    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 30
    invoke-static {v4}, Liw6;->M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 31
    :cond_7
    :goto_3
    sput-boolean v3, Lon6;->b:Z

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/noinnion/android/greader/service/SyncService;->e()V

    .line 33
    invoke-virtual {v10, v7, v8}, Lep6;->I(J)Lcw6;

    move-result-object v0

    .line 34
    iget v3, v0, Lcw6;->a:I
    :try_end_6
    .catch Lgw6$a; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lgw6$b; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 35
    :try_start_7
    invoke-virtual {v10}, Lep6;->d()V

    .line 36
    invoke-virtual {v10, v7, v8}, Lep6;->G(J)V

    if-lez v3, :cond_8

    const-string v10, "last_sync_time"

    .line 37
    invoke-static {v4, v10, v7, v8}, Liw6;->U(Landroid/content/Context;Ljava/lang/String;J)V

    .line 38
    :cond_8
    invoke-virtual {v1, v0}, Lcom/noinnion/android/greader/service/SyncService;->d(Lcw6;)V

    .line 39
    invoke-static {v4}, Lyo6;->c(Landroid/content/Context;)V
    :try_end_7
    .catch Lgw6$a; {:try_start_7 .. :try_end_7} :catch_c
    .catch Lgw6$b; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 40
    :goto_4
    sput-boolean v6, Lon6;->b:Z

    .line 41
    invoke-static/range {p0 .. p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    goto :goto_9

    :goto_5
    const/4 v3, 0x0

    .line 42
    :goto_6
    :try_start_8
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static/range {p0 .. p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v11

    invoke-virtual {v11, v10}, Lyd;->c(Landroid/content/Intent;)Z

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 46
    sput-boolean v6, Lon6;->b:Z

    .line 47
    invoke-static/range {p0 .. p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_7
    const/4 v3, 0x0

    .line 48
    :goto_8
    :try_start_9
    invoke-virtual {v1, v0}, Lcom/noinnion/android/greader/service/SyncService;->b(Ljava/io/IOException;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 50
    sput-boolean v6, Lon6;->b:Z

    .line 51
    invoke-static/range {p0 .. p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_9
    const/4 v3, 0x0

    .line 52
    :goto_a
    :try_start_a
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR_LOGIN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static/range {p0 .. p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v11

    invoke-virtual {v11, v10}, Lyd;->c(Landroid/content/Intent;)Z

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 56
    sput-boolean v6, Lon6;->b:Z

    .line 57
    invoke-static/range {p0 .. p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :catchall_4
    move-exception v0

    .line 58
    sput-boolean v6, Lon6;->b:Z

    .line 59
    invoke-static/range {p0 .. p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lyd;->c(Landroid/content/Intent;)Z

    .line 60
    throw v0

    :catch_b
    :goto_b
    const/4 v3, 0x0

    .line 61
    :catch_c
    :goto_c
    sput-boolean v6, Lon6;->b:Z

    .line 62
    invoke-static/range {p0 .. p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-virtual {v0, v10}, Lyd;->c(Landroid/content/Intent;)Z

    const-string v0, "sync_offline"

    .line 63
    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "offline_usage"

    .line 64
    invoke-static {v4, v0}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    invoke-static {v4, v0}, Liw6;->b(Landroid/content/Context;I)Z

    move-result v6

    :cond_9
    if-eqz v6, :cond_c

    .line 68
    :cond_a
    invoke-static {v4}, Liw6;->D(Landroid/content/Context;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    const-wide/16 v2, 0x0

    .line 69
    invoke-static {v4, v9, v2, v3}, Ln56;->s0(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_e

    :cond_b
    if-lez v3, :cond_c

    .line 70
    invoke-static {v4, v9, v7, v8}, Ln56;->s0(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_c
    :goto_e
    return-void
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
