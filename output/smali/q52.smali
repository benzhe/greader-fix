.class public final Lq52;
.super Lht3;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lus3;

.field public final g:Lll2;

.field public final h:Lj41;

.field public final i:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lus3;Lll2;Lj41;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lht3;-><init>()V

    .line 2
    iput-object p1, p0, Lq52;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lq52;->f:Lus3;

    .line 4
    iput-object p3, p0, Lq52;->g:Lll2;

    .line 5
    iput-object p4, p0, Lq52;->h:Lj41;

    .line 6
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    invoke-virtual {p4}, Lj41;->f()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzw()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p0}, Lq52;->zzkk()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvt;->g:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 10
    invoke-virtual {p0}, Lq52;->zzkk()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvt;->j:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 11
    iput-object p2, p0, Lq52;->i:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lq52;->h:Lj41;

    invoke-virtual {v0}, Lf61;->a()V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "getAdMetadata is not supported in Publisher AdView returned by AdLoader."

    .line 1
    invoke-static {v0}, Lis0;->zzey(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq52;->g:Lll2;

    iget-object v0, v0, Lll2;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq52;->h:Lj41;

    .line 2
    iget-object v0, v0, Lf61;->f:Lt91;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lt91;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lsu3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq52;->h:Lj41;

    invoke-virtual {v0}, Lj41;->c()Lsu3;

    move-result-object v0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lq52;->h:Lj41;

    .line 3
    iget-object v0, v0, Lf61;->c:Lxa1;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lxa1;->G0(Landroid/content/Context;)V

    return-void
.end method

.method public final resume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lq52;->h:Lj41;

    .line 3
    iget-object v0, v0, Lf61;->c:Lxa1;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lxa1;->H0(Landroid/content/Context;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final showInterstitial()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final stopLoading()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setVideoOptions is not supported in Publisher AdView returned by AdLoader."

    .line 2
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvq;Lvs3;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setAdSize must be called on the main UI thread."

    .line 3
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lq52;->h:Lj41;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lq52;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lj41;->d(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvt;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lgl0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Ljl0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Llt3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAdMetadataListener is not supported in Publisher AdView returned by AdLoader."

    .line 11
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lmu3;)V
    .locals 0

    const-string p1, "setOnPaidEventListener is not supported in Publisher AdView returned by AdLoader."

    .line 12
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lpn0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lps3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAdClickListener is not supported in Publisher AdView returned by AdLoader."

    .line 7
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lpt3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAppEventListener is not supported in Publisher AdView returned by AdLoader."

    .line 10
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lt50;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader."

    .line 6
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lus3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAdListener is not supported in Publisher AdView returned by AdLoader."

    .line 9
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lwt3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader."

    .line 8
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lyn3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lyt3;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "loadAd is not supported for a Publisher AdView returned from AdLoader."

    .line 1
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zze(Lx20;)V
    .locals 0

    return-void
.end method

.method public final zzki()Lx20;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq52;->i:Landroid/view/ViewGroup;

    .line 2
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final zzkj()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq52;->h:Lj41;

    invoke-virtual {v0}, Lj41;->i()V

    return-void
.end method

.method public final zzkk()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 2

    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lq52;->e:Landroid/content/Context;

    iget-object v1, p0, Lq52;->h:Lj41;

    .line 3
    invoke-virtual {v1}, Lj41;->e()Luk2;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lc50;->V2(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    return-object v0
.end method

.method public final zzkl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq52;->h:Lj41;

    .line 2
    iget-object v0, v0, Lf61;->f:Lt91;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lt91;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkm()Lru3;
    .locals 1

    .line 1
    iget-object v0, p0, Lq52;->h:Lj41;

    .line 2
    iget-object v0, v0, Lf61;->f:Lt91;

    return-object v0
.end method

.method public final zzkn()Lpt3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq52;->g:Lll2;

    iget-object v0, v0, Lll2;->n:Lpt3;

    return-object v0
.end method

.method public final zzko()Lus3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq52;->f:Lus3;

    return-object v0
.end method
