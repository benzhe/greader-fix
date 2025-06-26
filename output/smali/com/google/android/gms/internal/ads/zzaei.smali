.class public final Lcom/google/android/gms/internal/ads/zzaei;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzaei;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Z

.field public final g:I

.field public final h:Z

.field public final i:I

.field public final j:Lcom/google/android/gms/internal/ads/zzaaz;

.field public final k:Z

.field public final l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln70;

    invoke-direct {v0}, Ln70;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaei;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/ads/zzaaz;ZI)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->e:I

    .line 12
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaei;->f:Z

    .line 13
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaei;->g:I

    .line 14
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaei;->h:Z

    .line 15
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaei;->i:I

    .line 16
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzaei;->j:Lcom/google/android/gms/internal/ads/zzaaz;

    .line 17
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzaei;->k:Z

    .line 18
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzaei;->l:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getImageOrientation()I

    move-result v3

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldRequestMultipleImages()Z

    move-result v4

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v5

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzjx()Z

    move-result v7

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getMediaAspectRatio()I

    move-result v8

    const/4 v1, 0x4

    move-object v0, p0

    .line 9
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(IZIZILcom/google/android/gms/internal/ads/zzaaz;ZI)V

    return-void
.end method

.method public static n(Lcom/google/android/gms/internal/ads/zzaei;)Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    if-nez p0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->k:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->l:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->j:Lcom/google/android/gms/internal/ads/zzaaz;

    if-eqz v1, :cond_3

    .line 8
    new-instance v2, Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/internal/ads/zzaaz;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 9
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 10
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->f:Z

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    move-result-object v1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzaei;->h:Z

    .line 12
    invoke-virtual {v1, p0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->e:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->f:Z

    .line 6
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->g:I

    .line 9
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->h:Z

    .line 12
    invoke-static {p1, v3, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    .line 14
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->i:I

    .line 15
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 16
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x6

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->j:Lcom/google/android/gms/internal/ads/zzaaz;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, p2, v4}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x7

    .line 18
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->k:Z

    .line 19
    invoke-static {p1, p2, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0x8

    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->l:I

    .line 22
    invoke-static {p1, p2, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    invoke-static {p1, v0}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
