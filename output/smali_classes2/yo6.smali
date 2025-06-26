.class public final Lyo6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    const-class v0, Lcom/noinnion/android/greader/receiver/ScheduleReceiver;

    const/high16 v1, 0x10000000

    invoke-static {p0, v0, v1}, Ljo;->I(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    .line 2
    sget v1, Lcom/noinnion/android/greader/receiver/ScheduleReceiver;->a:I

    const-string v1, "com.noinnion.android.greader.reader.action.ACTION_SYNC"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x2711

    const/high16 v2, 0x8000000

    .line 4
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string v0, "PendingIntent.getBroadca\u2026tent.FLAG_UPDATE_CURRENT)"

    invoke-static {p0, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lyo6;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public static final c(Landroid/content/Context;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lyo6;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static final d(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-static {p0}, Lyo6;->b(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Liw6;->H(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const-string v4, "alarm"

    .line 3
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/app/AlarmManager;

    if-nez v5, :cond_0

    const/4 v4, 0x0

    :cond_0
    check-cast v4, Landroid/app/AlarmManager;

    if-eqz v4, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 5
    invoke-static {p0}, Liw6;->z(Landroid/content/Context;)J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-lez v9, :cond_1

    sub-long v2, v5, v7

    .line 6
    div-long/2addr v2, v0

    const-wide/16 v9, 0x1

    add-long/2addr v2, v9

    mul-long v2, v2, v0

    add-long/2addr v2, v7

    sub-long v0, v2, v5

    :cond_1
    add-long/2addr v5, v0

    .line 7
    invoke-static {p0}, Lyo6;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 8
    invoke-static {v4, v5, v6, p0}, Lgx6;->a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    :cond_2
    return-void
.end method

.method public static final e(Landroid/content/Context;ZZ)V
    .locals 1

    const-string v0, "a"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p0, p1}, Lyo6;->f(Landroid/content/Context;Z)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lyo6;->h(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method public static final f(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "a"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/service/SyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "manual_sync"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p1, "sync_offline"

    .line 3
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    :cond_0
    sget-object p1, Lu7;->a:Ljava/lang/Object;

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static final g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "c"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/service/SyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const-string v1, "user/"

    const/4 v4, 0x2

    .line 3
    invoke-static {p1, v1, v3, v4}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "tagUid"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string v1, "feed/"

    .line 5
    invoke-static {p1, v1, v3, v4}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "subUid"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string p1, "manual_sync"

    .line 7
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    :cond_3
    :goto_1
    sget-object p1, Lu7;->a:Ljava/lang/Object;

    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_4

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2
    const p1, 0x7f1101d7

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final h(Landroid/content/Context;Z)V
    .locals 5

    const-string v0, "a"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/service/SyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    sget-object v1, Lon6;->a:Lew6;

    iget-object v2, v1, Lew6;->a:Lip6;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget-wide v1, v2, Lip6;->e:J

    const-string v4, "subId"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v1, Lew6;->b:Llp6;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, v1, Llp6;->f:Ljava/lang/String;

    const-string v2, "tagUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Lyo6;->d(Landroid/content/Context;)V

    const-string v1, "manual_sync"

    .line 7
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    if-eqz p1, :cond_2

    const-string p1, "sync_offline"

    .line 8
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    :cond_2
    sget-object p1, Lu7;->a:Ljava/lang/Object;

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_3

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void
.end method

.method public static final i(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/service/SyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
