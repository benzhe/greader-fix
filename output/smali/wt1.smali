.class public final synthetic Lwt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lxt1;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lxt1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwt1;->e:Lxt1;

    iput-object p2, p0, Lwt1;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lwt1;->e:Lxt1;

    iget-object v2, v1, Lwt1;->f:Ljava/lang/String;

    .line 2
    iget-object v10, v0, Lxt1;->a:Lmt1;

    .line 3
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "data"

    .line 4
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "initializer_settings"

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "config"

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 9
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v8, Lxs0;

    invoke-direct {v8}, Lxs0;-><init>()V

    .line 13
    sget-object v3, Ly40;->j1:Lo40;

    .line 14
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 15
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, v10, Lmt1;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    invoke-static {v8, v3, v4, v5, v6}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object v9

    .line 18
    iget-object v3, v10, Lmt1;->l:Lws1;

    invoke-virtual {v3, v0}, Lws1;->c(Ljava/lang/String;)V

    .line 19
    iget-object v3, v10, Lmt1;->o:Lye1;

    .line 20
    new-instance v4, Lxe1;

    invoke-direct {v4, v0}, Lxe1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lxd1;->D0(Lzd1;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v3

    invoke-interface {v3}, Lb20;->b()J

    move-result-wide v16

    .line 22
    new-instance v7, Ltt1;

    move-object v3, v7

    move-object v4, v10

    move-object v5, v15

    move-object v6, v8

    move-object v14, v7

    move-object v7, v0

    move-object/from16 v18, v8

    move-object v1, v9

    move-wide/from16 v8, v16

    invoke-direct/range {v3 .. v9}, Ltt1;-><init>(Lmt1;Ljava/lang/Object;Lxs0;Ljava/lang/String;J)V

    iget-object v3, v10, Lmt1;->i:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v14, v3}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 23
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lzt1;

    move-object v3, v1

    move-object v4, v10

    move-object v5, v15

    move-object v6, v0

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-direct/range {v3 .. v9}, Lzt1;-><init>(Lmt1;Ljava/lang/Object;Ljava/lang/String;JLxs0;)V

    .line 25
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v9, ""

    if-eqz v3, :cond_1

    .line 27
    :try_start_1
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 28
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 29
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "format"

    .line 30
    invoke-virtual {v5, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 32
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    if-eqz v5, :cond_0

    .line 33
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 34
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 35
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v2

    .line 36
    :try_start_2
    invoke-virtual {v5, v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v16

    goto :goto_2

    :cond_0
    move-object/from16 v16, v2

    .line 37
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajw;

    invoke-direct {v2, v6, v8}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    :catch_0
    :cond_1
    move-object/from16 v16, v2

    :catch_1
    const/4 v2, 0x0

    .line 38
    :try_start_3
    invoke-virtual {v10, v0, v2, v9, v2}, Lmt1;->b(Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 39
    :try_start_4
    iget-object v2, v10, Lmt1;->h:Lnq1;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v3}, Lnq1;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lzl2;

    move-result-object v5

    .line 40
    iget-object v2, v10, Lmt1;->j:Ljava/util/concurrent/Executor;

    new-instance v14, Lvt1;

    move-object v3, v14

    move-object v4, v10

    move-object v6, v1

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lvt1;-><init>(Lmt1;Lzl2;Lpc0;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v2, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Lpl2; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_2
    :try_start_5
    const-string v0, "Failed to create Adapter."

    .line 41
    invoke-virtual {v1, v0}, Lzt1;->onInitializationFailed(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_3
    move-exception v0

    .line 42
    :try_start_6
    invoke-static {v9, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 43
    :cond_2
    invoke-static {v12}, Lnt2;->y(Ljava/lang/Iterable;)Lnt2;

    move-result-object v0

    .line 44
    new-instance v1, Lst1;

    invoke-direct {v1, v10}, Lst1;-><init>(Lmt1;)V

    iget-object v2, v10, Lmt1;->i:Ljava/util/concurrent/Executor;

    .line 45
    new-instance v3, Lgv2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2, v1}, Lgv2;-><init>(Lit2;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v1, "Malformed CLD response"

    .line 46
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method
