.class public abstract Lli0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lii0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string p2, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd"

    .line 2
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 3
    instance-of v0, p2, Log0;

    if-eqz v0, :cond_2

    .line 4
    move-object p1, p2

    check-cast p1, Log0;

    goto :goto_0

    .line 5
    :cond_2
    new-instance p2, Lqg0;

    invoke-direct {p2, p1}, Lqg0;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 6
    :goto_0
    move-object p2, p0

    check-cast p2, Lt02;

    .line 7
    iget-object v0, p2, Lt02;->f:Lp02;

    .line 8
    iput-object p1, v0, Lp02;->d:Log0;

    .line 9
    iget-object p1, p2, Lt02;->e:Lmz1;

    iget-object p1, p1, Lmz1;->c:Llb1;

    check-cast p1, Lg12;

    invoke-virtual {p1}, Lg12;->onAdLoaded()V

    goto :goto_1

    .line 10
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvh;

    .line 11
    move-object p2, p0

    check-cast p2, Lt02;

    invoke-virtual {p2, p1}, Lt02;->l(Lcom/google/android/gms/internal/ads/zzvh;)V

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 13
    move-object p2, p0

    check-cast p2, Lt02;

    invoke-virtual {p2, p1}, Lt02;->j(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 15
    move-object p2, p0

    check-cast p2, Lt02;

    .line 16
    iget-object v0, p2, Lt02;->f:Lp02;

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 17
    iput-object p1, v0, Lp02;->c:Landroid/view/View;

    .line 18
    iget-object p1, p2, Lt02;->e:Lmz1;

    iget-object p1, p1, Lmz1;->c:Llb1;

    check-cast p1, Lg12;

    invoke-virtual {p1}, Lg12;->onAdLoaded()V

    .line 19
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
