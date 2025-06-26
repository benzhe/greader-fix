.class public final Llt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzbbq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llt0;->e:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Llt0;->e:Lcom/google/android/gms/internal/ads/zzbbq;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->t:Lrt0;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcb;

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->h:Lku0;

    invoke-virtual {v1}, Lku0;->b()V

    .line 5
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v2, Lwt0;

    invoke-direct {v2, v0}, Lwt0;-><init>(Lcom/google/android/gms/internal/ads/zzbcb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
