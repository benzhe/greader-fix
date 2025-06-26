.class public final Ld77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx37;
.implements Lf97;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld77$h;,
        Ld77$f;,
        Ld77$d;,
        Ld77$e;,
        Ld77$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx37<",
        "Ljava/lang/Object;",
        ">;",
        "Lf97;"
    }
.end annotation


# instance fields
.field public final a:Ly37;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ln57$a;

.field public final e:Ld77$e;

.field public final f:Lb67;

.field public final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public final h:Lv37;

.field public final i:Lq57;

.field public final j:Lz27;

.field public final k:Lb57;

.field public final l:Ld77$f;

.field public volatile m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq37;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ln57;

.field public final o:Lpd5;

.field public p:Lb57$c;

.field public final q:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ld67;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lb77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb77<",
            "Ld67;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ld67;

.field public volatile t:Lc87;

.field public volatile u:Lj37;

.field public v:Lx47;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ln57$a;Lb67;Ljava/util/concurrent/ScheduledExecutorService;Lqd5;Lb57;Ld77$e;Lv37;Lq57;Ls57;Ly37;Lz27;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq37;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ln57$a;",
            "Lb67;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lqd5<",
            "Lpd5;",
            ">;",
            "Lb57;",
            "Ld77$e;",
            "Lv37;",
            "Lq57;",
            "Ls57;",
            "Ly37;",
            "Lz27;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Ld77;->q:Ljava/util/Collection;

    .line 3
    new-instance v4, Ld77$a;

    invoke-direct {v4, p0}, Ld77$a;-><init>(Ld77;)V

    iput-object v4, v0, Ld77;->r:Lb77;

    .line 4
    sget-object v4, Li37;->h:Li37;

    invoke-static {v4}, Lj37;->a(Li37;)Lj37;

    move-result-object v4

    iput-object v4, v0, Ld77;->u:Lj37;

    const-string v4, "addressGroups"

    .line 5
    invoke-static {p1, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "addressGroups is empty"

    invoke-static {v4, v5}, Lc50;->t(ZLjava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "addressGroups contains null entry"

    .line 8
    invoke-static {v5, v6}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 11
    iput-object v1, v0, Ld77;->m:Ljava/util/List;

    .line 12
    new-instance v4, Ld77$f;

    invoke-direct {v4, v1}, Ld77$f;-><init>(Ljava/util/List;)V

    iput-object v4, v0, Ld77;->l:Ld77$f;

    move-object v1, p2

    .line 13
    iput-object v1, v0, Ld77;->b:Ljava/lang/String;

    move-object v1, p3

    .line 14
    iput-object v1, v0, Ld77;->c:Ljava/lang/String;

    move-object v1, p4

    .line 15
    iput-object v1, v0, Ld77;->d:Ln57$a;

    move-object v1, p5

    .line 16
    iput-object v1, v0, Ld77;->f:Lb67;

    move-object v1, p6

    .line 17
    iput-object v1, v0, Ld77;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    invoke-interface {p7}, Lqd5;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpd5;

    iput-object v1, v0, Ld77;->o:Lpd5;

    move-object v1, p8

    .line 19
    iput-object v1, v0, Ld77;->k:Lb57;

    move-object/from16 v1, p9

    .line 20
    iput-object v1, v0, Ld77;->e:Ld77$e;

    move-object/from16 v1, p10

    .line 21
    iput-object v1, v0, Ld77;->h:Lv37;

    move-object/from16 v1, p11

    .line 22
    iput-object v1, v0, Ld77;->i:Lq57;

    const-string v1, "channelTracer"

    move-object/from16 v4, p12

    .line 23
    invoke-static {v4, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logId"

    .line 24
    invoke-static {v2, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Ld77;->a:Ly37;

    const-string v1, "channelLogger"

    .line 25
    invoke-static {v3, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v0, Ld77;->j:Lz27;

    return-void
.end method

.method public static h(Ld77;Li37;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld77;->k:Lb57;

    invoke-virtual {v0}, Lb57;->d()V

    .line 2
    invoke-static {p1}, Lj37;->a(Li37;)Lj37;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld77;->j(Lj37;)V

    return-void
.end method

.method public static i(Ld77;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ld77;->k:Lb57;

    invoke-virtual {v0}, Lb57;->d()V

    .line 2
    iget-object v0, p0, Ld77;->p:Lb57$c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Should have no reconnectTask scheduled"

    invoke-static {v0, v3}, Lc50;->G(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Ld77;->l:Ld77$f;

    .line 4
    iget v3, v0, Ld77$f;->b:I

    if-nez v3, :cond_1

    iget v0, v0, Ld77$f;->c:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Ld77;->o:Lpd5;

    invoke-virtual {v0}, Lpd5;->b()Lpd5;

    invoke-virtual {v0}, Lpd5;->c()Lpd5;

    .line 6
    :cond_2
    iget-object v0, p0, Ld77;->l:Ld77$f;

    invoke-virtual {v0}, Ld77$f;->a()Ljava/net/SocketAddress;

    move-result-object v0

    .line 7
    instance-of v3, v0, Lu37;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 8
    check-cast v0, Lu37;

    .line 9
    iget-object v3, v0, Lu37;->f:Ljava/net/InetSocketAddress;

    goto :goto_2

    :cond_3
    move-object v3, v0

    move-object v0, v4

    .line 10
    :goto_2
    iget-object v5, p0, Ld77;->l:Ld77$f;

    .line 11
    iget-object v6, v5, Ld77$f;->a:Ljava/util/List;

    iget v5, v5, Ld77$f;->b:I

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq37;

    .line 12
    iget-object v5, v5, Lq37;->b:Lv27;

    .line 13
    sget-object v6, Lq37;->d:Lv27$c;

    .line 14
    iget-object v7, v5, Lv27;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 15
    check-cast v6, Ljava/lang/String;

    .line 16
    new-instance v7, Lb67$a;

    invoke-direct {v7}, Lb67$a;-><init>()V

    if-eqz v6, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    iget-object v6, p0, Ld77;->b:Ljava/lang/String;

    :goto_3
    const-string v8, "authority"

    .line 18
    invoke-static {v6, v8}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v7, Lb67$a;->a:Ljava/lang/String;

    const-string v6, "eagAttributes"

    .line 19
    invoke-static {v5, v6}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object v5, v7, Lb67$a;->b:Lv27;

    .line 21
    iget-object v5, p0, Ld77;->c:Ljava/lang/String;

    .line 22
    iput-object v5, v7, Lb67$a;->c:Ljava/lang/String;

    .line 23
    iput-object v0, v7, Lb67$a;->d:Lu37;

    .line 24
    new-instance v0, Ld77$h;

    invoke-direct {v0}, Ld77$h;-><init>()V

    .line 25
    iget-object v5, p0, Ld77;->a:Ly37;

    .line 26
    iput-object v5, v0, Ld77$h;->a:Ly37;

    .line 27
    new-instance v5, Ld77$d;

    iget-object v6, p0, Ld77;->f:Lb67;

    .line 28
    invoke-interface {v6, v3, v7, v0}, Lb67;->Y(Ljava/net/SocketAddress;Lb67$a;Lz27;)Ld67;

    move-result-object v6

    iget-object v7, p0, Ld77;->i:Lq57;

    invoke-direct {v5, v6, v7, v4}, Ld77$d;-><init>(Ld67;Lq57;Ld77$a;)V

    .line 29
    invoke-virtual {v5}, Lq67;->e()Ly37;

    move-result-object v4

    iput-object v4, v0, Ld77$h;->a:Ly37;

    .line 30
    iget-object v4, p0, Ld77;->h:Lv37;

    .line 31
    iget-object v4, v4, Lv37;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, v5}, Lv37;->a(Ljava/util/Map;Lx37;)V

    .line 32
    iput-object v5, p0, Ld77;->s:Ld67;

    .line 33
    iget-object v4, p0, Ld77;->q:Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v4, Ld77$g;

    invoke-direct {v4, p0, v5, v3}, Ld77$g;-><init>(Ld77;Ld67;Ljava/net/SocketAddress;)V

    .line 35
    invoke-virtual {v5}, Ld77$d;->a()Ld67;

    move-result-object v3

    invoke-interface {v3, v4}, Lc87;->d(Lc87$a;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 36
    iget-object v4, p0, Ld77;->k:Lb57;

    .line 37
    iget-object v4, v4, Lb57;->f:Ljava/util/Queue;

    const-string v5, "runnable is null"

    invoke-static {v3, v5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_5
    iget-object p0, p0, Ld77;->j:Lz27;

    sget-object v3, Lz27$a;->f:Lz27$a;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Ld77$h;->a:Ly37;

    aput-object v0, v2, v1

    const-string v0, "Started transport {0}"

    invoke-virtual {p0, v3, v0, v2}, Lz27;->b(Lz27$a;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()La67;
    .locals 4

    .line 1
    iget-object v0, p0, Ld77;->t:Lc87;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Ld77;->k:Lb57;

    new-instance v1, Ld77$b;

    invoke-direct {v1, p0}, Ld77$b;-><init>(Ld77;)V

    .line 3
    iget-object v2, v0, Lb57;->f:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v1, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Lb57;->a()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lx47;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld77;->k:Lb57;

    new-instance v1, Ld77$c;

    invoke-direct {v1, p0, p1}, Ld77$c;-><init>(Ld77;Lx47;)V

    .line 2
    iget-object p1, v0, Lb57;->f:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v1, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method

.method public e()Ly37;
    .locals 1

    .line 1
    iget-object v0, p0, Ld77;->a:Ly37;

    return-object v0
.end method

.method public final j(Lj37;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ld77;->k:Lb57;

    invoke-virtual {v0}, Lb57;->d()V

    .line 2
    iget-object v0, p0, Ld77;->u:Lj37;

    .line 3
    iget-object v0, v0, Lj37;->a:Li37;

    iget-object v1, p1, Lj37;->a:Li37;

    if-eq v0, v1, :cond_4

    .line 4
    iget-object v0, p0, Ld77;->u:Lj37;

    .line 5
    iget-object v0, v0, Lj37;->a:Li37;

    .line 6
    sget-object v1, Li37;->i:Li37;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot transition out of SHUTDOWN to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 7
    iput-object p1, p0, Ld77;->u:Lj37;

    .line 8
    iget-object v0, p0, Ld77;->e:Ld77$e;

    check-cast v0, Lx77;

    .line 9
    iget-object v1, v0, Lx77;->b:Lq77$u;

    iget-object v1, v1, Lq77$u;->i:Lq77;

    .line 10
    sget-object v4, Lq77;->c0:Ljava/util/logging/Logger;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v4, p1, Lj37;->a:Li37;

    .line 13
    sget-object v5, Li37;->g:Li37;

    if-eq v4, v5, :cond_1

    sget-object v5, Li37;->h:Li37;

    if-ne v4, v5, :cond_2

    .line 14
    :cond_1
    invoke-virtual {v1}, Lq77;->u()V

    .line 15
    :cond_2
    iget-object v1, v0, Lx77;->a:Lc47$j;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    const-string v1, "listener is null"

    invoke-static {v2, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 16
    iget-object v0, v0, Lx77;->a:Lc47$j;

    invoke-interface {v0, p1}, Lc47$j;->a(Lj37;)V

    :cond_4
    return-void
.end method

.method public final k(Lx47;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p1, Lx47;->a:Lx47$b;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p1, Lx47;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "("

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p1, Lx47;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Ld77;->a:Ly37;

    .line 2
    iget-wide v1, v1, Ly37;->c:J

    const-string v3, "logId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lnd5;->b(Ljava/lang/String;J)Lnd5;

    iget-object v1, p0, Ld77;->m:Ljava/util/List;

    const-string v2, "addressGroups"

    .line 4
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
