.class public final Lcom/google/android/gms/internal/ads/zzvh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzvh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Lcom/google/android/gms/internal/ads/zzvh;

.field public i:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lir3;

    invoke-direct {v0}, Lir3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvh;->f:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvh;->h:Lcom/google/android/gms/internal/ads/zzvh;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvh;->i:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final C()Lcom/google/android/gms/ads/LoadAdError;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->h:Lcom/google/android/gms/internal/ads/zzvh;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/ads/AdError;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvh;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v9, v2

    .line 2
    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/LoadAdError;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzvh;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->i:Landroid/os/IBinder;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.google.android.gms.ads.internal.client.IResponseInfo"

    .line 3
    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 4
    instance-of v3, v1, Lru3;

    if-eqz v3, :cond_2

    .line 5
    check-cast v1, Lru3;

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Ltu3;

    invoke-direct {v1, v2}, Ltu3;-><init>(Landroid/os/IBinder;)V

    .line 7
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lru3;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v10

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/ads/LoadAdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;Lcom/google/android/gms/ads/ResponseInfo;)V

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/ads/AdError;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->h:Lcom/google/android/gms/internal/ads/zzvh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/AdError;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzvh;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 2
    :goto_0
    new-instance v1, Lcom/google/android/gms/ads/AdError;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvh;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;)V

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->h:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-static {p1, v3, v1, p2, v4}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->i:Landroid/os/IBinder;

    invoke-static {p1, p2, v1, v4}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 9
    invoke-static {p1, v0}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
