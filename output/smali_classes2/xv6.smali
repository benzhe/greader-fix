.class public final Lxv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field public final synthetic a:Lpl7;


# direct methods
.method public constructor <init>(Lpl7;)V
    .locals 0

    iput-object p1, p0, Lxv6;->a:Lpl7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lxv6;->a:Lpl7;

    invoke-interface {v0, p1}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
