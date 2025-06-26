.class public abstract Lop6$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lop6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lop6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lop6$a$a;
    }
.end annotation


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.noinnion.android.greader.service.ITtsService"

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

    const-string v2, "com.noinnion.android.greader.service.ITtsService"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/TtsService$f;->remove(I)V

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 6
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9
    move-object p4, p0

    check-cast p4, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p4, p1, p2}, Lcom/noinnion/android/greader/service/TtsService$f;->m(II)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 11
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    .line 13
    iget-object p1, p1, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 14
    iget-wide p1, p1, Lcom/noinnion/android/greader/service/TtsService;->l:J

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 17
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService$f;->i3()Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 21
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService$f;->p3()Z

    move-result p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 25
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService$f;->X1()Z

    move-result p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 29
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 31
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/TtsService$f;->V4(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 33
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService$f;->stop()V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 36
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService$f;->J2()V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 39
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService$f;->f2()V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 42
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService$f;->K3()V

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 45
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService$f;->F2()V

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 48
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 50
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/TtsService$f;->N1(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 52
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    .line 54
    iget-object p1, p1, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService;->h()V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 56
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 58
    move-object p2, p0

    check-cast p2, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/service/TtsService$f;->E2(I)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 60
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    move-object p1, p0

    check-cast p1, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService$f;->Z3()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 63
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
