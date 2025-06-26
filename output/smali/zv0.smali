.class public abstract Lzv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsy;


# instance fields
.field public e:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Liu0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liu0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Liu0;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzv0;->e:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    iget-object v1, p0, Lzv0;->e:Landroid/content/Context;

    invoke-interface {p1}, Liu0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzv0;->f:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lzv0;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static j(Lzv0;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzv0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liu0;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lzr0;->b:Landroid/os/Handler;

    new-instance v1, Ldw0;

    invoke-direct {v1, p0, p1, p2, p3}, Ldw0;-><init>(Lzv0;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lzr0;->b:Landroid/os/Handler;

    new-instance v7, Lfw0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lfw0;-><init>(Lzv0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m(I)V
    .locals 0

    return-void
.end method

.method public n(I)V
    .locals 0

    return-void
.end method

.method public o(I)V
    .locals 0

    return-void
.end method

.method public p(I)V
    .locals 0

    return-void
.end method

.method public q(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzv0;->r(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract r(Ljava/lang/String;)Z
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public s(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lzr0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
