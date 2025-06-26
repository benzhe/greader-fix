.class public abstract Lht3;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lit3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzc(Landroid/os/IBinder;)Lit3;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lit3;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lit3;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lkt3;

    invoke-direct {v0, p0}, Lkt3;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    .line 1
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback"

    .line 2
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 3
    instance-of v0, p2, Lyt3;

    if-eqz v0, :cond_1

    .line 4
    move-object v1, p2

    check-cast v1, Lyt3;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lau3;

    invoke-direct {v1, p1}, Lau3;-><init>(Landroid/os/IBinder;)V

    .line 6
    :goto_0
    invoke-interface {p0, v1}, Lit3;->zza(Lyt3;)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 8
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lit3;->zze(Lx20;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoadCallback"

    .line 13
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 14
    instance-of v1, v0, Lvs3;

    if-eqz v1, :cond_3

    .line 15
    move-object v1, v0

    check-cast v1, Lvs3;

    goto :goto_1

    .line 16
    :cond_3
    new-instance v1, Lxs3;

    invoke-direct {v1, p2}, Lxs3;-><init>(Landroid/os/IBinder;)V

    .line 17
    :goto_1
    invoke-interface {p0, p1, v1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzvq;Lvs3;)V

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 19
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, "com.google.android.gms.ads.internal.client.IOnPaidEventListener"

    .line 20
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 21
    instance-of v0, p2, Lmu3;

    if-eqz v0, :cond_5

    .line 22
    move-object v1, p2

    check-cast v1, Lmu3;

    goto :goto_2

    .line 23
    :cond_5
    new-instance v1, Lou3;

    invoke-direct {v1, p1}, Lou3;-><init>(Landroid/os/IBinder;)V

    .line 24
    :goto_2
    invoke-interface {p0, v1}, Lit3;->zza(Lmu3;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 26
    :pswitch_5
    invoke-interface {p0}, Lit3;->zzkm()Lru3;

    move-result-object p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    .line 29
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback"

    .line 30
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 31
    instance-of v0, p2, Lyn3;

    if-eqz v0, :cond_7

    .line 32
    move-object v1, p2

    check-cast v1, Lyn3;

    goto :goto_3

    .line 33
    :cond_7
    new-instance v1, Lao3;

    invoke-direct {v1, p1}, Lao3;-><init>(Landroid/os/IBinder;)V

    .line 34
    :goto_3
    invoke-interface {p0, v1}, Lit3;->zza(Lyn3;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 36
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzwc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwc;

    .line 37
    invoke-interface {p0, p1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzwc;)V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 39
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-interface {p0, p1}, Lit3;->zzbl(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 42
    :pswitch_9
    invoke-interface {p0}, Lit3;->getAdMetadata()Landroid/os/Bundle;

    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    .line 45
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const-string p2, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    .line 46
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 47
    instance-of v0, p2, Llt3;

    if-eqz v0, :cond_9

    .line 48
    move-object v1, p2

    check-cast v1, Llt3;

    goto :goto_4

    .line 49
    :cond_9
    new-instance v1, Lnt3;

    invoke-direct {v1, p1}, Lnt3;-><init>(Landroid/os/IBinder;)V

    .line 50
    :goto_4
    invoke-interface {p0, v1}, Lit3;->zza(Llt3;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 52
    :pswitch_b
    invoke-interface {p0}, Lit3;->zzkl()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 55
    :pswitch_c
    sget-object p1, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    .line 57
    :cond_a
    invoke-interface {p0, v0}, Lit3;->setImmersiveMode(Z)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 59
    :pswitch_d
    invoke-interface {p0}, Lit3;->zzko()Lus3;

    move-result-object p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    .line 62
    :pswitch_e
    invoke-interface {p0}, Lit3;->zzkn()Lpt3;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    .line 65
    :pswitch_f
    invoke-interface {p0}, Lit3;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 68
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzzj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzj;

    .line 69
    invoke-interface {p0, p1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzzj;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 71
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaaz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaaz;

    .line 72
    invoke-interface {p0, p1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzaaz;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 74
    :pswitch_12
    invoke-interface {p0}, Lit3;->getVideoController()Lsu3;

    move-result-object p1

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    .line 77
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-interface {p0, p1}, Lit3;->setUserId(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 80
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    .line 81
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 82
    instance-of v0, p2, Lpn0;

    if-eqz v0, :cond_c

    .line 83
    move-object v1, p2

    check-cast v1, Lpn0;

    goto :goto_5

    .line 84
    :cond_c
    new-instance v1, Lrn0;

    invoke-direct {v1, p1}, Lrn0;-><init>(Landroid/os/IBinder;)V

    .line 85
    :goto_5
    invoke-interface {p0, v1}, Lit3;->zza(Lpn0;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 87
    :pswitch_15
    invoke-interface {p0}, Lit3;->isLoading()Z

    move-result p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_d

    .line 91
    :pswitch_16
    sget-object p1, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    .line 93
    :cond_d
    invoke-interface {p0, v0}, Lit3;->setManualImpressionsEnabled(Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 95
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    .line 96
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 97
    instance-of v0, p2, Lwt3;

    if-eqz v0, :cond_f

    .line 98
    move-object v1, p2

    check-cast v1, Lwt3;

    goto :goto_6

    .line 99
    :cond_f
    new-instance v1, Lvt3;

    invoke-direct {v1, p1}, Lvt3;-><init>(Landroid/os/IBinder;)V

    .line 100
    :goto_6
    invoke-interface {p0, v1}, Lit3;->zza(Lwt3;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 102
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_7

    :cond_10
    const-string p2, "com.google.android.gms.ads.internal.client.IAdClickListener"

    .line 103
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 104
    instance-of v0, p2, Lps3;

    if-eqz v0, :cond_11

    .line 105
    move-object v1, p2

    check-cast v1, Lps3;

    goto :goto_7

    .line 106
    :cond_11
    new-instance v1, Lrs3;

    invoke-direct {v1, p1}, Lrs3;-><init>(Landroid/os/IBinder;)V

    .line 107
    :goto_7
    invoke-interface {p0, v1}, Lit3;->zza(Lps3;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 109
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_8

    :cond_12
    const-string p2, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener"

    .line 110
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 111
    instance-of v0, p2, Lt50;

    if-eqz v0, :cond_13

    .line 112
    move-object v1, p2

    check-cast v1, Lt50;

    goto :goto_8

    .line 113
    :cond_13
    new-instance v1, Lv50;

    invoke-direct {v1, p1}, Lv50;-><init>(Landroid/os/IBinder;)V

    .line 114
    :goto_8
    invoke-interface {p0, v1}, Lit3;->zza(Lt50;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 116
    :pswitch_1a
    invoke-interface {p0}, Lit3;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 119
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_9

    :cond_14
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener"

    .line 120
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 121
    instance-of v1, v0, Ljl0;

    if-eqz v1, :cond_15

    .line 122
    move-object v1, v0

    check-cast v1, Ljl0;

    goto :goto_9

    .line 123
    :cond_15
    new-instance v1, Lll0;

    invoke-direct {v1, p1}, Lll0;-><init>(Landroid/os/IBinder;)V

    .line 124
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-interface {p0, v1, p1}, Lit3;->zza(Ljl0;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 127
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_a

    :cond_16
    const-string p2, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener"

    .line 128
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 129
    instance-of v0, p2, Lgl0;

    if-eqz v0, :cond_17

    .line 130
    move-object v1, p2

    check-cast v1, Lgl0;

    goto :goto_a

    .line 131
    :cond_17
    new-instance v1, Lil0;

    invoke-direct {v1, p1}, Lil0;-><init>(Landroid/os/IBinder;)V

    .line 132
    :goto_a
    invoke-interface {p0, v1}, Lit3;->zza(Lgl0;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 134
    :pswitch_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvt;

    .line 135
    invoke-interface {p0, p1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzvt;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 137
    :pswitch_1e
    invoke-interface {p0}, Lit3;->zzkk()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    .line 140
    :pswitch_1f
    invoke-interface {p0}, Lit3;->zzkj()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 142
    :pswitch_20
    invoke-interface {p0}, Lit3;->stopLoading()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 144
    :pswitch_21
    invoke-interface {p0}, Lit3;->showInterstitial()V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    .line 146
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_b

    :cond_18
    const-string p2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    .line 147
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 148
    instance-of v0, p2, Lpt3;

    if-eqz v0, :cond_19

    .line 149
    move-object v1, p2

    check-cast v1, Lpt3;

    goto :goto_b

    .line 150
    :cond_19
    new-instance v1, Lst3;

    invoke-direct {v1, p1}, Lst3;-><init>(Landroid/os/IBinder;)V

    .line 151
    :goto_b
    invoke-interface {p0, v1}, Lit3;->zza(Lpt3;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    .line 153
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_c

    :cond_1a
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    .line 154
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 155
    instance-of v0, p2, Lus3;

    if-eqz v0, :cond_1b

    .line 156
    move-object v1, p2

    check-cast v1, Lus3;

    goto :goto_c

    .line 157
    :cond_1b
    new-instance v1, Lws3;

    invoke-direct {v1, p1}, Lws3;-><init>(Landroid/os/IBinder;)V

    .line 158
    :goto_c
    invoke-interface {p0, v1}, Lit3;->zza(Lus3;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    .line 160
    :pswitch_24
    invoke-interface {p0}, Lit3;->resume()V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    .line 162
    :pswitch_25
    invoke-interface {p0}, Lit3;->pause()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    .line 164
    :pswitch_26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 165
    invoke-interface {p0, p1}, Lit3;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result p1

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 168
    :pswitch_27
    invoke-interface {p0}, Lit3;->isReady()Z

    move-result p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 171
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 172
    :pswitch_28
    invoke-interface {p0}, Lit3;->destroy()V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    .line 174
    :pswitch_29
    invoke-interface {p0}, Lit3;->zzki()Lx20;

    move-result-object p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_d
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
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
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method
