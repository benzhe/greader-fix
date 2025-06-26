.class public Lfy;
.super Lgy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfy$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Lfy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfy;->c:Ljava/lang/Object;

    .line 2
    new-instance v0, Lfy;

    invoke-direct {v0}, Lfy;-><init>()V

    sput-object v0, Lfy;->d:Lfy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgy;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lgy;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lgy;->a:I

    invoke-virtual {p0, p1, v0}, Lfy;->d(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public d(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lgy;->d(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public e(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 5

    const-string v0, "d"

    .line 1
    invoke-super {p0, p1, p2, v0}, Lgy;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    new-instance v1, La10;

    invoke-direct {v1, v0, p1, p3}, La10;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto/16 :goto_2

    .line 3
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010309

    invoke-virtual {v3, v4, v2, p3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Theme.Dialog.Alert"

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    .line 8
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9
    :cond_2
    invoke-static {p1, p2}, Lk00;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v2, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eq p2, p3, :cond_5

    const/4 v4, 0x2

    if-eq p2, v4, :cond_4

    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    const v4, 0x104000a

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 13
    :cond_3
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 14
    :cond_4
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 15
    :cond_5
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_6

    .line 16
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 17
    :cond_6
    invoke-static {p1, p2}, Lk00;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 18
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 19
    :cond_7
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    :goto_2
    if-nez p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string v1, "GooglePlayServicesErrorDialog"

    .line 20
    instance-of v2, p1, Landroidx/fragment/app/FragmentActivity;

    const-string v3, "Cannot display null dialog"

    if-eqz v2, :cond_9

    .line 21
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p1

    .line 23
    new-instance v2, Lmy;

    invoke-direct {v2}, Lmy;-><init>()V

    .line 24
    invoke-static {p2, v3}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 26
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 27
    iput-object p2, v2, Lmy;->e:Landroid/app/Dialog;

    .line 28
    iput-object p4, v2, Lmy;->f:Landroid/content/DialogInterface$OnCancelListener;

    .line 29
    invoke-virtual {v2, p1, v1}, Lmy;->show(Lwb;Ljava/lang/String;)V

    goto :goto_3

    .line 30
    :cond_9
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 31
    new-instance v2, Ley;

    invoke-direct {v2}, Ley;-><init>()V

    .line 32
    invoke-static {p2, v3}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 34
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    iput-object p2, v2, Ley;->e:Landroid/app/Dialog;

    .line 36
    iput-object p4, v2, Ley;->f:Landroid/content/DialogInterface$OnCancelListener;

    .line 37
    invoke-virtual {v2, p1, v1}, Ley;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_3
    return p3
.end method

.method public final f(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lfy$a;

    invoke-direct {p2, p0, p1}, Lfy$a;-><init>(Lfy;Landroid/content/Context;)V

    const-wide/32 v1, 0x1d4c0

    .line 2
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v1, 0x6

    if-nez p3, :cond_2

    if-ne p2, v1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    const-string v2, "common_google_play_services_resolution_required_title"

    .line 4
    invoke-static {p1, v2}, Lk00;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {p1, p2}, Lk00;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-ne p2, v1, :cond_5

    .line 8
    invoke-static {p1}, Lk00;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "common_google_play_services_resolution_required_text"

    .line 9
    invoke-static {p1, v3, v1}, Lk00;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_5
    invoke-static {p1, p2}, Lk00;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "notification"

    .line 12
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 13
    new-instance v5, Lm7;

    const/4 v6, 0x0

    .line 14
    invoke-direct {v5, p1, v6}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    iput-boolean v0, v5, Lm7;->n:Z

    const/16 v6, 0x10

    .line 16
    invoke-virtual {v5, v6, v0}, Lm7;->f(IZ)V

    .line 17
    invoke-virtual {v5, v2}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    new-instance v2, Ll7;

    invoke-direct {v2}, Ll7;-><init>()V

    .line 18
    invoke-static {v1}, Lm7;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Ll7;->b:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {v5, v2}, Lm7;->i(Ln7;)Lm7;

    .line 20
    invoke-static {p1}, Lbi;->O(Landroid/content/Context;)Z

    move-result v2

    const/4 v6, 0x2

    if-eqz v2, :cond_7

    .line 21
    invoke-static {v0}, Lbi;->l(Z)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 23
    iget-object v2, v5, Lm7;->s:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    .line 24
    iput v6, v5, Lm7;->h:I

    .line 25
    invoke-static {p1}, Lbi;->P(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    sget v1, Lcom/google/android/gms/base/R$drawable;->common_full_open_on_phone:I

    sget v2, Lcom/google/android/gms/base/R$string;->common_open_on_phone:I

    .line 27
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v5, v1, v2, p3}, Lm7;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lm7;

    goto :goto_2

    .line 29
    :cond_6
    iput-object p3, v5, Lm7;->f:Landroid/app/PendingIntent;

    goto :goto_2

    :cond_7
    const v2, 0x108008a

    .line 30
    iget-object v7, v5, Lm7;->s:Landroid/app/Notification;

    iput v2, v7, Landroid/app/Notification;->icon:I

    .line 31
    sget v2, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    .line 32
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lm7;->j(Ljava/lang/CharSequence;)Lm7;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 34
    iget-object v7, v5, Lm7;->s:Landroid/app/Notification;

    iput-wide v2, v7, Landroid/app/Notification;->when:J

    .line 35
    iput-object p3, v5, Lm7;->f:Landroid/app/PendingIntent;

    .line 36
    invoke-virtual {v5, v1}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    .line 37
    :goto_2
    invoke-static {}, Lbi;->J()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 38
    invoke-static {}, Lbi;->J()Z

    move-result p3

    invoke-static {p3}, Lbi;->l(Z)V

    .line 39
    sget-object p3, Lfy;->c:Ljava/lang/Object;

    monitor-enter p3

    .line 40
    :try_start_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, "com.google.android.gms.availability"

    .line 41
    invoke-virtual {v4, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 42
    sget-object v2, Lk00;->a:Lm4;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 44
    sget v2, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_channel_name:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_8

    .line 45
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-direct {v1, p3, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_3

    .line 46
    :cond_8
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 47
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 49
    :cond_9
    :goto_3
    iput-object p3, v5, Lm7;->q:Ljava/lang/String;

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 51
    :cond_a
    :goto_4
    invoke-virtual {v5}, Lm7;->b()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v0, :cond_b

    if-eq p2, v6, :cond_b

    const/4 p3, 0x3

    if-eq p2, p3, :cond_b

    const p2, 0x9b6d

    goto :goto_5

    :cond_b
    const/16 p2, 0x28c4

    .line 52
    sget-object p3, Lky;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    :goto_5
    invoke-virtual {v4, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
