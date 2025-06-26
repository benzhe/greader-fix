.class public final synthetic Lsw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lcom/google/android/gms/ads/internal/util/zzi;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzi;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsw;->e:Lcom/google/android/gms/ads/internal/util/zzi;

    iput-object p2, p0, Lsw;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lsw;->e:Lcom/google/android/gms/ads/internal/util/zzi;

    iget-object v1, p0, Lsw;->f:Landroid/content/Context;

    const-string v2, "admob"

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4
    iget-object v4, v0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 5
    :try_start_0
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    .line 6
    iput-object v2, v0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 8
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "use_https"

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->h:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->h:Z

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "content_url_opted_out"

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->s:Z

    .line 11
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->s:Z

    .line 12
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "content_url_hashes"

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->i:Ljava/lang/String;

    .line 13
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "gad_idless"

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->k:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->k:Z

    .line 14
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "content_vertical_opted_out"

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->t:Z

    .line 15
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->t:Z

    .line 16
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "content_vertical_hashes"

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->j:Ljava/lang/String;

    .line 17
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->j:Ljava/lang/String;

    .line 18
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "version_code"

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->p:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->p:I

    .line 19
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "app_settings_json"

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->l:Lpr0;

    .line 20
    iget-object v3, v3, Lpr0;->e:Ljava/lang/String;

    .line 21
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v3, "app_settings_last_update_ms"

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/util/zzi;->l:Lpr0;

    .line 23
    iget-wide v5, v5, Lpr0;->f:J

    .line 24
    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 25
    new-instance v5, Lpr0;

    invoke-direct {v5, v1, v2, v3}, Lpr0;-><init>(Ljava/lang/String;J)V

    iput-object v5, v0, Lcom/google/android/gms/ads/internal/util/zzi;->l:Lpr0;

    .line 26
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "app_last_background_time_ms"

    iget-wide v5, v0, Lcom/google/android/gms/ads/internal/util/zzi;->m:J

    .line 27
    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->m:J

    .line 28
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "request_in_session_count"

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->o:I

    .line 29
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->o:I

    .line 30
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "first_ad_req_time_ms"

    iget-wide v5, v0, Lcom/google/android/gms/ads/internal/util/zzi;->n:J

    .line 31
    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->n:J

    .line 32
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "never_pool_slots"

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->q:Ljava/util/Set;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->q:Ljava/util/Set;

    .line 33
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "display_cutout"

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->u:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->u:Ljava/lang/String;

    .line 34
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "app_measurement_npa"

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->v:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->v:I

    .line 35
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v2, "sd_app_measure_npa"

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/zzi;->w:I

    .line 36
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->w:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    const-string v3, "native_advanced_settings"

    const-string v5, "{}"

    .line 38
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/util/zzi;->r:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Could not convert native advanced settings to json object"

    .line 39
    invoke-static {v2, v1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 41
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
