.class public final Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field public c:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->a:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;-><init>(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;Lov;)V

    return-object v0
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->b:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object p0
.end method

.method public final setManualImpressionsEnabled(Z)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->a:Z

    return-object p0
.end method

.method public final setShouldDelayBannerRenderingListener(Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->c:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    return-object p0
.end method
