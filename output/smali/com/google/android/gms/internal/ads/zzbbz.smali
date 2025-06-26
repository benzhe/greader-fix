.class public abstract Lcom/google/android/gms/internal/ads/zzbbz;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Llu0;


# instance fields
.field public final e:Lzt0;

.field public final f:Lju0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lzt0;

    invoke-direct {v0}, Lzt0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->e:Lzt0;

    .line 3
    new-instance v0, Lju0;

    invoke-direct {v0, p1, p0}, Lju0;-><init>(Landroid/content/Context;Llu0;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->f:Lju0;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getTotalBytes()J
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract h(I)V
.end method

.method public abstract j()V
.end method

.method public abstract k(FF)V
.end method

.method public abstract l(Lrt0;)V
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()J
.end method

.method public abstract o()I
.end method

.method public p(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbz;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public q(I)V
    .locals 0

    return-void
.end method

.method public r(I)V
    .locals 0

    return-void
.end method

.method public s(I)V
    .locals 0

    return-void
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public t(I)V
    .locals 0

    return-void
.end method

.method public u(I)V
    .locals 0

    return-void
.end method

.method public abstract v()J
.end method
