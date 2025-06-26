.class public abstract Let3;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lbt3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

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

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    invoke-interface {p0, p1}, Lbt3;->a1(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 4
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback"

    .line 5
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 6
    instance-of p4, p2, Led0;

    if-eqz p4, :cond_1

    .line 7
    move-object p4, p2

    check-cast p4, Led0;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p4, Lgd0;

    invoke-direct {p4, p1}, Lgd0;-><init>(Landroid/os/IBinder;)V

    .line 9
    :goto_0
    invoke-interface {p0, p4}, Lbt3;->u3(Led0;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzajy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzajy;

    .line 12
    invoke-interface {p0, p1}, Lbt3;->w6(Lcom/google/android/gms/internal/ads/zzajy;)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 14
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener"

    .line 15
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 16
    instance-of p4, p2, Lo90;

    if-eqz p4, :cond_3

    .line 17
    move-object p4, p2

    check-cast p4, Lo90;

    goto :goto_1

    .line 18
    :cond_3
    new-instance p4, Lq90;

    invoke-direct {p4, p1}, Lq90;-><init>(Landroid/os/IBinder;)V

    .line 19
    :goto_1
    invoke-interface {p0, p4}, Lbt3;->G3(Lo90;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 21
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 22
    invoke-interface {p0, p1}, Lbt3;->I1(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 24
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p4, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener"

    .line 25
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 26
    instance-of v0, p4, Lj90;

    if-eqz v0, :cond_5

    .line 27
    check-cast p4, Lj90;

    goto :goto_2

    .line 28
    :cond_5
    new-instance p4, Ll90;

    invoke-direct {p4, p1}, Ll90;-><init>(Landroid/os/IBinder;)V

    .line 29
    :goto_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvt;

    .line 30
    invoke-interface {p0, p4, p1}, Lbt3;->H2(Lj90;Lcom/google/android/gms/internal/ads/zzvt;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 32
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    .line 33
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 34
    instance-of p4, p2, Lwt3;

    if-eqz p4, :cond_7

    .line 35
    move-object p4, p2

    check-cast p4, Lwt3;

    goto :goto_3

    .line 36
    :cond_7
    new-instance p4, Lvt3;

    invoke-direct {p4, p1}, Lvt3;-><init>(Landroid/os/IBinder;)V

    .line 37
    :goto_3
    invoke-interface {p0, p4}, Lbt3;->i4(Lwt3;)V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaei;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaei;

    .line 40
    invoke-interface {p0, p1}, Lbt3;->X0(Lcom/google/android/gms/internal/ads/zzaei;)V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 42
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v1, p4

    goto :goto_4

    :cond_8
    const-string v1, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener"

    .line 44
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 45
    instance-of v2, v1, Lg90;

    if-eqz v2, :cond_9

    .line 46
    check-cast v1, Lg90;

    goto :goto_4

    .line 47
    :cond_9
    new-instance v1, Li90;

    invoke-direct {v1, v0}, Li90;-><init>(Landroid/os/IBinder;)V

    .line 48
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_5

    :cond_a
    const-string p4, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener"

    .line 49
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 50
    instance-of v0, p4, La90;

    if-eqz v0, :cond_b

    .line 51
    check-cast p4, La90;

    goto :goto_5

    .line 52
    :cond_b
    new-instance p4, Ld90;

    invoke-direct {p4, p2}, Ld90;-><init>(Landroid/os/IBinder;)V

    .line 53
    :goto_5
    invoke-interface {p0, p1, v1, p4}, Lbt3;->z5(Ljava/lang/String;Lg90;La90;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 55
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener"

    .line 56
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 57
    instance-of p4, p2, Lz80;

    if-eqz p4, :cond_d

    .line 58
    move-object p4, p2

    check-cast p4, Lz80;

    goto :goto_6

    .line 59
    :cond_d
    new-instance p4, Lb90;

    invoke-direct {p4, p1}, Lb90;-><init>(Landroid/os/IBinder;)V

    .line 60
    :goto_6
    invoke-interface {p0, p4}, Lbt3;->Q3(Lz80;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 62
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener"

    .line 63
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 64
    instance-of p4, p2, Lu80;

    if-eqz p4, :cond_f

    .line 65
    move-object p4, p2

    check-cast p4, Lu80;

    goto :goto_7

    .line 66
    :cond_f
    new-instance p4, Lw80;

    invoke-direct {p4, p1}, Lw80;-><init>(Landroid/os/IBinder;)V

    .line 67
    :goto_7
    invoke-interface {p0, p4}, Lbt3;->x1(Lu80;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 69
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    .line 70
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 71
    instance-of p4, p2, Lus3;

    if-eqz p4, :cond_11

    .line 72
    move-object p4, p2

    check-cast p4, Lus3;

    goto :goto_8

    .line 73
    :cond_11
    new-instance p4, Lws3;

    invoke-direct {p4, p1}, Lws3;-><init>(Landroid/os/IBinder;)V

    .line 74
    :goto_8
    invoke-interface {p0, p4}, Lbt3;->J6(Lus3;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 76
    :pswitch_d
    invoke-interface {p0}, Lbt3;->o4()Lat3;

    move-result-object p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_9
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
