.class public final Lvm3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lym3;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvm3;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lvm3;->b:Lym3;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lvm3;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 2

    .line 1
    iget-object v0, p0, Lvm3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lvm3;->b:Lym3;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lym3;->e:Landroid/app/Activity;

    .line 4
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lvm3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lvm3;->b:Lym3;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lym3;->f:Landroid/content/Context;

    .line 4
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lvm3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lvm3;->c:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, p1

    .line 4
    :cond_0
    instance-of v3, v2, Landroid/app/Application;

    if-eqz v3, :cond_1

    .line 5
    move-object v1, v2

    check-cast v1, Landroid/app/Application;

    :cond_1
    if-nez v1, :cond_2

    const-string p1, "Can not cast Context to Application"

    .line 6
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_2
    iget-object v2, p0, Lvm3;->b:Lym3;

    if-nez v2, :cond_3

    .line 9
    new-instance v2, Lym3;

    invoke-direct {v2}, Lym3;-><init>()V

    iput-object v2, p0, Lvm3;->b:Lym3;

    .line 10
    :cond_3
    iget-object v2, p0, Lvm3;->b:Lym3;

    .line 11
    iget-boolean v3, v2, Lym3;->m:Z

    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 12
    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 13
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 14
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Lym3;->a(Landroid/app/Activity;)V

    .line 15
    :cond_4
    iput-object v1, v2, Lym3;->f:Landroid/content/Context;

    .line 16
    sget-object p1, Ly40;->B0:Lo40;

    .line 17
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 18
    invoke-virtual {v1, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v2, Lym3;->n:J

    .line 20
    iput-boolean v4, v2, Lym3;->m:Z

    .line 21
    :cond_5
    iput-boolean v4, p0, Lvm3;->c:Z

    .line 22
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Lan3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvm3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lvm3;->b:Lym3;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lym3;

    invoke-direct {v1}, Lym3;-><init>()V

    iput-object v1, p0, Lvm3;->b:Lym3;

    .line 4
    :cond_0
    iget-object v1, p0, Lvm3;->b:Lym3;

    .line 5
    iget-object v2, v1, Lym3;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v1, v1, Lym3;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final e(Lan3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvm3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lvm3;->b:Lym3;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v2, v1, Lym3;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v1, v1, Lym3;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
