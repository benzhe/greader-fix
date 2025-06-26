.class public final Lcom/google/android/gms/internal/ads/zzajy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzajy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lad0;

    invoke-direct {v0}, Lad0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajy;->e:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajy;->f:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajy;->g:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzajy;->h:I

    return-void
.end method

.method public constructor <init>(Lid0;)V
    .locals 2

    .line 6
    iget-object v0, p1, Lid0;->b:Ljava/lang/String;

    .line 7
    iget p1, p1, Lid0;->a:I

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v1, 0x2

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->e:I

    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->f:I

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->g:Ljava/lang/String;

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajy;->h:I

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
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->f:I

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->g:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->h:I

    .line 7
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x3e8

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->e:I

    .line 10
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
