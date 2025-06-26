.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ldv3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldv3;

    invoke-direct {v0, p1}, Ldv3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    const-string v0, "Context cannot be null"

    .line 3
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    .line 2
    iget-object v0, v0, Ldv3;->c:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Ldv3;->e:Lit3;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lit3;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    .line 2
    iget-object v0, v0, Ldv3;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Ldv3;->e:Lit3;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lit3;->zzkl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    invoke-virtual {v0}, Ldv3;->a()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    invoke-virtual {v0}, Ldv3;->b()Z

    move-result v0

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    invoke-virtual {v0}, Ldv3;->c()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lzu3;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldv3;->g(Lzu3;)V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    invoke-virtual {v0, p1}, Ldv3;->d(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Ler3;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    check-cast p1, Ler3;

    invoke-virtual {v0, p1}, Ldv3;->f(Ler3;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ldv3;->f(Ler3;)V

    :cond_1
    return-void
.end method

.method public final setAdMetadataListener(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iput-object p1, v0, Ldv3;->g:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    .line 4
    iget-object v0, v0, Ldv3;->e:Lit3;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    new-instance v1, Llr3;

    invoke-direct {v1, p1}, Llr3;-><init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {v0, v1}, Lit3;->zza(Llt3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 7
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    .line 2
    iget-object v1, v0, Ldv3;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    iput-object p1, v0, Ldv3;->f:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    invoke-virtual {v0, p1}, Ldv3;->e(Z)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iput-object p1, v0, Ldv3;->m:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 4
    iget-object v0, v0, Ldv3;->e:Lit3;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lc40;

    invoke-direct {v1, p1}, Lc40;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lit3;->zza(Lmu3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iput-object p1, v0, Ldv3;->j:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    .line 4
    iget-object v0, v0, Ldv3;->e:Lit3;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    new-instance v1, Lsn0;

    invoke-direct {v1, p1}, Lsn0;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {v0, v1}, Lit3;->zza(Lpn0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 7
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "show"

    .line 3
    invoke-virtual {v0, v1}, Ldv3;->h(Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Ldv3;->e:Lit3;

    invoke-interface {v0}, Lit3;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final zze(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Ldv3;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Ldv3;->k:Z

    return-void
.end method
