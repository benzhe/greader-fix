.class public abstract Lmn0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Ljn0;


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x22

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    return v2

    .line 1
    :pswitch_0
    invoke-interface {p0}, Ljn0;->zzkm()Lru3;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_3

    .line 4
    :pswitch_1
    invoke-interface {p0}, Ljn0;->g1()Z

    move-result p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 7
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 8
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Ljn0;->setCustomData(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 11
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 12
    invoke-interface {p0, p1}, Ljn0;->I4(Lx20;)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Ljn0;->a5(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 17
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener"

    .line 18
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 19
    instance-of v0, p2, Lhn0;

    if-eqz v0, :cond_1

    .line 20
    move-object v1, p2

    check-cast v1, Lhn0;

    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Lkn0;

    invoke-direct {v1, p1}, Lkn0;-><init>(Landroid/os/IBinder;)V

    .line 22
    :goto_0
    invoke-interface {p0, v1}, Ljn0;->W4(Lhn0;)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 24
    :pswitch_6
    invoke-interface {p0}, Ljn0;->getAdMetadata()Landroid/os/Bundle;

    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_3

    .line 27
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    .line 28
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 29
    instance-of v0, p2, Llt3;

    if-eqz v0, :cond_3

    .line 30
    move-object v1, p2

    check-cast v1, Llt3;

    goto :goto_1

    .line 31
    :cond_3
    new-instance v1, Lnt3;

    invoke-direct {v1, p1}, Lnt3;-><init>(Landroid/os/IBinder;)V

    .line 32
    :goto_1
    invoke-interface {p0, v1}, Ljn0;->zza(Llt3;)V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 34
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Ljn0;->setUserId(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 37
    :pswitch_9
    invoke-interface {p0}, Ljn0;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 40
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 41
    invoke-interface {p0, p1}, Ljn0;->A6(Lx20;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 43
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 44
    invoke-interface {p0, p1}, Ljn0;->k4(Lx20;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 46
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 47
    invoke-interface {p0, p1}, Ljn0;->Y4(Lx20;)V

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    .line 49
    :pswitch_d
    invoke-interface {p0}, Ljn0;->destroy()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 51
    :pswitch_e
    invoke-interface {p0}, Ljn0;->resume()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 53
    :pswitch_f
    invoke-interface {p0}, Ljn0;->pause()V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 55
    :pswitch_10
    invoke-interface {p0}, Ljn0;->isLoaded()Z

    move-result p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 59
    :cond_4
    sget-object p1, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    .line 61
    :cond_5
    invoke-interface {p0, v2}, Ljn0;->setImmersiveMode(Z)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 63
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    .line 64
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 65
    instance-of v0, p2, Lpn0;

    if-eqz v0, :cond_8

    .line 66
    move-object v1, p2

    check-cast v1, Lpn0;

    goto :goto_2

    .line 67
    :cond_8
    new-instance v1, Lrn0;

    invoke-direct {v1, p1}, Lrn0;-><init>(Landroid/os/IBinder;)V

    .line 68
    :goto_2
    invoke-interface {p0, v1}, Ljn0;->zza(Lpn0;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 70
    :cond_9
    invoke-interface {p0}, Ljn0;->show()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    .line 72
    :cond_a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavt;

    .line 73
    invoke-interface {p0, p1}, Ljn0;->U6(Lcom/google/android/gms/internal/ads/zzavt;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_3
    return p4

    :pswitch_data_0
    .packed-switch 0x5
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
