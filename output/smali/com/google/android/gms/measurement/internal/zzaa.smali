.class public final Lcom/google/android/gms/measurement/internal/zzaa;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/google/android/gms/measurement/internal/zzkr;

.field public h:J

.field public i:Z

.field public j:Ljava/lang/String;

.field public final k:Lcom/google/android/gms/measurement/internal/zzas;

.field public l:J

.field public m:Lcom/google/android/gms/measurement/internal/zzas;

.field public final n:J

.field public final o:Lcom/google/android/gms/measurement/internal/zzas;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzr4;

    invoke-direct {v0}, Lzr4;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 5
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->h:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->h:J

    .line 6
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->j:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->k:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->k:Lcom/google/android/gms/measurement/internal/zzas;

    .line 9
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->l:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->l:J

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->m:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->m:Lcom/google/android/gms/measurement/internal/zzas;

    .line 11
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->n:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->n:J

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->o:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->o:Lcom/google/android/gms/measurement/internal/zzas;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkr;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->h:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzaa;->j:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzaa;->k:Lcom/google/android/gms/measurement/internal/zzas;

    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/zzaa;->l:J

    iput-object p11, p0, Lcom/google/android/gms/measurement/internal/zzaa;->m:Lcom/google/android/gms/measurement/internal/zzas;

    iput-wide p12, p0, Lcom/google/android/gms/measurement/internal/zzaa;->n:J

    iput-object p14, p0, Lcom/google/android/gms/measurement/internal/zzaa;->o:Lcom/google/android/gms/measurement/internal/zzas;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    .line 4
    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->h:J

    const/16 v6, 0x8

    .line 6
    invoke-static {p1, v1, v6}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x6

    .line 8
    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    .line 9
    invoke-static {p1, v1, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->j:Ljava/lang/String;

    .line 12
    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->k:Lcom/google/android/gms/measurement/internal/zzas;

    .line 13
    invoke-static {p1, v6, v1, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->l:J

    .line 14
    invoke-static {p1, v1, v6}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 15
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v1, 0xa

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->m:Lcom/google/android/gms/measurement/internal/zzas;

    .line 17
    invoke-static {p1, v1, v2, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->n:J

    .line 18
    invoke-static {p1, v1, v6}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 19
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v1, 0xc

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->o:Lcom/google/android/gms/measurement/internal/zzas;

    .line 21
    invoke-static {p1, v1, v2, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    invoke-static {p1, v0}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
