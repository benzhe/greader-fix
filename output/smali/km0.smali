.class public abstract Lkm0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Llm0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/util/zzaq;

    .line 2
    move-object p2, p0

    check-cast p2, Llv1;

    .line 3
    iget-object p2, p2, Llv1;->e:Lmv1;

    iget-object p2, p2, Lmv1;->a:Lxs0;

    .line 4
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzap;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/util/zzaq;->zzacu:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/ads/internal/util/zzaq;->errorCode:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/ads/internal/util/zzap;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p2, v0}, Lxs0;->b(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 7
    move-object p2, p0

    check-cast p2, Llv1;

    .line 8
    iget-object p2, p2, Llv1;->e:Lmv1;

    iget-object p2, p2, Lmv1;->a:Lxs0;

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p2, v0}, Lxs0;->a(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
