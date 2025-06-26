.class public abstract Lqu3;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lmu3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IOnPaidEventListener"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static W6(Landroid/os/IBinder;)Lmu3;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IOnPaidEventListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lmu3;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lmu3;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lou3;

    invoke-direct {v0, p0}, Lou3;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvv;

    .line 2
    move-object p2, p0

    check-cast p2, Lc40;

    invoke-virtual {p2, p1}, Lc40;->x4(Lcom/google/android/gms/internal/ads/zzvv;)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
