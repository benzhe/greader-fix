.class public final Lcom/google/android/gms/ads/internal/util/zzaq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/internal/util/zzaq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final errorCode:I

.field public final zzacu:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzas;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzas;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zzacu:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->errorCode:I

    return-void
.end method

.method public static zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/util/zzaq;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->l4(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget v2, Lat2;->a:I

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzvh;->f:Ljava/lang/String;

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_2
    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzaq;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/util/zzaq;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->zzacu:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    .line 3
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzaq;->errorCode:I

    const/4 v2, 0x4

    .line 4
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
