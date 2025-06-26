.class public final Ltt3;
.super Lqd3;
.source "SourceFile"

# interfaces
.implements Lqt3;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IClientApi"

    .line 1
    invoke-direct {p0, p1, v0}, Lqd3;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lx20;Ljava/lang/String;Lhg0;I)Lbt3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 16
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    invoke-static {v0, p3}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 18
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x3

    .line 19
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    .line 21
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 22
    instance-of p4, p3, Lbt3;

    if-eqz p4, :cond_1

    .line 23
    move-object p2, p3

    check-cast p2, Lbt3;

    goto :goto_0

    .line 24
    :cond_1
    new-instance p3, Ldt3;

    invoke-direct {p3, p2}, Ldt3;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zza(Lx20;Lx20;Lx20;)Lf80;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 72
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 73
    invoke-static {v0, p2}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 74
    invoke-static {v0, p3}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xb

    .line 75
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 77
    sget p3, Le80;->e:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate"

    .line 78
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 79
    instance-of v0, p3, Lf80;

    if-eqz v0, :cond_1

    .line 80
    move-object p2, p3

    check-cast p2, Lf80;

    goto :goto_0

    .line 81
    :cond_1
    new-instance p3, Lh80;

    invoke-direct {p3, p2}, Lh80;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 82
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zza(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;I)Lit3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 60
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 61
    invoke-static {v0, p2}, Lrd3;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xa

    .line 64
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 66
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 67
    instance-of p4, p3, Lit3;

    if-eqz p4, :cond_1

    .line 68
    move-object p2, p3

    check-cast p2, Lit3;

    goto :goto_0

    .line 69
    :cond_1
    new-instance p3, Lkt3;

    invoke-direct {p3, p2}, Lkt3;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 70
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zza(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;I)Lit3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lrd3;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-static {v0, p4}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 9
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 10
    instance-of p4, p3, Lit3;

    if-eqz p4, :cond_1

    .line 11
    move-object p2, p3

    check-cast p2, Lit3;

    goto :goto_0

    .line 12
    :cond_1
    new-instance p3, Lkt3;

    invoke-direct {p3, p2}, Lkt3;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zza(Lx20;Lhg0;I)Ljn0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 38
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 39
    invoke-static {v0, p2}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 40
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x6

    .line 41
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 43
    sget p3, Lmn0;->e:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    .line 44
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 45
    instance-of v0, p3, Ljn0;

    if-eqz v0, :cond_1

    .line 46
    move-object p2, p3

    check-cast p2, Ljn0;

    goto :goto_0

    .line 47
    :cond_1
    new-instance p3, Lln0;

    invoke-direct {p3, p2}, Lln0;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zza(Lx20;Lx20;)Lx70;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 28
    invoke-static {v0, p2}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    .line 29
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 31
    sget v0, La80;->e:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    .line 32
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    instance-of v1, v0, Lx70;

    if-eqz v1, :cond_1

    .line 34
    move-object p2, v0

    check-cast p2, Lx70;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lz70;

    invoke-direct {v0, p2}, Lz70;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 36
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zza(Lx20;I)Lzt3;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 50
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 51
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x9

    .line 52
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    .line 54
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    instance-of v1, v0, Lzt3;

    if-eqz v1, :cond_1

    .line 56
    move-object p2, v0

    check-cast p2, Lzt3;

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Lbu3;

    invoke-direct {v0, p2}, Lbu3;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 58
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzb(Lx20;Ljava/lang/String;Lhg0;I)Lfo0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 21
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-static {v0, p3}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 23
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xc

    .line 24
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 26
    sget p3, Leo0;->e:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    .line 27
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 28
    instance-of p4, p3, Lfo0;

    if-eqz p4, :cond_1

    .line 29
    move-object p2, p3

    check-cast p2, Lfo0;

    goto :goto_0

    .line 30
    :cond_1
    new-instance p3, Lho0;

    invoke-direct {p3, p2}, Lho0;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 31
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzb(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;I)Lit3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lrd3;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-static {v0, p4}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 9
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 10
    instance-of p4, p3, Lit3;

    if-eqz p4, :cond_1

    .line 11
    move-object p2, p3

    check-cast p2, Lit3;

    goto :goto_0

    .line 12
    :cond_1
    new-instance p3, Lkt3;

    invoke-direct {p3, p2}, Lkt3;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzb(Lx20;)Lxk0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x8

    .line 16
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lwk0;->zzaj(Landroid/os/IBinder;)Lxk0;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final zzb(Lx20;Lhg0;I)Lzq0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 33
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 34
    invoke-static {v0, p2}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 35
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xe

    .line 36
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 38
    sget p3, Lcr0;->e:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.signals.ISignalGenerator"

    .line 39
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 40
    instance-of v0, p3, Lzq0;

    if-eqz v0, :cond_1

    .line 41
    move-object p2, p3

    check-cast p2, Lzq0;

    goto :goto_0

    .line 42
    :cond_1
    new-instance p3, Lbr0;

    invoke-direct {p3, p2}, Lbr0;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 43
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzc(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;I)Lit3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lrd3;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-static {v0, p4}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xd

    .line 7
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 9
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 10
    instance-of p4, p3, Lit3;

    if-eqz p4, :cond_1

    .line 11
    move-object p2, p3

    check-cast p2, Lit3;

    goto :goto_0

    .line 12
    :cond_1
    new-instance p3, Lkt3;

    invoke-direct {p3, p2}, Lkt3;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzc(Lx20;Lhg0;I)Ljk0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 16
    invoke-static {v0, p2}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 17
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xf

    .line 18
    invoke-virtual {p0, p1, v0}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 20
    sget p3, Lmk0;->e:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.offline.IOfflineUtils"

    .line 21
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 22
    instance-of v0, p3, Ljk0;

    if-eqz v0, :cond_1

    .line 23
    move-object p2, p3

    check-cast p2, Ljk0;

    goto :goto_0

    .line 24
    :cond_1
    new-instance p3, Llk0;

    invoke-direct {p3, p2}, Llk0;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
