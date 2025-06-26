.class public abstract Ly90;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lv90;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd"

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

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lqu3;->W6(Landroid/os/IBinder;)Lmu3;

    move-result-object p1

    .line 2
    move-object p2, p0

    check-cast p2, Lho1;

    invoke-virtual {p2, p1}, Lho1;->zza(Lmu3;)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 4
    :pswitch_1
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->zzkm()Lru3;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 7
    :pswitch_2
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->k0()Z

    move-result p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 11
    :pswitch_3
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->a0()Lt70;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 14
    :pswitch_4
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->q6()V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 16
    :pswitch_5
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->e0()V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 18
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IMuteThisAdListener"

    .line 19
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 20
    instance-of p4, p2, Lfu3;

    if-eqz p4, :cond_1

    .line 21
    move-object p4, p2

    check-cast p4, Lfu3;

    goto :goto_0

    .line 22
    :cond_1
    new-instance p4, Lhu3;

    invoke-direct {p4, p1}, Lhu3;-><init>(Landroid/os/IBinder;)V

    .line 23
    :goto_0
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1, p4}, Lho1;->j0(Lfu3;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 25
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Llv3;->W6(Landroid/os/IBinder;)Liu3;

    move-result-object p1

    .line 26
    move-object p2, p0

    check-cast p2, Lho1;

    invoke-virtual {p2, p1}, Lho1;->L(Liu3;)V

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 28
    :pswitch_8
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->n2()Z

    move-result p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 31
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 32
    :pswitch_9
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->q4()Ljava/util/List;

    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 35
    :pswitch_a
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->N()V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 37
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    .line 38
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 39
    instance-of p4, p2, Lu90;

    if-eqz p4, :cond_3

    .line 40
    move-object p4, p2

    check-cast p4, Lu90;

    goto :goto_1

    .line 41
    :cond_3
    new-instance p4, Lw90;

    invoke-direct {p4, p1}, Lw90;-><init>(Landroid/os/IBinder;)V

    .line 42
    :goto_1
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1, p4}, Lho1;->b0(Lu90;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 44
    :pswitch_c
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 47
    :pswitch_d
    move-object p1, p0

    check-cast p1, Lho1;

    .line 48
    iget-object p1, p1, Lho1;->g:Lwj1;

    invoke-virtual {p1}, Lwj1;->w()Lx20;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 51
    :pswitch_e
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->D()Lx20;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 54
    :pswitch_f
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 55
    move-object p2, p0

    check-cast p2, Lho1;

    .line 56
    iget-object p2, p2, Lho1;->f:Lkj1;

    invoke-virtual {p2, p1}, Lkj1;->l(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 58
    :pswitch_10
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 59
    move-object p2, p0

    check-cast p2, Lho1;

    invoke-virtual {p2, p1}, Lho1;->B(Landroid/os/Bundle;)Z

    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 62
    :pswitch_11
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 63
    move-object p2, p0

    check-cast p2, Lho1;

    .line 64
    iget-object p2, p2, Lho1;->f:Lkj1;

    invoke-virtual {p2, p1}, Lkj1;->k(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 66
    :pswitch_12
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->f()Lm70;

    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 69
    :pswitch_13
    move-object p1, p0

    check-cast p1, Lho1;

    .line 70
    iget-object p1, p1, Lho1;->f:Lkj1;

    invoke-virtual {p1}, Lkj1;->a()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 72
    :pswitch_14
    move-object p1, p0

    check-cast p1, Lho1;

    .line 73
    iget-object p1, p1, Lho1;->e:Ljava/lang/String;

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 76
    :pswitch_15
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->getVideoController()Lsu3;

    move-result-object p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 79
    :pswitch_16
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->k()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 82
    :pswitch_17
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->s()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :pswitch_18
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->q()D

    move-result-wide p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_2

    .line 88
    :pswitch_19
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->r()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 91
    :pswitch_1a
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->e()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 94
    :pswitch_1b
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->p()Lu70;

    move-result-object p1

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 97
    :pswitch_1c
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->g()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 100
    :pswitch_1d
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->i()Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_2

    .line 103
    :pswitch_1e
    move-object p1, p0

    check-cast p1, Lho1;

    invoke-virtual {p1}, Lho1;->d()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
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
