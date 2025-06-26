.class public final Lxo6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)V
    .locals 11

    const-string v0, "c"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/app/AlarmManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Landroid/app/AlarmManager;

    const-string v2, "PendingIntent.getBroadca\u2026tent.FLAG_UPDATE_CURRENT)"

    const/high16 v4, 0x8000000

    const/16 v5, 0x2712

    const-string v6, "com.noinnion.android.greader.reader.action.ACTION_CLEAN"

    const/high16 v7, 0x10000000

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 2
    const-class v9, Lcom/noinnion/android/greader/receiver/ScheduleReceiver;

    invoke-static {p0, v9, v7}, Ljo;->I(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v9

    .line 3
    sget v10, Lcom/noinnion/android/greader/receiver/ScheduleReceiver;->a:I

    .line 4
    invoke-virtual {v9, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-static {p0, v5, v9, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-static {v9, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/AlarmManager;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    check-cast v3, Landroid/app/AlarmManager;

    if-eqz v3, :cond_3

    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "time"

    .line 9
    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x5

    .line 10
    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xb

    const/4 v9, 0x4

    .line 11
    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v9, 0x0

    .line 12
    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 13
    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 14
    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->set(II)V

    .line 15
    const-class v1, Lcom/noinnion/android/greader/receiver/ScheduleReceiver;

    invoke-static {p0, v1, v7}, Ljo;->I(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v1

    .line 16
    sget v7, Lcom/noinnion/android/greader/receiver/ScheduleReceiver;->a:I

    .line 17
    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    invoke-static {p0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p0, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 20
    invoke-static {v3, v0, v1, p0}, Lgx6;->a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    :cond_3
    return-void
.end method
