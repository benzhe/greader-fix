.class public final Lcom/google/android/gms/ads/internal/util/zzbq;
.super Lcom/google/android/gms/ads/internal/util/zza;
.source "SourceFile"


# instance fields
.field public final b:Lls0;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zza;-><init>()V

    .line 3
    new-instance p2, Lls0;

    invoke-direct {p2, p1}, Lls0;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->b:Lls0;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzwp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->b:Lls0;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lls0;->a(Ljava/lang/String;)V

    return-void
.end method
