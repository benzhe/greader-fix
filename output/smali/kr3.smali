.class public final Lkr3;
.super Lys3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Lys3;"
    }
.end annotation


# instance fields
.field public final e:Lcom/google/android/gms/ads/AdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/AdLoadCallback<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdLoadCallback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/AdLoadCallback<",
            "TAdT;>;TAdT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lys3;-><init>()V

    .line 2
    iput-object p1, p0, Lkr3;->e:Lcom/google/android/gms/ads/AdLoadCallback;

    .line 3
    iput-object p2, p0, Lkr3;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkr3;->e:Lcom/google/android/gms/ads/AdLoadCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvh;->C()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkr3;->e:Lcom/google/android/gms/ads/AdLoadCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkr3;->f:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
