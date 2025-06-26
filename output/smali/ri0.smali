.class public abstract Lri0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Loi0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v1

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    move-object p2, p0

    check-cast p2, Li22;

    .line 3
    iget-object p2, p2, Li22;->e:Lmz1;

    iget-object p2, p2, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p2, p1}, Lg12;->U(Lcom/google/android/gms/internal/ads/zzvh;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5
    move-object p2, p0

    check-cast p2, Li22;

    .line 6
    iget-object p2, p2, Li22;->e:Lmz1;

    iget-object p2, p2, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p2, v1, p1}, Lg12;->t2(ILjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const-string p2, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    .line 8
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 9
    instance-of v0, p2, Lbh0;

    if-eqz v0, :cond_4

    .line 10
    move-object p1, p2

    check-cast p1, Lbh0;

    goto :goto_0

    .line 11
    :cond_4
    new-instance p2, Ldh0;

    invoke-direct {p2, p1}, Ldh0;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 12
    :goto_0
    move-object p2, p0

    check-cast p2, Li22;

    .line 13
    iget-object v0, p2, Li22;->f:Lg22;

    .line 14
    iput-object p1, v0, Lg22;->c:Lbh0;

    .line 15
    iget-object p1, p2, Li22;->e:Lmz1;

    iget-object p1, p1, Lmz1;->c:Llb1;

    check-cast p1, Lg12;

    invoke-virtual {p1}, Lg12;->onAdLoaded()V

    .line 16
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
