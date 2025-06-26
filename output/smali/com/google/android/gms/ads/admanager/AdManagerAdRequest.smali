.class public final Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;
.super Lcom/google/android/gms/ads/AdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;Lkv;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->a:Lzu3;

    .line 2
    iget-object v0, v0, Lzu3;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->a:Lzu3;

    .line 2
    iget-object v0, v0, Lzu3;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdt()Lzu3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->a:Lzu3;

    return-object v0
.end method
