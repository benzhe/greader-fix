.class public abstract Lys3;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lvs3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoadCallback"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    move-object p2, p0

    check-cast p2, Lkr3;

    .line 3
    iget-object p2, p2, Lkr3;->e:Lcom/google/android/gms/ads/AdLoadCallback;

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvh;->C()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    goto :goto_0

    .line 5
    :cond_1
    move-object p1, p0

    check-cast p1, Lkr3;

    .line 6
    iget-object p2, p1, Lkr3;->e:Lcom/google/android/gms/ads/AdLoadCallback;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lkr3;->f:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
