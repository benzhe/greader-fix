.class public Lcom/google/android/gms/ads/query/QueryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkv3;


# direct methods
.method public constructor <init>(Lkv3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/query/QueryInfo;->a:Lkv3;

    return-void
.end method

.method public static generate(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lzu3;

    move-result-object v3

    .line 2
    :goto_0
    invoke-static/range {p0 .. p0}, Lql0;->a(Landroid/content/Context;)Lzq0;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "Internal Error, query info generator is null."

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4
    :cond_1
    new-instance v5, Ly20;

    invoke-direct {v5, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    if-nez v3, :cond_2

    .line 5
    new-instance v0, Landroid/os/Bundle;

    move-object v10, v0

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v27, -0x1

    move/from16 v11, v27

    move/from16 v14, v27

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    move-object v12, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v0, Landroid/os/Bundle;

    move-object/from16 v20, v0

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    new-instance v0, Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v30, 0xea60

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvq;

    move-object v6, v0

    const/16 v7, 0x8

    const-wide/16 v8, -0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v6 .. v30}, Lcom/google/android/gms/internal/ads/zzvq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaav;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvf;ILjava/lang/String;Ljava/util/List;I)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v0, v3}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object v0

    .line 13
    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzazi;

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v6, v2, v0}, Lcom/google/android/gms/internal/ads/zzazi;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;)V

    .line 15
    :try_start_0
    new-instance v0, Lpl0;

    invoke-direct {v0, v1}, Lpl0;-><init>(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {v4, v5, v3, v0}, Lzq0;->R5(Lx20;Lcom/google/android/gms/internal/ads/zzazi;Lyq0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "Internal Error."

    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/QueryInfo;->a:Lkv3;

    .line 2
    iget-object v0, v0, Lkv3;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/QueryInfo;->a:Lkv3;

    .line 2
    iget-object v0, v0, Lkv3;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->i:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "request_id"

    .line 5
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v2
.end method
