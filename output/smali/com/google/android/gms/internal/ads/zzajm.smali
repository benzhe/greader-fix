.class public final Lcom/google/android/gms/internal/ads/zzajm;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzajm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:I

.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqc0;

    invoke-direct {v0}, Lqc0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajm;->e:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzajm;->f:Z

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzajm;->g:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzajm;->h:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajm;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    .line 3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzajm;->f:Z

    const/4 v3, 0x4

    .line 4
    invoke-static {p1, v0, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzajm;->g:I

    .line 7
    invoke-static {p1, v0, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajm;->h:Ljava/lang/String;

    invoke-static {p1, v3, v0, v2}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
