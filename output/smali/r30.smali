.class public final Lr30;
.super Lzs3;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lp30;


# direct methods
.method public constructor <init>(Lp30;Lo30;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr30;->e:Lp30;

    invoke-direct {p0}, Lzs3;-><init>()V

    return-void
.end method


# virtual methods
.method public final D6(Lcom/google/android/gms/internal/ads/zzvq;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 1
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lzr0;->b:Landroid/os/Handler;

    new-instance p2, Lq30;

    invoke-direct {p2, p0}, Lq30;-><init>(Lr30;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final M0(Lcom/google/android/gms/internal/ads/zzvq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lr30;->D6(Lcom/google/android/gms/internal/ads/zzvq;I)V

    return-void
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final zzkl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
