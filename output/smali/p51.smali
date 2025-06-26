.class public final Lp51;
.super Lj41;
.source "SourceFile"


# instance fields
.field public final h:Lp90;

.field public final i:Ljava/lang/Runnable;

.field public final j:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Li61;Lp90;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj41;-><init>(Li61;)V

    .line 2
    iput-object p2, p0, Lp51;->h:Lp90;

    .line 3
    iput-object p3, p0, Lp51;->i:Ljava/lang/Runnable;

    .line 4
    iput-object p4, p0, Lp51;->j:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lp51;->i:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v1, Ls51;

    invoke-direct {v1, v0}, Ls51;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3
    iget-object v0, p0, Lp51;->j:Ljava/util/concurrent/Executor;

    new-instance v2, Lr51;

    invoke-direct {v2, p0, v1}, Lr51;-><init>(Lp51;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Lsu3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 0

    return-void
.end method

.method public final e()Luk2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Luk2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 0

    return-void
.end method
