.class public final Ljd0;
.super Lcom/google/android/gms/ads/instream/InstreamAd;
.source "SourceFile"


# instance fields
.field public final a:Lzc0;

.field public b:Lcom/google/android/gms/ads/VideoController;

.field public c:Lcom/google/android/gms/ads/MediaContent;


# direct methods
.method public constructor <init>(Lzc0;)V
    .locals 2

    const-string v0, "#007 Could not call remote method."

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/instream/InstreamAd;-><init>()V

    .line 2
    iput-object p1, p0, Ljd0;->a:Lzc0;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    .line 4
    :try_start_0
    invoke-interface {p1}, Lzc0;->getVideoController()Lsu3;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/VideoController;->zza(Lsu3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    iput-object v1, p0, Ljd0;->b:Lcom/google/android/gms/ads/VideoController;

    .line 7
    :try_start_1
    iget-object p1, p0, Ljd0;->a:Lzc0;

    invoke-interface {p1}, Lzc0;->a0()Lt70;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Ln30;

    iget-object v1, p0, Ljd0;->a:Lzc0;

    invoke-interface {v1}, Lzc0;->a0()Lt70;

    move-result-object v1

    invoke-direct {p1, v1}, Ln30;-><init>(Lt70;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 9
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_1
    iput-object p1, p0, Ljd0;->c:Lcom/google/android/gms/ads/MediaContent;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/instream/InstreamAdView;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljd0;->a:Lzc0;

    .line 2
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0, v1}, Lzc0;->G4(Lx20;)V
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

.method public final destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljd0;->a:Lzc0;

    invoke-interface {v0}, Lzc0;->destroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljd0;->b:Lcom/google/android/gms/ads/VideoController;

    .line 3
    iput-object v0, p0, Ljd0;->c:Lcom/google/android/gms/ads/MediaContent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAspectRatio()F
    .locals 1

    .line 1
    iget-object v0, p0, Ljd0;->b:Lcom/google/android/gms/ads/VideoController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->getAspectRatio()F

    move-result v0

    return v0
.end method

.method public final getMediaContent()Lcom/google/android/gms/ads/MediaContent;
    .locals 1

    .line 1
    iget-object v0, p0, Ljd0;->c:Lcom/google/android/gms/ads/MediaContent;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 1

    .line 1
    iget-object v0, p0, Ljd0;->b:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final getVideoCurrentTime()F
    .locals 1

    .line 1
    iget-object v0, p0, Ljd0;->b:Lcom/google/android/gms/ads/VideoController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->getVideoCurrentTime()F

    move-result v0

    return v0
.end method

.method public final getVideoDuration()F
    .locals 1

    .line 1
    iget-object v0, p0, Ljd0;->b:Lcom/google/android/gms/ads/VideoController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->getVideoDuration()F

    move-result v0

    return v0
.end method
