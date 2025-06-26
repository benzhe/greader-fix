.class public final Lcx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# instance fields
.field public e:Lxw0;

.field public f:Lcom/google/android/gms/ads/internal/overlay/zzp;


# direct methods
.method public constructor <init>(Lxw0;Lcom/google/android/gms/ads/internal/overlay/zzp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcx0;->e:Lxw0;

    .line 3
    iput-object p2, p0, Lcx0;->f:Lcom/google/android/gms/ads/internal/overlay/zzp;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcx0;->f:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcx0;->f:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcx0;->e:Lxw0;

    invoke-interface {p1}, Lxw0;->A0()V

    return-void
.end method

.method public final zzvz()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcx0;->f:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzvz()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcx0;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->h0()V

    return-void
.end method
