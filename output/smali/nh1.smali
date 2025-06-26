.class public final Lnh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# instance fields
.field public final e:Lwb1;

.field public final f:Lof1;


# direct methods
.method public constructor <init>(Lwb1;Lof1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnh1;->e:Lwb1;

    .line 3
    iput-object p2, p0, Lnh1;->f:Lof1;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnh1;->e:Lwb1;

    invoke-virtual {v0}, Lwb1;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnh1;->e:Lwb1;

    invoke-virtual {v0}, Lwb1;->onResume()V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnh1;->e:Lwb1;

    invoke-virtual {v0}, Lwb1;->onUserLeaveHint()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnh1;->e:Lwb1;

    invoke-virtual {v0, p1}, Lwb1;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    .line 2
    iget-object p1, p0, Lnh1;->f:Lof1;

    .line 3
    sget-object v0, Lqf1;->a:Lzd1;

    invoke-virtual {p1, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final zzvz()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnh1;->e:Lwb1;

    invoke-virtual {v0}, Lwb1;->zzvz()V

    .line 2
    iget-object v0, p0, Lnh1;->f:Lof1;

    .line 3
    sget-object v1, Lnf1;->a:Lzd1;

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
