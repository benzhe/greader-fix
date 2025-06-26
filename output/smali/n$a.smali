.class public abstract Ln$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Ln;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln$a$a;
    }
.end annotation


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.customtabs.ICustomTabsService"

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.support.customtabs.ICustomTabsService"

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lm$a;->Z(Landroid/os/IBinder;)Lm;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 5
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object p4, v0

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 9
    :cond_1
    move-object p2, p0

    check-cast p2, Landroidx/browser/customtabs/CustomTabsService$a;

    .line 10
    iget-object v3, p2, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v4, Lx3;

    .line 11
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsService$a;->Z(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v4, p1, p2}, Lx3;-><init>(Lm;Landroid/app/PendingIntent;)V

    .line 12
    invoke-virtual {v3, v4, p4, v2, v0}, Landroidx/browser/customtabs/CustomTabsService;->e(Lx3;Landroid/net/Uri;ILandroid/os/Bundle;)Z

    move-result p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 15
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lm$a;->Z(Landroid/os/IBinder;)Lm;

    move-result-object p1

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 18
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    goto :goto_1

    :cond_2
    move-object p4, v0

    .line 19
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 21
    :cond_3
    move-object p2, p0

    check-cast p2, Landroidx/browser/customtabs/CustomTabsService$a;

    .line 22
    iget-object v2, p2, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v3, Lx3;

    .line 23
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsService$a;->Z(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Lx3;-><init>(Lm;Landroid/app/PendingIntent;)V

    .line 24
    invoke-virtual {v2, v3, p4}, Landroidx/browser/customtabs/CustomTabsService;->f(Lx3;Landroid/net/Uri;)Z

    move-result p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 27
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lm$a;->Z(Landroid/os/IBinder;)Lm;

    move-result-object p1

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 30
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 31
    :cond_4
    move-object p2, p0

    check-cast p2, Landroidx/browser/customtabs/CustomTabsService$a;

    invoke-virtual {p2, p1, v0}, Landroidx/browser/customtabs/CustomTabsService$a;->l0(Lm;Landroid/os/Bundle;)Z

    move-result p1

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 34
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lm$a;->Z(Landroid/os/IBinder;)Lm;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 38
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    goto :goto_2

    :cond_5
    move-object v2, v0

    .line 39
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 40
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 41
    :cond_6
    move-object p2, p0

    check-cast p2, Landroidx/browser/customtabs/CustomTabsService$a;

    .line 42
    iget-object v3, p2, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v4, Lx3;

    .line 43
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsService$a;->Z(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v4, p1, p2}, Lx3;-><init>(Lm;Landroid/app/PendingIntent;)V

    .line 44
    invoke-virtual {v3, v4, p4, v2, v0}, Landroidx/browser/customtabs/CustomTabsService;->h(Lx3;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p1

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 47
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lm$a;->Z(Landroid/os/IBinder;)Lm;

    move-result-object p1

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 51
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 52
    :cond_7
    move-object p2, p0

    check-cast p2, Landroidx/browser/customtabs/CustomTabsService$a;

    .line 53
    iget-object v2, p2, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v3, Lx3;

    .line 54
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsService$a;->Z(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Lx3;-><init>(Lm;Landroid/app/PendingIntent;)V

    .line 55
    invoke-virtual {v2, v3, p4, v0}, Landroidx/browser/customtabs/CustomTabsService;->d(Lx3;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 58
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lm$a;->Z(Landroid/os/IBinder;)Lm;

    move-result-object p1

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8

    .line 61
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    goto :goto_3

    :cond_8
    move-object p2, v0

    .line 62
    :goto_3
    move-object p4, p0

    check-cast p4, Landroidx/browser/customtabs/CustomTabsService$a;

    .line 63
    iget-object p4, p4, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v2, Lx3;

    invoke-direct {v2, p1, v0}, Lx3;-><init>(Lm;Landroid/app/PendingIntent;)V

    invoke-virtual {p4, v2, p2}, Landroidx/browser/customtabs/CustomTabsService;->f(Lx3;Landroid/net/Uri;)Z

    move-result p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 66
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lm$a;->Z(Landroid/os/IBinder;)Lm;

    move-result-object p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    .line 69
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 70
    :cond_9
    move-object p2, p0

    check-cast p2, Landroidx/browser/customtabs/CustomTabsService$a;

    .line 71
    iget-object p4, p2, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v2, Lx3;

    .line 72
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsService$a;->Z(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lx3;-><init>(Lm;Landroid/app/PendingIntent;)V

    .line 73
    invoke-virtual {p4, v2, v0}, Landroidx/browser/customtabs/CustomTabsService;->g(Lx3;Landroid/os/Bundle;)Z

    move-result p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 76
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    .line 79
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 80
    :cond_a
    move-object p2, p0

    check-cast p2, Landroidx/browser/customtabs/CustomTabsService$a;

    .line 81
    iget-object p2, p2, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p2, p1, v0}, Landroidx/browser/customtabs/CustomTabsService;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 86
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lm$a;->Z(Landroid/os/IBinder;)Lm;

    move-result-object p1

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_c

    .line 89
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    goto :goto_5

    :cond_c
    move-object p4, v0

    .line 90
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 91
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 92
    :cond_d
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 93
    move-object v2, p0

    check-cast v2, Landroidx/browser/customtabs/CustomTabsService$a;

    .line 94
    iget-object v3, v2, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v4, Lx3;

    .line 95
    invoke-virtual {v2, v0}, Landroidx/browser/customtabs/CustomTabsService$a;->Z(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v4, p1, v2}, Lx3;-><init>(Lm;Landroid/app/PendingIntent;)V

    .line 96
    invoke-virtual {v3, v4, p4, v0, p2}, Landroidx/browser/customtabs/CustomTabsService;->b(Lx3;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 99
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lm$a;->Z(Landroid/os/IBinder;)Lm;

    move-result-object p1

    .line 101
    move-object p2, p0

    check-cast p2, Landroidx/browser/customtabs/CustomTabsService$a;

    invoke-virtual {p2, p1}, Landroidx/browser/customtabs/CustomTabsService$a;->s4(Lm;)Z

    move-result p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 104
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 106
    move-object p4, p0

    check-cast p4, Landroidx/browser/customtabs/CustomTabsService$a;

    invoke-virtual {p4, p1, p2}, Landroidx/browser/customtabs/CustomTabsService$a;->f3(J)Z

    move-result p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 109
    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
