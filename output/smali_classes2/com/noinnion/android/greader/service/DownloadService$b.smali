.class public Lcom/noinnion/android/greader/service/DownloadService$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/service/DownloadService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/DownloadService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/service/DownloadService$b;->a:Lcom/noinnion/android/greader/service/DownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/service/DownloadService$b;->a:Lcom/noinnion/android/greader/service/DownloadService;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    :goto_0
    iget-object v4, p1, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 5
    iget-object v4, p1, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 6
    iget-object v5, p1, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldw6;

    .line 7
    iget v4, v4, Ldw6;->i:I

    if-gt v4, v1, :cond_1

    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    const v0, 0x7f09021c

    const-string v1, "notification"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_3
    :goto_1
    return-void
.end method
