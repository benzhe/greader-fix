.class public abstract Lr50;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Ls50;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
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

    if-eq p1, p4, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    move-object p1, p0

    check-cast p1, Lq50;

    .line 2
    iget-object p1, p1, Lq50;->e:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/zzg;->zzkh()V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 4
    :cond_1
    move-object p1, p0

    check-cast p1, Lq50;

    .line 5
    iget-object p1, p1, Lq50;->e:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/zzg;->zzkg()V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 8
    move-object p2, p0

    check-cast p2, Lq50;

    if-nez p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object p2, p2, Lq50;->e:Lcom/google/android/gms/ads/internal/zzg;

    .line 10
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 11
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/internal/zzg;->zzh(Landroid/view/View;)V

    .line 12
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 13
    :cond_4
    move-object p1, p0

    check-cast p1, Lq50;

    .line 14
    iget-object p1, p1, Lq50;->g:Ljava/lang/String;

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_5
    move-object p1, p0

    check-cast p1, Lq50;

    .line 18
    iget-object p1, p1, Lq50;->f:Ljava/lang/String;

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    return p4
.end method
