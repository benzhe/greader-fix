.class public final Lhh0;
.super Llg0;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/Object;

.field public f:Lph0;

.field public g:Lvn0;

.field public h:Lx20;

.field public i:Landroid/view/View;

.field public j:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

.field public k:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

.field public l:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

.field public m:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/Adapter;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Llg0;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lhh0;->n:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lhh0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Llg0;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lhh0;->n:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lhh0;->e:Ljava/lang/Object;

    return-void
.end method

.method public static X6(Lcom/google/android/gms/internal/ads/zzvq;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Los3;->j:Los3;

    iget-object p0, p0, Los3;->a:Lzr0;

    .line 3
    invoke-static {}, Lzr0;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final C3()Lq80;
    .locals 2

    .line 1
    iget-object v0, p0, Lhh0;->f:Lph0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lph0;->d:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    .line 3
    instance-of v1, v0, Lv80;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lv80;

    .line 5
    iget-object v0, v0, Lv80;->a:Lq80;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final F6()Log0;
    .locals 2

    .line 1
    iget-object v0, p0, Lhh0;->m:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lmh0;

    invoke-direct {v1, v0}, Lmh0;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final G2()Lbh0;
    .locals 2

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lhh0;->f:Lph0;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lph0;->c:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lji0;

    invoke-direct {v1, v0}, Lji0;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-object v1

    .line 5
    :cond_0
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lhh0;->k:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Lji0;

    invoke-direct {v1, v0}, Lji0;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final H()Lx20;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 5
    invoke-static {v1, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 6
    throw v0

    .line 7
    :cond_0
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lhh0;->i:Landroid/view/View;

    .line 9
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 10
    :cond_1
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhh0;->e:Ljava/lang/Object;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v0, v3}, Ljo;->x(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Ljo;->x(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljo;->x(Ljava/lang/String;I)I

    move-result v3

    const-string v4, " or "

    const-string v5, " #009 Class mismatch: "

    invoke-static {v3, v0, v4, v1, v5}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 15
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final M()Lcom/google/android/gms/internal/ads/zzaqr;
    .locals 2

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqr;->n(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v0

    return-object v0
.end method

.method public final O()Lcom/google/android/gms/internal/ads/zzaqr;
    .locals 2

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqr;->n(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v0

    return-object v0
.end method

.method public final O6(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v3, :cond_0

    const-string v3, "Requesting rewarded interstitial ad from adapter."

    .line 2
    invoke-static {v3}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 4
    new-instance v4, Lnh0;

    move-object/from16 v5, p4

    invoke-direct {v4, v1, v5}, Lnh0;-><init>(Lhh0;Lng0;)V

    .line 5
    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 6
    invoke-static/range {p1 .. p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    const-string v7, ""

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v1, v2, v0, v5}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 8
    invoke-virtual {v1, v0}, Lhh0;->Y6(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v9

    .line 9
    invoke-static/range {p2 .. p2}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "max_ad_content_rating"

    .line 12
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-object v14, v0

    :try_start_2
    const-string v0, ""

    move-object v5, v15

    move-object v2, v15

    move-object v15, v0

    .line 13
    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v2, ""

    .line 15
    invoke-static {v2, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 17
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lhh0;->e:Ljava/lang/Object;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 21
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final Q5(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    iget-object v5, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v6, v5, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v6, :cond_1

    instance-of v5, v5, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v0, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    const-string v5, " or "

    const-string v6, " #009 Class mismatch: "

    invoke-static {v4, v0, v5, v2, v6}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const-string v5, "Requesting interstitial ad from adapter."

    .line 8
    invoke-static {v5}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 9
    iget-object v5, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v6, v5, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    const-string v7, "max_ad_content_rating"

    const-string v8, ""

    if-eqz v6, :cond_5

    .line 10
    :try_start_0
    move-object v9, v5

    check-cast v9, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 11
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    move-object v13, v5

    .line 12
    new-instance v5, Leh0;

    .line 13
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    const-wide/16 v14, -0x1

    cmp-long v6, v10, v14

    if-nez v6, :cond_3

    const/4 v6, 0x0

    :goto_2
    move-object v11, v6

    goto :goto_3

    .line 14
    :cond_3
    new-instance v6, Ljava/util/Date;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :goto_3
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    .line 15
    invoke-static/range {p2 .. p2}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v15

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzvq;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v20, v8

    :try_start_1
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    move/from16 v16, v10

    .line 16
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v10

    .line 17
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v7

    goto :goto_4

    :catch_0
    move-object/from16 v19, v17

    :goto_4
    move/from16 v7, v16

    move-object v10, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    .line 19
    :try_start_3
    invoke-direct/range {v10 .. v19}, Leh0;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 20
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    .line 21
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    :goto_5
    move-object v14, v6

    .line 22
    invoke-static/range {p1 .. p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/content/Context;

    new-instance v11, Lph0;

    invoke-direct {v11, v4}, Lph0;-><init>(Lng0;)V

    .line 23
    invoke-virtual {v1, v2, v0, v3}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    move-object v13, v5

    .line 24
    invoke-interface/range {v9 .. v14}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v6, v20

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v6, v8

    .line 25
    :goto_6
    invoke-static {v6, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 26
    throw v0

    :cond_5
    move-object v6, v8

    .line 27
    instance-of v8, v5, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v8, :cond_6

    .line 28
    :try_start_4
    check-cast v5, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 29
    new-instance v8, Llh0;

    invoke-direct {v8, v1, v4}, Llh0;-><init>(Lhh0;Lng0;)V

    .line 30
    new-instance v4, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 31
    invoke-static/range {p1 .. p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/content/Context;

    const-string v11, ""

    .line 32
    invoke-virtual {v1, v2, v0, v3}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 33
    invoke-virtual {v1, v0}, Lhh0;->Y6(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v13

    .line 34
    invoke-static/range {p2 .. p2}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v14

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v0

    .line 36
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v18, v0

    goto :goto_7

    :catch_1
    move-object/from16 v18, v16

    .line 38
    :goto_7
    :try_start_6
    iget-object v0, v1, Lhh0;->n:Ljava/lang/String;

    move v2, v9

    move-object v9, v4

    move/from16 v16, v3

    move/from16 v17, v2

    move-object/from16 v19, v0

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v5, v4, v8}, Lcom/google/android/gms/ads/mediation/Adapter;->loadInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 40
    invoke-static {v6, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 41
    throw v0

    :cond_6
    return-void
.end method

.method public final R3(Lx20;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;->onContextChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final R6(Lx20;Lvn0;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx20;",
            "Lvn0;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    if-eqz v0, :cond_1

    const-string v0, "Initialize rewarded video adapter."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p0, v2, v3, v3}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance p3, Lzn0;

    invoke-direct {p3, p2}, Lzn0;-><init>(Lvn0;)V

    .line 9
    invoke-interface {v0, p1, p3, v1}, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Could not initialize rewarded video adapter."

    .line 10
    invoke-static {p2, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 12
    :cond_1
    const-class p1, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lhh0;->e:Ljava/lang/Object;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x16

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 16
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final U1(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lhh0;->Q5(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V

    return-void
.end method

.method public final V5(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lhh0;->t6(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Server parameters: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 8
    :cond_2
    iget-object p1, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of p1, p1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p1, :cond_3

    const-string p1, "adJson"

    .line 9
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string p1, "tagForChildDirectedTreatment"

    .line 10
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string p1, "max_ad_content_rating"

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    const-string p2, ""

    .line 12
    invoke-static {p2, p1}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object p1

    .line 13
    throw p1
.end method

.method public final Y6(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method public final a6(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v3, :cond_0

    const-string v3, "Requesting rewarded ad from adapter."

    .line 2
    invoke-static {v3}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 4
    new-instance v4, Lnh0;

    move-object/from16 v5, p4

    invoke-direct {v4, v1, v5}, Lnh0;-><init>(Lhh0;Lng0;)V

    .line 5
    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 6
    invoke-static/range {p1 .. p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    const-string v7, ""

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v1, v2, v0, v5}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 8
    invoke-virtual {v1, v0}, Lhh0;->Y6(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v9

    .line 9
    invoke-static/range {p2 .. p2}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "max_ad_content_rating"

    .line 12
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-object v14, v0

    :try_start_2
    const-string v0, ""

    move-object v5, v15

    move-object v2, v15

    move-object v15, v0

    .line 13
    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v2, ""

    .line 15
    invoke-static {v2, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 17
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lhh0;->e:Ljava/lang/Object;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 21
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final d6(Lx20;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_1

    const-string v0, "Show rewarded ad from adapter."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lhh0;->l:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string p1, "Can not show null mediation rewarded ad."

    .line 5
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 6
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 7
    :cond_1
    const-class p1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 11
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 4
    throw v0
.end method

.method public final getInterstitialAdapterInfo()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbhf;

    if-nez v1, :cond_0

    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/zzbhf;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhh0;->e:Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 7
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lsu3;
    .locals 3

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/zza;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/zza;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/zza;->getVideoController()Lsu3;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 4
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final h6()Lvg0;
    .locals 2

    .line 1
    iget-object v0, p0, Lhh0;->f:Lph0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lph0;->b:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lrh0;

    check-cast v0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-direct {v1, v0}, Lrh0;-><init>(Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i5(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lvn0;Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1
    iget-object v4, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v5, v4, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v5, :cond_4

    const-string v4, "Initialize rewarded video adapter."

    .line 2
    invoke-static {v4}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v4, v1, Lhh0;->e:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v3, v0, v4}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    if-eqz v0, :cond_2

    .line 5
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    if-eqz v6, :cond_0

    new-instance v6, Ljava/util/HashSet;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v14, v6

    goto :goto_0

    :cond_0
    move-object v14, v4

    .line 6
    :goto_0
    new-instance v6, Leh0;

    .line 7
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    const-wide/16 v11, -0x1

    cmp-long v9, v7, v11

    if-nez v9, :cond_1

    :goto_1
    move-object v12, v4

    goto :goto_2

    .line 8
    :cond_1
    new-instance v4, Ljava/util/Date;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :goto_2
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    .line 9
    invoke-static/range {p2 .. p2}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v16

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzvq;->v:Z

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 10
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "max_ad_content_rating"

    .line 12
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v20, v3

    goto :goto_3

    :catch_0
    move-object/from16 v20, v9

    :goto_3
    move-object v11, v6

    move/from16 v17, v4

    move/from16 v18, v7

    move/from16 v19, v8

    .line 13
    :try_start_2
    invoke-direct/range {v11 .. v20}, Leh0;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    :cond_3
    const/4 v0, 0x0

    :goto_4
    move-object v11, v0

    move-object v7, v6

    .line 16
    invoke-static/range {p1 .. p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    new-instance v9, Lzn0;

    invoke-direct {v9, v2}, Lzn0;-><init>(Lvn0;)V

    move-object/from16 v8, p3

    .line 17
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, ""

    .line 18
    invoke-static {v2, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 19
    throw v0

    .line 20
    :cond_4
    instance-of v0, v4, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_5

    move-object/from16 v0, p1

    .line 21
    iput-object v0, v1, Lhh0;->h:Lx20;

    .line 22
    iput-object v2, v1, Lhh0;->g:Lvn0;

    .line 23
    new-instance v0, Ly20;

    invoke-direct {v0, v4}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 24
    invoke-interface {v2, v0}, Lvn0;->J0(Lx20;)V

    return-void

    .line 25
    :cond_5
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v0, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    const-string v5, " or "

    const-string v6, " #009 Class mismatch: "

    invoke-static {v4, v0, v5, v2, v6}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v1, :cond_0

    const-string v0, "Check if adapter is initialized."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->isInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 5
    invoke-static {v1, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 6
    throw v0

    .line 7
    :cond_0
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lhh0;->g:Lvn0;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 9
    :cond_2
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhh0;->e:Ljava/lang/Object;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v0, v3}, Ljo;->x(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Ljo;->x(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljo;->x(Ljava/lang/String;I)I

    move-result v3

    const-string v4, " or "

    const-string v5, " #009 Class mismatch: "

    invoke-static {v3, v0, v4, v1, v5}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 14
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j1(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;Lcom/google/android/gms/internal/ads/zzaei;Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx20;",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lng0;",
            "Lcom/google/android/gms/internal/ads/zzaei;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    iget-object v5, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v6, v5, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-nez v6, :cond_1

    instance-of v5, v5, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v0, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    const-string v5, " or "

    const-string v6, " #009 Class mismatch: "

    invoke-static {v4, v0, v5, v2, v6}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const-string v5, "Requesting native ad from adapter."

    .line 8
    invoke-static {v5}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 9
    iget-object v5, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v6, v5, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    const-string v7, "max_ad_content_rating"

    const-string v8, ""

    if-eqz v6, :cond_5

    .line 10
    :try_start_0
    check-cast v5, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 11
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    if-eqz v6, :cond_2

    new-instance v6, Ljava/util/HashSet;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    invoke-direct {v6, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move-object v12, v6

    .line 12
    new-instance v6, Lth0;

    .line 13
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    const-wide/16 v13, -0x1

    cmp-long v11, v9, v13

    if-nez v11, :cond_3

    const/4 v9, 0x0

    :goto_2
    move-object v10, v9

    goto :goto_3

    .line 14
    :cond_3
    new-instance v9, Ljava/util/Date;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :goto_3
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    .line 15
    invoke-static/range {p2 .. p2}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v14

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzvq;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v21, v8

    :try_start_1
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    move/from16 v16, v9

    .line 16
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v9

    .line 17
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v20, v7

    goto :goto_4

    :catch_0
    move-object/from16 v20, v17

    :goto_4
    move/from16 v7, v16

    move-object v9, v6

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move/from16 v18, v7

    move/from16 v19, v8

    .line 19
    :try_start_3
    invoke-direct/range {v9 .. v20}, Lth0;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzaei;Ljava/util/List;ZILjava/lang/String;)V

    .line 20
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    if-eqz v7, :cond_4

    .line 21
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    .line 22
    :goto_5
    new-instance v8, Lph0;

    invoke-direct {v8, v4}, Lph0;-><init>(Lng0;)V

    iput-object v8, v1, Lhh0;->f:Lph0;

    .line 23
    invoke-static/range {p1 .. p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iget-object v8, v1, Lhh0;->f:Lph0;

    .line 24
    invoke-virtual {v1, v2, v0, v3}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 p1, v5

    move-object/from16 p2, v4

    move-object/from16 p3, v8

    move-object/from16 p4, v0

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    .line 25
    invoke-interface/range {p1 .. p6}, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v6, v21

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v6, v8

    .line 26
    :goto_6
    invoke-static {v6, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 27
    throw v0

    :cond_5
    move-object v6, v8

    .line 28
    instance-of v8, v5, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v8, :cond_6

    .line 29
    :try_start_4
    check-cast v5, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 30
    new-instance v8, Lkh0;

    invoke-direct {v8, v1, v4}, Lkh0;-><init>(Lhh0;Lng0;)V

    .line 31
    new-instance v4, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 32
    invoke-static/range {p1 .. p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/content/Context;

    const-string v11, ""

    .line 33
    invoke-virtual {v1, v2, v0, v3}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 34
    invoke-virtual {v1, v0}, Lhh0;->Y6(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v13

    .line 35
    invoke-static/range {p2 .. p2}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v14

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 36
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v0

    .line 37
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v18, v0

    goto :goto_7

    :catch_1
    move-object/from16 v18, v16

    .line 39
    :goto_7
    :try_start_6
    iget-object v0, v1, Lhh0;->n:Ljava/lang/String;

    move v2, v9

    move-object v9, v4

    move/from16 v16, v3

    move/from16 v17, v2

    move-object/from16 v19, v0

    move-object/from16 v20, p6

    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaei;)V

    .line 40
    invoke-virtual {v5, v4, v8}, Lcom/google/android/gms/ads/mediation/Adapter;->loadNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 41
    invoke-static {v6, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 42
    throw v0

    :cond_6
    return-void
.end method

.method public final j5()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final m4(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lhh0;->s3(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V

    return-void
.end method

.method public final pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 4
    throw v0
.end method

.method public final r1(Lx20;Lpc0;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx20;",
            "Lpc0;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajw;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_7

    .line 2
    new-instance v0, Ljh0;

    invoke-direct {v0, p2}, Ljh0;-><init>(Lpc0;)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajw;

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajw;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "rewarded_interstitial"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "interstitial"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "rewarded"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "native"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v4, "banner"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_2

    .line 7
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->REWARDED_INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 8
    :pswitch_1
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 9
    :pswitch_2
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 10
    :pswitch_3
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->NATIVE:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_2

    .line 11
    :pswitch_4
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    :goto_2
    if-eqz v2, :cond_0

    .line 12
    new-instance v3, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajw;->f:Landroid/os/Bundle;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;-><init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_6
    iget-object p3, p0, Lhh0;->e:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 14
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p3, p1, v0, p2}, Lcom/google/android/gms/ads/mediation/Adapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V

    return-void

    .line 15
    :cond_7
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_4
        -0x3ebdafe9 -> :sswitch_3
        -0xe47b3f2 -> :sswitch_2
        0x240b672c -> :sswitch_1
        0x71ef0bbd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r5()Lwg0;
    .locals 2

    .line 1
    iget-object v0, p0, Lhh0;->f:Lph0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lph0;->b:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lqh0;

    check-cast v0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    invoke-direct {v1, v0}, Lqh0;-><init>(Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final resume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 4
    throw v0
.end method

.method public final s3(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 1
    iget-object v6, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v7, v6, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v7, :cond_1

    instance-of v6, v6, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v6, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v0, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    const-string v5, " or "

    const-string v6, " #009 Class mismatch: "

    invoke-static {v4, v0, v5, v2, v6}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const-string v6, "Requesting banner ad from adapter."

    .line 8
    invoke-static {v6}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 9
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzvt;->r:Z

    if-eqz v6, :cond_2

    .line 10
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    .line 11
    invoke-static {v6, v0}, Lcom/google/android/gms/ads/zza;->zzb(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_2
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->e:Ljava/lang/String;

    invoke-static {v6, v7, v0}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    :goto_1
    move-object v12, v0

    .line 13
    iget-object v0, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v6, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    const-string v7, "max_ad_content_rating"

    const-string v14, ""

    if-eqz v6, :cond_6

    .line 14
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/util/HashSet;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    invoke-direct {v6, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v18, v6

    .line 16
    new-instance v8, Leh0;

    .line 17
    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    const-wide/16 v15, -0x1

    cmp-long v6, v9, v15

    if-nez v6, :cond_4

    const/4 v6, 0x0

    :goto_3
    move-object/from16 v16, v6

    goto :goto_4

    .line 18
    :cond_4
    new-instance v6, Ljava/util/Date;

    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    goto :goto_3

    :goto_4
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    .line 19
    invoke-static/range {p3 .. p3}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v20

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget-boolean v11, v2, Lcom/google/android/gms/internal/ads/zzvq;->v:Z

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 20
    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v15

    .line 21
    :try_start_1
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v24, v7

    goto :goto_5

    :catch_0
    move-object/from16 v24, v17

    :goto_5
    move-object v15, v8

    move/from16 v17, v6

    move-object/from16 v19, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v13

    .line 23
    :try_start_2
    invoke-direct/range {v15 .. v24}, Leh0;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 24
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    if-eqz v6, :cond_5

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_6

    :cond_5
    const/4 v6, 0x0

    :goto_6
    move-object v9, v6

    .line 26
    invoke-static/range {p1 .. p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    new-instance v7, Lph0;

    invoke-direct {v7, v5}, Lph0;-><init>(Lng0;)V

    .line 27
    invoke-virtual {v1, v3, v2, v4}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v2, v0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v12

    move-object v7, v8

    move-object v8, v9

    .line 28
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 29
    invoke-static {v14, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 30
    throw v0

    .line 31
    :cond_6
    instance-of v6, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v6, :cond_7

    .line 32
    :try_start_3
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 33
    new-instance v15, Lih0;

    invoke-direct {v15, v1, v5}, Lih0;-><init>(Lhh0;Lng0;)V

    .line 34
    new-instance v13, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 35
    invoke-static/range {p1 .. p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const-string v6, ""

    .line 36
    invoke-virtual {v1, v3, v2, v4}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 37
    invoke-virtual {v1, v2}, Lhh0;->Y6(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v9

    .line 38
    invoke-static/range {p3 .. p3}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v10

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzvq;->k:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 p2, v14

    :try_start_4
    iget v14, v2, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 39
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v2

    .line 40
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v16, v2

    .line 42
    :catch_1
    :try_start_6
    iget-object v7, v1, Lhh0;->n:Ljava/lang/String;

    move-object v2, v13

    move-object v3, v5

    move/from16 v17, v4

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move-object/from16 v18, v7

    move v7, v10

    move-object v8, v11

    move/from16 v9, v17

    move v10, v14

    move-object/from16 v11, v16

    move-object v14, v13

    move-object/from16 v13, v18

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v14, v15}, Lcom/google/android/gms/ads/mediation/Adapter;->loadBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 p2, v14

    :goto_7
    move-object/from16 v2, p2

    .line 44
    invoke-static {v2, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 45
    throw v0

    :cond_7
    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    if-nez v1, :cond_0

    .line 2
    const-class p1, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;->onImmersiveModeUpdated(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, ""

    .line 8
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final showInterstitial()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v0, :cond_0

    const-string v0, "Showing interstitial from adapter."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 5
    invoke-static {v1, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 6
    throw v0

    .line 7
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhh0;->e:Ljava/lang/Object;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v0, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final showVideo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v1, :cond_0

    const-string v0, "Show rewarded video ad from adapter."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->showVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 5
    invoke-static {v1, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 6
    throw v0

    .line 7
    :cond_0
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lhh0;->l:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lhh0;->h:Lx20;

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V

    return-void

    :cond_1
    const-string v0, "Can not show null mediated rewarded ad."

    .line 10
    invoke-static {v0}, Lis0;->zzex(Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 12
    :cond_2
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhh0;->e:Ljava/lang/Object;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v0, v3}, Ljo;->x(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Ljo;->x(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljo;->x(Ljava/lang/String;I)I

    move-result v3

    const-string v4, " or "

    const-string v5, " #009 Class mismatch: "

    invoke-static {v3, v0, v4, v1, v5}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 17
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final t6(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-eqz v4, :cond_3

    const-string v3, "Requesting rewarded video ad from adapter."

    .line 2
    invoke-static {v3}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 4
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v8, v4

    .line 5
    new-instance v4, Leh0;

    .line 6
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    const-wide/16 v9, -0x1

    cmp-long v7, v5, v9

    if-nez v7, :cond_1

    const/4 v5, 0x0

    :goto_1
    move-object v6, v5

    goto :goto_2

    .line 7
    :cond_1
    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :goto_2
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    .line 8
    invoke-static/range {p1 .. p1}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v10

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzvq;->v:Z

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 9
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v15, "max_ad_content_rating"

    .line 11
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-object v14, v5

    move-object v5, v4

    .line 12
    :try_start_2
    invoke-direct/range {v5 .. v14}, Leh0;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 13
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v6, p3

    .line 15
    invoke-virtual {v1, v2, v0, v6}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 16
    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, ""

    .line 17
    invoke-static {v2, v0}, Ljo;->K(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/os/RemoteException;

    move-result-object v0

    .line 18
    throw v0

    .line 19
    :cond_3
    instance-of v4, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v4, :cond_4

    .line 20
    iget-object v4, v1, Lhh0;->h:Lx20;

    new-instance v5, Loh0;

    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    iget-object v6, v1, Lhh0;->g:Lvn0;

    invoke-direct {v5, v3, v6}, Loh0;-><init>(Lcom/google/android/gms/ads/mediation/Adapter;Lvn0;)V

    invoke-virtual {v1, v4, v0, v2, v5}, Lhh0;->a6(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V

    return-void

    .line 21
    :cond_4
    const-class v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lhh0;->e:Ljava/lang/Object;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v0, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    const-string v5, " or "

    const-string v6, " #009 Class mismatch: "

    invoke-static {v4, v0, v5, v2, v6}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final u5(Lx20;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhh0;->e:Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {p1, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    const-string v3, " or "

    const-string v4, " #009 Class mismatch: "

    invoke-static {v2, p1, v3, v0, v4}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lhh0;->showInterstitial()V

    return-void

    :cond_2
    const-string v0, "Show interstitial ad from adapter."

    .line 10
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lhh0;->j:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;->showAd(Landroid/content/Context;)V

    return-void

    :cond_3
    const-string p1, "Can not show null mediation interstitial ad."

    .line 13
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 14
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final v4()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    return v0
.end method

.method public final w2(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    iget-object v4, v1, Lhh0;->e:Ljava/lang/Object;

    instance-of v4, v4, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v4, :cond_0

    const-string v4, "Requesting interscroller ad from adapter."

    .line 2
    invoke-static {v4}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v4, v1, Lhh0;->e:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 4
    new-instance v5, Lgh0;

    move-object/from16 v6, p6

    invoke-direct {v5, v1, v6, v4}, Lgh0;-><init>(Lhh0;Lng0;Lcom/google/android/gms/ads/mediation/Adapter;)V

    .line 5
    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 6
    invoke-static/range {p1 .. p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/content/Context;

    const-string v8, ""

    move-object/from16 v6, p5

    .line 7
    invoke-virtual {v1, v3, v2, v6}, Lhh0;->W6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 8
    invoke-virtual {v1, v2}, Lhh0;->Y6(Lcom/google/android/gms/internal/ads/zzvq;)Landroid/os/Bundle;

    move-result-object v10

    .line 9
    invoke-static/range {p3 .. p3}, Lhh0;->X6(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v11

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "max_ad_content_rating"

    .line 12
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    :catch_0
    :try_start_2
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    .line 14
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zza;->zzc(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v16

    const-string v17, ""

    move-object v6, v15

    move-object v0, v15

    move-object v15, v2

    invoke-direct/range {v6 .. v17}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/ads/mediation/Adapter;->loadInterscrollerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v2, ""

    .line 16
    invoke-static {v2, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 18
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lhh0;->e:Ljava/lang/Object;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 22
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzvh()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lhh0;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbhe;

    if-nez v1, :cond_0

    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/zzbhe;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhh0;->e:Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 7
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhe;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhe;->zzvh()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
