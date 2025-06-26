.class public final Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio;
    }
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

.field public static final NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN:I


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:Lcom/google/android/gms/ads/VideoOptions;

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;Llx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->a:Z

    .line 4
    iget p2, p1, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->b:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->b:I

    .line 6
    iget-boolean p2, p1, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->c:Z

    .line 7
    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->c:Z

    .line 8
    iget p2, p1, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->e:I

    .line 9
    iput p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->d:I

    .line 10
    iget-object p2, p1, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->d:Lcom/google/android/gms/ads/VideoOptions;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->e:Lcom/google/android/gms/ads/VideoOptions;

    .line 12
    iget-boolean p1, p1, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->f:Z

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->f:Z

    return-void
.end method


# virtual methods
.method public final getAdChoicesPlacement()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->d:I

    return v0
.end method

.method public final getMediaAspectRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->b:I

    return v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->e:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final shouldRequestMultipleImages()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->c:Z

    return v0
.end method

.method public final shouldReturnUrlsForImageAssets()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->a:Z

    return v0
.end method

.method public final zzjx()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->f:Z

    return v0
.end method
