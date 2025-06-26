.class public abstract Lmg0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lng0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static W6(Landroid/os/IBinder;)Lng0;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lng0;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lng0;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lpg0;

    invoke-direct {v0, p0}, Lpg0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

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
    invoke-interface {p0, p1}, Lng0;->Y3(Lcom/google/android/gms/internal/ads/zzvh;)V

    goto/16 :goto_3

    .line 3
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvh;

    .line 4
    invoke-interface {p0, p1}, Lng0;->U(Lcom/google/android/gms/internal/ads/zzvh;)V

    goto/16 :goto_3

    .line 5
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-interface {p0, p1, p2}, Lng0;->t2(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 8
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lng0;->i2(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 10
    :pswitch_4
    invoke-interface {p0}, Lng0;->onVideoPlay()V

    goto/16 :goto_3

    .line 11
    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 12
    invoke-interface {p0, p1}, Lng0;->zzb(Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 13
    :pswitch_6
    invoke-interface {p0}, Lng0;->Q4()V

    goto/16 :goto_3

    .line 14
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 15
    invoke-interface {p0, p1}, Lng0;->y0(I)V

    goto/16 :goto_3

    .line 16
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem"

    .line 17
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 18
    instance-of p4, p2, Lbo0;

    if-eqz p4, :cond_1

    .line 19
    move-object p4, p2

    check-cast p4, Lbo0;

    goto :goto_0

    .line 20
    :cond_1
    new-instance p4, Ldo0;

    invoke-direct {p4, p1}, Ldo0;-><init>(Landroid/os/IBinder;)V

    .line 21
    :goto_0
    invoke-interface {p0, p4}, Lng0;->S(Lbo0;)V

    goto/16 :goto_3

    .line 22
    :pswitch_9
    invoke-interface {p0}, Lng0;->onVideoPause()V

    goto/16 :goto_3

    .line 23
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavy;

    .line 24
    invoke-interface {p0, p1}, Lng0;->v1(Lcom/google/android/gms/internal/ads/zzavy;)V

    goto/16 :goto_3

    .line 25
    :pswitch_b
    invoke-interface {p0}, Lng0;->E5()V

    goto/16 :goto_3

    .line 26
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Lng0;->d5(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 28
    :pswitch_d
    invoke-interface {p0}, Lng0;->X()V

    goto/16 :goto_3

    .line 29
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p4, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    .line 30
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 31
    instance-of v0, p4, Lq80;

    if-eqz v0, :cond_3

    .line 32
    check-cast p4, Lq80;

    goto :goto_1

    .line 33
    :cond_3
    new-instance p4, Ls80;

    invoke-direct {p4, p1}, Ls80;-><init>(Landroid/os/IBinder;)V

    .line 34
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-interface {p0, p4, p1}, Lng0;->Y(Lq80;Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-interface {p0, p1, p2}, Lng0;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 39
    :pswitch_10
    invoke-interface {p0}, Lng0;->onAdImpression()V

    goto :goto_3

    .line 40
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    .line 41
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 42
    instance-of p4, p2, Lsg0;

    if-eqz p4, :cond_5

    .line 43
    move-object p4, p2

    check-cast p4, Lsg0;

    goto :goto_2

    .line 44
    :cond_5
    new-instance p4, Lrg0;

    invoke-direct {p4, p1}, Lrg0;-><init>(Landroid/os/IBinder;)V

    .line 45
    :goto_2
    invoke-interface {p0, p4}, Lng0;->z2(Lsg0;)V

    goto :goto_3

    .line 46
    :pswitch_12
    invoke-interface {p0}, Lng0;->onAdLoaded()V

    goto :goto_3

    .line 47
    :pswitch_13
    invoke-interface {p0}, Lng0;->onAdOpened()V

    goto :goto_3

    .line 48
    :pswitch_14
    invoke-interface {p0}, Lng0;->onAdLeftApplication()V

    goto :goto_3

    .line 49
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 50
    invoke-interface {p0, p1}, Lng0;->onAdFailedToLoad(I)V

    goto :goto_3

    .line 51
    :pswitch_16
    invoke-interface {p0}, Lng0;->onAdClosed()V

    goto :goto_3

    .line 52
    :pswitch_17
    invoke-interface {p0}, Lng0;->onAdClicked()V

    .line 53
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
