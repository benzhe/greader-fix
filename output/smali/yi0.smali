.class public abstract Lyi0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lvi0;


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_13

    const/4 v5, 0x2

    if-eq v0, v5, :cond_12

    const/4 v5, 0x3

    if-eq v0, v5, :cond_11

    const/4 v5, 0x5

    if-eq v0, v5, :cond_10

    const/16 v5, 0xa

    if-eq v0, v5, :cond_f

    const/16 v5, 0xb

    if-eq v0, v5, :cond_e

    const-string v5, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback"

    const-string v6, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback"

    const-string v7, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback"

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    .line 1
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/gms/internal/ads/zzvq;

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v12

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    move-object v13, v4

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v0, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    .line 7
    instance-of v5, v4, Loi0;

    if-eqz v5, :cond_1

    .line 8
    check-cast v4, Loi0;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v4, Lqi0;

    invoke-direct {v4, v0}, Lqi0;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    .line 10
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmg0;->W6(Landroid/os/IBinder;)Lng0;

    move-result-object v14

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaei;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/google/android/gms/internal/ads/zzaei;

    .line 12
    move-object/from16 v8, p0

    check-cast v8, Lej0;

    invoke-virtual/range {v8 .. v15}, Lej0;->S3(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Loi0;Lng0;Lcom/google/android/gms/internal/ads/zzaei;)V

    .line 13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    .line 14
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/google/android/gms/internal/ads/zzvq;

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v20

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    move-object/from16 v21, v4

    goto :goto_3

    .line 19
    :cond_2
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    .line 20
    instance-of v5, v4, Lii0;

    if-eqz v5, :cond_3

    .line 21
    check-cast v4, Lii0;

    goto :goto_2

    .line 22
    :cond_3
    new-instance v4, Lki0;

    invoke-direct {v4, v0}, Lki0;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 23
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmg0;->W6(Landroid/os/IBinder;)Lng0;

    move-result-object v22

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/google/android/gms/internal/ads/zzvt;

    .line 25
    move-object/from16 v16, p0

    check-cast v16, Lej0;

    invoke-virtual/range {v16 .. v23}, Lej0;->x3(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Lii0;Lng0;Lcom/google/android/gms/internal/ads/zzvt;)V

    .line 26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    .line 27
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 29
    sget-object v7, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzvq;

    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v8

    .line 31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_4

    :goto_4
    move-object v9, v4

    goto :goto_5

    .line 32
    :cond_4
    invoke-interface {v9, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    .line 33
    instance-of v6, v4, Lti0;

    if-eqz v6, :cond_5

    .line 34
    check-cast v4, Lti0;

    goto :goto_4

    .line 35
    :cond_5
    new-instance v4, Lwi0;

    invoke-direct {v4, v9}, Lwi0;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 36
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmg0;->W6(Landroid/os/IBinder;)Lng0;

    move-result-object v10

    .line 37
    move-object/from16 v4, p0

    check-cast v4, Lej0;

    move-object v6, v0

    invoke-virtual/range {v4 .. v10}, Lej0;->C6(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Lti0;Lng0;)V

    .line 38
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    .line 39
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 40
    move-object/from16 v1, p0

    check-cast v1, Lej0;

    .line 41
    iput-object v0, v1, Lej0;->i:Ljava/lang/String;

    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    .line 43
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 45
    sget-object v7, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzvq;

    .line 46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v8

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_6

    :goto_6
    move-object v9, v4

    goto :goto_7

    .line 48
    :cond_6
    invoke-interface {v9, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    .line 49
    instance-of v5, v4, Loi0;

    if-eqz v5, :cond_7

    .line 50
    check-cast v4, Loi0;

    goto :goto_6

    .line 51
    :cond_7
    new-instance v4, Lqi0;

    invoke-direct {v4, v9}, Lqi0;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    .line 52
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmg0;->W6(Landroid/os/IBinder;)Lng0;

    move-result-object v10

    .line 53
    move-object/from16 v4, p0

    check-cast v4, Lej0;

    const/4 v11, 0x0

    move-object v5, v0

    .line 54
    invoke-virtual/range {v4 .. v11}, Lej0;->S3(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Loi0;Lng0;Lcom/google/android/gms/internal/ads/zzaei;)V

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    .line 56
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v0

    .line 57
    move-object/from16 v1, p0

    check-cast v1, Lej0;

    invoke-virtual {v1, v0}, Lej0;->Q6(Lx20;)Z

    move-result v0

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    sget-object v1, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 60
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    .line 61
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v7, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzvq;

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v8

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_8

    :goto_8
    move-object v9, v4

    goto :goto_9

    .line 66
    :cond_8
    invoke-interface {v9, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    .line 67
    instance-of v6, v4, Lti0;

    if-eqz v6, :cond_9

    .line 68
    check-cast v4, Lti0;

    goto :goto_8

    .line 69
    :cond_9
    new-instance v4, Lwi0;

    invoke-direct {v4, v9}, Lwi0;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    .line 70
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmg0;->W6(Landroid/os/IBinder;)Lng0;

    move-result-object v10

    .line 71
    move-object/from16 v4, p0

    check-cast v4, Lej0;

    move-object v6, v0

    invoke-virtual/range {v4 .. v10}, Lej0;->K5(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Lti0;Lng0;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    .line 73
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v0

    .line 74
    move-object/from16 v1, p0

    check-cast v1, Lej0;

    invoke-virtual {v1, v0}, Lej0;->i6(Lx20;)Z

    move-result v0

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    sget-object v1, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 77
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    .line 78
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzvq;

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v8

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_a
    move-object v9, v4

    goto :goto_b

    :cond_a
    const-string v4, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback"

    .line 83
    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    .line 84
    instance-of v9, v4, Lni0;

    if-eqz v9, :cond_b

    .line 85
    check-cast v4, Lni0;

    goto :goto_a

    .line 86
    :cond_b
    new-instance v4, Lpi0;

    invoke-direct {v4, v0}, Lpi0;-><init>(Landroid/os/IBinder;)V

    goto :goto_a

    .line 87
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmg0;->W6(Landroid/os/IBinder;)Lng0;

    move-result-object v10

    .line 88
    move-object/from16 v4, p0

    check-cast v4, Lej0;

    invoke-virtual/range {v4 .. v10}, Lej0;->e6(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Lni0;Lng0;)V

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    .line 90
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 92
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/google/android/gms/internal/ads/zzvq;

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v15

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_c
    move-object/from16 v16, v4

    goto :goto_d

    .line 95
    :cond_c
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    .line 96
    instance-of v5, v4, Lii0;

    if-eqz v5, :cond_d

    .line 97
    check-cast v4, Lii0;

    goto :goto_c

    .line 98
    :cond_d
    new-instance v4, Lki0;

    invoke-direct {v4, v0}, Lki0;-><init>(Landroid/os/IBinder;)V

    goto :goto_c

    .line 99
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmg0;->W6(Landroid/os/IBinder;)Lng0;

    move-result-object v17

    .line 100
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/android/gms/internal/ads/zzvt;

    .line 101
    move-object/from16 v11, p0

    check-cast v11, Lej0;

    invoke-virtual/range {v11 .. v18}, Lej0;->B2(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Lii0;Lng0;Lcom/google/android/gms/internal/ads/zzvt;)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    .line 103
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 104
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    .line 106
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    .line 108
    :cond_10
    move-object/from16 v0, p0

    check-cast v0, Lej0;

    invoke-virtual {v0}, Lej0;->getVideoController()Lsu3;

    move-result-object v0

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-static {v2, v0}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_10

    .line 111
    :cond_11
    move-object/from16 v0, p0

    check-cast v0, Lej0;

    invoke-virtual {v0}, Lej0;->M()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v0

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-static {v2, v0}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_10

    .line 114
    :cond_12
    move-object/from16 v0, p0

    check-cast v0, Lej0;

    invoke-virtual {v0}, Lej0;->O()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v0

    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-static {v2, v0}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_10

    .line 117
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object v6

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 119
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/os/Bundle;

    .line 120
    invoke-static {v1, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 121
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzvt;

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_14

    :goto_e
    move-object v11, v4

    goto :goto_f

    :cond_14
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback"

    .line 123
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 124
    instance-of v4, v1, Laj0;

    if-eqz v4, :cond_15

    .line 125
    move-object v4, v1

    check-cast v4, Laj0;

    goto :goto_e

    .line 126
    :cond_15
    new-instance v4, Lcj0;

    invoke-direct {v4, v0}, Lcj0;-><init>(Landroid/os/IBinder;)V

    goto :goto_e

    .line 127
    :goto_f
    move-object/from16 v5, p0

    check-cast v5, Lej0;

    invoke-virtual/range {v5 .. v11}, Lej0;->a3(Lx20;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzvt;Laj0;)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_10
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xd
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
