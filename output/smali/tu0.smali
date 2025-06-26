.class public final synthetic Ltu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lcom/google/android/gms/internal/ads/zzbcv;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbcv;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltu0;->e:Lcom/google/android/gms/internal/ads/zzbcv;

    iput p2, p0, Ltu0;->f:I

    iput p3, p0, Ltu0;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ltu0;->e:Lcom/google/android/gms/internal/ads/zzbcv;

    iget v1, p0, Ltu0;->f:I

    iget v2, p0, Ltu0;->g:I

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcv;->k:Lrt0;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->k(II)V

    :cond_0
    return-void
.end method
