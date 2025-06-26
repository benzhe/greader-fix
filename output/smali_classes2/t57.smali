.class public final Lt57;
.super La37;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt57$b;,
        Lt57$c;,
        Lt57$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "La37<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field public static final v:Ljava/util/logging/Logger;

.field public static final w:[B

.field public static final x:J


# instance fields
.field public final a:Lj47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj47<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public final b:Lfb7;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lq57;

.field public final e:Ll37;

.field public final f:Z

.field public final g:Lx27;

.field public final h:Z

.field public i:Ly57;

.field public volatile j:Z

.field public k:Z

.field public l:Z

.field public final m:Lt57$c;

.field public n:Lt57$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt57<",
            "TReqT;TRespT;>.d;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/concurrent/ScheduledExecutorService;

.field public p:Z

.field public q:Lo37;

.field public r:Lh37;

.field public volatile s:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile t:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lt57;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lt57;->v:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lt57;->w:[B

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lt57;->x:J

    return-void
.end method

.method public constructor <init>(Lj47;Ljava/util/concurrent/Executor;Lx27;Lt57$c;Ljava/util/concurrent/ScheduledExecutorService;Lq57;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj47<",
            "TReqT;TRespT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lx27;",
            "Lt57$c;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lq57;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, La37;-><init>()V

    .line 2
    sget-object v0, Lo37;->d:Lo37;

    .line 3
    iput-object v0, p0, Lt57;->q:Lo37;

    .line 4
    sget-object v0, Lh37;->b:Lh37;

    .line 5
    iput-object v0, p0, Lt57;->r:Lh37;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lt57;->u:Z

    .line 7
    iput-object p1, p0, Lt57;->a:Lj47;

    .line 8
    iget-object v1, p1, Lj47;->b:Ljava/lang/String;

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    sget-object v1, Leb7;->a:Lcb7;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcb7;->a:Lfb7;

    .line 11
    iput-object v1, p0, Lt57;->b:Lfb7;

    .line 12
    sget-object v1, Lhe5;->e:Lhe5;

    if-ne p2, v1, :cond_0

    .line 13
    new-instance p2, Lt87;

    invoke-direct {p2}, Lt87;-><init>()V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lu87;

    invoke-direct {v1, p2}, Lu87;-><init>(Ljava/util/concurrent/Executor;)V

    move-object p2, v1

    :goto_0
    iput-object p2, p0, Lt57;->c:Ljava/util/concurrent/Executor;

    .line 15
    iput-object p6, p0, Lt57;->d:Lq57;

    .line 16
    invoke-static {}, Ll37;->g()Ll37;

    move-result-object p2

    iput-object p2, p0, Lt57;->e:Ll37;

    .line 17
    iget-object p1, p1, Lj47;->a:Lj47$d;

    .line 18
    sget-object p2, Lj47$d;->e:Lj47$d;

    if-eq p1, p2, :cond_1

    .line 19
    sget-object p2, Lj47$d;->g:Lj47$d;

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lt57;->f:Z

    .line 20
    iput-object p3, p0, Lt57;->g:Lx27;

    .line 21
    iput-object p4, p0, Lt57;->m:Lt57$c;

    .line 22
    iput-object p5, p0, Lt57;->o:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    iput-boolean p7, p0, Lt57;->h:Z

    return-void
.end method

.method public static f(Lt57;Lx47;La37$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lt57;->t:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lt57;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo77;

    new-instance v2, Lw57;

    invoke-direct {v2, p0, p1}, Lw57;-><init>(Lt57;Lx47;)V

    invoke-direct {v1, v2}, Lo77;-><init>(Ljava/lang/Runnable;)V

    sget-wide v2, Lt57;->x:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lt57;->t:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    iget-object v0, p0, Lt57;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lu57;

    invoke-direct {v1, p0, p2, p1}, Lu57;-><init>(Lt57;La37$a;Lx47;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Leb7;->a:Lcb7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lt57;->g(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 5
    sget-object p2, Leb7;->a:Lcb7;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    throw p1
.end method

.method public b()V
    .locals 4

    .line 1
    sget-object v0, Leb7;->a:Lcb7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v1, p0, Lt57;->i:Ly57;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "Not started"

    invoke-static {v1, v3}, Lc50;->G(ZLjava/lang/Object;)V

    .line 4
    iget-boolean v1, p0, Lt57;->k:Z

    xor-int/2addr v1, v2

    const-string v3, "call was cancelled"

    invoke-static {v1, v3}, Lc50;->G(ZLjava/lang/Object;)V

    .line 5
    iget-boolean v1, p0, Lt57;->l:Z

    xor-int/2addr v1, v2

    const-string v3, "call already half-closed"

    invoke-static {v1, v3}, Lc50;->G(ZLjava/lang/Object;)V

    .line 6
    iput-boolean v2, p0, Lt57;->l:Z

    .line 7
    iget-object v1, p0, Lt57;->i:Ly57;

    invoke-interface {v1}, Ly57;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    .line 9
    sget-object v1, Leb7;->a:Lcb7;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    throw v0
.end method

.method public c(I)V
    .locals 5

    .line 1
    sget-object v0, Leb7;->a:Lcb7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v1, p0, Lt57;->i:Ly57;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Not started"

    invoke-static {v1, v4}, Lc50;->G(ZLjava/lang/Object;)V

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v1, "Number requested must be non-negative"

    .line 4
    invoke-static {v2, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lt57;->i:Ly57;

    invoke-interface {v1, p1}, Lb97;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 7
    sget-object v0, Leb7;->a:Lcb7;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    throw p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Leb7;->a:Lcb7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lt57;->j(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 5
    sget-object v0, Leb7;->a:Lcb7;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    throw p1
.end method

.method public e(La37$a;Li47;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La37$a<",
            "TRespT;>;",
            "Li47;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Leb7;->a:Lcb7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lt57;->k(La37$a;Li47;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 5
    sget-object p2, Leb7;->a:Lcb7;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    throw p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Cancelled without a message or cause"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lt57;->v:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Cancelling without a message or cause is suboptimal"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lt57;->k:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lt57;->k:Z

    .line 5
    :try_start_0
    iget-object v0, p0, Lt57;->i:Ly57;

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Lx47;->g:Lx47;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "Call cancelled without message"

    .line 8
    invoke-virtual {v0, p1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1, p2}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p1

    .line 10
    :cond_3
    iget-object p2, p0, Lt57;->i:Ly57;

    invoke-interface {p2, p1}, Ly57;->f(Lx47;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Lt57;->i()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lt57;->i()V

    throw p1
.end method

.method public final h()Lm37;
    .locals 7

    .line 1
    iget-object v0, p0, Lt57;->g:Lx27;

    .line 2
    iget-object v0, v0, Lx27;->a:Lm37;

    .line 3
    iget-object v1, p0, Lt57;->e:Ll37;

    invoke-virtual {v1}, Ll37;->k()Lm37;

    move-result-object v1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Lm37;->i(Lm37;)V

    .line 5
    invoke-virtual {v0, v1}, Lm37;->i(Lm37;)V

    .line 6
    iget-wide v2, v0, Lm37;->f:J

    iget-wide v4, v1, Lm37;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt57;->e:Ll37;

    iget-object v1, p0, Lt57;->n:Lt57$d;

    invoke-virtual {v0, v1}, Ll37;->q(Ll37$b;)V

    .line 2
    iget-object v0, p0, Lt57;->t:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lt57;->s:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt57;->i:Ly57;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lt57;->k:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lt57;->l:Z

    xor-int/2addr v0, v1

    const-string v1, "call was half-closed"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lt57;->i:Ly57;

    instance-of v1, v0, Lr87;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lr87;

    .line 6
    invoke-virtual {v0, p1}, Lr87;->y(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lt57;->a:Lj47;

    .line 8
    iget-object v1, v1, Lj47;->d:Lj47$c;

    invoke-interface {v1, p1}, Lj47$c;->b(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lb97;->l(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_1
    iget-boolean p1, p0, Lt57;->f:Z

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lt57;->i:Ly57;

    invoke-interface {p1}, Lb97;->flush()V

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lt57;->i:Ly57;

    sget-object v1, Lx47;->g:Lx47;

    const-string v2, "Client sendMessage() failed with Error"

    invoke-virtual {v1, v2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v1

    invoke-interface {v0, v1}, Ly57;->f(Lx47;)V

    .line 13
    throw p1

    :catch_1
    move-exception p1

    .line 14
    iget-object v0, p0, Lt57;->i:Ly57;

    sget-object v1, Lx47;->g:Lx47;

    invoke-virtual {v1, p1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p1

    const-string v1, "Failed to stream message"

    invoke-virtual {p1, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    invoke-interface {v0, p1}, Ly57;->f(Lx47;)V

    return-void
.end method

.method public final k(La37$a;Li47;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La37$a<",
            "TRespT;>;",
            "Li47;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt57;->i:Ly57;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Already started"

    invoke-static {v0, v3}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lt57;->k:Z

    xor-int/2addr v0, v2

    const-string v3, "call was cancelled"

    invoke-static {v0, v3}, Lc50;->G(ZLjava/lang/Object;)V

    const-string v0, "observer"

    .line 3
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "headers"

    .line 4
    invoke-static {p2, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lt57;->e:Ll37;

    invoke-virtual {v0}, Ll37;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p2, Lg87;->a:Lg87;

    iput-object p2, p0, Lt57;->i:Ly57;

    .line 7
    iget-object p2, p0, Lt57;->e:Ll37;

    invoke-static {p2}, Ln56;->k2(Ll37;)Lx47;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lt57;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lu57;

    invoke-direct {v1, p0, p1, p2}, Lu57;-><init>(Lt57;La37$a;Lx47;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lt57;->g:Lx27;

    .line 10
    iget-object v0, v0, Lx27;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 11
    iget-object v3, p0, Lt57;->r:Lh37;

    .line 12
    iget-object v3, v3, Lh37;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg37;

    if-nez v3, :cond_3

    .line 13
    sget-object p2, Lg87;->a:Lg87;

    iput-object p2, p0, Lt57;->i:Ly57;

    .line 14
    sget-object p2, Lx47;->m:Lx47;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Unable to find compressor by name %s"

    .line 15
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p2, v0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p2

    .line 17
    iget-object v0, p0, Lt57;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lu57;

    invoke-direct {v1, p0, p1, p2}, Lu57;-><init>(Lt57;La37$a;Lx47;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 18
    :cond_2
    sget-object v3, Lf37$b;->a:Lf37;

    .line 19
    :cond_3
    iget-object v0, p0, Lt57;->q:Lo37;

    iget-boolean v4, p0, Lt57;->p:Z

    .line 20
    sget-object v5, Lu67;->c:Li47$f;

    invoke-virtual {p2, v5}, Li47;->b(Li47$f;)V

    .line 21
    sget-object v6, Lf37$b;->a:Lf37;

    if-eq v3, v6, :cond_4

    .line 22
    invoke-interface {v3}, Lg37;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 23
    :cond_4
    sget-object v5, Lu67;->d:Li47$f;

    invoke-virtual {p2, v5}, Li47;->b(Li47$f;)V

    .line 24
    iget-object v0, v0, Lo37;->b:[B

    .line 25
    array-length v6, v0

    if-eqz v6, :cond_5

    .line 26
    invoke-virtual {p2, v5, v0}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 27
    :cond_5
    sget-object v0, Lu67;->e:Li47$f;

    invoke-virtual {p2, v0}, Li47;->b(Li47$f;)V

    .line 28
    sget-object v0, Lu67;->f:Li47$f;

    invoke-virtual {p2, v0}, Li47;->b(Li47$f;)V

    if-eqz v4, :cond_6

    .line 29
    sget-object v4, Lt57;->w:[B

    invoke-virtual {p2, v0, v4}, Li47;->h(Li47$f;Ljava/lang/Object;)V

    .line 30
    :cond_6
    invoke-virtual {p0}, Lt57;->h()Lm37;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 31
    invoke-virtual {v0}, Lm37;->l()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_c

    .line 32
    iget-object v4, p0, Lt57;->e:Ll37;

    .line 33
    invoke-virtual {v4}, Ll37;->k()Lm37;

    move-result-object v4

    iget-object v5, p0, Lt57;->g:Lx27;

    .line 34
    iget-object v5, v5, Lx27;->a:Lm37;

    .line 35
    sget-object v6, Lt57;->v:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v0, :cond_a

    .line 36
    invoke-virtual {v0, v4}, Lm37;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    const-wide/16 v7, 0x0

    .line 37
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lm37;->t(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    new-array v10, v2, [Ljava/lang/Object;

    .line 39
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v1

    const-string v7, "Call timeout set to \'%d\' ns, due to context deadline."

    .line 40
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_9

    const-string v2, " Explicit call timeout was not set."

    .line 41
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 42
    :cond_9
    invoke-virtual {v5, v4}, Lm37;->t(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v4, " Explicit call timeout was \'%d\' ns."

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 45
    :cond_a
    :goto_3
    iget-boolean v2, p0, Lt57;->h:Z

    if-eqz v2, :cond_b

    .line 46
    iget-object v2, p0, Lt57;->m:Lt57$c;

    iget-object v6, p0, Lt57;->a:Lj47;

    iget-object v8, p0, Lt57;->g:Lx27;

    iget-object v10, p0, Lt57;->e:Ll37;

    move-object v5, v2

    check-cast v5, Lq77$h;

    .line 47
    iget-object v2, v5, Lq77$h;->a:Lq77;

    .line 48
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "retry should be enabled"

    .line 49
    invoke-static {v1, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 50
    iget-object v1, v5, Lq77$h;->a:Lq77;

    .line 51
    iget-object v1, v1, Lq77;->Q:Lq77$t;

    .line 52
    iget-object v1, v1, Lq77$t;->b:Lb87;

    .line 53
    iget-object v9, v1, Lb87;->c:Lr87$x;

    .line 54
    new-instance v1, Lv77;

    move-object v4, v1

    move-object v7, p2

    invoke-direct/range {v4 .. v10}, Lv77;-><init>(Lq77$h;Lj47;Li47;Lx27;Lr87$x;Ll37;)V

    .line 55
    iput-object v1, p0, Lt57;->i:Ly57;

    goto :goto_4

    .line 56
    :cond_b
    iget-object v1, p0, Lt57;->m:Lt57$c;

    new-instance v2, Ll87;

    iget-object v4, p0, Lt57;->a:Lj47;

    iget-object v5, p0, Lt57;->g:Lx27;

    invoke-direct {v2, v4, p2, v5}, Ll87;-><init>(Lj47;Li47;Lx27;)V

    check-cast v1, Lq77$h;

    invoke-virtual {v1, v2}, Lq77$h;->a(Lc47$f;)La67;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lt57;->e:Ll37;

    invoke-virtual {v2}, Ll37;->b()Ll37;

    move-result-object v2

    .line 58
    :try_start_0
    iget-object v4, p0, Lt57;->a:Lj47;

    iget-object v5, p0, Lt57;->g:Lx27;

    invoke-interface {v1, v4, p2, v5}, La67;->g(Lj47;Li47;Lx27;)Ly57;

    move-result-object p2

    iput-object p2, p0, Lt57;->i:Ly57;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object p2, p0, Lt57;->e:Ll37;

    invoke-virtual {p2, v2}, Ll37;->i(Ll37;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lt57;->e:Ll37;

    invoke-virtual {p2, v2}, Ll37;->i(Ll37;)V

    throw p1

    .line 60
    :cond_c
    new-instance p2, Lm67;

    sget-object v1, Lx47;->i:Lx47;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientCall started after deadline exceeded: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v1

    invoke-direct {p2, v1}, Lm67;-><init>(Lx47;)V

    iput-object p2, p0, Lt57;->i:Ly57;

    .line 62
    :goto_4
    iget-object p2, p0, Lt57;->g:Lx27;

    .line 63
    iget-object p2, p2, Lx27;->c:Ljava/lang/String;

    if-eqz p2, :cond_d

    .line 64
    iget-object v1, p0, Lt57;->i:Ly57;

    invoke-interface {v1, p2}, Ly57;->g(Ljava/lang/String;)V

    .line 65
    :cond_d
    iget-object p2, p0, Lt57;->g:Lx27;

    .line 66
    iget-object p2, p2, Lx27;->i:Ljava/lang/Integer;

    if-eqz p2, :cond_e

    .line 67
    iget-object v1, p0, Lt57;->i:Ly57;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Ly57;->c(I)V

    .line 68
    :cond_e
    iget-object p2, p0, Lt57;->g:Lx27;

    .line 69
    iget-object p2, p2, Lx27;->j:Ljava/lang/Integer;

    if-eqz p2, :cond_f

    .line 70
    iget-object v1, p0, Lt57;->i:Ly57;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Ly57;->d(I)V

    :cond_f
    if-eqz v0, :cond_10

    .line 71
    iget-object p2, p0, Lt57;->i:Ly57;

    invoke-interface {p2, v0}, Ly57;->j(Lm37;)V

    .line 72
    :cond_10
    iget-object p2, p0, Lt57;->i:Ly57;

    invoke-interface {p2, v3}, Lb97;->a(Lg37;)V

    .line 73
    iget-boolean p2, p0, Lt57;->p:Z

    if-eqz p2, :cond_11

    .line 74
    iget-object v1, p0, Lt57;->i:Ly57;

    invoke-interface {v1, p2}, Ly57;->n(Z)V

    .line 75
    :cond_11
    iget-object p2, p0, Lt57;->i:Ly57;

    iget-object v1, p0, Lt57;->q:Lo37;

    invoke-interface {p2, v1}, Ly57;->e(Lo37;)V

    .line 76
    iget-object p2, p0, Lt57;->d:Lq57;

    .line 77
    iget-object v1, p2, Lq57;->b:Lp77;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lp77;->a(J)V

    .line 78
    iget-object p2, p2, Lq57;->a:Ld97;

    invoke-interface {p2}, Ld97;->a()J

    .line 79
    new-instance p2, Lt57$d;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lt57$d;-><init>(Lt57;La37$a;Lt57$a;)V

    iput-object p2, p0, Lt57;->n:Lt57$d;

    .line 80
    iget-object p2, p0, Lt57;->i:Ly57;

    new-instance v1, Lt57$b;

    invoke-direct {v1, p0, p1}, Lt57$b;-><init>(Lt57;La37$a;)V

    invoke-interface {p2, v1}, Ly57;->k(Lz57;)V

    .line 81
    iget-object p2, p0, Lt57;->e:Ll37;

    iget-object v1, p0, Lt57;->n:Lt57$d;

    sget-object v2, Lhe5;->e:Lhe5;

    invoke-virtual {p2, v1, v2}, Ll37;->a(Ll37$b;Ljava/util/concurrent/Executor;)V

    if-eqz v0, :cond_12

    .line 82
    iget-object p2, p0, Lt57;->e:Ll37;

    .line 83
    invoke-virtual {p2}, Ll37;->k()Lm37;

    move-result-object p2

    invoke-virtual {v0, p2}, Lm37;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    iget-object p2, p0, Lt57;->o:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p2, :cond_12

    iget-object p2, p0, Lt57;->i:Ly57;

    instance-of p2, p2, Lm67;

    if-nez p2, :cond_12

    .line 84
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2}, Lm37;->t(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 85
    iget-object v2, p0, Lt57;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lo77;

    new-instance v4, Lv57;

    invoke-direct {v4, p0, v0, v1, p1}, Lv57;-><init>(Lt57;JLa37$a;)V

    invoke-direct {v3, v4}, Lo77;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v2, v3, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 86
    iput-object p1, p0, Lt57;->s:Ljava/util/concurrent/ScheduledFuture;

    .line 87
    :cond_12
    iget-boolean p1, p0, Lt57;->j:Z

    if-eqz p1, :cond_13

    .line 88
    invoke-virtual {p0}, Lt57;->i()V

    :cond_13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lt57;->a:Lj47;

    const-string v2, "method"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
