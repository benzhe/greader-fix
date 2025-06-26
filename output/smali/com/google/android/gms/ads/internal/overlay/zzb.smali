.class public final Lcom/google/android/gms/ads/internal/overlay/zzb;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/internal/overlay/zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;

.field public final mimeType:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final zzdjj:Lcom/google/android/gms/ads/internal/overlay/zzv;

.field public final zzdsv:Ljava/lang/String;

.field public final zzdsw:Ljava/lang/String;

.field public final zzdsy:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/overlay/zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;)V
    .locals 11

    .line 1
    new-instance v9, Ly20;

    invoke-direct {v9, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v8, p1

    .line 2
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzv;Z)V
    .locals 11

    .line 3
    new-instance v9, Ly20;

    invoke-direct {v9, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 4
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->e:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->url:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->mimeType:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->packageName:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->zzdsv:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->zzdsw:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->f:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->intent:Landroid/content/Intent;

    .line 16
    invoke-static {p9}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/zzv;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->zzdjj:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 17
    iput-boolean p10, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->zzdsy:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzv;)V
    .locals 11

    .line 5
    new-instance v9, Ly20;

    move-object/from16 v0, p8

    invoke-direct {v9, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 6
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->url:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->mimeType:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    .line 5
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    .line 6
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->zzdsv:Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    .line 7
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->zzdsw:Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    .line 8
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->f:Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    .line 9
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->intent:Landroid/content/Intent;

    invoke-static {p1, v1, v4, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xa

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->zzdjj:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 11
    new-instance v4, Ly20;

    invoke-direct {v4, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-static {p1, p2, v4, v3}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0xb

    .line 13
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzb;->zzdsy:Z

    .line 14
    invoke-static {p1, p2, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-static {p1, v0}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
