.class public abstract Lqq;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.apps.dashclock.api.internal.IExtension"

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.google.android.apps.dashclock.api.internal.IExtension"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    move-object p2, p0

    check-cast p2, Lcom/google/android/apps/dashclock/api/DashClockExtension$a;

    .line 6
    iget-object p3, p2, Lcom/google/android/apps/dashclock/api/DashClockExtension$a;->e:Lcom/google/android/apps/dashclock/api/DashClockExtension;

    .line 7
    iget-boolean p4, p3, Lcom/google/android/apps/dashclock/api/DashClockExtension;->e:Z

    if-nez p4, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p3, p3, Lcom/google/android/apps/dashclock/api/DashClockExtension;->i:Landroid/os/Handler;

    .line 9
    new-instance p4, Lpq;

    invoke-direct {p4, p2, p1}, Lpq;-><init>(Lcom/google/android/apps/dashclock/api/DashClockExtension$a;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return v1

    .line 10
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string p3, "com.google.android.apps.dashclock.api.internal.IExtensionHost"

    .line 12
    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 13
    instance-of p4, p3, Lsq;

    if-eqz p4, :cond_5

    .line 14
    move-object p1, p3

    check-cast p1, Lsq;

    goto :goto_1

    .line 15
    :cond_5
    new-instance p3, Lrq;

    invoke-direct {p3, p1}, Lrq;-><init>(Landroid/os/IBinder;)V

    move-object p1, p3

    .line 16
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    .line 17
    :goto_2
    move-object p4, p0

    check-cast p4, Lcom/google/android/apps/dashclock/api/DashClockExtension$a;

    .line 18
    iget-object v0, p4, Lcom/google/android/apps/dashclock/api/DashClockExtension$a;->e:Lcom/google/android/apps/dashclock/api/DashClockExtension;

    .line 19
    iget-boolean v2, v0, Lcom/google/android/apps/dashclock/api/DashClockExtension;->f:Z

    if-nez v2, :cond_9

    .line 20
    invoke-virtual {v0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 22
    array-length v3, v2

    if-lez v3, :cond_7

    .line 23
    :try_start_0
    aget-object v2, v2, p3

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 24
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_7

    array-length v2, v0

    if-ne v2, v1, :cond_7

    .line 25
    sget-object v2, Lcom/google/android/apps/dashclock/api/DashClockExtension;->k:Landroid/content/pm/Signature;

    .line 26
    aget-object v0, v0, p3

    invoke-virtual {v2, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    const/4 p3, 0x1

    goto :goto_3

    :catch_0
    nop

    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    goto :goto_4

    :cond_8
    const-string p1, "Caller is not official DashClock app and this extension is not world-readable."

    const-string p2, "DashClockExtension"

    .line 27
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 29
    :cond_9
    :goto_4
    iget-object p3, p4, Lcom/google/android/apps/dashclock/api/DashClockExtension$a;->e:Lcom/google/android/apps/dashclock/api/DashClockExtension;

    .line 30
    iput-object p1, p3, Lcom/google/android/apps/dashclock/api/DashClockExtension;->g:Lsq;

    .line 31
    iget-boolean p1, p3, Lcom/google/android/apps/dashclock/api/DashClockExtension;->e:Z

    if-nez p1, :cond_a

    .line 32
    invoke-virtual {p3, p2}, Lcom/google/android/apps/dashclock/api/DashClockExtension;->a(Z)V

    .line 33
    iget-object p1, p4, Lcom/google/android/apps/dashclock/api/DashClockExtension$a;->e:Lcom/google/android/apps/dashclock/api/DashClockExtension;

    .line 34
    iput-boolean v1, p1, Lcom/google/android/apps/dashclock/api/DashClockExtension;->e:Z

    :cond_a
    return v1
.end method
