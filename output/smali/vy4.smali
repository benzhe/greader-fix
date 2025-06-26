.class public final synthetic Lvy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvy4;->e:Lsz4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lvy4;->e:Lsz4;

    .line 1
    invoke-virtual {v0}, Lyv4;->d()V

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lex4;->w:Lzw4;

    invoke-virtual {v1}, Lzw4;->a()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lex4;->x:Lbx4;

    invoke-virtual {v1}, Lbx4;->a()J

    move-result-wide v1

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v3}, Lrx4;->q()Lex4;

    move-result-object v3

    .line 7
    iget-object v3, v3, Lex4;->x:Lbx4;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lbx4;->b(J)V

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 8
    iget-object v4, v3, Lrx4;->g:Lcs4;

    const-wide/16 v4, 0x5

    const/4 v6, 0x1

    cmp-long v7, v1, v4

    if-ltz v7, :cond_0

    .line 9
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lqw4;->i:Low4;

    const-string v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 11
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 12
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lex4;->w:Lzw4;

    invoke-virtual {v0, v6}, Lzw4;->b(Z)V

    return-void

    .line 14
    :cond_0
    invoke-virtual {v3}, Lrx4;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0}, Lox4;->d()V

    .line 15
    invoke-virtual {v3}, Lrx4;->w()Lxz4;

    move-result-object v0

    invoke-static {v0}, Lrx4;->n(Lmy4;)V

    .line 16
    invoke-virtual {v3}, Lrx4;->b()Liw4;

    move-result-object v0

    invoke-virtual {v0}, Liw4;->k()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v3}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lly4;->d()V

    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 19
    iget-object v2, v2, Lrx4;->n:Lb20;

    .line 20
    invoke-interface {v2}, Lb20;->b()J

    move-result-wide v4

    iget-object v2, v1, Lex4;->m:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    if-eqz v2, :cond_2

    iget-wide v9, v1, Lex4;->o:J

    cmp-long v11, v4, v9

    if-ltz v11, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    new-instance v4, Landroid/util/Pair;

    iget-boolean v1, v1, Lex4;->n:Z

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 23
    :cond_2
    :goto_0
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 24
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 25
    sget-object v9, Lew4;->b:Ldw4;

    .line 26
    invoke-virtual {v2, v0, v9}, Lcs4;->n(Ljava/lang/String;Ldw4;)J

    move-result-wide v9

    add-long/2addr v9, v4

    iput-wide v9, v1, Lex4;->o:J

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_0
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 28
    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    .line 29
    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lex4;->m:Ljava/lang/String;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lex4;->n:Z

    :cond_3
    iget-object v2, v1, Lex4;->m:Ljava/lang/String;

    if-nez v2, :cond_4

    iput-object v8, v1, Lex4;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 32
    iget-object v4, v1, Lly4;->a:Lrx4;

    .line 33
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 34
    iget-object v4, v4, Lqw4;->m:Low4;

    const-string v5, "Unable to get advertising id"

    .line 35
    invoke-virtual {v4, v5, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v8, v1, Lex4;->m:Ljava/lang/String;

    .line 36
    :cond_4
    :goto_1
    invoke-static {v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance v4, Landroid/util/Pair;

    iget-object v2, v1, Lex4;->m:Ljava/lang/String;

    iget-boolean v1, v1, Lex4;->n:Z

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    :goto_2
    iget-object v1, v3, Lrx4;->g:Lcs4;

    .line 39
    invoke-virtual {v1}, Lcs4;->w()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_6

    .line 42
    :cond_5
    invoke-virtual {v3}, Lrx4;->w()Lxz4;

    move-result-object v1

    invoke-virtual {v1}, Lmy4;->i()V

    iget-object v1, v1, Lly4;->a:Lrx4;

    iget-object v1, v1, Lrx4;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 44
    :try_start_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :cond_6
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_8

    .line 45
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 46
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v1

    .line 47
    invoke-virtual {v3}, Lrx4;->b()Liw4;

    move-result-object v5

    iget-object v5, v5, Lly4;->a:Lrx4;

    iget-object v5, v5, Lrx4;->g:Lcs4;

    .line 48
    invoke-virtual {v5}, Lcs4;->l()J

    .line 49
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 50
    invoke-virtual {v3}, Lrx4;->q()Lex4;

    move-result-object v5

    iget-object v5, v5, Lex4;->x:Lbx4;

    invoke-virtual {v5}, Lbx4;->a()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    add-long/2addr v9, v11

    .line 51
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :try_start_2
    invoke-static {v4}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    invoke-static {v0}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const-wide/32 v13, 0x9088

    .line 54
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v1}, Lp25;->M()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "v%s.%s"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v7

    aput-object v4, v5, v6

    aput-object v0, v5, v11

    const/4 v4, 0x3

    .line 55
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    .line 56
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lly4;->a:Lrx4;

    .line 57
    iget-object v5, v5, Lrx4;->g:Lcs4;

    const-string v6, "debug.deferred.deeplink"

    .line 58
    invoke-virtual {v5, v6, v8}, Lcs4;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "&ddl_test=1"

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    :cond_7
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v5

    goto :goto_5

    :catch_2
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v4

    :goto_4
    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 62
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 63
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 64
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to create BOW URL for Deferred Deep Link. exception"

    invoke-virtual {v1, v5, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    if-eqz v2, :cond_a

    .line 65
    invoke-virtual {v3}, Lrx4;->w()Lxz4;

    move-result-object v1

    new-instance v4, Lpx4;

    invoke-direct {v4, v3}, Lpx4;-><init>(Lrx4;)V

    .line 66
    invoke-virtual {v1}, Lly4;->d()V

    invoke-virtual {v1}, Lmy4;->i()V

    .line 67
    iget-object v3, v1, Lly4;->a:Lrx4;

    .line 68
    invoke-virtual {v3}, Lrx4;->m()Lox4;

    move-result-object v3

    new-instance v5, Lwz4;

    .line 69
    invoke-direct {v5, v1, v0, v2, v4}, Lwz4;-><init>(Lxz4;Ljava/lang/String;Ljava/net/URL;Lpx4;)V

    .line 70
    invoke-virtual {v3, v5}, Lox4;->t(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 71
    :cond_8
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 72
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    .line 73
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 74
    :cond_9
    :goto_6
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 75
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    .line 76
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    :cond_a
    :goto_7
    return-void

    .line 77
    :cond_b
    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 78
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 79
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    .line 80
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    return-void
.end method
