.class public Lr87$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr87$s;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lr87$s;


# direct methods
.method public constructor <init>(Lr87$s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr87$s$a;->e:Lr87$s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lr87$s$a;->e:Lr87$s;

    iget-object v0, v0, Lr87$s;->f:Lr87;

    .line 2
    iget-object v1, v0, Lr87;->p:Lr87$u;

    .line 3
    iget v1, v1, Lr87$u;->e:I

    .line 4
    invoke-virtual {v0, v1}, Lr87;->q(I)Lr87$w;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lr87$s$a;->e:Lr87$s;

    iget-object v1, v1, Lr87$s;->f:Lr87;

    .line 6
    iget-object v1, v1, Lr87;->j:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lr87$s$a;->e:Lr87$s;

    iget-object v3, v2, Lr87$s;->e:Lr87$r;

    .line 9
    iget-boolean v3, v3, Lr87$r;->c:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget-object v2, v2, Lr87$s;->f:Lr87;

    .line 11
    iget-object v3, v2, Lr87;->p:Lr87$u;

    .line 12
    invoke-virtual {v3, v0}, Lr87$u;->a(Lr87$w;)Lr87$u;

    move-result-object v3

    .line 13
    iput-object v3, v2, Lr87;->p:Lr87$u;

    .line 14
    iget-object v2, p0, Lr87$s$a;->e:Lr87$s;

    iget-object v2, v2, Lr87$s;->f:Lr87;

    .line 15
    iget-object v3, v2, Lr87;->p:Lr87$u;

    .line 16
    invoke-virtual {v2, v3}, Lr87;->u(Lr87$u;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, p0, Lr87$s$a;->e:Lr87$s;

    iget-object v2, v2, Lr87$s;->f:Lr87;

    .line 18
    iget-object v2, v2, Lr87;->n:Lr87$x;

    if-eqz v2, :cond_2

    .line 19
    iget-object v3, v2, Lr87$x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v2, v2, Lr87$x;->b:I

    if-le v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 20
    :cond_2
    iget-object v2, p0, Lr87$s$a;->e:Lr87$s;

    iget-object v2, v2, Lr87$s;->f:Lr87;

    new-instance v3, Lr87$r;

    .line 21
    iget-object v4, v2, Lr87;->j:Ljava/lang/Object;

    .line 22
    invoke-direct {v3, v4}, Lr87$r;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-object v3, v2, Lr87;->u:Lr87$r;

    move-object v5, v3

    goto :goto_1

    .line 24
    :cond_3
    iget-object v2, p0, Lr87$s$a;->e:Lr87$s;

    iget-object v2, v2, Lr87$s;->f:Lr87;

    .line 25
    iget-object v3, v2, Lr87;->p:Lr87$u;

    .line 26
    invoke-virtual {v3}, Lr87$u;->b()Lr87$u;

    move-result-object v3

    .line 27
    iput-object v3, v2, Lr87;->p:Lr87$u;

    .line 28
    iget-object v2, p0, Lr87$s$a;->e:Lr87$s;

    iget-object v2, v2, Lr87$s;->f:Lr87;

    .line 29
    iput-object v5, v2, Lr87;->u:Lr87$r;

    :goto_1
    const/4 v4, 0x0

    .line 30
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    .line 31
    iget-object v0, v0, Lr87$w;->a:Ly57;

    sget-object v1, Lx47;->g:Lx47;

    const-string v2, "Unneeded hedging"

    invoke-virtual {v1, v2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v1

    invoke-interface {v0, v1}, Ly57;->f(Lx47;)V

    return-void

    :cond_4
    if-eqz v5, :cond_5

    .line 32
    iget-object v1, p0, Lr87$s$a;->e:Lr87$s;

    iget-object v1, v1, Lr87$s;->f:Lr87;

    .line 33
    iget-object v2, v1, Lr87;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    new-instance v3, Lr87$s;

    invoke-direct {v3, v1, v5}, Lr87$s;-><init>(Lr87;Lr87$r;)V

    .line 35
    iget-object v1, v1, Lr87;->h:Lw67;

    .line 36
    iget-wide v6, v1, Lw67;->b:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    invoke-interface {v2, v3, v6, v7, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 38
    invoke-virtual {v5, v1}, Lr87$r;->b(Ljava/util/concurrent/Future;)V

    .line 39
    :cond_5
    iget-object v1, p0, Lr87$s$a;->e:Lr87$s;

    iget-object v1, v1, Lr87$s;->f:Lr87;

    .line 40
    invoke-virtual {v1, v0}, Lr87;->s(Lr87$w;)V

    return-void

    :catchall_0
    move-exception v0

    .line 41
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
