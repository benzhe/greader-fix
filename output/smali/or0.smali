.class public final Lor0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/google/android/gms/ads/internal/util/zzi;

.field public final c:Lxr0;

.field public d:Z

.field public e:Landroid/content/Context;

.field public f:Lcom/google/android/gms/internal/ads/zzbar;

.field public g:Le50;

.field public h:Ljava/lang/Boolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Lsr0;

.field public final k:Ljava/lang/Object;

.field public l:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lor0;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzi;-><init>()V

    iput-object v0, p0, Lor0;->b:Lcom/google/android/gms/ads/internal/util/zzi;

    .line 4
    new-instance v1, Lxr0;

    .line 5
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->c:Ljava/lang/String;

    .line 6
    invoke-direct {v1, v2, v0}, Lxr0;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzf;)V

    iput-object v1, p0, Lor0;->c:Lxr0;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lor0;->d:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lor0;->g:Le50;

    .line 9
    iput-object v1, p0, Lor0;->h:Ljava/lang/Boolean;

    .line 10
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lor0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    new-instance v0, Lsr0;

    invoke-direct {v0, v1}, Lsr0;-><init>(Lqr0;)V

    iput-object v0, p0, Lor0;->j:Lsr0;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lor0;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/res/Resources;
    .locals 4

    .line 1
    iget-object v0, p0, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lor0;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lor0;->e:Landroid/content/Context;
    :try_end_0
    .catch Ljs0; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->i:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :try_start_2
    iget-object v1, v1, Lcom/google/android/gms/dynamite/DynamiteModule;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    return-object v0

    :catch_0
    move-exception v1

    .line 7
    new-instance v2, Ljs0;

    invoke-direct {v2, v1}, Ljs0;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljs0; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    .line 8
    invoke-static {v2, v1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lor0;->e:Landroid/content/Context;

    iget-object v1, p0, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v0, v1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lor0;->e:Landroid/content/Context;

    iget-object v1, p0, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v0, v1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v0

    sget-object v1, Lw60;->g:Le60;

    .line 2
    invoke-virtual {v1}, Le60;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    .line 3
    invoke-interface {v0, p1, p2, v1}, Lbm0;->b(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lor0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lor0;->d:Z

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lor0;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lvm3;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lor0;->c:Lxr0;

    .line 7
    invoke-virtual {v1, v2}, Lvm3;->d(Lan3;)V

    .line 8
    iget-object v1, p0, Lor0;->b:Lcom/google/android/gms/ads/internal/util/zzi;

    iget-object v2, p0, Lor0;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzi;->initialize(Landroid/content/Context;)V

    .line 9
    iget-object v1, p0, Lor0;->e:Landroid/content/Context;

    iget-object v2, p0, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v1, v2}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzle()Lf50;

    .line 11
    sget-object v1, Lk60;->c:Le60;

    invoke-virtual {v1}, Le60;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Le50;

    invoke-direct {v1}, Le50;-><init>()V

    .line 14
    :goto_0
    iput-object v1, p0, Lor0;->g:Le50;

    if-eqz v1, :cond_1

    .line 15
    new-instance v1, Lqr0;

    invoke-direct {v1, p0}, Lqr0;-><init>(Lor0;)V

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zza;->zzyx()Law2;

    move-result-object v1

    const-string v2, "AppState.registerCsiReporter"

    .line 17
    invoke-static {v1, v2}, Lc50;->e2(Law2;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lor0;->d:Z

    .line 19
    invoke-virtual {p0}, Lor0;->g()Law2;

    .line 20
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e()Le50;
    .locals 2

    .line 1
    iget-object v0, p0, Lor0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lor0;->g:Le50;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Lcom/google/android/gms/ads/internal/util/zzf;
    .locals 2

    .line 1
    iget-object v0, p0, Lor0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lor0;->b:Lcom/google/android/gms/ads/internal/util/zzi;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lor0;->e:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Ly40;->C1:Lo40;

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

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lor0;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lor0;->l:Law2;

    if-eqz v1, :cond_1

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_1
    sget-object v1, Lms0;->a:Lzv2;

    new-instance v2, Lrr0;

    invoke-direct {v2, p0}, Lrr0;-><init>(Lor0;)V

    .line 9
    invoke-interface {v1, v2}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v1

    iput-object v1, p0, Lor0;->l:Law2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    return-object v0
.end method
