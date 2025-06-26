.class public final Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Z

.field public final f:Lpt3;

.field public g:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field public final h:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/formats/zze;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;Lov;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->e:Z

    .line 4
    iget-object p2, p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->b:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->g:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Lsr3;

    iget-object v1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->g:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {p2, v1}, Lsr3;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->f:Lpt3;

    .line 7
    iget-object p2, p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->c:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    if-eqz p2, :cond_1

    .line 8
    new-instance v0, Lh40;

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions$Builder;->c:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    .line 10
    invoke-direct {v0, p1}, Lh40;-><init>(Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;)V

    .line 11
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->h:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(ZLandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->e:Z

    if-eqz p2, :cond_1

    .line 14
    sget p1, Lot3;->e:I

    const-string p1, "com.google.android.gms.ads.internal.client.IAppEventListener"

    .line 15
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 16
    instance-of v0, p1, Lpt3;

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Lpt3;

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lst3;

    invoke-direct {p1, p2}, Lst3;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->f:Lpt3;

    .line 20
    iput-object p3, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->h:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->g:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final getManualImpressionsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->e:Z

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
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v1

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->f:Lpt3;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->h:Landroid/os/IBinder;

    .line 8
    invoke-static {p1, v0, v1, v2}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 9
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzjv()Lp90;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->h:Landroid/os/IBinder;

    invoke-static {v0}, Ls90;->W6(Landroid/os/IBinder;)Lp90;

    move-result-object v0

    return-object v0
.end method

.method public final zzjz()Lpt3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->f:Lpt3;

    return-object v0
.end method
