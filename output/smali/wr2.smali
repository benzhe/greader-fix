.class public final Lwr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/ads/zzdwj;",
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
    .locals 6

    .line 1
    invoke-static {p1}, Lbi;->b0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 4
    invoke-static {p1, v3}, Lbi;->Y(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1, v3}, Lbi;->p(Landroid/os/Parcel;I)[B

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1, v3}, Lbi;->U(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1, v0}, Lbi;->A(Landroid/os/Parcel;I)V

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdwj;

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdwj;-><init>(I[B)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzdwj;

    return-object p1
.end method
