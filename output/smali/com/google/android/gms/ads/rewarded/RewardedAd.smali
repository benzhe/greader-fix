.class public Lcom/google/android/gms/ads/rewarded/RewardedAd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lqo0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    const-string v0, "context cannot be null"

    .line 3
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adUnitID cannot be null"

    .line 4
    invoke-static {p2, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lqo0;

    invoke-direct {v0, p1, p2}, Lqo0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1

    const-string v0, "Context cannot be null."

    .line 1
    invoke-static {p0, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdUnitId cannot be null."

    .line 2
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdRequest cannot be null."

    .line 3
    invoke-static {p2, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LoadCallback cannot be null."

    .line 4
    invoke-static {p3, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lqo0;

    invoke-direct {v0, p0, p1}, Lqo0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lzu3;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lqo0;->a(Lzu3;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1

    const-string v0, "Context cannot be null."

    .line 7
    invoke-static {p0, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdUnitId cannot be null."

    .line 8
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdManagerAdRequest cannot be null."

    .line 9
    invoke-static {p2, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LoadCallback cannot be null."

    .line 10
    invoke-static {p3, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lqo0;

    invoke-direct {v0, p0, p1}, Lqo0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->zzdt()Lzu3;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lqo0;->a(Lzu3;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public getAdMetadata()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Lqo0;->c:Lfo0;

    invoke-interface {v0}, Lfo0;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lqo0;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lqo0;->i:Lcom/google/android/gms/ads/FullScreenContentCallback;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Lqo0;->c:Lfo0;

    invoke-interface {v0}, Lfo0;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnAdMetadataChangedListener()Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lqo0;->g:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lqo0;->h:Lcom/google/android/gms/ads/OnPaidEventListener;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Lqo0;->c:Lfo0;

    invoke-interface {v0}, Lfo0;->zzkm()Lru3;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    .line 4
    invoke-static {v2, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lru3;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Lqo0;->c:Lfo0;

    invoke-interface {v0}, Lfo0;->c2()Lbo0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lto0;

    invoke-direct {v2, v0}, Lto0;-><init>(Lbo0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    .line 5
    invoke-static {v2, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public isLoaded()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Lqo0;->c:Lfo0;

    invoke-interface {v0}, Lfo0;->isLoaded()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    .line 4
    invoke-static {v2, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v1
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lzu3;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lqo0;->a(Lzu3;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    :cond_0
    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdt()Lzu3;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lqo0;->a(Lzu3;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    :cond_0
    return-void
.end method

.method public setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lqo0;->i:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 3
    iget-object v1, v0, Lqo0;->e:Lap0;

    .line 4
    iput-object p1, v1, Lap0;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 5
    iget-object v0, v0, Lqo0;->f:Lso0;

    .line 6
    iput-object p1, v0, Lso0;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    :cond_0
    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Lqo0;->c:Lfo0;

    invoke-interface {v0, p1}, Lfo0;->setImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iput-object p1, v0, Lqo0;->g:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    .line 4
    iget-object v0, v0, Lqo0;->c:Lfo0;

    new-instance v1, Ld40;

    invoke-direct {v1, p1}, Ld40;-><init>(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    invoke-interface {v0, v1}, Lfo0;->r4(Llu3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 5
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iput-object p1, v0, Lqo0;->h:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 4
    iget-object v0, v0, Lqo0;->c:Lfo0;

    new-instance v1, Lc40;

    invoke-direct {v1, p1}, Lc40;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lfo0;->zza(Lmu3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 5
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Lqo0;->c:Lfo0;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaww;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaww;-><init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    invoke-interface {v0, v1}, Lfo0;->E6(Lcom/google/android/gms/internal/ads/zzaww;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1, p2}, Lqo0;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lqo0;->f:Lso0;

    .line 3
    iput-object p2, v1, Lso0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    .line 4
    :try_start_0
    iget-object p2, v0, Lqo0;->c:Lfo0;

    invoke-interface {p2, v1}, Lfo0;->J5(Lgo0;)V

    .line 5
    iget-object p2, v0, Lqo0;->c:Lfo0;

    .line 6
    new-instance v0, Ly20;

    invoke-direct {v0, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-interface {p2, v0}, Lfo0;->zze(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 8
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a:Lqo0;

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, v0, Lqo0;->f:Lso0;

    .line 11
    iput-object p2, v1, Lso0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    .line 12
    :try_start_0
    iget-object p2, v0, Lqo0;->c:Lfo0;

    invoke-interface {p2, v1}, Lfo0;->J5(Lgo0;)V

    .line 13
    iget-object p2, v0, Lqo0;->c:Lfo0;

    .line 14
    new-instance v0, Ly20;

    invoke-direct {v0, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-interface {p2, v0, p3}, Lfo0;->S6(Lx20;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 16
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
