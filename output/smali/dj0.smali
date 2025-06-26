.class public final Ldj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
        "Lcom/google/android/gms/ads/mediation/MediationBannerAd;",
        "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lii0;

.field public final synthetic b:Lng0;


# direct methods
.method public constructor <init>(Lii0;Lng0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldj0;->a:Lii0;

    iput-object p2, p0, Ldj0;->b:Lng0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Ldj0;->a:Lii0;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zzdr()Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p1

    invoke-interface {v0, p1}, Lii0;->l(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 3
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    const/4 v1, 0x0

    const-string v2, "undefined"

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ldj0;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationBannerAd;

    const-string v0, ""

    if-nez p1, :cond_0

    const-string p1, "Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad."

    .line 2
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Ldj0;->a:Lii0;

    const-string v1, "Adapter returned null."

    invoke-interface {p1, v1}, Lii0;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    .line 5
    :cond_0
    :try_start_1
    iget-object v1, p0, Ldj0;->a:Lii0;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAd;->getView()Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance v2, Ly20;

    invoke-direct {v2, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-interface {v1, v2}, Lii0;->o2(Lx20;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_1
    new-instance p1, Ljj0;

    iget-object v0, p0, Ldj0;->b:Lng0;

    invoke-direct {p1, v0}, Ljj0;-><init>(Lng0;)V

    :goto_2
    return-object p1
.end method
