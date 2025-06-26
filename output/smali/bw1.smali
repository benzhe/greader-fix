.class public final Lbw1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lzv2;

.field public final b:Lpv1;

.field public final c:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Lmw1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzv2;Lpv1;Lxa3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzv2;",
            "Lpv1;",
            "Lxa3<",
            "Lmw1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbw1;->a:Lzv2;

    .line 3
    iput-object p2, p0, Lbw1;->b:Lpv1;

    .line 4
    iput-object p3, p0, Lbw1;->c:Lxa3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;Liw1;Liw1;Lcv2;)Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RetT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            "Liw1<",
            "Ljava/io/InputStream;",
            ">;",
            "Liw1<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcv2<",
            "Ljava/io/InputStream;",
            "TRetT;>;)",
            "Law2<",
            "TRetT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzauj;->h:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p2, Lyv1;

    sget-object v0, Ldm2;->e:Ldm2;

    invoke-direct {p2, v0}, Lyv1;-><init>(Ldm2;)V

    .line 4
    new-instance v0, Lvv2$a;

    invoke-direct {v0, p2}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2, p1}, Liw1;->a(Lcom/google/android/gms/internal/ads/zzauj;)Law2;

    move-result-object p2

    const-class v0, Ljava/util/concurrent/ExecutionException;

    sget-object v1, Law1;->a:Lcv2;

    iget-object v2, p0, Lbw1;->a:Lzv2;

    .line 6
    invoke-static {p2, v0, v1, v2}, Lvt2;->n(Law2;Ljava/lang/Class;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    .line 7
    :goto_0
    invoke-static {v0}, Lnv2;->A(Law2;)Lnv2;

    move-result-object p2

    iget-object v0, p0, Lbw1;->a:Lzv2;

    .line 8
    invoke-virtual {p2, p4, v0}, Lnv2;->z(Lcv2;Ljava/util/concurrent/Executor;)Lnv2;

    move-result-object p2

    const-class v0, Lyv1;

    new-instance v1, Ldw1;

    invoke-direct {v1, p0, p3, p1, p4}, Ldw1;-><init>(Lbw1;Liw1;Lcom/google/android/gms/internal/ads/zzauj;Lcv2;)V

    iget-object p1, p0, Lbw1;->a:Lzv2;

    .line 9
    new-instance p3, Lru2;

    invoke-direct {p3, p2, v0, v1}, Lru2;-><init>(Law2;Ljava/lang/Class;Lcv2;)V

    .line 10
    invoke-static {p1, p3}, Lvt2;->g(Ljava/util/concurrent/Executor;Lsu2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p3
.end method
