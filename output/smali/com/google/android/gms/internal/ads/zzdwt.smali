.class public final Lcom/google/android/gms/internal/ads/zzdwt;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzdwt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:[B

.field public final g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lds2;

    invoke-direct {v0}, Lds2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdwt;-><init>(I[BI)V

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdwt;->e:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwt;->f:[B

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdwt;->g:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwt;->e:I

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwt;->f:[B

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lbi;->d0(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x3

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwt;->g:I

    .line 7
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
