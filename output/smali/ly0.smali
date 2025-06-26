.class public abstract Lly0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lny0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.measurement.IAppMeasurementProxy"

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

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return p4

    .line 1
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    move-object p2, p0

    check-cast p2, Lzf0;

    .line 3
    iget-object p2, p2, Lzf0;->e:Lxr4;

    .line 4
    iget-object p2, p2, Lxr4;->a:Lq34;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lo24;

    .line 6
    invoke-direct {p4, p2, p1}, Lo24;-><init>(Lq34;Landroid/os/Bundle;)V

    .line 7
    iget-object p1, p2, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 8
    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 10
    :pswitch_1
    move-object p1, p0

    check-cast p1, Lzf0;

    .line 11
    iget-object p1, p1, Lzf0;->e:Lxr4;

    .line 12
    iget-object p1, p1, Lxr4;->a:Lq34;

    .line 13
    iget-object p1, p1, Lq34;->h:Ljava/lang/String;

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 15
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :pswitch_2
    move-object p1, p0

    check-cast p1, Lzf0;

    invoke-virtual {p1}, Lzf0;->F4()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 19
    :pswitch_3
    move-object p1, p0

    check-cast p1, Lzf0;

    invoke-virtual {p1}, Lzf0;->C2()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 22
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 25
    move-object v1, p0

    check-cast v1, Lzf0;

    invoke-virtual {v1, p1, p4, p2}, Lzf0;->t4(Lx20;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 27
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 28
    move-object p2, p0

    check-cast p2, Lzf0;

    .line 29
    iget-object p2, p2, Lzf0;->e:Lxr4;

    .line 30
    iget-object p2, p2, Lxr4;->a:Lq34;

    .line 31
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lr24;

    .line 32
    invoke-direct {p4, p2, p1}, Lr24;-><init>(Lq34;Ljava/lang/String;)V

    .line 33
    iget-object p1, p2, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 34
    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 36
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 37
    move-object p2, p0

    check-cast p2, Lzf0;

    .line 38
    iget-object p2, p2, Lzf0;->e:Lxr4;

    .line 39
    iget-object p2, p2, Lxr4;->a:Lq34;

    .line 40
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lq24;

    .line 41
    invoke-direct {p4, p2, p1}, Lq24;-><init>(Lq34;Ljava/lang/String;)V

    .line 42
    iget-object p1, p2, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 43
    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 45
    :pswitch_7
    move-object p1, p0

    check-cast p1, Lzf0;

    .line 46
    iget-object p1, p1, Lzf0;->e:Lxr4;

    .line 47
    iget-object p1, p1, Lxr4;->a:Lq34;

    .line 48
    invoke-virtual {p1}, Lq34;->k()J

    move-result-wide p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1

    .line 51
    :pswitch_8
    move-object p1, p0

    check-cast p1, Lzf0;

    invoke-virtual {p1}, Lzf0;->f4()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 54
    :pswitch_9
    move-object p1, p0

    check-cast p1, Lzf0;

    invoke-virtual {p1}, Lzf0;->Y1()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 57
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 59
    move-object p4, p0

    check-cast p4, Lzf0;

    .line 60
    iget-object p4, p4, Lzf0;->e:Lxr4;

    .line 61
    iget-object p4, p4, Lxr4;->a:Lq34;

    .line 62
    invoke-virtual {p4, p1, p2}, Lq34;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_1

    .line 65
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 67
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 68
    move-object v1, p0

    check-cast v1, Lzf0;

    .line 69
    iget-object v1, v1, Lzf0;->e:Lxr4;

    .line 70
    iget-object v1, v1, Lxr4;->a:Lq34;

    .line 71
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ll24;

    .line 72
    invoke-direct {v2, v1, p1, p4, p2}, Ll24;-><init>(Lq34;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    iget-object p1, v1, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 74
    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 76
    :pswitch_c
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 77
    move-object p2, p0

    check-cast p2, Lzf0;

    .line 78
    iget-object p2, p2, Lzf0;->e:Lxr4;

    .line 79
    iget-object p2, p2, Lxr4;->a:Lq34;

    .line 80
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lk24;

    .line 81
    invoke-direct {p4, p2, p1}, Lk24;-><init>(Lq34;Landroid/os/Bundle;)V

    .line 82
    iget-object p1, p2, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 83
    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 85
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 86
    move-object p2, p0

    check-cast p2, Lzf0;

    .line 87
    iget-object p2, p2, Lzf0;->e:Lxr4;

    .line 88
    iget-object p2, p2, Lxr4;->a:Lq34;

    .line 89
    invoke-virtual {p2, p1}, Lq34;->c(Ljava/lang/String;)I

    move-result p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 92
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    sget-object v2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p4, 0x1

    .line 96
    :cond_0
    move-object p2, p0

    check-cast p2, Lzf0;

    .line 97
    iget-object p2, p2, Lzf0;->e:Lxr4;

    .line 98
    iget-object p2, p2, Lxr4;->a:Lq34;

    .line 99
    invoke-virtual {p2, p1, v1, p4}, Lq34;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_1

    .line 102
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p2

    .line 105
    move-object v1, p0

    check-cast v1, Lzf0;

    .line 106
    iget-object v1, v1, Lzf0;->e:Lxr4;

    if-eqz p2, :cond_1

    .line 107
    invoke-static {p2}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 108
    :goto_0
    iget-object v1, v1, Lxr4;->a:Lq34;

    .line 109
    invoke-virtual {v1, p1, p4, p2, v0}, Lq34;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 111
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 113
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 114
    move-object v1, p0

    check-cast v1, Lzf0;

    .line 115
    iget-object v1, v1, Lzf0;->e:Lxr4;

    .line 116
    iget-object v1, v1, Lxr4;->a:Lq34;

    .line 117
    invoke-virtual {v1, p1, p4, p2}, Lq34;->h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 119
    :pswitch_11
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 120
    move-object p2, p0

    check-cast p2, Lzf0;

    .line 121
    iget-object p2, p2, Lzf0;->e:Lxr4;

    .line 122
    iget-object p2, p2, Lxr4;->a:Lq34;

    .line 123
    invoke-virtual {p2, p1, v0}, Lq34;->b(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 126
    :pswitch_12
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 127
    move-object p2, p0

    check-cast p2, Lzf0;

    .line 128
    iget-object p2, p2, Lzf0;->e:Lxr4;

    .line 129
    iget-object p2, p2, Lxr4;->a:Lq34;

    .line 130
    invoke-virtual {p2, p1, p4}, Lq34;->b(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
