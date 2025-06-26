.class public abstract Lcom/google/android/gms/ads/appopen/AppOpenAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;,
        Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
    }
.end annotation


# static fields
.field public static final APP_OPEN_AD_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final APP_OPEN_AD_ORIENTATION_PORTRAIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 7
    .param p3    # I
        .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
        .end annotation
    .end param

    const-string v0, "Context cannot be null."

    .line 1
    invoke-static {p0, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adUnitId cannot be null."

    .line 2
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdRequest cannot be null."

    .line 3
    invoke-static {p2, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lzu3;

    move-result-object p2

    .line 5
    new-instance v5, Leg0;

    invoke-direct {v5}, Leg0;-><init>()V

    .line 6
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->L0()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v3

    .line 7
    sget-object v0, Los3;->j:Los3;

    iget-object v1, v0, Los3;->b:Lwr3;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v6, Les3;

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Les3;-><init>(Lwr3;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {v6, p0, v0}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Lit3;

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzwc;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(I)V

    .line 13
    invoke-interface {v0, v1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzwc;)V

    .line 14
    new-instance p3, Ltn3;

    invoke-direct {p3, p4, p1}, Ltn3;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Lit3;->zza(Lyn3;)V

    .line 15
    invoke-static {p0, p2}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p0

    invoke-interface {v0, p0}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    .line 16
    invoke-static {p1, p0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 7
    .param p3    # I
        .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
        .end annotation
    .end param

    const-string v0, "Context cannot be null."

    .line 33
    invoke-static {p0, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adUnitId cannot be null."

    .line 34
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdManagerAdRequest cannot be null."

    .line 35
    invoke-static {p2, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->zzdt()Lzu3;

    move-result-object p2

    .line 37
    new-instance v5, Leg0;

    invoke-direct {v5}, Leg0;-><init>()V

    .line 38
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->L0()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v3

    .line 39
    sget-object v0, Los3;->j:Los3;

    iget-object v1, v0, Los3;->b:Lwr3;

    .line 40
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v6, Les3;

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Les3;-><init>(Lwr3;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;)V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {v6, p0, v0}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    .line 43
    check-cast v0, Lit3;

    .line 44
    new-instance v1, Lcom/google/android/gms/internal/ads/zzwc;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(I)V

    .line 45
    invoke-interface {v0, v1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzwc;)V

    .line 46
    new-instance p3, Ltn3;

    invoke-direct {p3, p4, p1}, Ltn3;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Lit3;->zza(Lyn3;)V

    .line 47
    invoke-static {p0, p2}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p0

    invoke-interface {v0, p0}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    .line 48
    invoke-static {p1, p0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 7
    .param p3    # I
        .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Context cannot be null."

    .line 17
    invoke-static {p0, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adUnitId cannot be null."

    .line 18
    invoke-static {p1, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PublisherAdRequest cannot be null."

    .line 19
    invoke-static {p2, v0}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdt()Lzu3;

    move-result-object p2

    .line 21
    new-instance v5, Leg0;

    invoke-direct {v5}, Leg0;-><init>()V

    .line 22
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->L0()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v3

    .line 23
    sget-object v0, Los3;->j:Los3;

    iget-object v1, v0, Los3;->b:Lwr3;

    .line 24
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v6, Les3;

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Les3;-><init>(Lwr3;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {v6, p0, v0}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Lit3;

    .line 28
    new-instance v1, Lcom/google/android/gms/internal/ads/zzwc;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(I)V

    .line 29
    invoke-interface {v0, v1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzwc;)V

    .line 30
    new-instance p3, Ltn3;

    invoke-direct {p3, p4, p1}, Ltn3;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Lit3;->zza(Lyn3;)V

    .line 31
    invoke-static {p0, p2}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p0

    invoke-interface {v0, p0}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    .line 32
    invoke-static {p1, p0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Lco3;)V
.end method

.method public abstract b()Lit3;
.end method

.method public abstract getAdUnitId()Ljava/lang/String;
.end method

.method public abstract getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
.end method

.method public abstract getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
.end method

.method public abstract getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
.end method

.method public abstract setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
.end method

.method public abstract setImmersiveMode(Z)V
.end method

.method public abstract setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
.end method

.method public abstract show(Landroid/app/Activity;)V
.end method

.method public abstract show(Landroid/app/Activity;Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
