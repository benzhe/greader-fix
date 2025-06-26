.class public final Lbv3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leg0;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lcom/google/android/gms/ads/VideoController;

.field public final d:Lev3;

.field public e:Ler3;

.field public f:Lcom/google/android/gms/ads/AdListener;

.field public g:[Lcom/google/android/gms/ads/AdSize;

.field public h:Lcom/google/android/gms/ads/admanager/AppEventListener;

.field public i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field public j:Lit3;

.field public k:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field public l:Lcom/google/android/gms/ads/VideoOptions;

.field public m:Ljava/lang/String;

.field public n:Landroid/view/ViewGroup;

.field public o:I

.field public p:Z

.field public q:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    .line 1
    sget-object v4, Lnr3;->a:Lnr3;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lbv3;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLnr3;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 6

    .line 3
    sget-object v4, Lnr3;->a:Lnr3;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lbv3;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLnr3;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLnr3;I)V
    .locals 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p4, Leg0;

    invoke-direct {p4}, Leg0;-><init>()V

    iput-object p4, p0, Lbv3;->a:Leg0;

    .line 7
    new-instance p4, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {p4}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object p4, p0, Lbv3;->c:Lcom/google/android/gms/ads/VideoController;

    .line 8
    new-instance p4, Lev3;

    invoke-direct {p4, p0}, Lev3;-><init>(Lbv3;)V

    iput-object p4, p0, Lbv3;->d:Lev3;

    .line 9
    iput-object p1, p0, Lbv3;->n:Landroid/view/ViewGroup;

    const/4 p4, 0x0

    .line 10
    iput-object p4, p0, Lbv3;->j:Lit3;

    .line 11
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lbv3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    iput p5, p0, Lbv3;->o:I

    if-eqz p2, :cond_8

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 p5, -0x1000000

    .line 14
    :try_start_0
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/ads/R$styleable;->AdsAttrs:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 15
    sget v1, Lcom/google/android/gms/ads/R$styleable;->AdsAttrs_adSize:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 16
    sget v2, Lcom/google/android/gms/ads/R$styleable;->AdsAttrs_adSizes:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    .line 19
    invoke-static {v1}, Lxr3;->a(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_6

    if-eqz v5, :cond_6

    .line 20
    invoke-static {v2}, Lxr3;->a(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    .line 21
    :goto_0
    sget v2, Lcom/google/android/gms/ads/R$styleable;->AdsAttrs_adUnitId:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez p3, :cond_2

    .line 23
    array-length p3, v1

    if-ne p3, v4, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "The adSizes XML attribute is only allowed on PublisherAdViews."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_2
    :goto_1
    iput-object v1, p0, Lbv3;->g:[Lcom/google/android/gms/ads/AdSize;

    .line 26
    iput-object p2, p0, Lbv3;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 28
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->a:Lzr0;

    .line 29
    iget-object p3, p0, Lbv3;->g:[Lcom/google/android/gms/ads/AdSize;

    aget-object p3, p3, v0

    iget v1, p0, Lbv3;->o:I

    .line 30
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->M0()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p3

    goto :goto_2

    .line 32
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v2, p4, p3}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    if-ne v1, v4, :cond_4

    const/4 v0, 0x1

    .line 33
    :cond_4
    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzvt;->n:Z

    move-object p3, v2

    .line 34
    :goto_2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, -0x1

    const-string p4, "Ads by Google"

    .line 35
    invoke-static {p1, p3, p4, p5, p2}, Lzr0;->d(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;II)V

    goto :goto_3

    .line 36
    :cond_5
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Required XML attribute \"adUnitId\" was missing."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    if-eqz v3, :cond_7

    .line 37
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Required XML attribute \"adSize\" was missing."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    .line 39
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->a:Lzr0;

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvt;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p4, v1}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    .line 41
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    .line 42
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p2}, Lis0;->zzez(Ljava/lang/String;)V

    const/high16 p2, -0x10000

    .line 45
    invoke-static {p1, v0, p4, p2, p5}, Lzr0;->d(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;II)V

    :cond_8
    :goto_3
    return-void
.end method

.method public static l(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzvt;
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    sget-object v4, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->M0()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    const/4 p0, 0x1

    if-ne p2, p0, :cond_2

    const/4 v1, 0x1

    .line 5
    :cond_2
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvt;->n:Z

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lbv3;->j:Lit3;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lit3;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/ads/AdSize;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lbv3;->j:Lit3;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lit3;->zzkk()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lbv3;->g:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lbv3;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbv3;->j:Lit3;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lit3;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbv3;->m:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lbv3;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lbv3;->j:Lit3;

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

.method public final e()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lbv3;->j:Lit3;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lit3;->isLoading()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lbv3;->j:Lit3;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lit3;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbv3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbv3;->j:Lit3;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lit3;->zzkj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lbv3;->j:Lit3;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lit3;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lbv3;->f:Lcom/google/android/gms/ads/AdListener;

    .line 2
    iget-object v0, p0, Lbv3;->d:Lev3;

    .line 3
    iget-object v1, v0, Lev3;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iput-object p1, v0, Lev3;->b:Lcom/google/android/gms/ads/AdListener;

    .line 5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbv3;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lbv3;->m:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lbv3;->l:Lcom/google/android/gms/ads/VideoOptions;

    .line 2
    :try_start_0
    iget-object v0, p0, Lbv3;->j:Lit3;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    move-object p1, v1

    .line 4
    :goto_0
    invoke-interface {v0, p1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzaaz;)V
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

.method public final m(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lbv3;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    .line 2
    iget-object v0, p0, Lbv3;->j:Lit3;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lsr3;

    iget-object v1, p0, Lbv3;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {p1, v1}, Lsr3;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, p1}, Lit3;->zza(Lpt3;)V
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

.method public final n(Ler3;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lbv3;->e:Ler3;

    .line 2
    iget-object v0, p0, Lbv3;->j:Lit3;

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

.method public final o(Lzu3;)V
    .locals 10

    const-string v0, "#007 Could not call remote method."

    .line 1
    :try_start_0
    iget-object v1, p0, Lbv3;->j:Lit3;

    if-nez v1, :cond_a

    .line 2
    iget-object v2, p0, Lbv3;->g:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbv3;->m:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_9

    .line 3
    :cond_1
    iget-object v1, p0, Lbv3;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lbv3;->g:[Lcom/google/android/gms/ads/AdSize;

    iget v3, p0, Lbv3;->o:I

    invoke-static {v1, v2, v3}, Lbv3;->l(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v5

    const-string v2, "search_v2"

    .line 5
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzvt;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 6
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->b:Lwr3;

    .line 7
    iget-object v3, p0, Lbv3;->m:Ljava/lang/String;

    .line 8
    new-instance v4, Lhs3;

    invoke-direct {v4, v2, v1, v5, v3}, Lhs3;-><init>(Lwr3;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v1, v8}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Lit3;

    goto :goto_0

    .line 11
    :cond_2
    sget-object v2, Los3;->j:Los3;

    iget-object v3, v2, Los3;->b:Lwr3;

    .line 12
    iget-object v6, p0, Lbv3;->m:Ljava/lang/String;

    iget-object v7, p0, Lbv3;->a:Leg0;

    .line 13
    new-instance v9, Lzr3;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lzr3;-><init>(Lwr3;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;)V

    .line 14
    invoke-virtual {v9, v1, v8}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Lit3;

    .line 16
    :goto_0
    iput-object v1, p0, Lbv3;->j:Lit3;

    .line 17
    new-instance v2, Lhr3;

    iget-object v3, p0, Lbv3;->d:Lev3;

    invoke-direct {v2, v3}, Lhr3;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v1, v2}, Lit3;->zza(Lus3;)V

    .line 18
    iget-object v1, p0, Lbv3;->e:Ler3;

    if-eqz v1, :cond_3

    .line 19
    iget-object v1, p0, Lbv3;->j:Lit3;

    new-instance v2, Lfr3;

    iget-object v3, p0, Lbv3;->e:Ler3;

    invoke-direct {v2, v3}, Lfr3;-><init>(Ler3;)V

    invoke-interface {v1, v2}, Lit3;->zza(Lps3;)V

    .line 20
    :cond_3
    iget-object v1, p0, Lbv3;->h:Lcom/google/android/gms/ads/admanager/AppEventListener;

    if-eqz v1, :cond_4

    .line 21
    iget-object v1, p0, Lbv3;->j:Lit3;

    new-instance v2, Lum3;

    iget-object v3, p0, Lbv3;->h:Lcom/google/android/gms/ads/admanager/AppEventListener;

    invoke-direct {v2, v3}, Lum3;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    invoke-interface {v1, v2}, Lit3;->zza(Lpt3;)V

    .line 22
    :cond_4
    iget-object v1, p0, Lbv3;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Lbv3;->j:Lit3;

    new-instance v2, Lsr3;

    iget-object v3, p0, Lbv3;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v2, v3}, Lsr3;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v1, v2}, Lit3;->zza(Lpt3;)V

    .line 24
    :cond_5
    iget-object v1, p0, Lbv3;->k:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v1, :cond_6

    .line 25
    iget-object v1, p0, Lbv3;->j:Lit3;

    new-instance v2, Lx50;

    iget-object v3, p0, Lbv3;->k:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v2, v3}, Lx50;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v1, v2}, Lit3;->zza(Lt50;)V

    .line 26
    :cond_6
    iget-object v1, p0, Lbv3;->l:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v1, :cond_7

    .line 27
    iget-object v2, p0, Lbv3;->j:Lit3;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v2, v3}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzaaz;)V

    .line 28
    :cond_7
    iget-object v1, p0, Lbv3;->j:Lit3;

    new-instance v2, Lc40;

    iget-object v3, p0, Lbv3;->q:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-direct {v2, v3}, Lc40;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v1, v2}, Lit3;->zza(Lmu3;)V

    .line 29
    iget-object v1, p0, Lbv3;->j:Lit3;

    iget-boolean v2, p0, Lbv3;->p:Z

    invoke-interface {v1, v2}, Lit3;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :try_start_1
    iget-object v1, p0, Lbv3;->j:Lit3;

    invoke-interface {v1}, Lit3;->zzki()Lx20;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    .line 31
    :cond_8
    iget-object v2, p0, Lbv3;->n:Landroid/view/ViewGroup;

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 32
    :try_start_2
    invoke-static {v0, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 33
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_a
    :goto_1
    iget-object v1, p0, Lbv3;->j:Lit3;

    iget-object v2, p0, Lbv3;->n:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object v2

    invoke-interface {v1, v2}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 35
    iget-object v1, p0, Lbv3;->a:Leg0;

    .line 36
    iget-object p1, p1, Lzu3;->i:Ljava/util/Map;

    .line 37
    iput-object p1, v1, Leg0;->e:Ljava/util/Map;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    return-void

    :catch_1
    move-exception p1

    .line 38
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs p([Lcom/google/android/gms/ads/AdSize;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lbv3;->g:[Lcom/google/android/gms/ads/AdSize;

    .line 2
    :try_start_0
    iget-object p1, p0, Lbv3;->j:Lit3;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lbv3;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbv3;->g:[Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lbv3;->o:I

    invoke-static {v0, v1, v2}, Lbv3;->l(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    invoke-interface {p1, v0}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lbv3;->n:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final q(Lit3;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lit3;->zzki()Lx20;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    return v0

    .line 3
    :cond_2
    iget-object v0, p0, Lbv3;->n:Landroid/view/ViewGroup;

    invoke-static {v1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iput-object p1, p0, Lbv3;->j:Lit3;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final r()Lsu3;
    .locals 3

    .line 1
    iget-object v0, p0, Lbv3;->j:Lit3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lit3;->getVideoController()Lsu3;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    .line 3
    invoke-static {v2, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
