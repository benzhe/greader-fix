.class public final Loh0;
.super Lmg0;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/ads/mediation/Adapter;

.field public final f:Lvn0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/Adapter;Lvn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmg0;-><init>()V

    .line 2
    iput-object p1, p0, Loh0;->e:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    iput-object p2, p0, Loh0;->f:Lvn0;

    return-void
.end method


# virtual methods
.method public final E5()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loh0;->f:Lvn0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Loh0;->e:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v2}, Lvn0;->u6(Lx20;)V

    :cond_0
    return-void
.end method

.method public final Q4()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loh0;->f:Lvn0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Loh0;->e:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v2}, Lvn0;->T2(Lx20;)V

    :cond_0
    return-void
.end method

.method public final S(Lbo0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loh0;->f:Lvn0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Loh0;->e:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavy;

    .line 5
    invoke-interface {p1}, Lbo0;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lbo0;->getAmount()I

    move-result p1

    invoke-direct {v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzavy;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-interface {v0, v2, v1}, Lvn0;->I0(Lx20;Lcom/google/android/gms/internal/ads/zzavy;)V

    :cond_0
    return-void
.end method

.method public final U(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final X()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final Y(Lq80;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final Y3(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    return-void
.end method

.method public final d5(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final i2(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onAdClicked()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loh0;->f:Lvn0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Loh0;->e:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v2}, Lvn0;->S4(Lx20;)V

    :cond_0
    return-void
.end method

.method public final onAdClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loh0;->f:Lvn0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Loh0;->e:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v2}, Lvn0;->U3(Lx20;)V

    :cond_0
    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loh0;->f:Lvn0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Loh0;->e:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v2, p1}, Lvn0;->h2(Lx20;I)V

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onAdLoaded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loh0;->f:Lvn0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Loh0;->e:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v2}, Lvn0;->K1(Lx20;)V

    :cond_0
    return-void
.end method

.method public final onAdOpened()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loh0;->f:Lvn0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Loh0;->e:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v2}, Lvn0;->M5(Lx20;)V

    :cond_0
    return-void
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onVideoPause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onVideoPlay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final t2(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final v1(Lcom/google/android/gms/internal/ads/zzavy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final y0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final z2(Lsg0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
