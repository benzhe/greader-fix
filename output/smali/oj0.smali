.class public final Loj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field public final synthetic f:Lcom/google/android/gms/internal/ads/zzaqt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqt;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loj0;->f:Lcom/google/android/gms/internal/ads/zzaqt;

    iput-object p2, p0, Loj0;->e:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v0, p0, Loj0;->f:Lcom/google/android/gms/internal/ads/zzaqt;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaqt;->a:Landroid/app/Activity;

    .line 3
    iget-object v1, p0, Loj0;->e:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
