.class public final Lwv6;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/AdView;

.field public final synthetic b:Lpl7;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdView;Lcom/google/android/gms/ads/AdSize;Lpl7;)V
    .locals 0

    iput-object p1, p0, Lwv6;->a:Lcom/google/android/gms/ads/AdView;

    iput-object p3, p0, Lwv6;->b:Lpl7;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    const-string v0, "loadAdError"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=> loadBanner::onAdFailedToLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljy6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwv6;->b:Lpl7;

    iget-object v1, p0, Lwv6;->a:Lcom/google/android/gms/ads/AdView;

    invoke-interface {v0, v1}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
