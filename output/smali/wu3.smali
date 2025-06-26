.class public abstract Lwu3;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lxu3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

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

    if-eq p1, p4, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 1
    :cond_0
    sget-object p1, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 3
    :cond_1
    move-object p1, p0

    check-cast p1, Lg40;

    .line 4
    iget-object p1, p1, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoMute(Z)V

    goto :goto_0

    .line 5
    :cond_2
    move-object p1, p0

    check-cast p1, Lg40;

    .line 6
    iget-object p1, p1, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoEnd()V

    goto :goto_0

    .line 7
    :cond_3
    move-object p1, p0

    check-cast p1, Lg40;

    .line 8
    iget-object p1, p1, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPause()V

    goto :goto_0

    .line 9
    :cond_4
    move-object p1, p0

    check-cast p1, Lg40;

    .line 10
    iget-object p1, p1, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPlay()V

    goto :goto_0

    .line 11
    :cond_5
    move-object p1, p0

    check-cast p1, Lg40;

    .line 12
    iget-object p1, p1, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoStart()V

    .line 13
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
