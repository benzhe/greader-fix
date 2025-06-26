.class public final Lmd0;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lit3;

.field public final c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/ads/admanager/AppEventListener;

.field public e:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field public f:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;-><init>()V

    .line 2
    iput-object p1, p0, Lmd0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lmd0;->c:Ljava/lang/String;

    .line 4
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->b:Lwr3;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzvt;-><init>()V

    new-instance v2, Leg0;

    invoke-direct {v2}, Leg0;-><init>()V

    .line 6
    invoke-virtual {v0, p1, v1, p2, v2}, Lwr3;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;)Lit3;

    move-result-object p1

    iput-object p1, p0, Lmd0;->b:Lit3;

    return-void
.end method


# virtual methods
.method public final a(Lzu3;Lcom/google/android/gms/ads/AdLoadCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzu3;",
            "Lcom/google/android/gms/ads/AdLoadCallback<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lmd0;->b:Lit3;

    iget-object v1, p0, Lmd0;->a:Landroid/content/Context;

    .line 2
    invoke-static {v1, p1}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p1

    new-instance v1, Lkr3;

    invoke-direct {v1, p2, p0}, Lkr3;-><init>(Lcom/google/android/gms/ads/AdLoadCallback;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0, p1, v1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzvq;Lvs3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/ads/LoadAdError;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Internal Error."

    const-string v4, "com.google.android.gms.ads"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/LoadAdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;Lcom/google/android/gms/ads/ResponseInfo;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmd0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/admanager/AppEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lmd0;->d:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lmd0;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object v0
.end method

.method public final getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lmd0;->f:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lmd0;->b:Lit3;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lit3;->zzkm()Lru3;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 3
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lru3;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lmd0;->d:Lcom/google/android/gms/ads/admanager/AppEventListener;

    .line 2
    iget-object v0, p0, Lmd0;->b:Lit3;

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Lum3;

    invoke-direct {v1, p1}, Lum3;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Lit3;->zza(Lpt3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 5
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lmd0;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 2
    iget-object v0, p0, Lmd0;->b:Lit3;

    new-instance v1, Lqs3;

    invoke-direct {v1, p1}, Lqs3;-><init>(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    invoke-interface {v0, v1}, Lit3;->zza(Lyt3;)V
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

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lmd0;->b:Lit3;

    invoke-interface {v0, p1}, Lit3;->setImmersiveMode(Z)V
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

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lmd0;->f:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 2
    iget-object v0, p0, Lmd0;->b:Lit3;

    new-instance v1, Lc40;

    invoke-direct {v1, p1}, Lc40;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lit3;->zza(Lmu3;)V
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

.method public final show(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    .line 1
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmd0;->b:Lit3;

    .line 3
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v1}, Lit3;->zze(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 5
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
