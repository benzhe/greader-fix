.class public final synthetic Lwu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lcom/google/android/gms/internal/ads/zzbcv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbcv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwu0;->e:Lcom/google/android/gms/internal/ads/zzbcv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwu0;->e:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcv;->k:Lrt0;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcb;->c()V

    :cond_0
    return-void
.end method
