.class public final Lnc1;
.super Lxd1;
.source "SourceFile"

# interfaces
.implements Lsc1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd1<",
        "Lsc1;",
        ">;",
        "Lsc1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lsc1;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lxd1;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final M(Lhl2;)V
    .locals 1

    .line 1
    new-instance v0, Lpc1;

    invoke-direct {v0, p1}, Lpc1;-><init>(Lhl2;)V

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final t(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 1

    .line 1
    new-instance v0, Lqc1;

    invoke-direct {v0, p1}, Lqc1;-><init>(Lcom/google/android/gms/internal/ads/zzauj;)V

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
