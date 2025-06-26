.class public final Lgc1;
.super Lxd1;
.source "SourceFile"

# interfaces
.implements Lva1;
.implements Lxb1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd1<",
        "Lhc1;",
        ">;",
        "Lva1;",
        "Lxb1;"
    }
.end annotation


# instance fields
.field public final f:Lsk2;

.field public g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lsk2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lhc1;",
            ">;>;",
            "Lsk2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lxd1;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lgc1;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p2, p0, Lgc1;->f:Lsk2;

    return-void
.end method


# virtual methods
.method public final G0()V
    .locals 3

    .line 1
    sget-object v0, Ly40;->x4:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgc1;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgc1;->f:Lsk2;

    iget-object v0, v0, Lsk2;->Z:Lcom/google/android/gms/internal/ads/zzvv;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvv;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6
    new-instance v0, Lec1;

    invoke-direct {v0, p0}, Lec1;-><init>(Lgc1;)V

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    :cond_0
    return-void
.end method

.method public final g6()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgc1;->f:Lsk2;

    iget v0, v0, Lsk2;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lgc1;->G0()V

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgc1;->f:Lsk2;

    iget v0, v0, Lsk2;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lgc1;->G0()V

    :cond_1
    return-void
.end method
