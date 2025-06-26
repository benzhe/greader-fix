.class public Lcom/noinnion/android/greader/service/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/service/DownloadService$b;
    }
.end annotation


# instance fields
.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ldw6;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/os/Messenger;

.field public final g:Lmp6$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/noinnion/android/greader/service/DownloadService$b;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/service/DownloadService$b;-><init>(Lcom/noinnion/android/greader/service/DownloadService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService;->f:Landroid/os/Messenger;

    .line 4
    new-instance v0, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/service/DownloadService$a;-><init>(Lcom/noinnion/android/greader/service/DownloadService;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService;->g:Lmp6$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11001d

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f1100c2

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/noinnion/android/greader/ui/download/DownloadActivity;

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "startDownloading"

    const/4 v7, 0x1

    .line 6
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v6, 0x0

    .line 7
    invoke-static {v0, v6, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v6, "download_media_v2"

    const-string v8, "Download Media"

    .line 8
    invoke-static {v0, v6, v8}, Lvx6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    new-instance v8, Lm7;

    invoke-direct {v8, v0, v6}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v8, v1}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    invoke-virtual {v8, v2}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    invoke-virtual {v8, v2}, Lm7;->j(Ljava/lang/CharSequence;)Lm7;

    .line 11
    iget-object v0, v8, Lm7;->s:Landroid/app/Notification;

    const v1, 0x1080082

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 12
    iput-wide v3, v0, Landroid/app/Notification;->when:J

    const/16 v0, 0x10

    .line 13
    invoke-virtual {v8, v0, v7}, Lm7;->f(IZ)V

    .line 14
    iput-object v5, v8, Lm7;->f:Landroid/app/PendingIntent;

    const v0, 0x7f09021c

    .line 15
    invoke-virtual {v8}, Lm7;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/service/DownloadService;->g:Lmp6$a;

    return-object p1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/DownloadService;->a()V

    const-string v0, "download_local"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "download_type"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 7
    iget-object v1, p0, Lcom/noinnion/android/greader/service/DownloadService;->g:Lmp6$a;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v1, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {v1, p2, v0, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
