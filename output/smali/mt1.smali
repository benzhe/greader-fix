.class public final Lmt1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final d:J

.field public final e:Lxs0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/Context;

.field public final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lnq1;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Ljava/util/concurrent/ScheduledExecutorService;

.field public final l:Lws1;

.field public final m:Lcom/google/android/gms/internal/ads/zzbar;

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzajm;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lye1;

.field public p:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;Lnq1;Ljava/util/concurrent/ScheduledExecutorService;Lws1;Lcom/google/android/gms/internal/ads/zzbar;Lye1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lnq1;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lws1;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Lye1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmt1;->a:Z

    .line 3
    iput-boolean v0, p0, Lmt1;->b:Z

    .line 4
    iput-boolean v0, p0, Lmt1;->c:Z

    .line 5
    new-instance v1, Lxs0;

    invoke-direct {v1}, Lxs0;-><init>()V

    .line 6
    iput-object v1, p0, Lmt1;->e:Lxs0;

    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lmt1;->n:Ljava/util/Map;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lmt1;->p:Z

    .line 9
    iput-object p5, p0, Lmt1;->h:Lnq1;

    .line 10
    iput-object p2, p0, Lmt1;->f:Landroid/content/Context;

    .line 11
    iput-object p3, p0, Lmt1;->g:Ljava/lang/ref/WeakReference;

    .line 12
    iput-object p4, p0, Lmt1;->i:Ljava/util/concurrent/Executor;

    .line 13
    iput-object p6, p0, Lmt1;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    iput-object p1, p0, Lmt1;->j:Ljava/util/concurrent/Executor;

    .line 15
    iput-object p7, p0, Lmt1;->l:Lws1;

    .line 16
    iput-object p8, p0, Lmt1;->m:Lcom/google/android/gms/internal/ads/zzbar;

    .line 17
    iput-object p9, p0, Lmt1;->o:Lye1;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object p1

    invoke-interface {p1}, Lb20;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lmt1;->d:J

    .line 19
    iget-object p1, p0, Lmt1;->n:Ljava/util/Map;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajm;

    const-string p3, "com.google.android.gms.ads.MobileAds"

    const-string p4, ""

    invoke-direct {p2, p3, v0, v0, p4}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lmt1;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmt1;->n:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmt1;->n:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    sget-object v0, Ly40;->h1:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Ls60;->a:Le60;

    .line 5
    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmt1;->m:Lcom/google/android/gms/internal/ads/zzbar;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    sget-object v2, Ly40;->i1:Lo40;

    .line 6
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_3

    iget-boolean v0, p0, Lmt1;->p:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lmt1;->a:Z

    if-eqz v0, :cond_1

    return-void

    .line 10
    :cond_1
    monitor-enter p0

    .line 11
    :try_start_0
    iget-boolean v0, p0, Lmt1;->a:Z

    if-eqz v0, :cond_2

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_2
    iget-object v0, p0, Lmt1;->l:Lws1;

    invoke-virtual {v0}, Lws1;->a()V

    .line 14
    iget-object v0, p0, Lmt1;->o:Lye1;

    .line 15
    sget-object v2, Lcf1;->a:Lzd1;

    invoke-virtual {v0, v2}, Lxd1;->D0(Lzd1;)V

    .line 16
    iget-object v0, p0, Lmt1;->e:Lxs0;

    new-instance v2, Lot1;

    invoke-direct {v2, p0}, Lot1;-><init>(Lmt1;)V

    iget-object v3, p0, Lmt1;->i:Ljava/util/concurrent/Executor;

    .line 17
    iget-object v0, v0, Lxs0;->e:Liw2;

    invoke-virtual {v0, v2, v3}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 18
    iput-boolean v1, p0, Lmt1;->a:Z

    .line 19
    invoke-virtual {p0}, Lmt1;->e()Law2;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lmt1;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lqt1;

    invoke-direct {v2, p0}, Lqt1;-><init>(Lmt1;)V

    sget-object v3, Ly40;->k1:Lo40;

    .line 21
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 22
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 25
    new-instance v1, Lxt1;

    invoke-direct {v1, p0}, Lxt1;-><init>(Lmt1;)V

    iget-object v2, p0, Lmt1;->i:Ljava/util/concurrent/Executor;

    .line 26
    new-instance v3, Lsv2;

    invoke-direct {v3, v0, v1}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {v0, v3, v2}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 28
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lmt1;->a:Z

    if-nez v0, :cond_4

    const-string v0, "com.google.android.gms.ads.MobileAds"

    const-string v2, ""

    const/4 v3, 0x0

    .line 29
    iget-object v4, p0, Lmt1;->n:Ljava/util/Map;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v5, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lmt1;->e:Lxs0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lxs0;->a(Ljava/lang/Object;)Z

    .line 31
    iput-boolean v1, p0, Lmt1;->a:Z

    .line 32
    iput-boolean v1, p0, Lmt1;->b:Z

    :cond_4
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lmt1;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lmt1;->n:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzajm;

    .line 4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzajm;

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzajm;->f:Z

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzajm;->g:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzajm;->h:Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized e()Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    invoke-virtual {v0}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzg()Lpr0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lpr0;->e:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Lxs0;

    invoke-direct {v0}, Lxs0;-><init>()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v1

    new-instance v2, Lrt1;

    invoke-direct {v2, p0, v0}, Lrt1;-><init>(Lmt1;Lxs0;)V

    .line 8
    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzb(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
