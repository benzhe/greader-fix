.class public final Lcom/google/android/gms/ads/internal/util/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zzam(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lds0;->b:Ljava/lang/Object;

    .line 2
    sget-object v0, Lm60;->a:Le60;

    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    .line 4
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Fail to determine debug setting."

    .line 5
    invoke-static {v2, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    sget-object v0, Lds0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_1
    sget-boolean v1, Lds0;->c:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    .line 8
    new-instance v0, Lrw;

    invoke-direct {v0, p0}, Lrw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zza;->zzyx()Law2;

    move-result-object p0

    const-string v0, "Updating ad debug logging enablement."

    .line 9
    invoke-static {v0}, Lis0;->zzey(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    .line 10
    invoke-static {p0, v0}, Lc50;->e2(Law2;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
