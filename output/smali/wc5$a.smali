.class public abstract Lwc5$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lwc5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwc5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.youtube.player.internal.IPlayerStateChangeListener"

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.google.android.youtube.player.internal.IPlayerStateChangeListener"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcd5;

    .line 1
    sget-object p4, Loc5$a;->r:Loc5$a;

    :try_start_0
    invoke-static {p1}, Loc5$a;->valueOf(Ljava/lang/String;)Loc5$a;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p2, Lcd5;->e:Loc5$c;

    invoke-interface {p1, p4}, Loc5$c;->f(Loc5$a;)V

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lcd5;

    .line 3
    iget-object p1, p1, Lcd5;->e:Loc5$c;

    invoke-interface {p1}, Loc5$c;->d()V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lcd5;

    .line 5
    iget-object p1, p1, Lcd5;->e:Loc5$c;

    invoke-interface {p1}, Loc5$c;->c()V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lcd5;

    .line 7
    iget-object p1, p1, Lcd5;->e:Loc5$c;

    invoke-interface {p1}, Loc5$c;->a()V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcd5;

    .line 9
    iget-object p2, p2, Lcd5;->e:Loc5$c;

    invoke-interface {p2, p1}, Loc5$c;->b(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lcd5;

    .line 11
    iget-object p1, p1, Lcd5;->e:Loc5$c;

    invoke-interface {p1}, Loc5$c;->e()V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
