.class public final Lcom/google/android/gms/ads/internal/zze;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zze;->b:J

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;ZLpr0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/zze;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-string p1, "Not retrying to fetch app settings"

    .line 2
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zze;->b:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-wide v2, p4, Lpr0;->f:J

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v4

    invoke-interface {v4}, Lb20;->a()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 6
    sget-object v2, Ly40;->h2:Lo40;

    .line 7
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 10
    iget-boolean p4, p4, Lpr0;->h:Z

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_6

    const-string p1, "Context not provided to fetch application settings"

    .line 11
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7

    const-string p1, "App settings could not be fetched. Required parameters missing"

    .line 13
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_8

    goto :goto_2

    :cond_8
    move-object p4, p1

    .line 15
    :goto_2
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zze;->a:Landroid/content/Context;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcf0;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->a:Landroid/content/Context;

    .line 17
    invoke-virtual {p4, v0, p2}, Lcf0;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lhf0;

    move-result-object p2

    sget-object p4, Lgf0;->b:Ldf0;

    .line 18
    new-instance v0, Lmf0;

    iget-object p2, p2, Lhf0;->a:Lyd0;

    const-string v1, "google.afma.config.fetchAppSettings"

    invoke-direct {v0, p2, v1, p4, p4}, Lmf0;-><init>(Lyd0;Ljava/lang/String;Lef0;Lbf0;)V

    .line 19
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 20
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_9

    const-string p4, "app_id"

    .line 21
    invoke-virtual {p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 22
    :cond_9
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_a

    const-string p4, "ad_unit_id"

    .line 23
    invoke-virtual {p2, p4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    :goto_3
    const-string p4, "is_init"

    .line 24
    invoke-virtual {p2, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "pn"

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v0, p2}, Lmf0;->b(Ljava/lang/Object;)Law2;

    move-result-object p1

    .line 27
    sget-object p2, Ldx;->a:Lcv2;

    .line 28
    sget-object p3, Lms0;->f:Lzv2;

    .line 29
    invoke-static {p1, p2, p3}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p2

    if-eqz p7, :cond_b

    .line 30
    check-cast p1, Lxs0;

    .line 31
    iget-object p1, p1, Lxs0;->e:Liw2;

    invoke-virtual {p1, p7, p3}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_b
    const-string p1, "ConfigLoader.maybeFetchNewAppSettings"

    .line 32
    invoke-static {p2, p1}, Lc50;->e2(Law2;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error requesting application settings"

    .line 33
    invoke-static {p2, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zze;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;ZLpr0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lpr0;)V
    .locals 9

    if-eqz p4, :cond_0

    .line 2
    iget-object v0, p4, Lpr0;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v7, p3

    .line 3
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/zze;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;ZLpr0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
