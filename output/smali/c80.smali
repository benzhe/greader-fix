.class public final Lc80;
.super Lqd3;
.source "SourceFile"

# interfaces
.implements Ld80;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator"

    .line 1
    invoke-direct {p0, p1, v0}, Lqd3;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final l3(Lx20;Lx20;Lx20;I)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lqd3;->l0()Landroid/os/Parcel;

    move-result-object p4

    .line 2
    invoke-static {p4, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {p4, p2}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-static {p4, p3}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xc365f90

    .line 5
    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, p4}, Lqd3;->Z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
