.class public final Lcom/google/android/gms/internal/ads/zzauj;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Landroid/os/Bundle;

.field public final f:Lcom/google/android/gms/internal/ads/zzbar;

.field public final g:Landroid/content/pm/ApplicationInfo;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Landroid/content/pm/PackageInfo;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public m:Lcom/google/android/gms/internal/ads/zzdrc;

.field public n:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpm0;

    invoke-direct {v0}, Lpm0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzauj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzbar;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrc;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzdrc;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauj;->e:Landroid/os/Bundle;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzauj;->f:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzauj;->h:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzauj;->g:Landroid/content/pm/ApplicationInfo;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzauj;->i:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzauj;->j:Landroid/content/pm/PackageInfo;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzauj;->k:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzauj;->l:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzauj;->m:Lcom/google/android/gms/internal/ads/zzdrc;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzauj;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauj;->e:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lbi;->c0(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauj;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {p1, v1, v2, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauj;->g:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v1, v2, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauj;->h:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauj;->i:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lbi;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauj;->j:Landroid/content/pm/PackageInfo;

    invoke-static {p1, v1, v2, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauj;->k:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauj;->l:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauj;->m:Lcom/google/android/gms/internal/ads/zzdrc;

    invoke-static {p1, v1, v2, p2, v3}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xb

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauj;->n:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    invoke-static {p1, v0}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
