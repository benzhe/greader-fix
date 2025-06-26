.class public Ljv;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final e:Lbv3;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lbv3;

    .line 3
    sget-object v4, Lnr3;->a:Lnr3;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    move v5, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lbv3;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLnr3;I)V

    .line 5
    iput-object p1, p0, Ljv;->e:Lbv3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Lbv3;

    .line 8
    sget-object v4, Lnr3;->a:Lnr3;

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lbv3;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLnr3;I)V

    .line 10
    iput-object p1, p0, Ljv;->e:Lbv3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Lbv3;

    .line 13
    sget-object v4, Lnr3;->a:Lnr3;

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v5, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lbv3;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLnr3;I)V

    .line 15
    iput-object p1, p0, Ljv;->e:Lbv3;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    invoke-virtual {v0}, Lbv3;->a()V

    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    .line 2
    iget-object v0, v0, Lbv3;->f:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    invoke-virtual {v0}, Lbv3;->b()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    invoke-virtual {v0}, Lbv3;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Lbv3;->j:Lit3;

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

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    invoke-virtual {v0}, Lbv3;->d()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    invoke-virtual {v0}, Lbv3;->e()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lzu3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbv3;->o(Lzu3;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    .line 5
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    .line 6
    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    .line 7
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 3
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljv;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    .line 7
    invoke-static {v3, v2}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 11
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 13
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    invoke-virtual {v0}, Lbv3;->f()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    invoke-virtual {v0}, Lbv3;->h()V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    invoke-virtual {v0, p1}, Lbv3;->i(Lcom/google/android/gms/ads/AdListener;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Ljv;->e:Lbv3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbv3;->n(Ler3;)V

    .line 3
    iget-object p1, p0, Ljv;->e:Lbv3;

    invoke-virtual {p1, v0}, Lbv3;->m(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Ler3;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Ljv;->e:Lbv3;

    move-object v1, p1

    check-cast v1, Ler3;

    invoke-virtual {v0, v1}, Lbv3;->n(Ler3;)V

    .line 6
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Ljv;->e:Lbv3;

    check-cast p1, Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-virtual {v0, p1}, Lbv3;->m(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :cond_2
    return-void
.end method

.method public setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2
    iget-object p1, v0, Lbv3;->g:[Lcom/google/android/gms/ads/AdSize;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lbv3;->p([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    invoke-virtual {v0, p1}, Lbv3;->j(Ljava/lang/String;)V

    return-void
.end method

.method public setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljv;->e:Lbv3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iput-object p1, v0, Lbv3;->q:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 4
    iget-object v0, v0, Lbv3;->j:Lit3;

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

    const-string v0, "#008 Must be called on the main UI thread."

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
