.class public final Lfc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/ads/zzaja;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lbi;->b0(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v8, v3

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-wide v14, v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_0

    .line 4
    invoke-static {v0, v2}, Lbi;->Y(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-static {v0, v2}, Lbi;->V(Landroid/os/Parcel;I)J

    move-result-wide v14

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {v0, v2}, Lbi;->R(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {v0, v2}, Lbi;->u(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-static {v0, v2}, Lbi;->u(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-static {v0, v2}, Lbi;->p(Landroid/os/Parcel;I)[B

    move-result-object v10

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-static {v0, v2}, Lbi;->U(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_0

    .line 11
    :pswitch_6
    invoke-static {v0, v2}, Lbi;->t(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 12
    :pswitch_7
    invoke-static {v0, v2}, Lbi;->R(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0, v1}, Lbi;->A(Landroid/os/Parcel;I)V

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaja;

    move-object v6, v0

    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(ZLjava/lang/String;I[B[Ljava/lang/String;[Ljava/lang/String;ZJ)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzaja;

    return-object p1
.end method
