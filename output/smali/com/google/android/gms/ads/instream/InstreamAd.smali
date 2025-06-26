.class public abstract Lcom/google/android/gms/ads/instream/InstreamAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;ILcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V
    .locals 5
    .param p3    # I
        .annotation build Lcom/google/android/gms/ads/MediaAspectRatio;
        .end annotation
    .end param

    const-string v0, "#007 Could not call remote method."

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Instream ads only support Landscape and Portrait media aspect ratios"

    .line 1
    invoke-static {v2, v3}, Lbi;->c(ZLjava/lang/Object;)V

    const-string v2, "context cannot be null"

    .line 2
    invoke-static {p0, v2}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->b:Lwr3;

    .line 4
    new-instance v3, Leg0;

    invoke-direct {v3}, Leg0;-><init>()V

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v4, Ljs3;

    invoke-direct {v4, v2, p0, p1, v3}, Ljs3;-><init>(Lwr3;Landroid/content/Context;Ljava/lang/String;Lhg0;)V

    .line 7
    invoke-virtual {v4, p0, v1}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Lbt3;

    .line 9
    :try_start_0
    new-instance v1, Lld0;

    invoke-direct {v1, p4}, Lld0;-><init>(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V

    invoke-interface {p1, v1}, Lbt3;->u3(Led0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p4

    .line 10
    invoke-static {v0, p4}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_2
    new-instance p4, Lid0;

    invoke-direct {p4, p3}, Lid0;-><init>(I)V

    .line 12
    :try_start_1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzajy;

    invoke-direct {p3, p4}, Lcom/google/android/gms/internal/ads/zzajy;-><init>(Lid0;)V

    invoke-interface {p1, p3}, Lbt3;->w6(Lcom/google/android/gms/internal/ads/zzajy;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p3

    .line 13
    invoke-static {v0, p3}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_3
    :try_start_2
    new-instance p3, Lkd0;

    invoke-interface {p1}, Lbt3;->o4()Lat3;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lkd0;-><init>(Landroid/content/Context;Lat3;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 15
    invoke-static {v0, p0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p3, 0x0

    .line 16
    :goto_4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzdt()Lzu3;

    move-result-object p0

    .line 18
    :try_start_3
    iget-object p1, p3, Lkd0;->b:Lat3;

    iget-object p2, p3, Lkd0;->a:Landroid/content/Context;

    invoke-static {p2, p0}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p0

    invoke-interface {p1, p0}, Lat3;->M0(Lcom/google/android/gms/internal/ads/zzvq;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    .line 19
    invoke-static {v0, p0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V
    .locals 5

    const-string v0, "#007 Could not call remote method."

    const-string v1, "context cannot be null"

    .line 20
    invoke-static {p0, v1}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->b:Lwr3;

    .line 22
    new-instance v2, Leg0;

    invoke-direct {v2}, Leg0;-><init>()V

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v3, Ljs3;

    const-string v4, ""

    invoke-direct {v3, v1, p0, v4, v2}, Ljs3;-><init>(Lwr3;Landroid/content/Context;Ljava/lang/String;Lhg0;)V

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v3, p0, v1}, Lms3;->b(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Lbt3;

    .line 27
    :try_start_0
    new-instance v2, Lld0;

    invoke-direct {v2, p2}, Lld0;-><init>(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V

    invoke-interface {v1, v2}, Lbt3;->u3(Led0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 28
    invoke-static {v0, p2}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_0
    new-instance p2, Lid0;

    invoke-direct {p2, p1}, Lid0;-><init>(Ljava/lang/String;)V

    .line 30
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzajy;-><init>(Lid0;)V

    invoke-interface {v1, p1}, Lbt3;->w6(Lcom/google/android/gms/internal/ads/zzajy;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 31
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :goto_1
    :try_start_2
    new-instance p1, Lkd0;

    invoke-interface {v1}, Lbt3;->o4()Lat3;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lkd0;-><init>(Landroid/content/Context;Lat3;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 33
    invoke-static {v0, p0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 34
    :goto_2
    new-instance p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p0

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdt()Lzu3;

    move-result-object p0

    .line 38
    :try_start_3
    iget-object p2, p1, Lkd0;->b:Lat3;

    iget-object p1, p1, Lkd0;->a:Landroid/content/Context;

    invoke-static {p1, p0}, Lnr3;->a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p0

    invoke-interface {p2, p0}, Lat3;->M0(Lcom/google/android/gms/internal/ads/zzvq;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 39
    invoke-static {v0, p0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/ads/instream/InstreamAdView;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getAspectRatio()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMediaContent()Lcom/google/android/gms/ads/MediaContent;
.end method

.method public abstract getVideoController()Lcom/google/android/gms/ads/VideoController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoCurrentTime()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoDuration()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
