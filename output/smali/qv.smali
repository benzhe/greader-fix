.class public final synthetic Lqv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll70;


# instance fields
.field public final a:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqv;->a:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    iget-object v0, p0, Lqv;->a:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->f:Lx70;

    .line 3
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v1}, Lx70;->j2(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Unable to call setMediaViewImageScaleType on delegate"

    .line 5
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
