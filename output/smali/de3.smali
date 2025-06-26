.class public final Lde3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Loe3;

.field public final b:Lzj3;

.field public final c:Lak3;

.field public final d:Landroid/os/Handler;

.field public final e:Lee3;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lae3;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lte3;

.field public final h:Lue3;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Lse3;

.field public p:Ljava/lang/Object;

.field public q:Lnj3;

.field public r:Lak3;

.field public s:Lpe3;

.field public t:Lge3;

.field public u:I

.field public v:J


# direct methods
.method public constructor <init>([Loe3;Lzj3;Ldv0;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lel3;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc50;->D(Z)V

    .line 4
    iput-object p1, p0, Lde3;->a:[Loe3;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lde3;->b:Lzj3;

    .line 7
    iput-boolean v1, p0, Lde3;->j:Z

    .line 8
    iput v2, p0, Lde3;->k:I

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v0, Lak3;

    array-length v2, p1

    new-array v2, v2, [Lyj3;

    invoke-direct {v0, v2}, Lak3;-><init>([Lyj3;)V

    iput-object v0, p0, Lde3;->c:Lak3;

    .line 11
    sget-object v2, Lse3;->a:Lse3;

    iput-object v2, p0, Lde3;->o:Lse3;

    .line 12
    new-instance v2, Lte3;

    invoke-direct {v2}, Lte3;-><init>()V

    iput-object v2, p0, Lde3;->g:Lte3;

    .line 13
    new-instance v2, Lue3;

    invoke-direct {v2}, Lue3;-><init>()V

    iput-object v2, p0, Lde3;->h:Lue3;

    .line 14
    sget-object v2, Lnj3;->d:Lnj3;

    iput-object v2, p0, Lde3;->q:Lnj3;

    .line 15
    iput-object v0, p0, Lde3;->r:Lak3;

    .line 16
    sget-object v0, Lpe3;->d:Lpe3;

    iput-object v0, p0, Lde3;->s:Lpe3;

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 18
    :goto_1
    new-instance v7, Lfe3;

    invoke-direct {v7, p0, v0}, Lfe3;-><init>(Lde3;Landroid/os/Looper;)V

    iput-object v7, p0, Lde3;->d:Landroid/os/Handler;

    .line 19
    new-instance v8, Lge3;

    const-wide/16 v2, 0x0

    invoke-direct {v8, v1, v2, v3}, Lge3;-><init>(IJ)V

    iput-object v8, p0, Lde3;->t:Lge3;

    .line 20
    new-instance v0, Lee3;

    iget-boolean v6, p0, Lde3;->j:Z

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lee3;-><init>([Loe3;Lzj3;Ldv0;ZLandroid/os/Handler;Lge3;Lde3;)V

    iput-object v0, p0, Lde3;->e:Lee3;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    iget-object v0, p0, Lde3;->o:Lse3;

    invoke-virtual {v0}, Lse3;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lde3;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lde3;->o:Lse3;

    iget-object v1, p0, Lde3;->t:Lge3;

    iget v1, v1, Lge3;->a:I

    iget-object v2, p0, Lde3;->h:Lue3;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lse3;->e(ILue3;Z)Lue3;

    .line 4
    iget-object v0, p0, Lde3;->h:Lue3;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 6
    invoke-static {v0, v1}, Lzd3;->a(J)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lde3;->t:Lge3;

    iget-wide v2, v2, Lge3;->d:J

    invoke-static {v2, v3}, Lzd3;->a(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    .line 8
    :cond_1
    :goto_0
    iget-wide v0, p0, Lde3;->v:J

    return-wide v0
.end method

.method public final b()J
    .locals 3

    .line 1
    iget-object v0, p0, Lde3;->o:Lse3;

    invoke-virtual {v0}, Lse3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lde3;->o:Lse3;

    invoke-virtual {p0}, Lde3;->f()I

    move-result v1

    iget-object v2, p0, Lde3;->g:Lte3;

    .line 3
    invoke-virtual {v0, v1, v2}, Lse3;->c(ILte3;)Lte3;

    move-result-object v0

    .line 4
    iget-wide v0, v0, Lte3;->a:J

    invoke-static {v0, v1}, Lzd3;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final varargs c([Lbe3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lde3;->e:Lee3;

    .line 2
    iget-boolean v1, v0, Lee3;->v:Z

    if-eqz v1, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    iget v1, v0, Lee3;->B:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lee3;->B:I

    .line 5
    iget-object v0, v0, Lee3;->j:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public final varargs d([Lbe3;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lde3;->e:Lee3;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Lee3;->v:Z

    if-eqz v1, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 4
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_1
    iget v1, v0, Lee3;->B:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lee3;->B:I

    .line 7
    iget-object v2, v0, Lee3;->j:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 8
    :goto_0
    iget p1, v0, Lee3;->C:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v1, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final e()J
    .locals 4

    .line 1
    iget-object v0, p0, Lde3;->o:Lse3;

    invoke-virtual {v0}, Lse3;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lde3;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lde3;->o:Lse3;

    iget-object v1, p0, Lde3;->t:Lge3;

    iget v1, v1, Lge3;->a:I

    iget-object v2, p0, Lde3;->h:Lue3;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lse3;->e(ILue3;Z)Lue3;

    .line 4
    iget-object v0, p0, Lde3;->h:Lue3;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 6
    invoke-static {v0, v1}, Lzd3;->a(J)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lde3;->t:Lge3;

    iget-wide v2, v2, Lge3;->c:J

    invoke-static {v2, v3}, Lzd3;->a(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    .line 8
    :cond_1
    :goto_0
    iget-wide v0, p0, Lde3;->v:J

    return-wide v0
.end method

.method public final f()I
    .locals 4

    .line 1
    iget-object v0, p0, Lde3;->o:Lse3;

    invoke-virtual {v0}, Lse3;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lde3;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lde3;->o:Lse3;

    iget-object v1, p0, Lde3;->t:Lge3;

    iget v1, v1, Lge3;->a:I

    iget-object v2, p0, Lde3;->h:Lue3;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lse3;->e(ILue3;Z)Lue3;

    return v3

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Lde3;->u:I

    return v0
.end method

.method public final g(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lde3;->j:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lde3;->j:Z

    .line 3
    iget-object v0, p0, Lde3;->e:Lee3;

    .line 4
    iget-object v0, v0, Lee3;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    iget-object v0, p0, Lde3;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae3;

    .line 6
    iget v2, p0, Lde3;->k:I

    invoke-interface {v1, p1, v2}, Lae3;->c(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method
