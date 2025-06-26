.class public abstract Lxt3;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lyt3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    move-object p1, p0

    check-cast p1, Lqs3;

    .line 2
    iget-object p1, p1, Lqs3;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    goto :goto_0

    .line 4
    :cond_1
    move-object p1, p0

    check-cast p1, Lqs3;

    .line 5
    iget-object p1, p1, Lqs3;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    goto :goto_0

    .line 7
    :cond_2
    move-object p1, p0

    check-cast p1, Lqs3;

    .line 8
    iget-object p1, p1, Lqs3;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    goto :goto_0

    .line 10
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvh;

    .line 11
    move-object p2, p0

    check-cast p2, Lqs3;

    .line 12
    iget-object p2, p2, Lqs3;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvh;->n()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    .line 14
    :cond_4
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
