.class public abstract Lah0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lbh0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
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
    move-object p1, p0

    check-cast p1, Lji0;

    .line 2
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getCurrentTime()F

    move-result p1

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_2

    .line 5
    :pswitch_1
    move-object p1, p0

    check-cast p1, Lji0;

    .line 6
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getDuration()F

    move-result p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_2

    .line 9
    :pswitch_2
    move-object p1, p0

    check-cast p1, Lji0;

    .line 10
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getMediaContentAspectRatio()F

    move-result p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_2

    .line 13
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 14
    move-object p2, p0

    check-cast p2, Lji0;

    .line 15
    iget-object p2, p2, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->untrackView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 17
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p4

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p2

    .line 20
    move-object v0, p0

    check-cast v0, Lji0;

    invoke-virtual {v0, p1, p4, p2}, Lji0;->x(Lx20;Lx20;Lx20;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 22
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 23
    move-object p2, p0

    check-cast p2, Lji0;

    .line 24
    iget-object p2, p2, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->handleClick(Landroid/view/View;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 26
    :pswitch_6
    move-object p1, p0

    check-cast p1, Lji0;

    .line 27
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->recordImpression()V

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 29
    :pswitch_7
    move-object p1, p0

    check-cast p1, Lji0;

    .line 30
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideClickHandling()Z

    move-result p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 33
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 34
    :pswitch_8
    move-object p1, p0

    check-cast p1, Lji0;

    .line 35
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideImpressionRecording()Z

    move-result p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 39
    :pswitch_9
    move-object p1, p0

    check-cast p1, Lji0;

    .line 40
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 43
    :pswitch_a
    move-object p1, p0

    check-cast p1, Lji0;

    .line 44
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzka()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p4, Ly20;

    invoke-direct {p4, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 46
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    invoke-static {p3, p4}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 48
    :pswitch_b
    move-object p1, p0

    check-cast p1, Lji0;

    invoke-virtual {p1}, Lji0;->z()Lx20;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 51
    :pswitch_c
    move-object p1, p0

    check-cast p1, Lji0;

    .line 52
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getAdChoicesContent()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    new-instance p4, Ly20;

    invoke-direct {p4, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 54
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-static {p3, p4}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 56
    :pswitch_d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-static {p3, p4}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 58
    :pswitch_e
    move-object p1, p0

    check-cast p1, Lji0;

    invoke-virtual {p1}, Lji0;->getVideoController()Lsu3;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 61
    :pswitch_f
    move-object p1, p0

    check-cast p1, Lji0;

    .line 62
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getPrice()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 65
    :pswitch_10
    move-object p1, p0

    check-cast p1, Lji0;

    .line 66
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getStore()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :pswitch_11
    move-object p1, p0

    check-cast p1, Lji0;

    invoke-virtual {p1}, Lji0;->q()D

    move-result-wide p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_2

    .line 72
    :pswitch_12
    move-object p1, p0

    check-cast p1, Lji0;

    .line 73
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 76
    :pswitch_13
    move-object p1, p0

    check-cast p1, Lji0;

    .line 77
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :pswitch_14
    move-object p1, p0

    check-cast p1, Lji0;

    invoke-virtual {p1}, Lji0;->p()Lu70;

    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 83
    :pswitch_15
    move-object p1, p0

    check-cast p1, Lji0;

    .line 84
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :pswitch_16
    move-object p1, p0

    check-cast p1, Lji0;

    invoke-virtual {p1}, Lji0;->i()Ljava/util/List;

    move-result-object p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_2

    .line 90
    :pswitch_17
    move-object p1, p0

    check-cast p1, Lji0;

    .line 91
    iget-object p1, p1, Lji0;->e:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getHeadline()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
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
