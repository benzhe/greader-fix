.class public final Lzn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;


# instance fields
.field public final a:Lvn0;


# direct methods
.method public constructor <init>(Lvn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzn0;->a:Lvn0;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClicked."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1}, Lvn0;->S4(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1}, Lvn0;->U3(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdFailedToLoad."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1, p2}, Lvn0;->h2(Lx20;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 6
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLeftApplication."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1}, Lvn0;->p2(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1}, Lvn0;->K1(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1}, Lvn0;->M5(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitializationFailed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onInitializationFailed."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1, p2}, Lvn0;->i1(Lx20;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 6
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onInitializationSucceeded."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1}, Lvn0;->J0(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onRewarded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onRewarded."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavy;

    .line 6
    invoke-interface {p2}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result p2

    invoke-direct {p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzavy;-><init>(Ljava/lang/String;I)V

    .line 7
    invoke-interface {v0, v1, p1}, Lvn0;->I0(Lx20;Lcom/google/android/gms/internal/ads/zzavy;)V

    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lzn0;->a:Lvn0;

    .line 9
    new-instance v0, Ly20;

    invoke-direct {v0, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavy;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzavy;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0, p1}, Lvn0;->I0(Lx20;Lcom/google/android/gms/internal/ads/zzavy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 11
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoCompleted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoCompleted."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1}, Lvn0;->T2(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoStarted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoStarted."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    .line 4
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1}, Lvn0;->u6(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdMetadataChanged."

    .line 2
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzn0;->a:Lvn0;

    invoke-interface {v0, p1}, Lvn0;->zzb(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
