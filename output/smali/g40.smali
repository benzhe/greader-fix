.class public final Lg40;
.super Lwu3;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwu3;-><init>()V

    .line 2
    iput-object p1, p0, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public final X()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoEnd()V

    return-void
.end method

.method public final onVideoPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPause()V

    return-void
.end method

.method public final onVideoPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPlay()V

    return-void
.end method

.method public final onVideoStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoStart()V

    return-void
.end method

.method public final u0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg40;->e:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoMute(Z)V

    return-void
.end method
