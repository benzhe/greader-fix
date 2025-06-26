.class public final Ldv3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leg0;

.field public final b:Landroid/content/Context;

.field public c:Lcom/google/android/gms/ads/AdListener;

.field public d:Ler3;

.field public e:Lit3;

.field public f:Ljava/lang/String;

.field public g:Lcom/google/android/gms/ads/reward/AdMetadataListener;

.field public h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field public i:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field public j:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

.field public k:Z

.field public l:Ljava/lang/Boolean;

.field public m:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Leg0;

    invoke-direct {v0}, Leg0;-><init>()V

    iput-object v0, p0, Ldv3;->a:Leg0;

    .line 3
    iput-object p1, p0, Ldv3;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p2, Leg0;

    invoke-direct {p2}, Leg0;-><init>()V

    iput-object p2, p0, Ldv3;->a:Leg0;

    .line 6
    iput-object p1, p0, Ldv3;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Ldv3;->e:Lit3;

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

.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Ldv3;->e:Lit3;

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {v1}, Lit3;->isReady()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 3
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Ldv3;->e:Lit3;

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {v1}, Lit3;->isLoading()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 3
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final d(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Ldv3;->c:Lcom/google/android/gms/ads/AdListener;

    .line 2
    iget-object v0, p0, Ldv3;->e:Lit3;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Lhr3;

    invoke-direct {v1, p1}, Lhr3;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lit3;->zza(Lus3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldv3;->l:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Ldv3;->e:Lit3;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lit3;->setImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f(Ler3;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Ldv3;->d:Ler3;

    .line 2
    iget-object v0, p0, Ldv3;->e:Lit3;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Lfr3;

    invoke-direct {v1, p1}, Lfr3;-><init>(Ler3;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Lit3;->zza(Lps3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 5
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g(Lzu3;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ldv3;->e:Lit3;

    if-nez v0, :cond_8

    const-string v0, "loadAd"

    .line 2
    iget-object v1, p0, Ldv3;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ldv3;->h(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Ldv3;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->K0()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>()V

    .line 5
    :goto_0
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->b:Lwr3;

    .line 6
    iget-object v2, p0, Ldv3;->b:Landroid/content/Context;

    iget-object v3, p0, Ldv3;->f:Ljava/lang/String;

    iget-object v4, p0, Ldv3;->a:Leg0;

    .line 7
    invoke-virtual {v1, v2, v0, v3, v4}, Lwr3;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;)Lit3;

    move-result-object v0

    iput-object v0, p0, Ldv3;->e:Lit3;

    .line 8
    iget-object v1, p0, Ldv3;->c:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Lhr3;

    iget-object v2, p0, Ldv3;->c:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lhr3;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lit3;->zza(Lus3;)V

    .line 10
    :cond_2
    iget-object v0, p0, Ldv3;->d:Ler3;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Ldv3;->e:Lit3;

    new-instance v1, Lfr3;

    iget-object v2, p0, Ldv3;->d:Ler3;

    invoke-direct {v1, v2}, Lfr3;-><init>(Ler3;)V

    invoke-interface {v0, v1}, Lit3;->zza(Lps3;)V

    .line 12
    :cond_3
    iget-object v0, p0, Ldv3;->g:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Ldv3;->e:Lit3;

    new-instance v1, Llr3;

    iget-object v2, p0, Ldv3;->g:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    invoke-direct {v1, v2}, Llr3;-><init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    invoke-interface {v0, v1}, Lit3;->zza(Llt3;)V

    .line 14
    :cond_4
    iget-object v0, p0, Ldv3;->h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Ldv3;->e:Lit3;

    new-instance v1, Lsr3;

    iget-object v2, p0, Ldv3;->h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lsr3;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lit3;->zza(Lpt3;)V

    .line 16
    :cond_5
    iget-object v0, p0, Ldv3;->i:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, Ldv3;->e:Lit3;

    new-instance v1, Lx50;

    iget-object v2, p0, Ldv3;->i:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lx50;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lit3;->zza(Lt50;)V

    .line 18
    :cond_6
    iget-object v0, p0, Ldv3;->j:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p0, Ldv3;->e:Lit3;

    new-instance v1, Lsn0;

    iget-object v2, p0, Ldv3;->j:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-direct {v1, v2}, Lsn0;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    invoke-interface {v0, v1}, Lit3;->zza(Lpn0;)V

    .line 20
    :cond_7
    iget-object v0, p0, Ldv3;->e:Lit3;

    new-instance v1, Lc40;

    iget-object v2, p0, Ldv3;->m:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-direct {v1, v2}, Lc40;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lit3;->zza(Lmu3;)V

    .line 21
    iget-object v0, p0, Ldv3;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 22
    iget-object v1, p0, Ldv3;->e:Lit3;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lit3;->setImmersiveMode(Z)V

    .line 23
    :cond_8
    iget-object v0, p0, Ldv3;->e:Lit3;

    iget-object v1, p0, Ldv3;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object v1

    invoke-interface {v0, v1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    iget-object v0, p0, Ldv3;->a:Leg0;

    .line 25
    iget-object p1, p1, Lzu3;->i:Ljava/util/Map;

    .line 26
    iput-object p1, v0, Leg0;->e:Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 27
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldv3;->e:Lit3;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    const-string v2, "The ad unit ID must be set on InterstitialAd before "

    const-string v3, " is called."

    invoke-static {v1, v2, p1, v3}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
