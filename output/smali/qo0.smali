.class public final Lqo0;
.super Lcom/google/android/gms/ads/rewarded/RewardedAd;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lfo0;

.field public final d:Landroid/content/Context;

.field public final e:Lap0;

.field public final f:Lso0;

.field public g:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

.field public h:Lcom/google/android/gms/ads/OnPaidEventListener;

.field public i:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lqo0;->d:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lqo0;->b:Ljava/lang/String;

    .line 4
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->b:Lwr3;

    .line 5
    new-instance v1, Leg0;

    invoke-direct {v1}, Leg0;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Lyr3;

    invoke-direct {v2, v0, p1, p2, v1}, Lyr3;-><init>(Lwr3;Landroid/content/Context;Ljava/lang/String;Lhg0;)V

    const/4 p2, 0x0

    .line 8
    invoke-virtual {v2, p1, p2}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Lfo0;

    .line 10
    iput-object p1, p0, Lqo0;->c:Lfo0;

    .line 11
    new-instance p1, Lap0;

    invoke-direct {p1}, Lap0;-><init>()V

    iput-object p1, p0, Lqo0;->e:Lap0;

    .line 12
    new-instance p1, Lso0;

    invoke-direct {p1}, Lso0;-><init>()V

    iput-object p1, p0, Lqo0;->f:Lso0;

    return-void
.end method


# virtual methods
.method public final a(Lzu3;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lqo0;->c:Lfo0;

    iget-object v1, p0, Lqo0;->d:Landroid/content/Context;

    .line 2
    invoke-static {v1, p1}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p1

    new-instance v1, Lwo0;

    invoke-direct {v1, p2, p0}, Lwo0;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    .line 3
    invoke-interface {v0, p1, v1}, Lfo0;->T4(Lcom/google/android/gms/internal/ads/zzvq;Lno0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 4
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lqo0;->c:Lfo0;

    invoke-interface {v0}, Lfo0;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqo0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lqo0;->i:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lqo0;->c:Lfo0;

    invoke-interface {v0}, Lfo0;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public final getOnAdMetadataChangedListener()Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lqo0;->g:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    return-object v0
.end method

.method public final getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lqo0;->h:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lqo0;->c:Lfo0;

    invoke-interface {v0}, Lfo0;->zzkm()Lru3;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lru3;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lqo0;->c:Lfo0;

    invoke-interface {v1}, Lfo0;->c2()Lbo0;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v2, Lto0;

    invoke-direct {v2, v1}, Lto0;-><init>(Lbo0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 3
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lqo0;->c:Lfo0;

    invoke-interface {v0}, Lfo0;->isLoaded()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lqo0;->i:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 2
    iget-object v0, p0, Lqo0;->e:Lap0;

    .line 3
    iput-object p1, v0, Lap0;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 4
    iget-object v0, p0, Lqo0;->f:Lso0;

    .line 5
    iput-object p1, v0, Lso0;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lqo0;->c:Lfo0;

    invoke-interface {v0, p1}, Lfo0;->setImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lqo0;->g:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    .line 2
    iget-object v0, p0, Lqo0;->c:Lfo0;

    new-instance v1, Ld40;

    invoke-direct {v1, p1}, Ld40;-><init>(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    invoke-interface {v0, v1}, Lfo0;->r4(Llu3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lqo0;->h:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 2
    iget-object v0, p0, Lqo0;->c:Lfo0;

    new-instance v1, Lc40;

    invoke-direct {v1, p1}, Lc40;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lfo0;->zza(Lmu3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lqo0;->c:Lfo0;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaww;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaww;-><init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    invoke-interface {v0, v1}, Lfo0;->E6(Lcom/google/android/gms/internal/ads/zzaww;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lqo0;->e:Lap0;

    .line 16
    iput-object p2, v0, Lap0;->f:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    if-nez p1, :cond_0

    const-string p2, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    .line 17
    invoke-static {p2}, Lis0;->zzez(Ljava/lang/String;)V

    .line 18
    :cond_0
    :try_start_0
    iget-object p2, p0, Lqo0;->c:Lfo0;

    iget-object v0, p0, Lqo0;->e:Lap0;

    invoke-interface {p2, v0}, Lfo0;->J5(Lgo0;)V

    .line 19
    iget-object p2, p0, Lqo0;->c:Lfo0;

    .line 20
    new-instance v0, Ly20;

    invoke-direct {v0, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 21
    invoke-interface {p2, v0}, Lfo0;->zze(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 22
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqo0;->f:Lso0;

    .line 2
    iput-object p2, v0, Lso0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    .line 3
    :try_start_0
    iget-object p2, p0, Lqo0;->c:Lfo0;

    invoke-interface {p2, v0}, Lfo0;->J5(Lgo0;)V

    .line 4
    iget-object p2, p0, Lqo0;->c:Lfo0;

    .line 5
    new-instance v0, Ly20;

    invoke-direct {v0, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p2, v0}, Lfo0;->zze(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 7
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lqo0;->f:Lso0;

    .line 9
    iput-object p2, v0, Lso0;->e:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    .line 10
    :try_start_0
    iget-object p2, p0, Lqo0;->c:Lfo0;

    invoke-interface {p2, v0}, Lfo0;->J5(Lgo0;)V

    .line 11
    iget-object p2, p0, Lqo0;->c:Lfo0;

    .line 12
    new-instance v0, Ly20;

    invoke-direct {v0, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-interface {p2, v0, p3}, Lfo0;->S6(Lx20;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 14
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
