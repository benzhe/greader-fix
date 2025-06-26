.class public abstract Lq22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljz1<",
        "TAdT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;)Z
    .locals 1

    .line 1
    iget-object p1, p2, Lsk2;->u:Lorg/json/JSONObject;

    const-string p2, "pubid"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lhl2;Lsk2;)Law2;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            ")",
            "Law2<",
            "TAdT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v1, Lsk2;->u:Lorg/json/JSONObject;

    const-string v3, "pubid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v3, v0, Lhl2;->a:Lcl2;

    iget-object v3, v3, Lcl2;->a:Lll2;

    .line 3
    new-instance v4, Lnl2;

    invoke-direct {v4}, Lnl2;-><init>()V

    .line 4
    iget-object v5, v4, Lnl2;->p:Lal2;

    iget-object v6, v3, Lll2;->o:Lxk2;

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v6, v6, Lxk2;->a:I

    .line 7
    iput v6, v5, Lal2;->a:I

    .line 8
    iget-object v5, v3, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    .line 9
    iput-object v5, v4, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 10
    iget-object v5, v3, Lll2;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 11
    iput-object v5, v4, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 12
    iget-object v5, v3, Lll2;->a:Lwt3;

    .line 13
    iput-object v5, v4, Lnl2;->c:Lwt3;

    .line 14
    iget-object v5, v3, Lll2;->f:Ljava/lang/String;

    .line 15
    iput-object v5, v4, Lnl2;->d:Ljava/lang/String;

    .line 16
    iget-object v5, v3, Lll2;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    .line 17
    iput-object v5, v4, Lnl2;->e:Lcom/google/android/gms/internal/ads/zzaaz;

    .line 18
    iget-object v5, v3, Lll2;->g:Ljava/util/ArrayList;

    .line 19
    iput-object v5, v4, Lnl2;->g:Ljava/util/ArrayList;

    .line 20
    iget-object v5, v3, Lll2;->h:Ljava/util/ArrayList;

    .line 21
    iput-object v5, v4, Lnl2;->h:Ljava/util/ArrayList;

    .line 22
    iget-object v5, v3, Lll2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 23
    iput-object v5, v4, Lnl2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 24
    iget-object v5, v3, Lll2;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 25
    iput-object v5, v4, Lnl2;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 26
    iget-object v5, v3, Lll2;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 27
    iput-object v5, v4, Lnl2;->k:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz v5, :cond_0

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v5

    iput-boolean v5, v4, Lnl2;->f:Z

    .line 29
    :cond_0
    iget-object v5, v3, Lll2;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 30
    iput-object v5, v4, Lnl2;->l:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz v5, :cond_1

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v6

    iput-boolean v6, v4, Lnl2;->f:Z

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzjz()Lpt3;

    move-result-object v5

    iput-object v5, v4, Lnl2;->m:Lpt3;

    .line 33
    :cond_1
    iget-boolean v5, v3, Lll2;->p:Z

    .line 34
    iput-boolean v5, v4, Lnl2;->q:Z

    .line 35
    iput-object v2, v4, Lnl2;->d:Ljava/lang/String;

    .line 36
    iget-object v2, v3, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 37
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v5

    :goto_0
    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 38
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_3

    .line 39
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v10, v6

    goto :goto_1

    :cond_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v10, v7

    :goto_1
    const-string v6, "gw"

    const/4 v15, 0x1

    .line 40
    invoke-virtual {v10, v6, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    iget-object v6, v1, Lsk2;->u:Lorg/json/JSONObject;

    const-string v7, "mad_hac"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 42
    invoke-virtual {v10, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_4
    iget-object v6, v1, Lsk2;->u:Lorg/json/JSONObject;

    const-string v7, "adJson"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v7, "_ad"

    .line 44
    invoke-virtual {v10, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v6, "_noRefresh"

    .line 45
    invoke-virtual {v10, v6, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    iget-object v6, v1, Lsk2;->C:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 47
    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 48
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 49
    iget-object v9, v1, Lsk2;->C:Lorg/json/JSONObject;

    invoke-virtual {v9, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_6

    .line 50
    invoke-virtual {v10, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 51
    :cond_7
    invoke-virtual {v2, v5, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 52
    new-instance v5, Lcom/google/android/gms/internal/ads/zzvq;

    move-object v6, v5

    iget-object v3, v3, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzvq;->e:I

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    iget v11, v3, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    iget-boolean v13, v3, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    iget v14, v3, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget-boolean v15, v3, Lcom/google/android/gms/internal/ads/zzvq;->l:Z

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->m:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->n:Lcom/google/android/gms/internal/ads/zzaav;

    move-object/from16 v17, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    move-object/from16 v18, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->p:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->r:Landroid/os/Bundle;

    move-object/from16 v21, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->s:Ljava/util/List;

    move-object/from16 v22, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->t:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->u:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-boolean v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->v:Z

    move/from16 v25, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    move-object/from16 v26, v1

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    move/from16 v27, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->z:Ljava/util/List;

    move-object/from16 v29, v1

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->A:I

    move/from16 v30, v1

    move-object/from16 v20, v2

    invoke-direct/range {v6 .. v30}, Lcom/google/android/gms/internal/ads/zzvq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaav;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvf;ILjava/lang/String;Ljava/util/List;I)V

    .line 53
    iput-object v5, v4, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 54
    invoke-virtual {v4}, Lnl2;->a()Lll2;

    move-result-object v1

    .line 55
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 56
    iget-object v3, v0, Lhl2;->b:Lfl2;

    iget-object v3, v3, Lfl2;->b:Lwk2;

    .line 57
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v3, Lwk2;->a:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "nofill_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 59
    iget v5, v3, Lwk2;->c:I

    const-string v6, "refresh_interval"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    iget-object v3, v3, Lwk2;->b:Ljava/lang/String;

    const-string v5, "gws_query_id"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "parent_common_config"

    .line 61
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 62
    iget-object v0, v0, Lhl2;->a:Lcl2;

    iget-object v0, v0, Lcl2;->a:Lll2;

    iget-object v0, v0, Lll2;->f:Ljava/lang/String;

    .line 63
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "initial_ad_unit_id"

    .line 64
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    .line 65
    iget-object v4, v0, Lsk2;->v:Ljava/lang/String;

    const-string v5, "allocation_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lsk2;->c:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "click_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lsk2;->d:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "imp_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lsk2;->o:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "manual_tracking_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lsk2;->m:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "fill_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lsk2;->g:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "video_start_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lsk2;->h:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "video_reward_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lsk2;->i:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "video_complete_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    iget-object v4, v0, Lsk2;->j:Ljava/lang/String;

    const-string v5, "transaction_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v4, v0, Lsk2;->k:Ljava/lang/String;

    const-string v5, "valid_from_timestamp"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-boolean v4, v0, Lsk2;->K:Z

    const-string v5, "is_closable_area_disabled"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    iget-object v4, v0, Lsk2;->l:Lcom/google/android/gms/internal/ads/zzavy;

    if-eqz v4, :cond_8

    .line 77
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 78
    iget-object v5, v0, Lsk2;->l:Lcom/google/android/gms/internal/ads/zzavy;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzavy;->f:I

    const-string v6, "rb_amount"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    iget-object v0, v0, Lsk2;->l:Lcom/google/android/gms/internal/ads/zzavy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzavy;->e:Ljava/lang/String;

    const-string v5, "rb_type"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const-string v4, "rewards"

    .line 80
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_8
    const-string v0, "parent_ad_config"

    .line 81
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    .line 82
    invoke-virtual {v0, v1, v2}, Lq22;->c(Lll2;Landroid/os/Bundle;)Law2;

    move-result-object v1

    return-object v1
.end method

.method public abstract c(Lll2;Landroid/os/Bundle;)Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll2;",
            "Landroid/os/Bundle;",
            ")",
            "Law2<",
            "TAdT;>;"
        }
    .end annotation
.end method
