.class public abstract Lsi0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lti0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback"

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

    const/4 p4, 0x2

    if-eq p1, p4, :cond_2

    const/4 p4, 0x3

    const/4 v0, 0x0

    if-eq p1, p4, :cond_1

    const/4 p4, 0x4

    if-eq p1, p4, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    move-object p2, p0

    check-cast p2, Li32;

    .line 3
    iget-object p2, p2, Li32;->e:Lmz1;

    iget-object p2, p2, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p2, p1}, Lg12;->U(Lcom/google/android/gms/internal/ads/zzvh;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5
    move-object p2, p0

    check-cast p2, Li32;

    .line 6
    iget-object p2, p2, Li32;->e:Lmz1;

    iget-object p2, p2, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p2, v0, p1}, Lg12;->t2(ILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    move-object p1, p0

    check-cast p1, Li32;

    .line 8
    iget-object p1, p1, Li32;->e:Lmz1;

    iget-object p1, p1, Lmz1;->c:Llb1;

    check-cast p1, Lg12;

    invoke-virtual {p1}, Lg12;->onAdLoaded()V

    .line 9
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method
