.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ADCHOICES_BOTTOM_LEFT:I = 0x3

.field public static final ADCHOICES_BOTTOM_RIGHT:I = 0x2

.field public static final ADCHOICES_TOP_LEFT:I = 0x0

.field public static final ADCHOICES_TOP_RIGHT:I = 0x1

.field public static final NATIVE_MEDIA_ASPECT_RATIO_ANY:I = 0x1

.field public static final NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE:I = 0x2

.field public static final NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT:I = 0x3

.field public static final NATIVE_MEDIA_ASPECT_RATIO_SQUARE:I = 0x4

.field public static final NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN:I = 0x0

.field public static final ORIENTATION_ANY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_LANDSCAPE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_PORTRAIT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Lcom/google/android/gms/ads/VideoOptions;

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lnv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->a:Z

    .line 4
    iget p2, p1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->b:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->b:I

    .line 6
    iget p2, p1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->c:I

    .line 7
    iput p2, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->c:I

    .line 8
    iget-boolean p2, p1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->d:Z

    .line 9
    iput-boolean p2, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->d:Z

    .line 10
    iget p2, p1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->f:I

    .line 11
    iput p2, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->e:I

    .line 12
    iget-object p2, p1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->e:Lcom/google/android/gms/ads/VideoOptions;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->f:Lcom/google/android/gms/ads/VideoOptions;

    .line 14
    iget-boolean p1, p1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->g:Z

    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->g:Z

    return-void
.end method


# virtual methods
.method public final getAdChoicesPlacement()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->e:I

    return v0
.end method

.method public final getImageOrientation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->b:I

    return v0
.end method

.method public final getMediaAspectRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->c:I

    return v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->f:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final shouldRequestMultipleImages()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->d:Z

    return v0
.end method

.method public final shouldReturnUrlsForImageAssets()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->a:Z

    return v0
.end method

.method public final zzjx()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->g:Z

    return v0
.end method
