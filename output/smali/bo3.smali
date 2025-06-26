.class public abstract Lbo3;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lyn3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

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

    check-cast p2, Ltn3;

    .line 3
    iget-object v0, p2, Ltn3;->e:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvh;->C()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    .line 5
    iget-object v0, p2, Ltn3;->e:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 6
    iget-object p2, p2, Ltn3;->e:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8
    move-object p2, p0

    check-cast p2, Ltn3;

    .line 9
    iget-object p2, p2, Ltn3;->e:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdFailedToLoad(I)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const-string p2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

    .line 12
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 13
    instance-of v0, p2, Lxn3;

    if-eqz v0, :cond_4

    .line 14
    move-object p1, p2

    check-cast p1, Lxn3;

    goto :goto_0

    .line 15
    :cond_4
    new-instance p2, Lzn3;

    invoke-direct {p2, p1}, Lzn3;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 16
    :goto_0
    move-object p2, p0

    check-cast p2, Ltn3;

    .line 17
    iget-object v0, p2, Ltn3;->e:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Lvn3;

    iget-object v1, p2, Ltn3;->f:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lvn3;-><init>(Lxn3;Ljava/lang/String;)V

    .line 19
    iget-object p1, p2, Ltn3;->e:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    .line 20
    iget-object p1, p2, Ltn3;->e:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    .line 21
    :cond_5
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
