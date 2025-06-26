.class public Lcom/noinnion/android/greader/service/DownloadService$a;
.super Lmp6$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/noinnion/android/greader/service/DownloadService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/DownloadService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    invoke-direct {p0}, Lmp6$a;-><init>()V

    return-void
.end method


# virtual methods
.method public A1(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    .line 6
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 9
    iget-wide v4, p1, Ldw6;->n:J

    sub-long/2addr v2, v4

    .line 10
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 11
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public A2(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    iget-object v0, p1, Ldw6;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p1, Ldw6;->f:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ln56;->J0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ldw6;->k:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object p1, p1, Ldw6;->k:Ljava/lang/String;

    return-object p1
.end method

.method public A4(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    invoke-virtual {p1}, Ldw6;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public D0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v1, v1, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 5
    iget-object v1, v1, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 8
    iget-object v2, v2, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldw6;

    .line 10
    invoke-virtual {v1}, Ldw6;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 12
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 14
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public D3(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    invoke-virtual {p1}, Ldw6;->c()F

    move-result p1

    return p1
.end method

.method public L0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Ldw6;->i:I

    .line 5
    invoke-virtual {p1}, Ldw6;->d()V

    .line 6
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public L2(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    iget-wide v0, p1, Ldw6;->h:J

    long-to-float v0, v0

    iget-wide v1, p1, Ldw6;->g:J

    long-to-float p1, v1

    div-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public R2(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    iget-wide v0, p1, Ldw6;->m:J

    return-wide v0
.end method

.method public S5(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    iget-object p1, p1, Ldw6;->f:Ljava/lang/String;

    return-object p1
.end method

.method public W5(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    .line 6
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 8
    iget-wide v2, p1, Ldw6;->g:J

    iget-wide v4, p1, Ldw6;->h:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-float v2, v2

    .line 9
    invoke-virtual {p1}, Ldw6;->c()F

    move-result p1

    div-float/2addr v2, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float v2, v2, p1

    float-to-long v2, v2

    .line 10
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 11
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public X3(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Ldw6;->i:I

    .line 5
    invoke-virtual {p1}, Ldw6;->d()V

    .line 6
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 4
    new-instance v0, Ldw6;

    iget-object v1, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    invoke-virtual {v1}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Ldw6;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    iget-object p3, p2, Lcom/noinnion/android/greader/service/DownloadService;->f:Landroid/os/Messenger;

    iput-object p3, v0, Ldw6;->o:Landroid/os/Messenger;

    .line 6
    iget-object p2, p2, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->L0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    invoke-virtual {p2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public j6()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 3
    iget-object v2, v2, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 6
    iget-object v2, v2, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public m3()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public remove(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldw6;

    .line 4
    invoke-virtual {v0}, Ldw6;->a()V

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 6
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 9
    iget-object p1, p1, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public t3(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    iget-object p1, p1, Ldw6;->l:Ljava/lang/String;

    return-object p1
.end method

.method public v0(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    iget p1, p1, Ldw6;->i:I

    return p1
.end method

.method public x5(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 4
    iget-object p1, p1, Ldw6;->j:Ljava/lang/String;

    return-object p1
.end method
