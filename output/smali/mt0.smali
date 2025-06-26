.class public final Lmt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/google/android/gms/internal/ads/zzbbq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmt0;->g:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p2, p0, Lmt0;->e:Ljava/lang/String;

    iput-object p3, p0, Lmt0;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmt0;->g:Lcom/google/android/gms/internal/ads/zzbbq;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->t:Lrt0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lmt0;->e:Ljava/lang/String;

    iget-object v2, p0, Lmt0;->f:Ljava/lang/String;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
