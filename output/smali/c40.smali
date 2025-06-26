.class public final Lc40;
.super Lqu3;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqu3;-><init>()V

    .line 2
    iput-object p1, p0, Lc40;->e:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-void
.end method


# virtual methods
.method public final x4(Lcom/google/android/gms/internal/ads/zzvv;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc40;->e:Lcom/google/android/gms/ads/OnPaidEventListener;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzvv;->f:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvv;->g:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzvv;->h:J

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdValue;->zza(ILjava/lang/String;J)Lcom/google/android/gms/ads/AdValue;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lc40;->e:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/OnPaidEventListener;->onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V

    :cond_0
    return-void
.end method
