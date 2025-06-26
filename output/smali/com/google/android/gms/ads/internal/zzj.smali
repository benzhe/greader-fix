.class public final Lcom/google/android/gms/ads/internal/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/ads/internal/zzk;",
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
    .locals 14

    .line 1
    invoke-static {p1}, Lbi;->b0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    packed-switch v2, :pswitch_data_0

    .line 4
    invoke-static {p1, v1}, Lbi;->Y(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-static {p1, v1}, Lbi;->R(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {p1, v1}, Lbi;->R(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {p1, v1}, Lbi;->R(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-static {p1, v1}, Lbi;->U(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-static {p1, v1}, Lbi;->S(Landroid/os/Parcel;I)F

    move-result v9

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-static {p1, v1}, Lbi;->R(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    .line 11
    :pswitch_6
    invoke-static {p1, v1}, Lbi;->t(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 12
    :pswitch_7
    invoke-static {p1, v1}, Lbi;->R(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_0

    .line 13
    :pswitch_8
    invoke-static {p1, v1}, Lbi;->R(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, v0}, Lbi;->A(Landroid/os/Parcel;I)V

    .line 15
    new-instance p1, Lcom/google/android/gms/ads/internal/zzk;

    move-object v4, p1

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/ads/internal/zzk;-><init>(ZZLjava/lang/String;ZFIZZZ)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
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

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/ads/internal/zzk;

    return-object p1
.end method
