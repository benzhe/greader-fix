.class public abstract Llg0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lig0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    const/4 v0, 0x0

    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    .line 1
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lig0;->u5(Lx20;)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 4
    :pswitch_2
    invoke-interface {p0}, Lig0;->F6()Log0;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 7
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v4

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzvt;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzvq;

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    move-object v9, v2

    goto :goto_1

    .line 13
    :cond_0
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 14
    instance-of v0, p2, Lng0;

    if-eqz v0, :cond_1

    .line 15
    move-object v2, p2

    check-cast v2, Lng0;

    goto :goto_0

    .line 16
    :cond_1
    new-instance v2, Lpg0;

    invoke-direct {v2, p1}, Lpg0;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :goto_1
    move-object v3, p0

    .line 17
    invoke-interface/range {v3 .. v9}, Lig0;->w2(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 19
    :pswitch_4
    invoke-interface {p0}, Lig0;->M()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 22
    :pswitch_5
    invoke-interface {p0}, Lig0;->O()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 25
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvq;

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_2

    .line 29
    :cond_2
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 30
    instance-of v2, v1, Lng0;

    if-eqz v2, :cond_3

    .line 31
    move-object v2, v1

    check-cast v2, Lng0;

    goto :goto_2

    .line 32
    :cond_3
    new-instance v2, Lpg0;

    invoke-direct {v2, p2}, Lpg0;-><init>(Landroid/os/IBinder;)V

    .line 33
    :goto_2
    invoke-interface {p0, p1, v0, v3, v2}, Lig0;->O6(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 35
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v1, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback"

    .line 37
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 38
    instance-of v2, v1, Lpc0;

    if-eqz v2, :cond_5

    .line 39
    move-object v2, v1

    check-cast v2, Lpc0;

    goto :goto_3

    .line 40
    :cond_5
    new-instance v2, Lrc0;

    invoke-direct {v2, v0}, Lrc0;-><init>(Landroid/os/IBinder;)V

    .line 41
    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzajw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 42
    invoke-interface {p0, p1, v2, p2}, Lig0;->r1(Lx20;Lpc0;Ljava/util/List;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 44
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 45
    invoke-interface {p0, p1}, Lig0;->d6(Lx20;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 47
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvq;

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_4

    .line 51
    :cond_6
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 52
    instance-of v2, v1, Lng0;

    if-eqz v2, :cond_7

    .line 53
    move-object v2, v1

    check-cast v2, Lng0;

    goto :goto_4

    .line 54
    :cond_7
    new-instance v2, Lpg0;

    invoke-direct {v2, p2}, Lpg0;-><init>(Landroid/os/IBinder;)V

    .line 55
    :goto_4
    invoke-interface {p0, p1, v0, v3, v2}, Lig0;->a6(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 57
    :pswitch_a
    invoke-interface {p0}, Lig0;->G2()Lbh0;

    move-result-object p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 60
    :pswitch_b
    invoke-interface {p0}, Lig0;->getVideoController()Lsu3;

    move-result-object p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 63
    :pswitch_c
    sget-object p1, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 65
    :cond_8
    invoke-interface {p0, v0}, Lig0;->setImmersiveMode(Z)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 67
    :pswitch_d
    invoke-interface {p0}, Lig0;->C3()Lq80;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 70
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lyn0;->W6(Landroid/os/IBinder;)Lvn0;

    move-result-object v0

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 73
    invoke-interface {p0, p1, v0, p2}, Lig0;->R6(Lx20;Lvn0;Ljava/util/List;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 75
    :pswitch_f
    invoke-interface {p0}, Lig0;->v4()Z

    move-result p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 78
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_e

    .line 79
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 80
    invoke-interface {p0, p1}, Lig0;->R3(Lx20;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 82
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-interface {p0, p1, v0, p2}, Lig0;->t6(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 87
    :pswitch_12
    invoke-interface {p0}, Lig0;->j5()Landroid/os/Bundle;

    move-result-object p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 90
    :pswitch_13
    invoke-interface {p0}, Lig0;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 93
    :pswitch_14
    invoke-interface {p0}, Lig0;->zzvh()Landroid/os/Bundle;

    move-result-object p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 96
    :pswitch_15
    invoke-interface {p0}, Lig0;->r5()Lwg0;

    move-result-object p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 99
    :pswitch_16
    invoke-interface {p0}, Lig0;->h6()Lvg0;

    move-result-object p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_e

    .line 102
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v4

    .line 103
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzvq;

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_9

    :goto_5
    move-object v8, v2

    goto :goto_6

    .line 107
    :cond_9
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    instance-of v1, v0, Lng0;

    if-eqz v1, :cond_a

    .line 109
    move-object v2, v0

    check-cast v2, Lng0;

    goto :goto_5

    .line 110
    :cond_a
    new-instance v2, Lpg0;

    invoke-direct {v2, p1}, Lpg0;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

    .line 111
    :goto_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaei;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzaei;

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v10

    move-object v3, p0

    .line 113
    invoke-interface/range {v3 .. v10}, Lig0;->j1(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;Lcom/google/android/gms/internal/ads/zzaei;Ljava/util/List;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 115
    :pswitch_18
    invoke-interface {p0}, Lig0;->isInitialized()Z

    move-result p1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_e

    .line 119
    :pswitch_19
    invoke-interface {p0}, Lig0;->showVideo()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 121
    :pswitch_1a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-interface {p0, p1, p2}, Lig0;->V5(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 125
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v1

    .line 126
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvq;

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lyn0;->W6(Landroid/os/IBinder;)Lvn0;

    move-result-object v4

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 130
    invoke-interface/range {v0 .. v5}, Lig0;->i5(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lvn0;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 132
    :pswitch_1c
    invoke-interface {p0}, Lig0;->resume()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 134
    :pswitch_1d
    invoke-interface {p0}, Lig0;->pause()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 136
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v4

    .line 137
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzvq;

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_b

    :goto_7
    move-object v8, v2

    goto :goto_8

    .line 141
    :cond_b
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 142
    instance-of v0, p2, Lng0;

    if-eqz v0, :cond_c

    .line 143
    move-object v2, p2

    check-cast v2, Lng0;

    goto :goto_7

    .line 144
    :cond_c
    new-instance v2, Lpg0;

    invoke-direct {v2, p1}, Lpg0;-><init>(Landroid/os/IBinder;)V

    goto :goto_7

    :goto_8
    move-object v3, p0

    .line 145
    invoke-interface/range {v3 .. v8}, Lig0;->Q5(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 147
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v4

    .line 148
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzvt;

    .line 149
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzvq;

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_d

    :goto_9
    move-object v9, v2

    goto :goto_a

    .line 153
    :cond_d
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 154
    instance-of v0, p2, Lng0;

    if-eqz v0, :cond_e

    .line 155
    move-object v2, p2

    check-cast v2, Lng0;

    goto :goto_9

    .line 156
    :cond_e
    new-instance v2, Lpg0;

    invoke-direct {v2, p1}, Lpg0;-><init>(Landroid/os/IBinder;)V

    goto :goto_9

    :goto_a
    move-object v3, p0

    .line 157
    invoke-interface/range {v3 .. v9}, Lig0;->s3(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 159
    :pswitch_20
    invoke-interface {p0}, Lig0;->destroy()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 161
    :pswitch_21
    invoke-interface {p0}, Lig0;->showInterstitial()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_e

    .line 163
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 164
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvq;

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_f

    goto :goto_b

    .line 167
    :cond_f
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 168
    instance-of v2, v1, Lng0;

    if-eqz v2, :cond_10

    .line 169
    move-object v2, v1

    check-cast v2, Lng0;

    goto :goto_b

    .line 170
    :cond_10
    new-instance v2, Lpg0;

    invoke-direct {v2, p2}, Lpg0;-><init>(Landroid/os/IBinder;)V

    .line 171
    :goto_b
    invoke-interface {p0, p1, v0, v3, v2}, Lig0;->U1(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_e

    .line 173
    :pswitch_23
    invoke-interface {p0}, Lig0;->H()Lx20;

    move-result-object p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_e

    .line 176
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v4

    .line 177
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzvt;

    .line 178
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzvq;

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_11

    :goto_c
    move-object v8, v2

    goto :goto_d

    .line 181
    :cond_11
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 182
    instance-of v0, p2, Lng0;

    if-eqz v0, :cond_12

    .line 183
    move-object v2, p2

    check-cast v2, Lng0;

    goto :goto_c

    .line 184
    :cond_12
    new-instance v2, Lpg0;

    invoke-direct {v2, p1}, Lpg0;-><init>(Landroid/os/IBinder;)V

    goto :goto_c

    :goto_d
    move-object v3, p0

    .line 185
    invoke-interface/range {v3 .. v8}, Lig0;->m4(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_e
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
