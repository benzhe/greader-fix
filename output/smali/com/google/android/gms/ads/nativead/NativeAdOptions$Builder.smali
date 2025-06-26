.class public final Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:Lcom/google/android/gms/ads/VideoOptions;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->a:Z

    .line 3
    iput v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->b:I

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->c:Z

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->e:I

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->f:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;Llx;)V

    return-object v0
.end method

.method public final setAdChoicesPlacement(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->e:I

    return-object p0
.end method

.method public final setMediaAspectRatio(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->b:I

    return-object p0
.end method

.method public final setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->f:Z

    return-object p0
.end method

.method public final setRequestMultipleImages(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->c:Z

    return-object p0
.end method

.method public final setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->a:Z

    return-object p0
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->d:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method
