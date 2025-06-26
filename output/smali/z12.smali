.class public final Lz12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw12<",
        "Lkj1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lji1;

.field public final b:Lzv2;

.field public final c:Lom1;

.field public final d:Lyl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyl2<",
            "Lio1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lji1;Lzv2;Lom1;Lyl2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lji1;",
            "Lzv2;",
            "Lom1;",
            "Lyl2<",
            "Lio1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz12;->a:Lji1;

    .line 3
    iput-object p2, p0, Lz12;->b:Lzv2;

    .line 4
    iput-object p3, p0, Lz12;->c:Lom1;

    .line 5
    iput-object p4, p0, Lz12;->d:Lyl2;

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lsk2;->r:Lzk2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lzk2;->c:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lhl2;Lsk2;)Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            ")",
            "Law2<",
            "Ljava/util/List<",
            "Law2<",
            "Lkj1;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz12;->d:Lyl2;

    invoke-virtual {v0}, Lyl2;->b()Law2;

    move-result-object v0

    .line 2
    new-instance v1, Ly12;

    invoke-direct {v1, p0, p2}, Ly12;-><init>(Lz12;Lsk2;)V

    iget-object v2, p0, Lz12;->b:Lzv2;

    .line 3
    invoke-static {v0, v1, v2}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    .line 4
    new-instance v1, Lb22;

    invoke-direct {v1, p0, p1, p2}, Lb22;-><init>(Lz12;Lhl2;Lsk2;)V

    iget-object p1, p0, Lz12;->b:Lzv2;

    invoke-static {v0, v1, p1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lhl2;Lsk2;Lorg/json/JSONObject;)Law2;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            "Lorg/json/JSONObject;",
            ")",
            "Law2<",
            "Lkj1;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p3

    .line 1
    iget-object v0, v7, Lz12;->d:Lyl2;

    invoke-virtual {v0}, Lyl2;->b()Law2;

    move-result-object v3

    .line 2
    iget-object v0, v7, Lz12;->c:Lom1;

    .line 3
    iget-object v1, v0, Lom1;->a:Lzv2;

    new-instance v2, Lnm1;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct {v2, v0, v4, v5, v6}, Lnm1;-><init>(Lom1;Lhl2;Lsk2;Lorg/json/JSONObject;)V

    .line 4
    invoke-interface {v1, v2}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v10

    .line 5
    iget-object v1, v0, Lom1;->b:Lsm1;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "images"

    .line 7
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v9, v1, Lsm1;->h:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v11, v9, Lcom/google/android/gms/internal/ads/zzaei;->f:Z

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/zzaei;->h:Z

    .line 8
    invoke-virtual {v1, v8, v11, v9}, Lsm1;->a(Lorg/json/JSONArray;ZZ)Law2;

    move-result-object v11

    .line 9
    iget-object v1, v0, Lom1;->b:Lsm1;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "secondary_image"

    .line 11
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, v1, Lsm1;->h:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/zzaei;->f:Z

    .line 12
    invoke-virtual {v1, v8, v9}, Lsm1;->b(Lorg/json/JSONObject;Z)Law2;

    move-result-object v13

    .line 13
    iget-object v1, v0, Lom1;->b:Lsm1;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "app_icon"

    .line 15
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, v1, Lsm1;->h:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/zzaei;->f:Z

    .line 16
    invoke-virtual {v1, v8, v9}, Lsm1;->b(Lorg/json/JSONObject;Z)Law2;

    move-result-object v12

    .line 17
    iget-object v1, v0, Lom1;->b:Lsm1;

    .line 18
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "attribution"

    .line 19
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v15, 0x0

    const/4 v9, 0x0

    const-string v14, "image"

    if-nez v8, :cond_0

    .line 20
    invoke-static {v9}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 22
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v2, :cond_1

    if-eqz v9, :cond_1

    .line 23
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 24
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    const/4 v9, 0x1

    .line 25
    invoke-virtual {v1, v2, v15, v9}, Lsm1;->a(Lorg/json/JSONArray;ZZ)Law2;

    move-result-object v2

    .line 26
    new-instance v9, Ltm1;

    invoke-direct {v9, v1, v8}, Ltm1;-><init>(Lsm1;Lorg/json/JSONObject;)V

    iget-object v1, v1, Lsm1;->g:Ljava/util/concurrent/Executor;

    .line 27
    invoke-static {v2, v9, v1}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v1

    const-string v2, "require"

    .line 28
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 29
    invoke-static {v2, v1}, Lsm1;->c(ZLaw2;)Law2;

    move-result-object v1

    .line 30
    :goto_0
    iget-object v2, v0, Lom1;->b:Lsm1;

    .line 31
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "html_containers"

    const-string v9, "instream"

    .line 32
    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_4

    const-string v8, "video"

    .line 33
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v9, 0x0

    .line 34
    invoke-static {v9}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v2

    goto/16 :goto_1

    :cond_2
    const/4 v9, 0x0

    const-string v15, "vast_xml"

    .line 35
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 36
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v2, "Required field \'vast_xml\' is missing"

    .line 37
    invoke-static {v2}, Lis0;->zzez(Ljava/lang/String;)V

    .line 38
    invoke-static {v9}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v2

    goto :goto_1

    .line 39
    :cond_3
    iget-object v15, v2, Lsm1;->i:Lfn1;

    .line 40
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {v9}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v4

    new-instance v9, Lkn1;

    invoke-direct {v9, v15}, Lkn1;-><init>(Lfn1;)V

    iget-object v5, v15, Lfn1;->b:Ljava/util/concurrent/Executor;

    .line 42
    invoke-static {v4, v9, v5}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v4

    .line 43
    new-instance v5, Lin1;

    invoke-direct {v5, v15, v8}, Lin1;-><init>(Lfn1;Lorg/json/JSONObject;)V

    iget-object v8, v15, Lfn1;->b:Ljava/util/concurrent/Executor;

    .line 44
    invoke-static {v4, v5, v8}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v4

    .line 45
    sget-object v5, Ly40;->U1:Lo40;

    .line 46
    sget-object v8, Los3;->j:Los3;

    iget-object v8, v8, Los3;->f:Lu40;

    .line 47
    invoke-virtual {v8, v5}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v5

    .line 48
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v8, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, v2, Lsm1;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    invoke-static {v4, v8, v9, v5, v2}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object v2

    .line 50
    const-class v4, Ljava/lang/Exception;

    new-instance v5, Lym1;

    invoke-direct {v5}, Lym1;-><init>()V

    .line 51
    sget-object v8, Lms0;->f:Lzv2;

    .line 52
    invoke-static {v2, v4, v5, v8}, Lvt2;->n(Law2;Ljava/lang/Class;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v2

    goto :goto_1

    .line 53
    :cond_4
    iget-object v2, v2, Lsm1;->i:Lfn1;

    const-string v4, "base_url"

    .line 54
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "html"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 56
    invoke-static {v8}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v9

    new-instance v8, Lhn1;

    invoke-direct {v8, v2, v4, v5}, Lhn1;-><init>(Lfn1;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lfn1;->b:Ljava/util/concurrent/Executor;

    .line 57
    invoke-static {v9, v8, v2}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v2

    .line 58
    new-instance v4, Lvm1;

    invoke-direct {v4, v2}, Lvm1;-><init>(Law2;)V

    .line 59
    sget-object v5, Lms0;->f:Lzv2;

    .line 60
    invoke-static {v2, v4, v5}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v2

    .line 61
    :goto_1
    iget-object v4, v0, Lom1;->b:Lsm1;

    const-string v5, "enable_omid"

    .line 62
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    .line 63
    invoke-static {v5}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v4

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    const-string v8, "omid_settings"

    .line 64
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_6

    .line 65
    invoke-static {v5}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v9, "omid_html"

    .line 66
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 68
    invoke-static {v5}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v4

    goto :goto_2

    .line 69
    :cond_7
    invoke-static {v5}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v9

    new-instance v5, Lwm1;

    invoke-direct {v5, v4, v8}, Lwm1;-><init>(Lsm1;Ljava/lang/String;)V

    sget-object v4, Lms0;->e:Lzv2;

    .line 70
    invoke-static {v9, v5, v4}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v4

    .line 71
    :goto_2
    iget-object v5, v0, Lom1;->c:Lcn1;

    .line 72
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "custom_assets"

    .line 73
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_8

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v5

    move-object/from16 v21, v3

    move-object v3, v5

    goto/16 :goto_9

    .line 75
    :cond_8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v15, :cond_f

    move/from16 v19, v15

    .line 77
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_e

    move-object/from16 v20, v8

    const-string v8, "name"

    .line 78
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    const-string v7, "type"

    .line 79
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v3

    const-string v3, "string"

    .line 80
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    .line 81
    :cond_9
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x2

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    :goto_5
    if-eq v3, v7, :cond_c

    const/4 v7, 0x2

    if-eq v3, v7, :cond_b

    goto :goto_7

    .line 82
    :cond_b
    iget-object v3, v5, Lcn1;->b:Lsm1;

    .line 83
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "image_value"

    .line 84
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v15, v3, Lsm1;->h:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v15, v15, Lcom/google/android/gms/internal/ads/zzaei;->f:Z

    .line 85
    invoke-virtual {v3, v7, v15}, Lsm1;->b(Lorg/json/JSONObject;Z)Law2;

    move-result-object v3

    .line 86
    new-instance v7, Len1;

    invoke-direct {v7, v8}, Len1;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcn1;->a:Ljava/util/concurrent/Executor;

    .line 87
    invoke-static {v3, v7, v8}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v3

    goto :goto_6

    .line 88
    :cond_c
    new-instance v3, Ldn1;

    const-string v7, "string_value"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v8, v7}, Ldn1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v3

    :goto_6
    move-object v7, v3

    const/4 v3, 0x0

    goto :goto_8

    :cond_d
    move-object/from16 v21, v3

    goto :goto_7

    :cond_e
    move-object/from16 v21, v3

    move-object/from16 v20, v8

    :goto_7
    const/4 v3, 0x0

    .line 89
    invoke-static {v3}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v7

    .line 90
    :goto_8
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, p0

    move/from16 v15, v19

    move-object/from16 v8, v20

    move-object/from16 v3, v21

    goto/16 :goto_3

    :cond_f
    move-object/from16 v21, v3

    .line 91
    new-instance v3, Lev2;

    invoke-static {v9}, Lnt2;->y(Ljava/lang/Iterable;)Lnt2;

    move-result-object v6

    invoke-direct {v3, v6}, Lev2;-><init>(Lit2;)V

    .line 92
    sget-object v6, Lbn1;->a:Lvs2;

    iget-object v5, v5, Lcn1;->a:Ljava/util/concurrent/Executor;

    .line 93
    invoke-static {v3, v6, v5}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v3

    :goto_9
    const/16 v5, 0x8

    new-array v5, v5, [Law2;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    const/4 v7, 0x1

    aput-object v11, v5, v7

    const/4 v15, 0x2

    aput-object v13, v5, v15

    const/4 v8, 0x3

    aput-object v12, v5, v8

    const/4 v8, 0x4

    aput-object v1, v5, v8

    const/4 v8, 0x5

    aput-object v2, v5, v8

    const/4 v8, 0x6

    aput-object v4, v5, v8

    const/4 v8, 0x7

    aput-object v3, v5, v8

    .line 94
    invoke-static {v5}, Lnt2;->u([Ljava/lang/Object;)Lnt2;

    move-result-object v5

    .line 95
    new-instance v14, Lqm1;

    move-object v8, v14

    move-object v9, v0

    move-object v7, v14

    const/4 v6, 0x1

    move-object v14, v1

    const/4 v1, 0x2

    const/4 v6, 0x0

    move-object/from16 v15, p3

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v3

    invoke-direct/range {v8 .. v18}, Lqm1;-><init>(Lom1;Law2;Law2;Law2;Law2;Law2;Lorg/json/JSONObject;Law2;Law2;Law2;)V

    iget-object v0, v0, Lom1;->a:Lzv2;

    .line 96
    new-instance v2, Lgv2;

    invoke-direct {v2, v5, v6, v0, v7}, Lgv2;-><init>(Lit2;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    new-array v0, v1, [Law2;

    aput-object v21, v0, v6

    const/4 v6, 0x1

    aput-object v2, v0, v6

    .line 97
    invoke-static {v0}, Lnt2;->u([Ljava/lang/Object;)Lnt2;

    move-result-object v7

    .line 98
    new-instance v8, Lc22;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v3, v21

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    const/4 v9, 0x1

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lc22;-><init>(Lz12;Law2;Law2;Lhl2;Lsk2;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lz12;->b:Lzv2;

    .line 99
    new-instance v2, Lgv2;

    invoke-direct {v2, v7, v9, v1, v8}, Lgv2;-><init>(Lit2;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method
