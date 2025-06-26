.class public abstract Lhm0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lem0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p1, p4, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 v1, 0x4

    const-string v2, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    if-eq p1, v1, :cond_9

    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Llm0;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Llm0;

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lmm0;

    invoke-direct {v0, p2}, Lmm0;-><init>(Landroid/os/IBinder;)V

    .line 7
    :goto_0
    move-object p2, p0

    check-cast p2, Lmw1;

    .line 8
    invoke-virtual {p2, p1}, Lmw1;->c7(Ljava/lang/String;)Law2;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p1, v0}, Lmw1;->Y6(Law2;Llm0;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 11
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzauj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 14
    instance-of v1, v0, Llm0;

    if-eqz v1, :cond_5

    .line 15
    check-cast v0, Llm0;

    goto :goto_1

    .line 16
    :cond_5
    new-instance v0, Lmm0;

    invoke-direct {v0, p2}, Lmm0;-><init>(Landroid/os/IBinder;)V

    .line 17
    :goto_1
    move-object p2, p0

    check-cast p2, Lmw1;

    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 19
    invoke-virtual {p2, p1, v1}, Lmw1;->a7(Lcom/google/android/gms/internal/ads/zzauj;I)Law2;

    move-result-object p1

    .line 20
    invoke-virtual {p2, p1, v0}, Lmw1;->Y6(Law2;Llm0;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 22
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzauj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_2

    .line 24
    :cond_7
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 25
    instance-of v1, v0, Llm0;

    if-eqz v1, :cond_8

    .line 26
    check-cast v0, Llm0;

    goto :goto_2

    .line 27
    :cond_8
    new-instance v0, Lmm0;

    invoke-direct {v0, p2}, Lmm0;-><init>(Landroid/os/IBinder;)V

    .line 28
    :goto_2
    move-object p2, p0

    check-cast p2, Lmw1;

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 30
    invoke-virtual {p2, p1, v1}, Lmw1;->b7(Lcom/google/android/gms/internal/ads/zzauj;I)Law2;

    move-result-object p1

    .line 31
    invoke-virtual {p2, p1, v0}, Lmw1;->Y6(Law2;Llm0;)V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    .line 33
    :cond_9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzauj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_3

    .line 35
    :cond_a
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    instance-of v1, v0, Llm0;

    if-eqz v1, :cond_b

    .line 37
    check-cast v0, Llm0;

    goto :goto_3

    .line 38
    :cond_b
    new-instance v0, Lmm0;

    invoke-direct {v0, p2}, Lmm0;-><init>(Landroid/os/IBinder;)V

    .line 39
    :goto_3
    move-object p2, p0

    check-cast p2, Lmw1;

    invoke-virtual {p2, p1, v0}, Lmw1;->y3(Lcom/google/android/gms/internal/ads/zzauj;Llm0;)V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    .line 41
    :cond_c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatq;

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    const-string p2, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    .line 43
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 44
    instance-of p2, p1, Ljm0;

    if-eqz p2, :cond_e

    .line 45
    check-cast p1, Ljm0;

    .line 46
    :cond_e
    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    .line 47
    :cond_f
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatq;

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-static {p3, v0}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_5
    return p4
.end method
