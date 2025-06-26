.class public abstract Lts3;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lus3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"

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

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    move-object p2, p0

    check-cast p2, Lhr3;

    .line 3
    iget-object p2, p2, Lhr3;->e:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvh;->C()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    goto :goto_0

    .line 4
    :pswitch_1
    move-object p1, p0

    check-cast p1, Lhr3;

    .line 5
    iget-object p1, p1, Lhr3;->e:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    goto :goto_0

    .line 6
    :pswitch_2
    move-object p1, p0

    check-cast p1, Lhr3;

    .line 7
    iget-object p1, p1, Lhr3;->e:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    goto :goto_0

    .line 8
    :pswitch_3
    move-object p1, p0

    check-cast p1, Lhr3;

    .line 9
    iget-object p1, p1, Lhr3;->e:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    goto :goto_0

    .line 10
    :pswitch_4
    move-object p1, p0

    check-cast p1, Lhr3;

    .line 11
    iget-object p1, p1, Lhr3;->e:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    goto :goto_0

    .line 12
    :pswitch_5
    move-object p1, p0

    check-cast p1, Lhr3;

    .line 13
    iget-object p1, p1, Lhr3;->e:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    goto :goto_0

    .line 14
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 15
    move-object p2, p0

    check-cast p2, Lhr3;

    .line 16
    iget-object p2, p2, Lhr3;->e:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    goto :goto_0

    .line 17
    :pswitch_7
    move-object p1, p0

    check-cast p1, Lhr3;

    .line 18
    iget-object p1, p1, Lhr3;->e:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 19
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
