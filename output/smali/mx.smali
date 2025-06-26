.class public final synthetic Lmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk70;


# instance fields
.field public final a:Lcom/google/android/gms/ads/nativead/NativeAdView;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/MediaContent;)V
    .locals 2

    iget-object v0, p0, Lmx;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    instance-of v1, p1, Ln30;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/ads/nativead/NativeAdView;->f:Lx70;

    check-cast p1, Ln30;

    .line 4
    iget-object p1, p1, Ln30;->a:Lt70;

    .line 5
    invoke-interface {v0, p1}, Lx70;->x6(Lt70;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    iget-object p1, v0, Lcom/google/android/gms/ads/nativead/NativeAdView;->f:Lx70;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lx70;->x6(Lt70;)V

    goto :goto_0

    :cond_1
    const-string p1, "Use MediaContent provided by NativeAd.getMediaContent"

    .line 7
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Unable to call setMediaContent on delegate"

    .line 8
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
