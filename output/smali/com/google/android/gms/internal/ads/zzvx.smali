.class public final Lcom/google/android/gms/internal/ads/zzvx;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzvx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Ljava/lang/String;

.field public f:J

.field public g:Lcom/google/android/gms/internal/ads/zzvh;

.field public h:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lur3;

    invoke-direct {v0}, Lur3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzvh;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->e:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzvx;->f:J

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvx;->g:Lcom/google/android/gms/internal/ads/zzvh;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvx;->h:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvx;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    .line 3
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvx;->f:J

    const/16 v2, 0x8

    .line 4
    invoke-static {p1, v1, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x3

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvx;->g:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-static {p1, v1, v2, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvx;->h:Landroid/os/Bundle;

    invoke-static {p1, p2, v1, v3}, Lbi;->c0(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 8
    invoke-static {p1, v0}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
