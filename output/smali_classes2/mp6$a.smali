.class public abstract Lmp6$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lmp6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmp6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmp6$a$a;
    }
.end annotation


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.noinnion.android.greader.service.IDownloadService"

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.noinnion.android.greader.service.IDownloadService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->m3()I

    move-result p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 6
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->R2(I)J

    move-result-wide p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 11
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->D3(I)F

    move-result p1

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 15
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    .line 16
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 18
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->W5(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 21
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 23
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->A1(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 26
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 28
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->L2(I)I

    move-result p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 31
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 33
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->S5(I)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 36
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 38
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->t3(I)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 41
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 43
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->A2(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 46
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 48
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->x5(I)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 51
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 53
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->v0(I)I

    move-result p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 56
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->j6()Ljava/util/List;

    move-result-object p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 60
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->D0()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 63
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 65
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->A4(I)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 67
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 69
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->X3(I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 71
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    .line 74
    iget-object p2, p2, Lcom/noinnion/android/greader/service/DownloadService$a;->f:Lcom/noinnion/android/greader/service/DownloadService;

    .line 75
    iget-object p2, p2, Lcom/noinnion/android/greader/service/DownloadService;->e:Landroid/util/SparseArray;

    .line 76
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw6;

    .line 77
    iput v1, p1, Ldw6;->i:I

    .line 78
    invoke-virtual {p1}, Ldw6;->d()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 80
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 82
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->L0(I)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 84
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 86
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/DownloadService$a;->remove(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 88
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 92
    move-object v0, p0

    check-cast v0, Lcom/noinnion/android/greader/service/DownloadService$a;

    invoke-virtual {v0, p1, p4, p2}, Lcom/noinnion/android/greader/service/DownloadService$a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 94
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
