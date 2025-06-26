.class public final Lq42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field public final a:Lx91;

.field public final b:Lqa1;

.field public final c:Lwf1;

.field public final d:Lrf1;

.field public final e:Lq21;

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lx91;Lqa1;Lwf1;Lrf1;Lq21;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lq42;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lq42;->a:Lx91;

    .line 4
    iput-object p2, p0, Lq42;->b:Lqa1;

    .line 5
    iput-object p3, p0, Lq42;->c:Lwf1;

    .line 6
    iput-object p4, p0, Lq42;->d:Lrf1;

    .line 7
    iput-object p5, p0, Lq42;->e:Lq21;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzh(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lq42;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lq42;->e:Lq21;

    invoke-virtual {v0}, Lq21;->onAdImpression()V

    .line 4
    iget-object v0, p0, Lq42;->d:Lrf1;

    invoke-virtual {v0, p1}, Lrf1;->G0(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzkg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq42;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lq42;->a:Lx91;

    .line 3
    sget-object v1, Laa1;->a:Lzd1;

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    :cond_0
    return-void
.end method

.method public final zzkh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq42;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lq42;->b:Lqa1;

    invoke-virtual {v0}, Lqa1;->onAdImpression()V

    .line 3
    iget-object v0, p0, Lq42;->c:Lwf1;

    invoke-virtual {v0}, Lwf1;->G0()V

    :cond_0
    return-void
.end method
