.class public abstract Lol0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lkl0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static W6(Landroid/os/IBinder;)Lkl0;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkl0;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lkl0;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lnl0;

    invoke-direct {v0, p0}, Lnl0;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lkl0;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Lkl0;->w3(Ljava/util/List;)V

    .line 5
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
