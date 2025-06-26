.class public Lcom/noinnion/android/greader/dashclock/UnreadExtension;
.super Lcom/google/android/apps/dashclock/api/DashClockExtension;
.source "SourceFile"


# instance fields
.field public l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/dashclock/api/DashClockExtension;-><init>()V

    .line 2
    new-instance v0, Lcom/noinnion/android/greader/dashclock/UnreadExtension$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/dashclock/UnreadExtension$a;-><init>(Lcom/noinnion/android/greader/dashclock/UnreadExtension;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/dashclock/UnreadExtension;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/apps/dashclock/api/DashClockExtension;->g:Lsq;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lsq;->f1(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DashClockExtension"

    const-string v1, "Couldn\'t set the extension to update upon ACTION_SCREEN_ON."

    .line 2
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 2
    invoke-static {p1}, Liw6;->K(Landroid/content/Context;)I

    move-result v0

    .line 3
    invoke-static {p1}, Liw6;->z(Landroid/content/Context;)J

    move-result-wide v1

    .line 4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/noinnion/android/greader/ui/login/LoginActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.MAIN"

    .line 5
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance v4, Lcom/google/android/apps/dashclock/api/ExtensionData;

    invoke-direct {v4}, Lcom/google/android/apps/dashclock/api/ExtensionData;-><init>()V

    if-lez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 7
    :goto_0
    iput-boolean v5, v4, Lcom/google/android/apps/dashclock/api/ExtensionData;->e:Z

    const v5, 0x7f0801a7

    .line 8
    iput v5, v4, Lcom/google/android/apps/dashclock/api/ExtensionData;->f:I

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 10
    iput-object v5, v4, Lcom/google/android/apps/dashclock/api/ExtensionData;->h:Ljava/lang/String;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f1100ba

    .line 12
    invoke-virtual {p0, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    iput-object v5, v4, Lcom/google/android/apps/dashclock/api/ExtensionData;->i:Ljava/lang/String;

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f1100b9

    .line 15
    invoke-virtual {p0, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_1

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v1, v2}, Ln56;->y0(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    iput-object p1, v4, Lcom/google/android/apps/dashclock/api/ExtensionData;->j:Ljava/lang/String;

    .line 17
    iput-object v3, v4, Lcom/google/android/apps/dashclock/api/ExtensionData;->k:Landroid/content/Intent;

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/google/android/apps/dashclock/api/DashClockExtension;->g:Lsq;

    invoke-interface {p1, v4}, Lsq;->T6(Lcom/google/android/apps/dashclock/api/ExtensionData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "DashClockExtension"

    const-string v1, "Couldn\'t publish updated extension data."

    .line 19
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/apps/dashclock/api/DashClockExtension;->onCreate()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.noinnion.android.greader.reader.action.UNREAD_MODIFIED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    iget-object v2, p0, Lcom/noinnion/android/greader/dashclock/UnreadExtension;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lyd;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    iget-object v1, p0, Lcom/noinnion/android/greader/dashclock/UnreadExtension;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lyd;->d(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/apps/dashclock/api/DashClockExtension;->onDestroy()V

    return-void
.end method
