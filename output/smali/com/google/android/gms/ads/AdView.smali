.class public final Lcom/google/android/gms/ads/AdView;
.super Ljv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ljv;-><init>(Landroid/content/Context;I)V

    const-string v0, "Context cannot be null"

    .line 2
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Ljv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Ljv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljv;->destroy()V

    return-void
.end method

.method public final bridge synthetic getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 1
    invoke-super {p0}, Ljv;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .line 1
    invoke-super {p0}, Ljv;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljv;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Ljv;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1

    .line 1
    invoke-super {p0}, Ljv;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lbv3;->c:Lcom/google/android/gms/ads/VideoController;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic isLoading()Z
    .locals 1

    .line 1
    invoke-super {p0}, Ljv;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljv;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public final bridge synthetic pause()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljv;->pause()V

    return-void
.end method

.method public final bridge synthetic resume()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljv;->resume()V

    return-void
.end method

.method public final bridge synthetic setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljv;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final bridge synthetic setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljv;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public final bridge synthetic setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljv;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljv;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    return-void
.end method
