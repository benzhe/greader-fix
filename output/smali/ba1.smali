.class public final Lba1;
.super Lxd1;
.source "SourceFile"

# interfaces
.implements Lda1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd1<",
        "Lda1;",
        ">;",
        "Lda1;"
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
            "Lda1;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lxd1;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    .line 1
    new-instance v0, Lfa1;

    invoke-direct {v0, p1}, Lfa1;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
