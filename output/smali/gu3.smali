.class public final Lgu3;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lfu3;


# instance fields
.field public final e:Lcom/google/android/gms/ads/MuteThisAdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/MuteThisAdListener;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IMuteThisAdListener"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lgu3;->e:Lcom/google/android/gms/ads/MuteThisAdListener;

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lgu3;->e:Lcom/google/android/gms/ads/MuteThisAdListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/MuteThisAdListener;->onAdMuted()V

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public final onAdMuted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgu3;->e:Lcom/google/android/gms/ads/MuteThisAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/MuteThisAdListener;->onAdMuted()V

    return-void
.end method
