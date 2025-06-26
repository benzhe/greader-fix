.class public final Lga0;
.super Lm90;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm90;-><init>()V

    .line 2
    iput-object p1, p0, Lga0;->e:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    return-void
.end method


# virtual methods
.method public final G6(Lit3;Lx20;)V
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    invoke-static {p2}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-interface {p1}, Lit3;->zzko()Lus3;

    move-result-object v2

    instance-of v2, v2, Lhr3;

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {p1}, Lit3;->zzko()Lus3;

    move-result-object v2

    check-cast v2, Lhr3;

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, v2, Lhr3;->e:Lcom/google/android/gms/ads/AdListener;

    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 6
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 7
    invoke-static {v0, v2}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lit3;->zzkn()Lpt3;

    move-result-object v2

    instance-of v2, v2, Lum3;

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {p1}, Lit3;->zzkn()Lpt3;

    move-result-object v2

    check-cast v2, Lum3;

    if-eqz v2, :cond_3

    .line 10
    iget-object p2, v2, Lum3;->f:Lcom/google/android/gms/ads/admanager/AppEventListener;

    .line 11
    :cond_3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 12
    invoke-static {v0, p2}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_4
    :goto_2
    sget-object p2, Lzr0;->b:Landroid/os/Handler;

    new-instance v0, Lja0;

    invoke-direct {v0, p0, v1, p1}, Lja0;-><init>(Lga0;Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lit3;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_3
    return-void
.end method
