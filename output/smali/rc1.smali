.class public final Lrc1;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lca1;
.implements Lra1;
.implements Lva1;
.implements Lxb1;
.implements Lhc1;
.implements Ler3;


# instance fields
.field public final e:Lvc1;

.field public f:Lw52;

.field public g:Lq62;

.field public h:Lmg2;

.field public i:Lej2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    .line 2
    new-instance v0, Lvc1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvc1;-><init>(Lrc1;Lwc1;)V

    iput-object v0, p0, Lrc1;->e:Lvc1;

    return-void
.end method

.method public static t(Ljava/lang/Object;Lyc1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lyc1<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    check-cast p0, Lej2;

    invoke-virtual {p0}, Lej2;->onAdMetadataChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final O(Lgn0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->f:Lw52;

    .line 2
    iget-object v0, p0, Lrc1;->i:Lej2;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lej2;->O(Lgn0;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->i:Lej2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lej2;->d(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lrc1;->f:Lw52;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lw52;->d(Lcom/google/android/gms/internal/ads/zzvh;)V

    :cond_1
    return-void
.end method

.method public final g6()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->h:Lmg2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmg2;->g6()V

    :cond_0
    return-void
.end method

.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->f:Lw52;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lw52;->onAdClicked()V

    .line 3
    :cond_0
    iget-object v0, p0, Lrc1;->g:Lq62;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lq62;->onAdClicked()V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->f:Lw52;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lw52;->onAdClosed()V

    .line 3
    :cond_0
    iget-object v0, p0, Lrc1;->i:Lej2;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lej2;->onAdClosed()V

    :cond_1
    return-void
.end method

.method public final onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc1;->f:Lw52;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lw52;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, La62;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    :cond_0
    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc1;->f:Lw52;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lw52;->onAdLeftApplication()V

    .line 3
    :cond_0
    iget-object v0, p0, Lrc1;->i:Lej2;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lij2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    :cond_2
    return-void
.end method

.method public final onAdMetadataChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc1;->i:Lej2;

    sget-object v1, Ltc1;->a:Lyc1;

    invoke-static {v0, v1}, Lrc1;->t(Ljava/lang/Object;Lyc1;)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->f:Lw52;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lw52;->onAdOpened()V

    .line 3
    :cond_0
    iget-object v0, p0, Lrc1;->i:Lej2;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lej2;->onAdOpened()V

    :cond_1
    return-void
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->f:Lw52;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lw52;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->h:Lmg2;

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->h:Lmg2;

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc1;->f:Lw52;

    .line 2
    iget-object v0, p0, Lrc1;->i:Lej2;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Loj2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    :cond_1
    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc1;->f:Lw52;

    .line 2
    iget-object v0, p0, Lrc1;->i:Lej2;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lhj2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    :cond_1
    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->h:Lmg2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmg2;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzvv;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc1;->f:Lw52;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lw52;->s(Lcom/google/android/gms/internal/ads/zzvv;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lrc1;->i:Lej2;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lej2;->l:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lrj2;

    invoke-direct {v1, p1}, Lrj2;-><init>(Lcom/google/android/gms/internal/ads/zzvv;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lrc1;->h:Lmg2;

    if-eqz v0, :cond_4

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_1
    iget-object v1, v0, Lmg2;->l:Lmg2;

    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, v0, Lmg2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Log2;

    invoke-direct {v1, p1}, Log2;-><init>(Lcom/google/android/gms/internal/ads/zzvv;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    :cond_4
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->h:Lmg2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lmg2;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    :cond_0
    return-void
.end method

.method public final zzvz()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc1;->h:Lmg2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmg2;->zzvz()V

    :cond_0
    return-void
.end method
