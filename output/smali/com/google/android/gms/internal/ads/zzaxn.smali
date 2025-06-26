.class public final Lcom/google/android/gms/internal/ads/zzaxn;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzaxn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Z

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Z

.field public final k:Z

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmp0;

    invoke-direct {v0}, Lmp0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxn;->e:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxn;->f:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaxn;->g:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaxn;->h:Z

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaxn;->i:Ljava/util/List;

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzaxn;->j:Z

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzaxn;->k:Z

    if-nez p8, :cond_0

    .line 9
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzaxn;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxn;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxn;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaxn;->g:Z

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, v1}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x5

    .line 7
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaxn;->h:Z

    .line 8
    invoke-static {p1, v0, v1}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxn;->i:Ljava/util/List;

    invoke-static {p1, v0, v3, v2}, Lbi;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x7

    .line 11
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaxn;->j:Z

    .line 12
    invoke-static {p1, v0, v1}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    .line 14
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaxn;->k:Z

    .line 15
    invoke-static {p1, v0, v1}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 16
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x9

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxn;->l:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, Lbi;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 18
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
