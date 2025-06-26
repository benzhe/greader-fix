.class public final Lcom/google/android/gms/internal/ads/zzatj;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzatj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Landroid/view/View;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lvl0;

    invoke-direct {v0}, Lvl0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzatj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatj;->e:Landroid/view/View;

    .line 3
    invoke-static {p2}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatj;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatj;->e:Landroid/view/View;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v2, v1}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x2

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatj;->f:Ljava/util/Map;

    .line 6
    new-instance v3, Ly20;

    invoke-direct {v3, v2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1, v0, v3, v1}, Lbi;->f0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 8
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
