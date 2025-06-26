.class public abstract Lzg0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lwg0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper"

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

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p4

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p2

    .line 4
    move-object v0, p0

    check-cast v0, Lqh0;

    invoke-virtual {v0, p1, p4, p2}, Lqh0;->x(Lx20;Lx20;Lx20;)V

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-static {p3, p4}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    move-object p1, p0

    check-cast p1, Lqh0;

    invoke-virtual {p1}, Lqh0;->z()Lx20;

    move-result-object p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 11
    :pswitch_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-static {p3, p4}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 13
    :pswitch_5
    move-object p1, p0

    check-cast p1, Lqh0;

    invoke-virtual {p1}, Lqh0;->getVideoController()Lsu3;

    move-result-object p1

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 15
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 16
    :pswitch_6
    move-object p1, p0

    check-cast p1, Lqh0;

    invoke-virtual {p1}, Lqh0;->C()Lx20;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 19
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 20
    move-object p2, p0

    check-cast p2, Lqh0;

    .line 21
    iget-object p2, p2, Lqh0;->e:Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->untrackView(Landroid/view/View;)V

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 23
    :pswitch_8
    move-object p1, p0

    check-cast p1, Lqh0;

    invoke-virtual {p1}, Lqh0;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 26
    :pswitch_9
    move-object p1, p0

    check-cast p1, Lqh0;

    .line 27
    iget-object p1, p1, Lqh0;->e:Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideClickHandling()Z

    move-result p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 30
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 31
    :pswitch_a
    move-object p1, p0

    check-cast p1, Lqh0;

    .line 32
    iget-object p1, p1, Lqh0;->e:Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideImpressionRecording()Z

    move-result p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 35
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 36
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 37
    move-object p2, p0

    check-cast p2, Lqh0;

    .line 38
    iget-object p2, p2, Lqh0;->e:Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->trackView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 40
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 41
    move-object p2, p0

    check-cast p2, Lqh0;

    .line 42
    iget-object p2, p2, Lqh0;->e:Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->handleClick(Landroid/view/View;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 44
    :pswitch_d
    move-object p1, p0

    check-cast p1, Lqh0;

    .line 45
    iget-object p1, p1, Lqh0;->e:Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->recordImpression()V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 47
    :pswitch_e
    move-object p1, p0

    check-cast p1, Lqh0;

    invoke-virtual {p1}, Lqh0;->r()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_f
    move-object p1, p0

    check-cast p1, Lqh0;

    invoke-virtual {p1}, Lqh0;->e()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_10
    move-object p1, p0

    check-cast p1, Lqh0;

    invoke-virtual {p1}, Lqh0;->R()Lu70;

    move-result-object p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 56
    :pswitch_11
    move-object p1, p0

    check-cast p1, Lqh0;

    invoke-virtual {p1}, Lqh0;->g()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_12
    move-object p1, p0

    check-cast p1, Lqh0;

    invoke-virtual {p1}, Lqh0;->i()Ljava/util/List;

    move-result-object p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 62
    :pswitch_13
    move-object p1, p0

    check-cast p1, Lqh0;

    invoke-virtual {p1}, Lqh0;->d()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
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
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
