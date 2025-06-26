.class public Ljq6;
.super Lvm6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljq6<",
        "Ljava/lang/Void;",
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
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lvm6;->a:Landroid/content/Context;

    const-string v0, "c"

    .line 3
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "alarm"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/app/AlarmManager;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v2, v4

    :cond_0
    check-cast v2, Landroid/app/AlarmManager;

    const-string v3, "PendingIntent.getBroadca\u2026tent.FLAG_UPDATE_CURRENT)"

    const/high16 v5, 0x8000000

    const/4 v6, 0x1

    const/high16 v7, 0x10000000

    if-eqz v2, :cond_1

    .line 5
    const-class v8, Lcom/noinnion/android/greader/receiver/ScheduleReceiver;

    invoke-static {p1, v8, v7}, Ljo;->I(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v8

    .line 6
    sget v9, Lcom/noinnion/android/greader/receiver/ScheduleReceiver;->a:I

    const-string v9, "com.noinnion.android.greader.reader.action.ACTION_SYNC"

    .line 7
    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v9, 0x2711

    .line 8
    invoke-static {p1, v9, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-static {v8, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 10
    :cond_1
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/AlarmManager;

    if-nez v1, :cond_2

    move-object v0, v4

    :cond_2
    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_3

    .line 12
    const-class v1, Lcom/noinnion/android/greader/receiver/ScheduleReceiver;

    invoke-static {p1, v1, v7}, Ljo;->I(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v1

    .line 13
    sget v2, Lcom/noinnion/android/greader/receiver/ScheduleReceiver;->a:I

    const-string v2, "com.noinnion.android.greader.reader.action.ACTION_CLEAN"

    .line 14
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2712

    .line 15
    invoke-static {p1, v2, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v1, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 17
    :cond_3
    invoke-static {p1}, Ln56;->l0(Landroid/content/Context;)V

    .line 18
    invoke-static {p1}, Ln56;->m0(Landroid/content/Context;)V

    .line 19
    invoke-static {p1}, Ln56;->n0(Landroid/content/Context;)V

    .line 20
    sget v0, Lcn6;->b:I

    .line 21
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "login_method"

    .line 23
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "google_auth"

    .line 24
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "google_auth_time"

    .line 25
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "user_id"

    .line 26
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    sput-object v4, Lon6;->f:Lep6;

    return-object v4
.end method
