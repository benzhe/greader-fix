.class public final Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Z

.field public final f:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/formats/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;Lmv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->e:Z

    .line 4
    iget-object p2, p1, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->b:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lh40;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder;->b:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    .line 7
    invoke-direct {p2, p1}, Lh40;-><init>(Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->f:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(ZLandroid/os/IBinder;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->e:Z

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->f:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final getManualImpressionsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->e:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v1

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->f:Landroid/os/IBinder;

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 7
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzjv()Lp90;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->f:Landroid/os/IBinder;

    invoke-static {v0}, Ls90;->W6(Landroid/os/IBinder;)Lp90;

    move-result-object v0

    return-object v0
.end method
