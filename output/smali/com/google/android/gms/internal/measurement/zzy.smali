.class public final Lcom/google/android/gms/internal/measurement/zzy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/measurement/zzy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:J

.field public final f:J

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Landroid/os/Bundle;

.field public final l:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhg4;

    invoke-direct {v0}, Lhg4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzy;->e:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/measurement/zzy;->f:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/zzy;->g:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zzy;->h:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zzy;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/measurement/zzy;->j:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    iput-object p10, p0, Lcom/google/android/gms/internal/measurement/zzy;->l:Ljava/lang/String;

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
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzy;->e:J

    const/16 v3, 0x8

    .line 3
    invoke-static {p1, v0, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x2

    .line 5
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzy;->f:J

    .line 6
    invoke-static {p1, v0, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x3

    .line 8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzy;->g:Z

    const/4 v2, 0x4

    .line 9
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzy;->h:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v2, v0, v1}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzy;->i:Ljava/lang/String;

    .line 13
    invoke-static {p1, v0, v2, v1}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzy;->j:Ljava/lang/String;

    .line 14
    invoke-static {p1, v0, v2, v1}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    .line 15
    invoke-static {p1, v0, v2, v1}, Lbi;->c0(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzy;->l:Ljava/lang/String;

    .line 16
    invoke-static {p1, v3, v0, v1}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
