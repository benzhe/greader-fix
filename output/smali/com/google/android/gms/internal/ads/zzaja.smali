.class public final Lcom/google/android/gms/internal/ads/zzaja;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzaja;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:[B

.field public final i:[Ljava/lang/String;

.field public final j:[Ljava/lang/String;

.field public final k:Z

.field public final l:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfc0;

    invoke-direct {v0}, Lfc0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaja;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I[B[Ljava/lang/String;[Ljava/lang/String;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaja;->e:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaja;->f:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaja;->g:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaja;->h:[B

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaja;->i:[Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzaja;->j:[Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzaja;->k:Z

    .line 9
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzaja;->l:J

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
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->e:Z

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->g:I

    .line 7
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->h:[B

    invoke-static {p1, v2, v0, v3}, Lbi;->d0(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->i:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lbi;->j0(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v0, 0x6

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->j:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lbi;->j0(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v0, 0x7

    .line 12
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->k:Z

    .line 13
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->l:J

    const/16 v2, 0x8

    .line 16
    invoke-static {p1, v2, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
