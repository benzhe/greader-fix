.class public final Le72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La72;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La72<",
        "Lf61;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lnl2;

.field public final b:Lsy0;

.field public final c:Landroid/content/Context;

.field public final d:Ly62;

.field public e:Lq61;


# direct methods
.method public constructor <init>(Lsy0;Landroid/content/Context;Ly62;Lnl2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le72;->b:Lsy0;

    .line 3
    iput-object p2, p0, Le72;->c:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Le72;->d:Ly62;

    .line 5
    iput-object p4, p0, Le72;->a:Lnl2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lz62;Lc72;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Lz62;",
            "Lc72<",
            "-",
            "Lf61;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Le72;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    if-nez v0, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 2
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le72;->b:Lsy0;

    invoke-virtual {p1}, Lsy0;->e()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Ld72;

    invoke-direct {p2, p0}, Ld72;-><init>(Le72;)V

    .line 4
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 5
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le72;->b:Lsy0;

    invoke-virtual {p1}, Lsy0;->e()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lg72;

    invoke-direct {p2, p0}, Lg72;-><init>(Le72;)V

    .line 7
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    .line 8
    :cond_1
    iget-object p2, p0, Le72;->c:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    invoke-static {p2, v0}, Lc50;->Q3(Landroid/content/Context;Z)V

    const/4 p2, 0x1

    .line 9
    check-cast p3, Lb72;

    iget p3, p3, Lb72;->a:I

    .line 10
    iget-object v0, p0, Le72;->a:Lnl2;

    .line 11
    iput-object p1, v0, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 12
    iput p3, v0, Lnl2;->n:I

    .line 13
    invoke-virtual {v0}, Lnl2;->a()Lll2;

    move-result-object p1

    .line 14
    iget-object p3, p0, Le72;->b:Lsy0;

    invoke-virtual {p3}, Lsy0;->s()Lrz0;

    move-result-object p3

    new-instance v0, Ln91$a;

    invoke-direct {v0}, Ln91$a;-><init>()V

    iget-object v1, p0, Le72;->c:Landroid/content/Context;

    .line 15
    iput-object v1, v0, Ln91$a;->a:Landroid/content/Context;

    .line 16
    iput-object p1, v0, Ln91$a;->b:Lll2;

    .line 17
    invoke-virtual {v0}, Ln91$a;->a()Ln91;

    move-result-object p1

    .line 18
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iput-object p1, p3, Lrz0;->b:Ln91;

    .line 20
    new-instance p1, Lyd1$a;

    invoke-direct {p1}, Lyd1$a;-><init>()V

    .line 21
    invoke-virtual {p1}, Lyd1$a;->h()Lyd1;

    move-result-object p1

    .line 22
    iput-object p1, p3, Lrz0;->a:Lyd1;

    .line 23
    iget-object p1, p0, Le72;->d:Ly62;

    .line 24
    new-instance v0, Lgi1;

    iget-object v1, p1, Ly62;->a:Ldk1;

    iget-object p1, p1, Ly62;->b:Lw52;

    .line 25
    invoke-virtual {p1}, Lw52;->r()Lus3;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lgi1;-><init>(Ldk1;Lus3;)V

    .line 26
    iput-object v0, p3, Lrz0;->c:Lgi1;

    .line 27
    new-instance p1, Li41;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Li41;-><init>(Landroid/view/ViewGroup;)V

    .line 28
    iput-object p1, p3, Lrz0;->d:Li41;

    .line 29
    invoke-virtual {p3}, Lrz0;->e()Lji1;

    move-result-object p1

    .line 30
    iget-object p3, p0, Le72;->b:Lsy0;

    invoke-virtual {p3}, Lsy0;->y()Lyl2;

    move-result-object p3

    invoke-virtual {p3, p2}, Lyl2;->a(I)V

    .line 31
    new-instance p3, Lq61;

    iget-object v0, p0, Le72;->b:Lsy0;

    .line 32
    invoke-virtual {v0}, Lsy0;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Le72;->b:Lsy0;

    invoke-virtual {v1}, Lsy0;->f()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {p1}, Lji1;->c()Lh71;

    move-result-object v2

    invoke-virtual {v2}, Lh71;->b()Law2;

    move-result-object v2

    invoke-direct {p3, v0, v1, v2}, Lq61;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Law2;)V

    iput-object p3, p0, Le72;->e:Lq61;

    .line 33
    new-instance v1, Lf72;

    invoke-direct {v1, p0, p4, p1}, Lf72;-><init>(Le72;Lc72;Lji1;)V

    .line 34
    new-instance p1, Lt61;

    invoke-direct {p1, p3, v1}, Lt61;-><init>(Lq61;Lrv2;)V

    .line 35
    new-instance p3, Lsv2;

    invoke-direct {p3, v2, p1}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    check-cast v2, Llo2;

    .line 36
    iget-object p1, v2, Llo2;->g:Law2;

    invoke-interface {p1, p3, v0}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return p2
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le72;->e:Lq61;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lq61;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
