.class public final Ljt0;
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
    iput-object p1, p0, Ljt0;->e:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljt0;->e:Lcom/google/android/gms/internal/ads/zzbbq;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->t:Lrt0;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcb;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ended"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbcb;->h(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcb;->f()V

    :cond_0
    return-void
.end method
