.class public final Lga1;
.super Lxd1;
.source "SourceFile"

# interfaces
.implements Lha1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd1<",
        "Lha1;",
        ">;",
        "Lha1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lka1;Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lka1;",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lha1;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lxd1;-><init>(Ljava/util/Set;)V

    .line 2
    invoke-virtual {p0, p1, p3}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final B0()V
    .locals 1

    .line 1
    sget-object v0, Lla1;->a:Lzd1;

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final V(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    .line 1
    new-instance v0, Lja1;

    invoke-direct {v0, p1}, Lja1;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method

.method public final a0(Lvh1;)V
    .locals 1

    .line 1
    new-instance v0, Lia1;

    invoke-direct {v0, p1}, Lia1;-><init>(Lvh1;)V

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
