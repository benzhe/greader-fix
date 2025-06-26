.class public final Lcom/google/android/gms/ads/internal/util/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/zzf;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public d:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "*>;"
        }
    .end annotation
.end field

.field public e:Lzm3;

.field public f:Landroid/content/SharedPreferences;

.field public g:Landroid/content/SharedPreferences$Editor;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Lpr0;

.field public m:J

.field public n:J

.field public o:I

.field public p:I

.field public q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lorg/json/JSONObject;

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->e:Lzm3;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->h:Z

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->k:Z

    .line 7
    new-instance v2, Lpr0;

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lpr0;-><init>(Ljava/lang/String;J)V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->l:Lpr0;

    .line 8
    iput-wide v4, p0, Lcom/google/android/gms/ads/internal/util/zzi;->m:J

    .line 9
    iput-wide v4, p0, Lcom/google/android/gms/ads/internal/util/zzi;->n:J

    const/4 v2, -0x1

    .line 10
    iput v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->o:I

    const/4 v3, 0x0

    .line 11
    iput v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->p:I

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->q:Ljava/util/Set;

    .line 13
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->r:Lorg/json/JSONObject;

    .line 14
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->s:Z

    .line 15
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->t:Z

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->u:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->v:I

    .line 18
    iput v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->w:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->d:Law2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->d:Law2;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    const-string v1, "Fail to initialize AdSharedPreferenceManager."

    .line 4
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception v0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "Interrupted while waiting for preferences loaded."

    .line 6
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Lms0;->a:Lzv2;

    new-instance v1, Ltw;

    invoke-direct {v1, p0}, Ltw;-><init>(Lcom/google/android/gms/ads/internal/util/zzi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->f:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "admob"

    .line 5
    sget-object v1, Lms0;->a:Lzv2;

    new-instance v2, Lsw;

    invoke-direct {v2, p0, p1, v0}, Lsw;-><init>(Lcom/google/android/gms/ads/internal/util/zzi;Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, v2}, Lzv2;->C(Ljava/lang/Runnable;)Law2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->d:Law2;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->b:Z

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->r:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 7
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    .line 8
    monitor-exit v0

    return-void

    :cond_1
    const-string v6, "template_id"

    .line 9
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p3, :cond_2

    const-string v2, "uses_media_view"

    .line 10
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_4
    :goto_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "template_id"

    .line 13
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "uses_media_view"

    .line 14
    invoke-virtual {v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "timestamp_ms"

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object p3

    invoke-interface {p3}, Lb20;->a()J

    move-result-wide v4

    invoke-virtual {v3, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->r:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Could not update native advanced settings"

    .line 18
    invoke-static {p2, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_5

    const-string p2, "native_advanced_settings"

    .line 20
    iget-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->r:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzas(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->s:Z

    if-ne v1, p1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->s:Z

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_url_opted_out"

    .line 7
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzat(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->t:Z

    if-ne v1, p1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->t:Z

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_vertical_opted_out"

    .line 7
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzau(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->k:Z

    if-ne p1, v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->k:Z

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "gad_idless"

    .line 7
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzdi(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->p:I

    if-ne v1, p1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->p:I

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "version_code"

    .line 7
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzdj(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->o:I

    if-ne v1, p1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->o:I

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "request_in_session_count"

    .line 7
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzdk(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->w:I

    if-ne v1, p1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->w:I

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "sd_app_measure_npa"

    .line 7
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzee(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->i:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_url_hashes"

    .line 6
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzef(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->j:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_vertical_hashes"

    .line 6
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzeg(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v1

    if-eqz p1, :cond_3

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->l:Lpr0;

    .line 5
    iget-object v3, v3, Lpr0;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v3, Lpr0;

    invoke-direct {v3, p1, v1, v2}, Lpr0;-><init>(Ljava/lang/String;J)V

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->l:Lpr0;

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_1

    const-string v4, "app_settings_json"

    .line 9
    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    const-string v3, "app_settings_last_update_ms"

    invoke-interface {p1, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 14
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 15
    :cond_2
    monitor-exit v0

    return-void

    .line 16
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->l:Lpr0;

    .line 17
    iput-wide v1, p1, Lpr0;->f:J

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzeh(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->u:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->u:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "display_cutout"

    .line 7
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzfa(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->m:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->m:J

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "app_last_background_time_ms"

    .line 7
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzfb(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->n:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->n:J

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "first_ad_req_time_ms"

    .line 7
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzza()Lzm3;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzd()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    sget-object v0, Ll60;->b:Le60;

    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_3

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->e:Lzm3;

    if-nez v1, :cond_4

    .line 8
    new-instance v1, Lzm3;

    invoke-direct {v1}, Lzm3;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->e:Lzm3;

    .line 9
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->e:Lzm3;

    .line 10
    iget-object v2, v1, Lzm3;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-boolean v3, v1, Lzm3;->e:Z

    if-eqz v3, :cond_5

    const-string v1, "Content hash thread already started, quiting..."

    .line 12
    invoke-static {v1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 13
    monitor-exit v2

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    .line 14
    iput-boolean v3, v1, Lzm3;->e:Z

    .line 15
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    const-string v1, "start fetching content..."

    .line 17
    invoke-static {v1}, Lis0;->zzey(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->e:Lzm3;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception v1

    .line 19
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public final zzzb()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->s:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzc()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->i:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzd()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->t:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzze()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->j:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzf()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->p:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzg()Lpr0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->l:Lpr0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzh()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->m:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzi()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->o:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzj()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->n:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzk()Lorg/json/JSONObject;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->r:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzl()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->r:Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    const-string v2, "native_advanced_settings"

    .line 5
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->b()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzm()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->u:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzn()Z
    .locals 2

    .line 1
    sget-object v0, Ly40;->l0:Lo40;

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

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->a()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->k:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
