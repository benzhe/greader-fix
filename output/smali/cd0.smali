.class public abstract Lcd0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lzc0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.instream.client.IInstreamAd"

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

    const/4 p4, 0x3

    const/4 v0, 0x0

    const-string v1, "#008 Must be called on the main UI thread."

    if-eq p1, p4, :cond_6

    const/4 p4, 0x4

    if-eq p1, p4, :cond_5

    const/4 p4, 0x5

    if-eq p1, p4, :cond_2

    const/4 p4, 0x6

    if-eq p1, p4, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    move-object p1, p0

    check-cast p1, Lun1;

    invoke-virtual {p1}, Lun1;->a0()Lt70;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 5
    move-object p2, p0

    check-cast p2, Lun1;

    .line 6
    invoke-static {v1}, Lbi;->f(Ljava/lang/String;)V

    .line 7
    new-instance p4, Lwn1;

    invoke-direct {p4}, Lwn1;-><init>()V

    .line 8
    invoke-virtual {p2, p1, p4}, Lun1;->W6(Lx20;Ldd0;)V

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p4, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback"

    .line 12
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 13
    instance-of v0, p4, Ldd0;

    if-eqz v0, :cond_4

    .line 14
    move-object v0, p4

    check-cast v0, Ldd0;

    goto :goto_0

    .line 15
    :cond_4
    new-instance v0, Lfd0;

    invoke-direct {v0, p2}, Lfd0;-><init>(Landroid/os/IBinder;)V

    .line 16
    :goto_0
    move-object p2, p0

    check-cast p2, Lun1;

    invoke-virtual {p2, p1, v0}, Lun1;->W6(Lx20;Ldd0;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 18
    :cond_5
    move-object p1, p0

    check-cast p1, Lun1;

    invoke-virtual {p1}, Lun1;->destroy()V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 20
    :cond_6
    move-object p1, p0

    check-cast p1, Lun1;

    .line 21
    invoke-static {v1}, Lbi;->f(Ljava/lang/String;)V

    .line 22
    iget-boolean p2, p1, Lun1;->h:Z

    if-eqz p2, :cond_7

    const-string p1, "getVideoController: Instream ad should not be used after destroyed"

    .line 23
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_7
    iget-object v0, p1, Lun1;->f:Lsu3;

    .line 25
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-static {p3, v0}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
