.class public final Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

.field public final b:Lcom/google/ads/mediation/MediationInterstitialListener;

.field public final synthetic c:Lcom/google/ads/mediation/customevent/CustomEventAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/MediationInterstitialListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->c:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    .line 3
    iput-object p3, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->b:Lcom/google/ads/mediation/MediationInterstitialListener;

    return-void
.end method


# virtual methods
.method public final onDismissScreen()V
    .locals 2

    const-string v0, "Custom event adapter called onDismissScreen."

    .line 1
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->b:Lcom/google/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onFailedToReceiveAd()V
    .locals 3

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    .line 1
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->b:Lcom/google/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    return-void
.end method

.method public final onLeaveApplication()V
    .locals 2

    const-string v0, "Custom event adapter called onLeaveApplication."

    .line 1
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->b:Lcom/google/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onPresentScreen()V
    .locals 2

    const-string v0, "Custom event adapter called onPresentScreen."

    .line 1
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->b:Lcom/google/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onReceivedAd()V
    .locals 2

    const-string v0, "Custom event adapter called onReceivedAd."

    .line 1
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->b:Lcom/google/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->c:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
