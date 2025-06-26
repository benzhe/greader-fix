.class public abstract Lr87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly57;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr87$r;,
        Lr87$t;,
        Lr87$x;,
        Lr87$q;,
        Lr87$p;,
        Lr87$w;,
        Lr87$u;,
        Lr87$v;,
        Lr87$o;,
        Lr87$s;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly57;"
    }
.end annotation


# static fields
.field public static final w:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Lx47;

.field public static z:Ljava/util/Random;


# instance fields
.field public final a:Lj47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj47<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Li47;

.field public final e:Ls87$a;

.field public final f:Lw67$a;

.field public g:Ls87;

.field public h:Lw67;

.field public i:Z

.field public final j:Ljava/lang/Object;

.field public final k:Lr87$q;

.field public final l:J

.field public final m:J

.field public final n:Lr87$x;

.field public final o:Lc77;

.field public volatile p:Lr87$u;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public r:J

.field public s:Lz57;

.field public t:Lr87$r;

.field public u:Lr87$r;

.field public v:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Li47;->c:Li47$d;

    const-string v1, "grpc-previous-rpc-attempts"

    .line 2
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v1

    sput-object v1, Lr87;->w:Li47$f;

    const-string v1, "grpc-retry-pushback-ms"

    .line 3
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v0

    sput-object v0, Lr87;->x:Li47$f;

    .line 4
    sget-object v0, Lx47;->g:Lx47;

    const-string v1, "Stream thrown away because RetriableStream committed"

    .line 5
    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    sput-object v0, Lr87;->y:Lx47;

    .line 6
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lr87;->z:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lj47;Li47;Lr87$q;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ls87$a;Lw67$a;Lr87$x;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj47<",
            "TReqT;*>;",
            "Li47;",
            "Lr87$q;",
            "JJ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ls87$a;",
            "Lw67$a;",
            "Lr87$x;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lr87;->j:Ljava/lang/Object;

    .line 3
    new-instance v3, Lc77;

    invoke-direct {v3}, Lc77;-><init>()V

    iput-object v3, v0, Lr87;->o:Lc77;

    .line 4
    new-instance v3, Lr87$u;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lr87$u;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lr87$w;ZZZI)V

    iput-object v3, v0, Lr87;->p:Lr87$u;

    .line 6
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v0, Lr87;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, p1

    .line 7
    iput-object v3, v0, Lr87;->a:Lj47;

    move-object/from16 v3, p3

    .line 8
    iput-object v3, v0, Lr87;->k:Lr87$q;

    move-wide/from16 v3, p4

    .line 9
    iput-wide v3, v0, Lr87;->l:J

    move-wide/from16 v3, p6

    .line 10
    iput-wide v3, v0, Lr87;->m:J

    move-object/from16 v3, p8

    .line 11
    iput-object v3, v0, Lr87;->b:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p9

    .line 12
    iput-object v3, v0, Lr87;->c:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v3, p2

    .line 13
    iput-object v3, v0, Lr87;->d:Li47;

    const-string v3, "retryPolicyProvider"

    .line 14
    invoke-static {v1, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lr87;->e:Ls87$a;

    const-string v1, "hedgingPolicyProvider"

    .line 15
    invoke-static {v2, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lr87;->f:Lw67$a;

    move-object/from16 v1, p12

    .line 16
    iput-object v1, v0, Lr87;->n:Lr87$x;

    return-void
.end method

.method public static m(Lr87;Lr87$w;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lr87;->p(Lr87$w;)Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    check-cast p0, Lr87$c;

    invoke-virtual {p0}, Lr87$c;->run()V

    :cond_0
    return-void
.end method

.method public static o(Lr87;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lr87;->t()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lr87;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lr87;->u:Lr87$r;

    if-nez v1, :cond_2

    .line 6
    monitor-exit v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Lr87$r;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 8
    new-instance v2, Lr87$r;

    iget-object v3, p0, Lr87;->j:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lr87$r;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lr87;->u:Lr87$r;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 10
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 11
    :cond_3
    iget-object v0, p0, Lr87;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lr87$s;

    invoke-direct {v1, p0, v2}, Lr87$s;-><init>(Lr87;Lr87$r;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-interface {v0, v1, p0, p1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    invoke-virtual {v2, p0}, Lr87$r;->b(Ljava/util/concurrent/Future;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Lg37;)V
    .locals 1

    .line 1
    new-instance v0, Lr87$d;

    invoke-direct {v0, p0, p1}, Lr87$d;-><init>(Lr87;Lg37;)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr87;->p:Lr87$u;

    .line 2
    iget-boolean v1, v0, Lr87$u;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lr87$u;->f:Lr87$w;

    iget-object v0, v0, Lr87$w;->a:Ly57;

    invoke-interface {v0, p1}, Lb97;->b(I)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lr87$l;

    invoke-direct {v0, p0, p1}, Lr87$l;-><init>(Lr87;I)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    new-instance v0, Lr87$j;

    invoke-direct {v0, p0, p1}, Lr87$j;-><init>(Lr87;I)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    new-instance v0, Lr87$k;

    invoke-direct {v0, p0, p1}, Lr87$k;-><init>(Lr87;I)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method

.method public final e(Lo37;)V
    .locals 1

    .line 1
    new-instance v0, Lr87$f;

    invoke-direct {v0, p0, p1}, Lr87$f;-><init>(Lr87;Lo37;)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method

.method public final f(Lx47;)V
    .locals 11

    .line 1
    new-instance v0, Lr87$w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr87$w;-><init>(I)V

    .line 2
    new-instance v1, Lg87;

    invoke-direct {v1}, Lg87;-><init>()V

    iput-object v1, v0, Lr87$w;->a:Ly57;

    .line 3
    invoke-virtual {p0, v0}, Lr87;->p(Lr87$w;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lr87;->s:Lz57;

    new-instance v2, Li47;

    invoke-direct {v2}, Li47;-><init>()V

    invoke-interface {v1, p1, v2}, Lz57;->b(Lx47;Li47;)V

    .line 5
    check-cast v0, Lr87$c;

    invoke-virtual {v0}, Lr87$c;->run()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lr87;->p:Lr87$u;

    iget-object v0, v0, Lr87$u;->f:Lr87$w;

    iget-object v0, v0, Lr87$w;->a:Ly57;

    invoke-interface {v0, p1}, Ly57;->f(Lx47;)V

    .line 7
    iget-object p1, p0, Lr87;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lr87;->p:Lr87$u;

    .line 9
    new-instance v10, Lr87$u;

    iget-object v2, v0, Lr87$u;->b:Ljava/util/List;

    iget-object v3, v0, Lr87$u;->c:Ljava/util/Collection;

    iget-object v4, v0, Lr87$u;->d:Ljava/util/Collection;

    iget-object v5, v0, Lr87$u;->f:Lr87$w;

    iget-boolean v7, v0, Lr87$u;->a:Z

    iget-boolean v8, v0, Lr87$u;->h:Z

    iget v9, v0, Lr87$u;->e:I

    const/4 v6, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lr87$u;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lr87$w;ZZZI)V

    .line 10
    iput-object v10, p0, Lr87;->p:Lr87$u;

    .line 11
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr87;->p:Lr87$u;

    .line 2
    iget-boolean v1, v0, Lr87$u;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lr87$u;->f:Lr87$w;

    iget-object v0, v0, Lr87$w;->a:Ly57;

    invoke-interface {v0}, Lb97;->flush()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lr87$g;

    invoke-direct {v0, p0}, Lr87$g;-><init>(Lr87;)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lr87$b;

    invoke-direct {v0, p0, p1}, Lr87$b;-><init>(Lr87;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method

.method public h(Lc77;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr87;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "closed"

    .line 2
    iget-object v2, p0, Lr87;->o:Lc77;

    invoke-virtual {p1, v1, v2}, Lc77;->b(Ljava/lang/String;Ljava/lang/Object;)Lc77;

    .line 3
    iget-object v1, p0, Lr87;->p:Lr87$u;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lr87$u;->f:Lr87$w;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lc77;

    invoke-direct {v0}, Lc77;-><init>()V

    .line 7
    iget-object v1, v1, Lr87$u;->f:Lr87$w;

    iget-object v1, v1, Lr87$w;->a:Ly57;

    invoke-interface {v1, v0}, Ly57;->h(Lc77;)V

    const-string v1, "committed"

    .line 8
    invoke-virtual {p1, v1, v0}, Lc77;->b(Ljava/lang/String;Ljava/lang/Object;)Lc77;

    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Lc77;

    invoke-direct {v0}, Lc77;-><init>()V

    .line 10
    iget-object v1, v1, Lr87$u;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr87$w;

    .line 11
    new-instance v3, Lc77;

    invoke-direct {v3}, Lc77;-><init>()V

    .line 12
    iget-object v2, v2, Lr87$w;->a:Ly57;

    invoke-interface {v2, v3}, Ly57;->h(Lc77;)V

    .line 13
    iget-object v2, v0, Lc77;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "open"

    .line 14
    invoke-virtual {p1, v1, v0}, Lc77;->b(Ljava/lang/String;Ljava/lang/Object;)Lc77;

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i()V
    .locals 1

    .line 1
    new-instance v0, Lr87$i;

    invoke-direct {v0, p0}, Lr87$i;-><init>(Lr87;)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method

.method public final j(Lm37;)V
    .locals 1

    .line 1
    new-instance v0, Lr87$e;

    invoke-direct {v0, p0, p1}, Lr87$e;-><init>(Lr87;Lm37;)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method

.method public final k(Lz57;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lr87;->s:Lz57;

    .line 2
    invoke-virtual {p0}, Lr87;->x()Lx47;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lr87;->f(Lx47;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lr87;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lr87;->p:Lr87$u;

    iget-object v0, v0, Lr87$u;->b:Ljava/util/List;

    new-instance v1, Lr87$n;

    invoke-direct {v1, p0}, Lr87$n;-><init>(Lr87;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lr87;->q(I)Lr87$w;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lr87;->h:Lw67;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v3, "hedgingPolicy has been initialized unexpectedly"

    invoke-static {v1, v3}, Lc50;->G(ZLjava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lr87;->f:Lw67$a;

    invoke-interface {v1}, Lw67$a;->get()Lw67;

    move-result-object v1

    iput-object v1, p0, Lr87;->h:Lw67;

    .line 10
    sget-object v3, Lw67;->d:Lw67;

    invoke-virtual {v3, v1}, Lw67;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 11
    iput-boolean v2, p0, Lr87;->i:Z

    .line 12
    sget-object v1, Ls87;->f:Ls87;

    iput-object v1, p0, Lr87;->g:Ls87;

    const/4 v1, 0x0

    .line 13
    iget-object v3, p0, Lr87;->j:Ljava/lang/Object;

    monitor-enter v3

    .line 14
    :try_start_1
    iget-object v4, p0, Lr87;->p:Lr87$u;

    invoke-virtual {v4, v0}, Lr87$u;->a(Lr87$w;)Lr87$u;

    move-result-object v4

    iput-object v4, p0, Lr87;->p:Lr87$u;

    .line 15
    iget-object v4, p0, Lr87;->p:Lr87$u;

    invoke-virtual {p0, v4}, Lr87;->u(Lr87$u;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lr87;->n:Lr87$x;

    if-eqz v4, :cond_3

    .line 16
    iget-object v5, v4, Lr87$x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v4, v4, Lr87$x;->b:I

    if-le v5, v4, :cond_2

    const/4 p1, 0x1

    :cond_2
    if-eqz p1, :cond_4

    .line 17
    :cond_3
    new-instance v1, Lr87$r;

    iget-object p1, p0, Lr87;->j:Ljava/lang/Object;

    invoke-direct {v1, p1}, Lr87$r;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lr87;->u:Lr87$r;

    .line 18
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 19
    iget-object p1, p0, Lr87;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lr87$s;

    invoke-direct {v2, p0, v1}, Lr87$s;-><init>(Lr87;Lr87$r;)V

    iget-object v3, p0, Lr87;->h:Lw67;

    iget-wide v3, v3, Lw67;->b:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-interface {p1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Lr87$r;->b(Ljava/util/concurrent/Future;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 22
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 23
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lr87;->s(Lr87$w;)V

    return-void

    :catchall_1
    move-exception v0

    .line 24
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final l(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RetriableStream.writeMessage() should not be called directly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Z)V
    .locals 1

    .line 1
    new-instance v0, Lr87$h;

    invoke-direct {v0, p0, p1}, Lr87$h;-><init>(Lr87;Z)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method

.method public final p(Lr87$w;)Ljava/lang/Runnable;
    .locals 18

    move-object/from16 v7, p0

    .line 1
    iget-object v8, v7, Lr87;->j:Ljava/lang/Object;

    monitor-enter v8

    .line 2
    :try_start_0
    iget-object v0, v7, Lr87;->p:Lr87$u;

    iget-object v0, v0, Lr87$u;->f:Lr87$w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit v8

    return-object v1

    .line 4
    :cond_0
    iget-object v0, v7, Lr87;->p:Lr87$u;

    iget-object v3, v0, Lr87$u;->c:Ljava/util/Collection;

    .line 5
    iget-object v0, v7, Lr87;->p:Lr87$u;

    .line 6
    iget-object v2, v0, Lr87$u;->f:Lr87$w;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v6, "Already committed"

    invoke-static {v2, v6}, Lc50;->G(ZLjava/lang/Object;)V

    .line 7
    iget-object v2, v0, Lr87$u;->b:Ljava/util/List;

    .line 8
    iget-object v6, v0, Lr87$u;->c:Ljava/util/Collection;

    move-object/from16 v15, p1

    invoke-interface {v6, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object v10, v1

    move-object v11, v2

    const/4 v4, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v10, v2

    move-object v11, v5

    .line 11
    :goto_1
    new-instance v2, Lr87$u;

    iget-object v12, v0, Lr87$u;->d:Ljava/util/Collection;

    iget-boolean v14, v0, Lr87$u;->g:Z

    iget-boolean v5, v0, Lr87$u;->h:Z

    iget v0, v0, Lr87$u;->e:I

    move-object v9, v2

    move-object/from16 v13, p1

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v0

    invoke-direct/range {v9 .. v17}, Lr87$u;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lr87$w;ZZZI)V

    .line 12
    iput-object v2, v7, Lr87;->p:Lr87$u;

    .line 13
    iget-object v0, v7, Lr87;->k:Lr87$q;

    iget-wide v4, v7, Lr87;->r:J

    neg-long v4, v4

    .line 14
    iget-object v0, v0, Lr87$q;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 15
    iget-object v0, v7, Lr87;->t:Lr87$r;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Lr87$r;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 17
    iput-object v1, v7, Lr87;->t:Lr87$r;

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 18
    :goto_2
    iget-object v0, v7, Lr87;->u:Lr87$r;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0}, Lr87$r;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 20
    iput-object v1, v7, Lr87;->u:Lr87$r;

    move-object v6, v0

    goto :goto_3

    :cond_4
    move-object v6, v1

    .line 21
    :goto_3
    new-instance v0, Lr87$c;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lr87$c;-><init>(Lr87;Ljava/util/Collection;Lr87$w;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final q(I)Lr87$w;
    .locals 4

    .line 1
    new-instance v0, Lr87$w;

    invoke-direct {v0, p1}, Lr87$w;-><init>(I)V

    .line 2
    new-instance v1, Lr87$p;

    invoke-direct {v1, p0, v0}, Lr87$p;-><init>(Lr87;Lr87$w;)V

    .line 3
    new-instance v2, Lr87$a;

    invoke-direct {v2, p0, v1}, Lr87$a;-><init>(Lr87;Le37;)V

    .line 4
    iget-object v1, p0, Lr87;->d:Li47;

    .line 5
    new-instance v3, Li47;

    invoke-direct {v3}, Li47;-><init>()V

    .line 6
    invoke-virtual {v3, v1}, Li47;->f(Li47;)V

    if-lez p1, :cond_0

    .line 7
    sget-object v1, Lr87;->w:Li47$f;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-virtual {p0, v2, v3}, Lr87;->v(Le37$a;Li47;)Ly57;

    move-result-object p1

    iput-object p1, v0, Lr87$w;->a:Ly57;

    return-object v0
.end method

.method public final r(Lr87$o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr87;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr87;->p:Lr87$u;

    iget-boolean v1, v1, Lr87$u;->a:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lr87;->p:Lr87$u;

    iget-object v1, v1, Lr87$u;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lr87;->p:Lr87$u;

    iget-object v1, v1, Lr87$u;->c:Ljava/util/Collection;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr87$w;

    .line 7
    invoke-interface {p1, v1}, Lr87$o;->a(Lr87$w;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final s(Lr87$w;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lr87;->j:Ljava/lang/Object;

    monitor-enter v3

    .line 2
    :try_start_0
    iget-object v4, p0, Lr87;->p:Lr87$u;

    .line 3
    iget-object v5, v4, Lr87$u;->f:Lr87$w;

    if-eqz v5, :cond_0

    if-eq v5, p1, :cond_0

    .line 4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p1, Lr87$w;->a:Ly57;

    sget-object v0, Lr87;->y:Lx47;

    invoke-interface {p1, v0}, Ly57;->f(Lx47;)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v5, v4, Lr87$u;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 7
    invoke-virtual {v4, p1}, Lr87$u;->f(Lr87$w;)Lr87$u;

    move-result-object p1

    iput-object p1, p0, Lr87;->p:Lr87$u;

    .line 8
    monitor-exit v3

    return-void

    .line 9
    :cond_1
    iget-boolean v5, p1, Lr87$w;->b:Z

    if-eqz v5, :cond_2

    .line 10
    monitor-exit v3

    return-void

    :cond_2
    add-int/lit16 v5, v2, 0x80

    .line 11
    iget-object v6, v4, Lr87$u;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v4, Lr87$u;->b:Ljava/util/List;

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    iget-object v4, v4, Lr87$u;->b:Ljava/util/List;

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr87$o;

    .line 17
    iget-object v4, p0, Lr87;->p:Lr87$u;

    .line 18
    iget-object v6, v4, Lr87$u;->f:Lr87$w;

    if-eqz v6, :cond_4

    if-eq v6, p1, :cond_4

    goto :goto_3

    .line 19
    :cond_4
    iget-boolean v4, v4, Lr87$u;->g:Z

    if-eqz v4, :cond_6

    if-ne v6, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    const-string p1, "substream should be CANCELLED_BECAUSE_COMMITTED already"

    .line 20
    invoke-static {v0, p1}, Lc50;->G(ZLjava/lang/Object;)V

    return-void

    .line 21
    :cond_6
    invoke-interface {v3, p1}, Lr87$o;->a(Lr87$w;)V

    goto :goto_2

    :cond_7
    :goto_3
    move v2, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr87;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr87;->u:Lr87$r;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lr87$r;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 4
    iput-object v2, p0, Lr87;->u:Lr87$r;

    move-object v2, v1

    .line 5
    :cond_0
    iget-object v1, p0, Lr87;->p:Lr87$u;

    invoke-virtual {v1}, Lr87$u;->b()Lr87$u;

    move-result-object v1

    iput-object v1, p0, Lr87;->p:Lr87$u;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final u(Lr87$u;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lr87$u;->f:Lr87$w;

    if-nez v0, :cond_0

    iget v0, p1, Lr87$u;->e:I

    iget-object v1, p0, Lr87;->h:Lw67;

    iget v1, v1, Lw67;->a:I

    if-ge v0, v1, :cond_0

    iget-boolean p1, p1, Lr87$u;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract v(Le37$a;Li47;)Ly57;
.end method

.method public abstract w()V
.end method

.method public abstract x()Lx47;
.end method

.method public final y(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr87;->p:Lr87$u;

    .line 2
    iget-boolean v1, v0, Lr87$u;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lr87$u;->f:Lr87$w;

    iget-object v0, v0, Lr87$w;->a:Ly57;

    iget-object v1, p0, Lr87;->a:Lj47;

    .line 4
    iget-object v1, v1, Lj47;->d:Lj47$c;

    invoke-interface {v1, p1}, Lj47$c;->b(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Lb97;->l(Ljava/io/InputStream;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lr87$m;

    invoke-direct {v0, p0, p1}, Lr87$m;-><init>(Lr87;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lr87;->r(Lr87$o;)V

    return-void
.end method
