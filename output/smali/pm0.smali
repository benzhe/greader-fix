.class public final Lpm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/ads/zzauj;",
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
    .locals 13

    .line 1
    invoke-static {p1}, Lbi;->b0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

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
    :pswitch_0
    invoke-static {p1, v1}, Lbi;->Y(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-static {p1, v1}, Lbi;->t(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-static {p1, v1, v2}, Lbi;->s(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdrc;

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-static {p1, v1}, Lbi;->t(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-static {p1, v1}, Lbi;->t(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 10
    :pswitch_5
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    invoke-static {p1, v1, v2}, Lbi;->s(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 12
    :pswitch_6
    invoke-static {p1, v1}, Lbi;->v(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    .line 13
    :pswitch_7
    invoke-static {p1, v1}, Lbi;->t(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 14
    :pswitch_8
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    invoke-static {p1, v1, v2}, Lbi;->s(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 16
    :pswitch_9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    invoke-static {p1, v1, v2}, Lbi;->s(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbar;

    goto :goto_0

    .line 18
    :pswitch_a
    invoke-static {p1, v1}, Lbi;->o(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1, v0}, Lbi;->A(Landroid/os/Parcel;I)V

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzauj;

    move-object v2, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzauj;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzbar;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrc;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzauj;

    return-object p1
.end method
