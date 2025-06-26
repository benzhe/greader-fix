.class public Lo7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Notification$Builder;

.field public final b:Lm7;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lm7;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lo7;->c:Ljava/util/List;

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lo7;->d:Landroid/os/Bundle;

    .line 4
    iput-object v1, v0, Lo7;->b:Lm7;

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 6
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lm7;->a:Landroid/content/Context;

    iget-object v5, v1, Lm7;->q:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, v0, Lo7;->a:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lm7;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lo7;->a:Landroid/app/Notification$Builder;

    .line 8
    :goto_0
    iget-object v2, v1, Lm7;->s:Landroid/app/Notification;

    .line 9
    iget-object v4, v0, Lo7;->a:Landroid/app/Notification$Builder;

    iget-wide v5, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->icon:I

    iget v6, v2, Landroid/app/Notification;->iconLevel:I

    .line 10
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 11
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    .line 12
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->vibrate:[J

    .line 13
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->ledARGB:I

    iget v7, v2, Landroid/app/Notification;->ledOnMS:I

    iget v8, v2, Landroid/app/Notification;->ledOffMS:I

    .line 14
    invoke-virtual {v4, v5, v7, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 15
    :goto_1
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 16
    :goto_2
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 17
    :goto_3
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->defaults:I

    .line 18
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lm7;->d:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lm7;->e:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 21
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lm7;->f:Landroid/app/PendingIntent;

    .line 22
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 24
    :goto_4
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 25
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lm7;->g:I

    .line 26
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lm7;->k:I

    iget v7, v1, Lm7;->l:I

    iget-boolean v9, v1, Lm7;->m:Z

    .line 27
    invoke-virtual {v4, v5, v7, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 28
    iget-object v4, v0, Lo7;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 29
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lm7;->h:I

    .line 30
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 31
    iget-object v4, v1, Lm7;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v7, 0x18

    const-string v9, "android.support.allowGeneratedReplies"

    const/16 v10, 0x1d

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk7;

    .line 32
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    invoke-virtual {v5}, Lk7;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v12

    const/16 v13, 0x17

    if-lt v11, v13, :cond_6

    .line 34
    new-instance v11, Landroid/app/Notification$Action$Builder;

    if-eqz v12, :cond_5

    .line 35
    invoke-virtual {v12}, Landroidx/core/graphics/drawable/IconCompat;->f()Landroid/graphics/drawable/Icon;

    move-result-object v12

    goto :goto_6

    :cond_5
    move-object v12, v6

    .line 36
    :goto_6
    iget-object v13, v5, Lk7;->j:Ljava/lang/CharSequence;

    .line 37
    iget-object v14, v5, Lk7;->k:Landroid/app/PendingIntent;

    .line 38
    invoke-direct {v11, v12, v13, v14}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_8

    .line 39
    :cond_6
    new-instance v11, Landroid/app/Notification$Action$Builder;

    if-eqz v12, :cond_7

    .line 40
    invoke-virtual {v12}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v12

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    .line 41
    :goto_7
    iget-object v13, v5, Lk7;->j:Ljava/lang/CharSequence;

    .line 42
    iget-object v14, v5, Lk7;->k:Landroid/app/PendingIntent;

    .line 43
    invoke-direct {v11, v12, v13, v14}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 44
    :goto_8
    iget-object v12, v5, Lk7;->c:[Lr7;

    if-eqz v12, :cond_9

    .line 45
    array-length v13, v12

    new-array v14, v13, [Landroid/app/RemoteInput;

    .line 46
    array-length v15, v12

    if-gtz v15, :cond_8

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v13, :cond_9

    .line 47
    aget-object v15, v14, v12

    .line 48
    invoke-virtual {v11, v15}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 49
    :cond_8
    aget-object v1, v12, v8

    .line 50
    new-instance v1, Landroid/app/RemoteInput$Builder;

    .line 51
    throw v6

    .line 52
    :cond_9
    iget-object v12, v5, Lk7;->a:Landroid/os/Bundle;

    if-eqz v12, :cond_a

    .line 53
    new-instance v12, Landroid/os/Bundle;

    .line 54
    iget-object v13, v5, Lk7;->a:Landroid/os/Bundle;

    .line 55
    invoke-direct {v12, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_a

    .line 56
    :cond_a
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 57
    :goto_a
    iget-boolean v13, v5, Lk7;->e:Z

    .line 58
    invoke-virtual {v12, v9, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v7, :cond_b

    .line 60
    iget-boolean v7, v5, Lk7;->e:Z

    .line 61
    invoke-virtual {v11, v7}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 62
    :cond_b
    iget v7, v5, Lk7;->g:I

    const-string v13, "android.support.action.semanticAction"

    .line 63
    invoke-virtual {v12, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v7, 0x1c

    if-lt v9, v7, :cond_c

    .line 64
    iget v7, v5, Lk7;->g:I

    .line 65
    invoke-virtual {v11, v7}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    :cond_c
    if-lt v9, v10, :cond_d

    .line 66
    iget-boolean v7, v5, Lk7;->h:Z

    .line 67
    invoke-virtual {v11, v7}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 68
    :cond_d
    iget-boolean v5, v5, Lk7;->f:Z

    const-string v7, "android.support.action.showsUserInterface"

    .line 69
    invoke-virtual {v12, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {v11, v12}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 71
    iget-object v5, v0, Lo7;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v11}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    .line 72
    :cond_e
    iget-object v4, v1, Lm7;->o:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    .line 73
    iget-object v5, v0, Lo7;->d:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 74
    :cond_f
    iget-object v4, v0, Lo7;->a:Landroid/app/Notification$Builder;

    iget-boolean v5, v1, Lm7;->i:Z

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 75
    iget-object v4, v0, Lo7;->a:Landroid/app/Notification$Builder;

    iget-boolean v5, v1, Lm7;->n:Z

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 76
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 77
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 78
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 79
    iget-object v4, v0, Lo7;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lm7;->p:I

    .line 80
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 81
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 82
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v2, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 83
    invoke-virtual {v4, v5, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 84
    iget-object v2, v1, Lm7;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 85
    iget-object v5, v0, Lo7;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_b

    .line 86
    :cond_10
    iget-object v2, v1, Lm7;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 87
    iget-object v2, v1, Lm7;->o:Landroid/os/Bundle;

    if-nez v2, :cond_11

    .line 88
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lm7;->o:Landroid/os/Bundle;

    .line 89
    :cond_11
    iget-object v2, v1, Lm7;->o:Landroid/os/Bundle;

    const-string v4, "android.car.EXTENSIONS"

    .line 90
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_12

    .line 91
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 92
    :cond_12
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v11, 0x0

    .line 93
    :goto_c
    iget-object v12, v1, Lm7;->c:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_15

    .line 94
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lm7;->c:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lk7;

    .line 96
    sget-object v14, Lp7;->a:Ljava/lang/Object;

    .line 97
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 98
    invoke-virtual {v13}, Lk7;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v15

    if-eqz v15, :cond_13

    .line 99
    invoke-virtual {v15}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v15

    goto :goto_d

    :cond_13
    const/4 v15, 0x0

    :goto_d
    const-string v10, "icon"

    invoke-virtual {v14, v10, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    iget-object v10, v13, Lk7;->j:Ljava/lang/CharSequence;

    const-string v15, "title"

    .line 101
    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 102
    iget-object v10, v13, Lk7;->k:Landroid/app/PendingIntent;

    const-string v15, "actionIntent"

    .line 103
    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    iget-object v10, v13, Lk7;->a:Landroid/os/Bundle;

    if-eqz v10, :cond_14

    .line 105
    new-instance v10, Landroid/os/Bundle;

    .line 106
    iget-object v15, v13, Lk7;->a:Landroid/os/Bundle;

    .line 107
    invoke-direct {v10, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_e

    .line 108
    :cond_14
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 109
    :goto_e
    iget-boolean v15, v13, Lk7;->e:Z

    .line 110
    invoke-virtual {v10, v9, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v15, "extras"

    .line 111
    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    iget-object v10, v13, Lk7;->c:[Lr7;

    .line 113
    invoke-static {v10}, Lp7;->a([Lr7;)[Landroid/os/Bundle;

    move-result-object v10

    const-string v15, "remoteInputs"

    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 114
    iget-boolean v10, v13, Lk7;->f:Z

    const-string v15, "showsUserInterface"

    .line 115
    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    iget v10, v13, Lk7;->g:I

    const-string v13, "semanticAction"

    .line 117
    invoke-virtual {v14, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    invoke-virtual {v5, v12, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v11, v11, 0x1

    const/16 v10, 0x1d

    goto :goto_c

    :cond_15
    const-string v9, "invisible_actions"

    .line 119
    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    iget-object v5, v1, Lm7;->o:Landroid/os/Bundle;

    if-nez v5, :cond_16

    .line 121
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v1, Lm7;->o:Landroid/os/Bundle;

    .line 122
    :cond_16
    iget-object v5, v1, Lm7;->o:Landroid/os/Bundle;

    .line 123
    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 124
    iget-object v5, v0, Lo7;->d:Landroid/os/Bundle;

    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 125
    :cond_17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_18

    .line 126
    iget-object v4, v0, Lo7;->a:Landroid/app/Notification$Builder;

    iget-object v5, v1, Lm7;->o:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 127
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_18
    if-lt v2, v3, :cond_19

    .line 128
    iget-object v3, v0, Lo7;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 129
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 130
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 131
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 132
    iget-object v3, v1, Lm7;->q:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 133
    iget-object v3, v0, Lo7;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 134
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 135
    invoke-virtual {v3, v8, v8, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 136
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_19
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1a

    .line 137
    iget-object v2, v0, Lo7;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, v1, Lm7;->r:Z

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 138
    iget-object v1, v0, Lo7;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    :cond_1a
    return-void
.end method
