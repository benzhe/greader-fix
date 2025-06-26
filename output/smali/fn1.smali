.class public final Lfn1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lll2;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lmp1;


# direct methods
.method public constructor <init>(Lll2;Ljava/util/concurrent/Executor;Lmp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfn1;->a:Lll2;

    .line 3
    iput-object p2, p0, Lfn1;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lfn1;->c:Lmp1;

    return-void
.end method


# virtual methods
.method public final a(Lxw0;)V
    .locals 8

    const-string v0, "/video"

    .line 1
    sget-object v1, Lva0;->m:Lkb0;

    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    const-string v0, "/videoMeta"

    .line 2
    sget-object v1, Lva0;->n:Lkb0;

    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    const-string v0, "/precache"

    .line 3
    new-instance v1, Lew0;

    invoke-direct {v1}, Lew0;-><init>()V

    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    const-string v0, "/delayPageLoaded"

    .line 4
    sget-object v1, Lva0;->q:Lkb0;

    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    const-string v0, "/instrument"

    .line 5
    sget-object v1, Lva0;->o:Lkb0;

    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    const-string v0, "/log"

    .line 6
    sget-object v1, Lva0;->h:Lkb0;

    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    const-string v0, "/videoClicked"

    .line 7
    sget-object v1, Lva0;->i:Lkb0;

    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 8
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object v0

    check-cast v0, Lww0;

    .line 9
    iget-object v1, v0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 10
    :try_start_0
    iput-boolean v2, v0, Lww0;->q:Z

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v0, "/click"

    .line 12
    sget-object v1, Lva0;->a:Lkb0;

    sget-object v1, Lza0;->a:Lkb0;

    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 13
    sget-object v0, Ly40;->T1:Lo40;

    .line 14
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 15
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/getNativeAdViewSignals"

    .line 17
    sget-object v1, Lva0;->t:Lkb0;

    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lfn1;->a:Lll2;

    iget-object v0, v0, Lll2;->c:Lcom/google/android/gms/internal/ads/zzajy;

    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object v0

    check-cast v0, Lww0;

    .line 20
    iget-object v1, v0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_1
    iput-boolean v2, v0, Lww0;->r:Z

    .line 22
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "/open"

    .line 23
    new-instance v7, Lrb0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lrb0;-><init>(Lcom/google/android/gms/ads/internal/zza;Lsj0;Lsy1;Lns1;Lpp2;)V

    invoke-interface {p1, v0, v7}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 25
    :cond_1
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v0, Lww0;

    .line 26
    iget-object v2, v0, Lww0;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 27
    :try_start_3
    iput-boolean v1, v0, Lww0;->r:Z

    .line 28
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcq0;

    move-result-object v0

    invoke-interface {p1}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcq0;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/logScionEvent"

    .line 30
    new-instance v1, Lpb0;

    .line 31
    invoke-interface {p1}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lpb0;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-interface {p1, v0, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    .line 33
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 34
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method
