.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lcom/google/android/gms/ads/internal/util/zzbf;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "This class must be instantiated reflectively so that the default class loader can be used."
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbf;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaq(Lx20;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lpj$a;

    invoke-direct {v1}, Lpj$a;-><init>()V

    .line 3
    new-instance v2, Lpj;

    invoke-direct {v2, v1}, Lpj;-><init>(Lpj$a;)V

    .line 4
    invoke-static {v0, v2}, Lnk;->c(Landroid/content/Context;Lpj;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :try_start_1
    invoke-static {p1}, Lnk;->b(Landroid/content/Context;)Lnk;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Ljm;

    const-string v1, "offline_ping_sender_work"

    invoke-direct {v0, p1, v1}, Ljm;-><init>(Lnk;Ljava/lang/String;)V

    .line 8
    iget-object v2, p1, Lnk;->d:Lxm;

    check-cast v2, Lym;

    .line 9
    iget-object v2, v2, Lym;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    new-instance v0, Lqj$a;

    invoke-direct {v0}, Lqj$a;-><init>()V

    sget-object v2, Lwj;->f:Lwj;

    .line 11
    iput-object v2, v0, Lqj$a;->a:Lwj;

    .line 12
    new-instance v2, Lqj;

    invoke-direct {v2, v0}, Lqj;-><init>(Lqj$a;)V

    .line 13
    new-instance v0, Lxj$a;

    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    invoke-direct {v0, v3}, Lxj$a;-><init>(Ljava/lang/Class;)V

    .line 14
    iget-object v3, v0, Lck$a;->b:Ldm;

    iput-object v2, v3, Ldm;->j:Lqj;

    .line 15
    iget-object v2, v0, Lck$a;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lck$a;->a()Lck;

    move-result-object v0

    check-cast v0, Lxj;

    .line 17
    invoke-virtual {p1, v0}, Lbk;->a(Lck;)Lyj;

    return-void

    :catch_1
    move-exception p1

    const-string v0, "Failed to instantiate WorkManager."

    .line 18
    invoke-static {v0, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzd(Lx20;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lpj$a;

    invoke-direct {v1}, Lpj$a;-><init>()V

    .line 3
    new-instance v2, Lpj;

    invoke-direct {v2, v1}, Lpj;-><init>(Lpj$a;)V

    .line 4
    invoke-static {v0, v2}, Lnk;->c(Landroid/content/Context;Lpj;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    new-instance v0, Lqj$a;

    invoke-direct {v0}, Lqj$a;-><init>()V

    sget-object v1, Lwj;->f:Lwj;

    .line 6
    iput-object v1, v0, Lqj$a;->a:Lwj;

    .line 7
    new-instance v1, Lqj;

    invoke-direct {v1, v0}, Lqj;-><init>(Lqj$a;)V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uri"

    .line 9
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "gws_query_id"

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p2, Lsj;

    invoke-direct {p2, v0}, Lsj;-><init>(Ljava/util/Map;)V

    .line 11
    invoke-static {p2}, Lsj;->c(Lsj;)[B

    .line 12
    new-instance p3, Lxj$a;

    const-class v0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    invoke-direct {p3, v0}, Lxj$a;-><init>(Ljava/lang/Class;)V

    .line 13
    iget-object v0, p3, Lck$a;->b:Ldm;

    iput-object v1, v0, Ldm;->j:Lqj;

    .line 14
    iput-object p2, v0, Ldm;->e:Lsj;

    .line 15
    iget-object p2, p3, Lck$a;->c:Ljava/util/Set;

    const-string v0, "offline_notification_work"

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p3}, Lck$a;->a()Lck;

    move-result-object p2

    check-cast p2, Lxj;

    .line 17
    :try_start_1
    invoke-static {p1}, Lnk;->b(Landroid/content/Context;)Lnk;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    invoke-virtual {p1, p2}, Lbk;->a(Lck;)Lyj;

    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    const-string p2, "Failed to instantiate WorkManager."

    .line 19
    invoke-static {p2, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
