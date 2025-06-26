.class public final Li22;
.super Lri0;
.source "SourceFile"


# instance fields
.field public e:Lmz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmz1<",
            "Lvi0;",
            "Lg12;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lg22;


# direct methods
.method public constructor <init>(Lg22;Lmz1;Lj22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li22;->f:Lg22;

    invoke-direct {p0}, Lri0;-><init>()V

    .line 2
    iput-object p2, p0, Li22;->e:Lmz1;

    return-void
.end method


# virtual methods
.method public final T5(Lbh0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li22;->f:Lg22;

    .line 2
    iput-object p1, v0, Lg22;->c:Lbh0;

    .line 3
    iget-object p1, p0, Li22;->e:Lmz1;

    iget-object p1, p1, Lmz1;->c:Llb1;

    check-cast p1, Lg12;

    invoke-virtual {p1}, Lg12;->onAdLoaded()V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li22;->e:Lmz1;

    iget-object v0, v0, Lmz1;->c:Llb1;

    check-cast v0, Lg12;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lg12;->t2(ILjava/lang/String;)V

    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li22;->e:Lmz1;

    iget-object v0, v0, Lmz1;->c:Llb1;

    check-cast v0, Lg12;

    invoke-virtual {v0, p1}, Lg12;->U(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
