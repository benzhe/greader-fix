.class public final La42;
.super Lyn0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lwb1;

.field public final synthetic f:Lx91;

.field public final synthetic g:Ldb1;

.field public final synthetic h:Lcg1;


# direct methods
.method public constructor <init>(Lwb1;Lx91;Ldb1;Lcg1;)V
    .locals 0

    .line 1
    iput-object p1, p0, La42;->e:Lwb1;

    iput-object p2, p0, La42;->f:Lx91;

    iput-object p3, p0, La42;->g:Ldb1;

    iput-object p4, p0, La42;->h:Lcg1;

    invoke-direct {p0}, Lyn0;-><init>()V

    return-void
.end method


# virtual methods
.method public final I0(Lx20;Lcom/google/android/gms/internal/ads/zzavy;)V
    .locals 1

    .line 1
    iget-object p1, p0, La42;->h:Lcg1;

    .line 2
    new-instance v0, Leg1;

    invoke-direct {v0, p2}, Leg1;-><init>(Lcom/google/android/gms/internal/ads/zzavy;)V

    invoke-virtual {p1, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final J0(Lx20;)V
    .locals 0

    return-void
.end method

.method public final K1(Lx20;)V
    .locals 0

    return-void
.end method

.method public final M5(Lx20;)V
    .locals 0

    .line 1
    iget-object p1, p0, La42;->e:Lwb1;

    invoke-virtual {p1}, Lwb1;->zzvz()V

    return-void
.end method

.method public final S4(Lx20;)V
    .locals 1

    .line 1
    iget-object p1, p0, La42;->f:Lx91;

    .line 2
    sget-object v0, Laa1;->a:Lzd1;

    invoke-virtual {p1, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final T2(Lx20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, La42;->g:Ldb1;

    .line 2
    sget-object v0, Lkb1;->a:Lzd1;

    invoke-virtual {p1, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final U3(Lx20;)V
    .locals 1

    .line 1
    iget-object p1, p0, La42;->e:Lwb1;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {p1, v0}, Lwb1;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    return-void
.end method

.method public final h2(Lx20;I)V
    .locals 0

    return-void
.end method

.method public final i1(Lx20;I)V
    .locals 0

    return-void
.end method

.method public final p2(Lx20;)V
    .locals 1

    .line 1
    iget-object p1, p0, La42;->g:Ldb1;

    .line 2
    sget-object v0, Lgb1;->a:Lzd1;

    invoke-virtual {p1, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final u6(Lx20;)V
    .locals 0

    .line 1
    iget-object p1, p0, La42;->h:Lcg1;

    invoke-virtual {p1}, Lcg1;->x0()V

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
