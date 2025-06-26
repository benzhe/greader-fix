.class public final synthetic Lou0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lcom/google/android/gms/internal/ads/zzbcv;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbcv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lou0;->e:Lcom/google/android/gms/internal/ads/zzbcv;

    iput-object p2, p0, Lou0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lou0;->e:Lcom/google/android/gms/internal/ads/zzbcv;

    iget-object v1, p0, Lou0;->f:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcv;->k:Lrt0;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcb;

    const-string v2, "ExoPlayerAdapter error"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbcb;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
