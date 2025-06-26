.class public final Lmj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzaqt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmj0;->e:Lcom/google/android/gms/internal/ads/zzaqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    .line 1
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    .line 1
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    const-string p1, "AdMobCustomTabsAdapter overlay is closed."

    .line 1
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lmj0;->e:Lcom/google/android/gms/internal/ads/zzaqt;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaqt;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final zzvz()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    .line 1
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lmj0;->e:Lcom/google/android/gms/internal/ads/zzaqt;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqt;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 4
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
