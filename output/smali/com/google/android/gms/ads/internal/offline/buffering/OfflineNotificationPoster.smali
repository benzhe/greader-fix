.class public Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field public final j:Ljk0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->b:Lwr3;

    .line 3
    new-instance v0, Leg0;

    invoke-direct {v0}, Leg0;-><init>()V

    invoke-virtual {p2, p1, v0}, Lwr3;->b(Landroid/content/Context;Lhg0;)Ljk0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->j:Ljk0;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Lsj;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Lsj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Lsj;

    move-result-object v1

    const-string v2, "gws_query_id"

    invoke-virtual {v1, v2}, Lsj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->j:Ljk0;

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 4
    new-instance v4, Ly20;

    invoke-direct {v4, v3}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v2, v4, v0, v1}, Ljk0;->h5(Lx20;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7
    :catch_0
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    return-object v0
.end method
