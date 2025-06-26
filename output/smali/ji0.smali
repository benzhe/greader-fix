.class public final Lji0;
.super Lah0;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lah0;-><init>()V

    .line 2
    iput-object p1, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    return-void
.end method


# virtual methods
.method public final C()Lx20;
    .locals 2

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getAdChoicesContent()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideClickHandling()Z

    move-result v0

    return v0
.end method

.method public final H1()F
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getCurrentTime()F

    move-result v0

    return v0
.end method

.method public final V0()F
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getMediaContentAspectRatio()F

    move-result v0

    return v0
.end method

.method public final a2()F
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getDuration()F

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lm70;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lsu3;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->zzdz()Lsu3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getImages()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .line 4
    new-instance v10, Lh70;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getScale()D

    move-result-wide v6

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getWidth()I

    move-result v8

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getHeight()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lh70;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 10
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lx20;
    .locals 2

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzka()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final p()Lu70;
    .locals 9

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v8, Lh70;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getScale()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getHeight()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lh70;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    return-object v8

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()D
    .locals 2

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final recordImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->recordImpression()V

    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lx20;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideImpressionRecording()Z

    move-result v0

    return v0
.end method

.method public final x(Lx20;Lx20;Lx20;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 2
    invoke-static {p3}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 3
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 4
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final y(Lx20;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->untrackView(Landroid/view/View;)V

    return-void
.end method

.method public final z()Lx20;
    .locals 2

    .line 1
    iget-object v0, p0, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzafo()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
