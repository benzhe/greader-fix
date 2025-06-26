.class public abstract Lur6$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lur6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lur6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lur6$a$a;
    }
.end annotation


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.noinnion.android.greader.ui.media.IMusicService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.noinnion.android.greader.ui.media.IMusicService"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/ui/media/MusicService$b;

    .line 5
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/media/MusicService$b;->f:Lcom/noinnion/android/greader/ui/media/MusicService;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/media/MusicService;->k:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 8
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/ui/media/MusicService$b;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/media/MusicService$b;->getCurrentPosition()I

    move-result p1

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 12
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/ui/media/MusicService$b;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/media/MusicService$b;->getDuration()I

    move-result p1

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 15
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 16
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/ui/media/MusicService$b;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/media/MusicService$b;->d0()I

    move-result p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 20
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 22
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/ui/media/MusicService$b;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/ui/media/MusicService$b;->C0(I)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
