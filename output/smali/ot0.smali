.class public final Lot0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/google/android/gms/internal/ads/zzbbq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbq;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lot0;->g:Lcom/google/android/gms/internal/ads/zzbbq;

    iput p2, p0, Lot0;->e:I

    iput p3, p0, Lot0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lot0;->g:Lcom/google/android/gms/internal/ads/zzbbq;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->t:Lrt0;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lot0;->e:I

    iget v2, p0, Lot0;->f:I

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->k(II)V

    :cond_0
    return-void
.end method
