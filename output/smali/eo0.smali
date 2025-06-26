.class public abstract Leo0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lfo0;


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

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

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback"

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1
    :pswitch_0
    sget-object p1, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 3
    :cond_0
    invoke-interface {p0, v1}, Lfo0;->setImmersiveMode(Z)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 5
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lno0;

    if-eqz v1, :cond_2

    .line 9
    move-object v2, v0

    check-cast v2, Lno0;

    goto :goto_0

    .line 10
    :cond_2
    new-instance v2, Lpo0;

    invoke-direct {v2, p2}, Lpo0;-><init>(Landroid/os/IBinder;)V

    .line 11
    :goto_0
    invoke-interface {p0, p1, v2}, Lfo0;->I5(Lcom/google/android/gms/internal/ads/zzvq;Lno0;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 13
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lqu3;->W6(Landroid/os/IBinder;)Lmu3;

    move-result-object p1

    .line 14
    invoke-interface {p0, p1}, Lfo0;->zza(Lmu3;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 16
    :pswitch_3
    invoke-interface {p0}, Lfo0;->zzkm()Lru3;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_5

    .line 19
    :pswitch_4
    invoke-interface {p0}, Lfo0;->c2()Lbo0;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_5

    .line 22
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 23
    sget-object v0, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    .line 25
    :cond_3
    invoke-interface {p0, p1, v1}, Lfo0;->S6(Lx20;Z)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 27
    :pswitch_6
    invoke-interface {p0}, Lfo0;->getAdMetadata()Landroid/os/Bundle;

    move-result-object p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_5

    .line 30
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener"

    .line 31
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 32
    instance-of v0, p2, Llu3;

    if-eqz v0, :cond_5

    .line 33
    move-object v2, p2

    check-cast v2, Llu3;

    goto :goto_1

    .line 34
    :cond_5
    new-instance v2, Lnu3;

    invoke-direct {v2, p1}, Lnu3;-><init>(Landroid/os/IBinder;)V

    .line 35
    :goto_1
    invoke-interface {p0, v2}, Lfo0;->r4(Llu3;)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 37
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaww;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaww;

    .line 38
    invoke-interface {p0, p1}, Lfo0;->E6(Lcom/google/android/gms/internal/ads/zzaww;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 40
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener"

    .line 41
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 42
    instance-of v0, p2, Loo0;

    if-eqz v0, :cond_7

    .line 43
    move-object v2, p2

    check-cast v2, Loo0;

    goto :goto_2

    .line 44
    :cond_7
    new-instance v2, Lro0;

    invoke-direct {v2, p1}, Lro0;-><init>(Landroid/os/IBinder;)V

    .line 45
    :goto_2
    invoke-interface {p0, v2}, Lfo0;->t5(Loo0;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 47
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 48
    invoke-interface {p0, p1}, Lfo0;->zze(Lx20;)V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    .line 50
    :pswitch_b
    invoke-interface {p0}, Lfo0;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 53
    :pswitch_c
    invoke-interface {p0}, Lfo0;->isLoaded()Z

    move-result p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 57
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    .line 58
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 59
    instance-of v0, p2, Lgo0;

    if-eqz v0, :cond_9

    .line 60
    move-object v2, p2

    check-cast v2, Lgo0;

    goto :goto_3

    .line 61
    :cond_9
    new-instance v2, Lio0;

    invoke-direct {v2, p1}, Lio0;-><init>(Landroid/os/IBinder;)V

    .line 62
    :goto_3
    invoke-interface {p0, v2}, Lfo0;->J5(Lgo0;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    .line 64
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_4

    .line 66
    :cond_a
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    instance-of v1, v0, Lno0;

    if-eqz v1, :cond_b

    .line 68
    move-object v2, v0

    check-cast v2, Lno0;

    goto :goto_4

    .line 69
    :cond_b
    new-instance v2, Lpo0;

    invoke-direct {v2, p2}, Lpo0;-><init>(Landroid/os/IBinder;)V

    .line 70
    :goto_4
    invoke-interface {p0, p1, v2}, Lfo0;->T4(Lcom/google/android/gms/internal/ads/zzvq;Lno0;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_5
    return p4

    :pswitch_data_0
    .packed-switch 0x1
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
