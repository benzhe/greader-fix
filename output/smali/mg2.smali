.class public final Lmg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lda1;
.implements Lxb1;
.implements Lhc1;
.implements Lmi2;


# instance fields
.field public final e:Lmm2;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lyn3;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lco3;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ldo3;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lxb1;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/internal/overlay/zzp;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lmu3;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lmg2;


# direct methods
.method public constructor <init>(Lmm2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmg2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmg2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmg2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmg2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmg2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmg2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lmg2;->l:Lmg2;

    .line 9
    iput-object p1, p0, Lmg2;->e:Lmm2;

    return-void
.end method


# virtual methods
.method public final Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lmg2;->l:Lmg2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lmg2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lsg2;

    invoke-direct {v2, p1}, Lsg2;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-static {v1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 3
    iget-object v0, v0, Lmg2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lrg2;

    invoke-direct {v1, p1}, Lrg2;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final a()V
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lmg2;->l:Lmg2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lmg2;->e:Lmm2;

    invoke-virtual {v1}, Lmm2;->a()V

    .line 3
    iget-object v1, v0, Lmg2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    :try_start_0
    check-cast v1, Lco3;

    invoke-interface {v1}, Lco3;->F1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_1
    iget-object v0, v0, Lmg2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    :try_start_1
    check-cast v0, Ldo3;

    invoke-interface {v0}, Ldo3;->T()V
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

.method public final g6()V
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lmg2;->l:Lmg2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lmg2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lug2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lmg2;->l:Lmg2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lmg2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lpg2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final r(Lmi2;)V
    .locals 0

    .line 1
    check-cast p1, Lmg2;

    iput-object p1, p0, Lmg2;->l:Lmg2;

    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzvv;)V
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lmg2;->l:Lmg2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lmg2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Log2;

    invoke-direct {v1, p1}, Log2;-><init>(Lcom/google/android/gms/internal/ads/zzvv;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lmg2;->l:Lmg2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lmg2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lqg2;

    invoke-direct {v1, p1}, Lqg2;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method

.method public final zzvz()V
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lmg2;->l:Lmg2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lmg2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Ltg2;->a:Lei2;

    invoke-static {v1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 3
    iget-object v1, v0, Lmg2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lwg2;->a:Lei2;

    invoke-static {v1, v2}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    .line 4
    iget-object v0, v0, Lmg2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lvg2;->a:Lei2;

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method
