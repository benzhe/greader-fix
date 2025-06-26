.class public final Lr87$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz57;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "v"
.end annotation


# instance fields
.field public final a:Lr87$w;

.field public final synthetic b:Lr87;


# direct methods
.method public constructor <init>(Lr87;Lr87$w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr87$v;->b:Lr87;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr87$v;->a:Lr87$w;

    return-void
.end method


# virtual methods
.method public a(Lc97$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr87$v;->b:Lr87;

    .line 2
    iget-object v0, v0, Lr87;->p:Lr87$u;

    .line 3
    iget-object v1, v0, Lr87$u;->f:Lr87$w;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Headers should be received prior to messages."

    invoke-static {v1, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, v0, Lr87$u;->f:Lr87$w;

    iget-object v1, p0, Lr87$v;->a:Lr87$w;

    if-eq v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lr87$v;->b:Lr87;

    .line 6
    iget-object v0, v0, Lr87;->s:Lz57;

    .line 7
    invoke-interface {v0, p1}, Lc97;->a(Lc97$a;)V

    return-void
.end method

.method public b(Lx47;Li47;)V
    .locals 1

    .line 1
    sget-object v0, Lz57$a;->e:Lz57$a;

    invoke-virtual {p0, p1, v0, p2}, Lr87$v;->e(Lx47;Lz57$a;Li47;)V

    return-void
.end method

.method public c(Li47;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr87$v;->b:Lr87;

    iget-object v1, p0, Lr87$v;->a:Lr87$w;

    invoke-static {v0, v1}, Lr87;->m(Lr87;Lr87$w;)V

    .line 2
    iget-object v0, p0, Lr87$v;->b:Lr87;

    .line 3
    iget-object v0, v0, Lr87;->p:Lr87$u;

    .line 4
    iget-object v0, v0, Lr87$u;->f:Lr87$w;

    iget-object v1, p0, Lr87$v;->a:Lr87$w;

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lr87$v;->b:Lr87;

    .line 6
    iget-object v0, v0, Lr87;->s:Lz57;

    .line 7
    invoke-interface {v0, p1}, Lz57;->c(Li47;)V

    .line 8
    iget-object p1, p0, Lr87$v;->b:Lr87;

    .line 9
    iget-object p1, p1, Lr87;->n:Lr87$x;

    if-eqz p1, :cond_2

    .line 10
    :cond_0
    iget-object v0, p1, Lr87$x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 11
    iget v1, p1, Lr87$x;->a:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget v2, p1, Lr87$x;->c:I

    add-int/2addr v2, v0

    .line 13
    iget-object v3, p1, Lr87$x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr87$v;->b:Lr87;

    .line 2
    iget-object v0, v0, Lr87;->p:Lr87$u;

    .line 3
    iget-object v0, v0, Lr87$u;->c:Ljava/util/Collection;

    iget-object v1, p0, Lr87$v;->a:Lr87$w;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lr87$v;->b:Lr87;

    .line 5
    iget-object v0, v0, Lr87;->s:Lz57;

    .line 6
    invoke-interface {v0}, Lc97;->d()V

    :cond_0
    return-void
.end method

.method public e(Lx47;Lz57$a;Li47;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget-object v4, v1, Lr87$v;->b:Lr87;

    .line 2
    iget-object v4, v4, Lr87;->j:Ljava/lang/Object;

    .line 3
    monitor-enter v4

    .line 4
    :try_start_0
    iget-object v5, v1, Lr87$v;->b:Lr87;

    .line 5
    iget-object v6, v5, Lr87;->p:Lr87$u;

    .line 6
    iget-object v7, v1, Lr87$v;->a:Lr87$w;

    invoke-virtual {v6, v7}, Lr87$u;->e(Lr87$w;)Lr87$u;

    move-result-object v6

    .line 7
    iput-object v6, v5, Lr87;->p:Lr87$u;

    .line 8
    iget-object v5, v1, Lr87$v;->b:Lr87;

    .line 9
    iget-object v5, v5, Lr87;->o:Lc77;

    .line 10
    iget-object v6, v0, Lx47;->a:Lx47$b;

    .line 11
    invoke-virtual {v5, v6}, Lc77;->a(Ljava/lang/Object;)Lc77;

    .line 12
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    iget-object v4, v1, Lr87$v;->a:Lr87$w;

    iget-boolean v5, v4, Lr87$w;->c:Z

    if-eqz v5, :cond_1

    .line 14
    iget-object v2, v1, Lr87$v;->b:Lr87;

    invoke-static {v2, v4}, Lr87;->m(Lr87;Lr87$w;)V

    .line 15
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 16
    iget-object v2, v2, Lr87;->p:Lr87$u;

    .line 17
    iget-object v2, v2, Lr87$u;->f:Lr87$w;

    iget-object v4, v1, Lr87$v;->a:Lr87$w;

    if-ne v2, v4, :cond_0

    .line 18
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 19
    iget-object v2, v2, Lr87;->s:Lz57;

    .line 20
    invoke-interface {v2, v0, v3}, Lz57;->b(Lx47;Li47;)V

    :cond_0
    return-void

    .line 21
    :cond_1
    iget-object v4, v1, Lr87$v;->b:Lr87;

    .line 22
    iget-object v4, v4, Lr87;->p:Lr87$u;

    .line 23
    iget-object v4, v4, Lr87$u;->f:Lr87$w;

    if-nez v4, :cond_17

    .line 24
    sget-object v4, Lz57$a;->f:Lz57$a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_6

    iget-object v4, v1, Lr87$v;->b:Lr87;

    .line 25
    iget-object v4, v4, Lr87;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 27
    iget-object v0, v1, Lr87$v;->b:Lr87;

    iget-object v2, v1, Lr87$v;->a:Lr87$w;

    iget v2, v2, Lr87$w;->d:I

    .line 28
    invoke-virtual {v0, v2}, Lr87;->q(I)Lr87$w;

    move-result-object v0

    .line 29
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 30
    iget-boolean v3, v2, Lr87;->i:Z

    if-eqz v3, :cond_3

    .line 31
    iget-object v3, v2, Lr87;->j:Ljava/lang/Object;

    .line 32
    monitor-enter v3

    .line 33
    :try_start_1
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 34
    iget-object v4, v2, Lr87;->p:Lr87$u;

    .line 35
    iget-object v7, v1, Lr87$v;->a:Lr87$w;

    invoke-virtual {v4, v7, v0}, Lr87$u;->d(Lr87$w;Lr87$w;)Lr87$u;

    move-result-object v4

    .line 36
    iput-object v4, v2, Lr87;->p:Lr87$u;

    .line 37
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 38
    iget-object v4, v2, Lr87;->p:Lr87$u;

    .line 39
    invoke-virtual {v2, v4}, Lr87;->u(Lr87$u;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 41
    iget-object v2, v2, Lr87;->p:Lr87$u;

    .line 42
    iget-object v2, v2, Lr87$u;->d:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 43
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_5

    .line 44
    iget-object v2, v1, Lr87$v;->b:Lr87;

    invoke-static {v2, v0}, Lr87;->m(Lr87;Lr87$w;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 45
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 46
    :cond_3
    iget-object v3, v2, Lr87;->g:Ls87;

    if-nez v3, :cond_4

    .line 47
    iget-object v3, v2, Lr87;->e:Ls87$a;

    .line 48
    invoke-interface {v3}, Ls87$a;->get()Ls87;

    move-result-object v3

    .line 49
    iput-object v3, v2, Lr87;->g:Ls87;

    .line 50
    :cond_4
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 51
    iget-object v3, v2, Lr87;->g:Ls87;

    .line 52
    iget v3, v3, Ls87;->a:I

    if-ne v3, v5, :cond_5

    .line 53
    invoke-virtual {v2, v0}, Lr87;->p(Lr87$w;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 54
    check-cast v2, Lr87$c;

    invoke-virtual {v2}, Lr87$c;->run()V

    .line 55
    :cond_5
    :goto_1
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 56
    iget-object v2, v2, Lr87;->b:Ljava/util/concurrent/Executor;

    .line 57
    new-instance v3, Lr87$v$a;

    invoke-direct {v3, v1, v0}, Lr87$v$a;-><init>(Lr87$v;Lr87$w;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 58
    :cond_6
    sget-object v4, Lz57$a;->g:Lz57$a;

    if-ne v2, v4, :cond_7

    .line 59
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 60
    iget-boolean v4, v2, Lr87;->i:Z

    if-eqz v4, :cond_14

    .line 61
    invoke-virtual {v2}, Lr87;->t()V

    goto/16 :goto_a

    .line 62
    :cond_7
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 63
    iget-object v2, v2, Lr87;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 66
    iget-object v4, v2, Lr87;->g:Ls87;

    if-nez v4, :cond_8

    .line 67
    iget-object v4, v2, Lr87;->e:Ls87$a;

    .line 68
    invoke-interface {v4}, Ls87$a;->get()Ls87;

    move-result-object v4

    .line 69
    iput-object v4, v2, Lr87;->g:Ls87;

    .line 70
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 71
    iget-object v4, v2, Lr87;->g:Ls87;

    .line 72
    iget-wide v7, v4, Ls87;->b:J

    .line 73
    iput-wide v7, v2, Lr87;->v:J

    .line 74
    :cond_8
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 75
    iget-object v2, v2, Lr87;->g:Ls87;

    .line 76
    iget-object v2, v2, Ls87;->e:Ljava/util/Set;

    .line 77
    iget-object v4, v0, Lx47;->a:Lx47$b;

    .line 78
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 79
    iget-object v4, v1, Lr87$v;->b:Lr87;

    .line 80
    iget-object v4, v4, Lr87;->h:Lw67;

    .line 81
    iget-object v4, v4, Lw67;->c:Ljava/util/Set;

    .line 82
    iget-object v7, v0, Lx47;->a:Lx47$b;

    .line 83
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 84
    iget-object v7, v1, Lr87$v;->b:Lr87;

    .line 85
    iget-boolean v7, v7, Lr87;->i:Z

    if-eqz v7, :cond_9

    if-nez v4, :cond_9

    .line 86
    new-instance v2, Lr87$t;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lr87$t;-><init>(ZZJLjava/lang/Integer;)V

    goto/16 :goto_9

    .line 87
    :cond_9
    sget-object v7, Lr87;->x:Li47$f;

    invoke-virtual {v3, v7}, Li47;->d(Li47$f;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v7, :cond_a

    .line 88
    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    const/4 v7, -0x1

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_a
    move-object v7, v8

    .line 90
    :goto_2
    iget-object v9, v1, Lr87$v;->b:Lr87;

    .line 91
    iget-object v9, v9, Lr87;->n:Lr87$x;

    if-eqz v9, :cond_f

    if-nez v2, :cond_b

    if-nez v4, :cond_b

    if-eqz v7, :cond_f

    .line 92
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_f

    .line 93
    :cond_b
    iget-object v4, v1, Lr87$v;->b:Lr87;

    .line 94
    iget-object v4, v4, Lr87;->n:Lr87$x;

    .line 95
    :cond_c
    iget-object v9, v4, Lr87$x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    if-nez v9, :cond_d

    goto :goto_3

    :cond_d
    add-int/lit16 v10, v9, -0x3e8

    .line 96
    iget-object v11, v4, Lr87$x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v11, v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 97
    iget v4, v4, Lr87$x;->b:I

    if-le v10, v4, :cond_e

    const/4 v4, 0x1

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v4, 0x0

    :goto_4
    xor-int/2addr v4, v5

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    .line 98
    :goto_5
    iget-object v9, v1, Lr87$v;->b:Lr87;

    .line 99
    iget-object v10, v9, Lr87;->g:Ls87;

    .line 100
    iget v10, v10, Ls87;->a:I

    iget-object v11, v1, Lr87$v;->a:Lr87$w;

    iget v11, v11, Lr87$w;->d:I

    add-int/2addr v11, v5

    if-le v10, v11, :cond_11

    if-nez v4, :cond_11

    if-nez v7, :cond_10

    if-eqz v2, :cond_11

    .line 101
    iget-wide v9, v9, Lr87;->v:J

    long-to-double v9, v9

    .line 102
    sget-object v2, Lr87;->z:Ljava/util/Random;

    .line 103
    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v11

    mul-double v11, v11, v9

    double-to-long v9, v11

    .line 104
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 105
    iget-wide v11, v2, Lr87;->v:J

    long-to-double v11, v11

    .line 106
    iget-object v4, v2, Lr87;->g:Ls87;

    .line 107
    iget-wide v13, v4, Ls87;->d:D

    mul-double v11, v11, v13

    double-to-long v11, v11

    .line 108
    iget-wide v13, v4, Ls87;->c:J

    .line 109
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 110
    iput-wide v11, v2, Lr87;->v:J

    goto :goto_6

    .line 111
    :cond_10
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_11

    .line 112
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v9, v4

    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    .line 113
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 114
    iget-object v4, v2, Lr87;->g:Ls87;

    .line 115
    iget-wide v11, v4, Ls87;->b:J

    .line 116
    iput-wide v11, v2, Lr87;->v:J

    :goto_6
    move-wide v14, v9

    const/4 v12, 0x1

    goto :goto_7

    :cond_11
    const-wide/16 v9, 0x0

    move-wide v14, v9

    const/4 v12, 0x0

    .line 117
    :goto_7
    new-instance v2, Lr87$t;

    const/4 v13, 0x0

    .line 118
    iget-object v4, v1, Lr87$v;->b:Lr87;

    .line 119
    iget-boolean v4, v4, Lr87;->i:Z

    if-eqz v4, :cond_12

    move-object/from16 v16, v7

    goto :goto_8

    :cond_12
    move-object/from16 v16, v8

    :goto_8
    move-object v11, v2

    .line 120
    invoke-direct/range {v11 .. v16}, Lr87$t;-><init>(ZZJLjava/lang/Integer;)V

    .line 121
    :goto_9
    iget-boolean v4, v2, Lr87$t;->a:Z

    if-eqz v4, :cond_13

    .line 122
    iget-object v0, v1, Lr87$v;->b:Lr87;

    .line 123
    iget-object v4, v0, Lr87;->j:Ljava/lang/Object;

    .line 124
    monitor-enter v4

    .line 125
    :try_start_4
    iget-object v0, v1, Lr87$v;->b:Lr87;

    new-instance v3, Lr87$r;

    .line 126
    iget-object v5, v0, Lr87;->j:Ljava/lang/Object;

    .line 127
    invoke-direct {v3, v5}, Lr87$r;-><init>(Ljava/lang/Object;)V

    .line 128
    iput-object v3, v0, Lr87;->t:Lr87$r;

    .line 129
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    iget-object v0, v0, Lr87;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 131
    new-instance v4, Lr87$v$b;

    invoke-direct {v4, v1}, Lr87$v$b;-><init>(Lr87$v;)V

    iget-wide v5, v2, Lr87$t;->c:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v3, v0}, Lr87$r;->b(Ljava/util/concurrent/Future;)V

    return-void

    :catchall_1
    move-exception v0

    .line 132
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 133
    :cond_13
    iget-boolean v6, v2, Lr87$t;->b:Z

    .line 134
    iget-object v4, v1, Lr87$v;->b:Lr87;

    iget-object v2, v2, Lr87$t;->d:Ljava/lang/Integer;

    invoke-static {v4, v2}, Lr87;->o(Lr87;Ljava/lang/Integer;)V

    .line 135
    :cond_14
    :goto_a
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 136
    iget-boolean v4, v2, Lr87;->i:Z

    if-eqz v4, :cond_17

    .line 137
    iget-object v2, v2, Lr87;->j:Ljava/lang/Object;

    .line 138
    monitor-enter v2

    .line 139
    :try_start_6
    iget-object v4, v1, Lr87$v;->b:Lr87;

    .line 140
    iget-object v5, v4, Lr87;->p:Lr87$u;

    .line 141
    iget-object v7, v1, Lr87$v;->a:Lr87$w;

    invoke-virtual {v5, v7}, Lr87$u;->c(Lr87$w;)Lr87$u;

    move-result-object v5

    .line 142
    iput-object v5, v4, Lr87;->p:Lr87$u;

    if-nez v6, :cond_16

    .line 143
    iget-object v4, v1, Lr87$v;->b:Lr87;

    .line 144
    iget-object v5, v4, Lr87;->p:Lr87$u;

    .line 145
    invoke-virtual {v4, v5}, Lr87;->u(Lr87$u;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 146
    iget-object v4, v1, Lr87$v;->b:Lr87;

    .line 147
    iget-object v4, v4, Lr87;->p:Lr87$u;

    .line 148
    iget-object v4, v4, Lr87$u;->d:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    .line 149
    :cond_15
    monitor-exit v2

    return-void

    .line 150
    :cond_16
    monitor-exit v2

    goto :goto_b

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 151
    :cond_17
    :goto_b
    iget-object v2, v1, Lr87$v;->b:Lr87;

    iget-object v4, v1, Lr87$v;->a:Lr87$w;

    invoke-static {v2, v4}, Lr87;->m(Lr87;Lr87$w;)V

    .line 152
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 153
    iget-object v2, v2, Lr87;->p:Lr87$u;

    .line 154
    iget-object v2, v2, Lr87$u;->f:Lr87$w;

    iget-object v4, v1, Lr87$v;->a:Lr87$w;

    if-ne v2, v4, :cond_18

    .line 155
    iget-object v2, v1, Lr87$v;->b:Lr87;

    .line 156
    iget-object v2, v2, Lr87;->s:Lz57;

    .line 157
    invoke-interface {v2, v0, v3}, Lz57;->b(Lx47;Li47;)V

    :cond_18
    return-void

    :catchall_3
    move-exception v0

    .line 158
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method
