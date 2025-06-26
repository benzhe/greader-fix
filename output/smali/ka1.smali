.class public final Lka1;
.super Lxd1;
.source "SourceFile"

# interfaces
.implements Lha1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd1<",
        "Lra1;",
        ">;",
        "Lha1;"
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
            "Lra1;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lxd1;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final B0()V
    .locals 1

    .line 1
    sget-object v0, Lma1;->a:Lzd1;

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final V(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    .line 1
    new-instance v0, Lna1;

    invoke-direct {v0, p1}, Lna1;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final a0(Lvh1;)V
    .locals 0

    return-void
.end method
