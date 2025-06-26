.class public final Lej2;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source "SourceFile"

# interfaces
.implements Lca1;
.implements Lda1;
.implements Lra1;
.implements Lob1;
.implements Lhc1;
.implements Lmi2;


# instance fields
.field public final e:Lmm2;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/reward/AdMetadataListener;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lno0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lgo0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lpn0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Loo0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhn0;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lmu3;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lej2;


# direct methods
.method public constructor <init>(Lmm2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lej2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lej2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lej2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lej2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lej2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lej2;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lej2;->m:Lej2;

    .line 10
    iput-object p1, p0, Lej2;->e:Lmm2;

    return-void
.end method


# virtual methods
.method public final O(Lgn0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lej2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lkj2;

    invoke-direct {v2, p1}, Lkj2;-><init>(Lgn0;)V

    invoke-static {v1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 3
    iget-object v1, v0, Lej2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljj2;

    invoke-direct {v2, p1, p2, p3}, Ljj2;-><init>(Lgn0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 4
    iget-object v1, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lmj2;

    invoke-direct {v2, p1}, Lmj2;-><init>(Lgn0;)V

    invoke-static {v1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 5
    iget-object v0, v0, Lej2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Llj2;

    invoke-direct {v1, p1, p2, p3}, Llj2;-><init>(Lgn0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 4

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    .line 3
    iget-object v2, v0, Lej2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lsj2;

    invoke-direct {v3, p1}, Lsj2;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-static {v2, v3}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 4
    iget-object p1, v0, Lej2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Luj2;

    invoke-direct {v2, v1}, Luj2;-><init>(I)V

    invoke-static {p1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 5
    iget-object p1, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ltj2;

    invoke-direct {v0, v1}, Ltj2;-><init>(I)V

    invoke-static {p1, v0}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lej2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lnj2;

    invoke-direct {v2, p1}, Lnj2;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-static {v1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 3
    iget-object v0, v0, Lej2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lqj2;

    invoke-direct {v1, p1}, Lqj2;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final onAdClosed()V
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lej2;->e:Lmm2;

    invoke-virtual {v1}, Lmm2;->a()V

    .line 3
    iget-object v1, v0, Lej2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    :try_start_0
    check-cast v1, Lgo0;

    invoke-interface {v1}, Lgo0;->P0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_1
    iget-object v0, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    :try_start_1
    check-cast v0, Lpn0;

    invoke-interface {v0}, Lpn0;->onRewardedVideoAdClosed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 10
    invoke-static {v2, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lij2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lej2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lgj2;->a:Lei2;

    invoke-static {v1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 3
    iget-object v0, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lfj2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final onAdMetadataChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lej2;->m:Lej2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lej2;->onAdMetadataChanged()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lej2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lpj2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lej2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lwj2;->a:Lei2;

    invoke-static {v1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 3
    iget-object v1, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lvj2;->a:Lei2;

    invoke-static {v1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 4
    iget-object v0, v0, Lej2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lxj2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Loj2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lej2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lhj2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final r(Lmi2;)V
    .locals 0

    .line 1
    check-cast p1, Lej2;

    iput-object p1, p0, Lej2;->m:Lej2;

    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzvv;)V
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lej2;->m:Lej2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lej2;->l:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lrj2;

    invoke-direct {v1, p1}, Lrj2;-><init>(Lcom/google/android/gms/internal/ads/zzvv;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method
