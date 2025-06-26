.class public final Lq77;
.super Lf47;
.source "SourceFile"

# interfaces
.implements Lx37;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq77$t;,
        Lq77$q;,
        Lq77$s;,
        Lq77$r;,
        Lq77$k;,
        Lq77$l;,
        Lq77$j;,
        Lq77$u;,
        Lq77$o;,
        Lq77$n;,
        Lq77$v;,
        Lq77$p;,
        Lq77$h;,
        Lq77$i;,
        Lq77$m;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf47;",
        "Lx37<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c0:Ljava/util/logging/Logger;

.field public static final d0:Ljava/util/regex/Pattern;

.field public static final e0:Lx47;

.field public static final f0:Lx47;

.field public static final g0:Lx47;

.field public static final h0:Lq77$t;


# instance fields
.field public A:Z

.field public final B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ld77;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Li87;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Lh67;

.field public final E:Lq77$v;

.field public final F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public G:Z

.field public volatile H:Z

.field public volatile I:Z

.field public final J:Ljava/util/concurrent/CountDownLatch;

.field public final K:Lq57$a;

.field public final L:Lq57;

.field public final M:Ls57;

.field public final N:Lz27;

.field public final O:Lv37;

.field public P:Lq77$q;

.field public Q:Lq77$t;

.field public R:Z

.field public final S:Z

.field public final T:Lr87$q;

.field public final U:J

.field public final V:J

.field public final W:Lc87$a;

.field public final X:Lb77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb77<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public Y:Lb57$c;

.field public Z:Ln57;

.field public final a:Ly37;

.field public final a0:Lt57$c;

.field public final b:Ljava/lang/String;

.field public final b0:Lq87;

.field public final c:Ll47$c;

.field public final d:Ll47$a;

.field public final e:Lm57;

.field public final f:Lb67;

.field public final g:Lq77$r;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Lh87;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh87<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lh87;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh87<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lq77$k;

.field public final l:Lq77$k;

.field public final m:Ld97;

.field public final n:Lb57;

.field public final o:Lo37;

.field public final p:Lh37;

.field public final q:Lqd5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd5<",
            "Lpd5;",
            ">;"
        }
    .end annotation
.end field

.field public final r:J

.field public final s:Le67;

.field public final t:Lv87;

.field public final u:Ln57$a;

.field public final v:Ly27;

.field public w:Ll47;

.field public x:Z

.field public y:Lq77$n;

.field public volatile z:Lc47$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lq77;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lq77;->c0:Ljava/util/logging/Logger;

    const-string v0, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq77;->d0:Ljava/util/regex/Pattern;

    .line 3
    sget-object v0, Lx47;->n:Lx47;

    const-string v1, "Channel shutdownNow invoked"

    .line 4
    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v1

    sput-object v1, Lq77;->e0:Lx47;

    const-string v1, "Channel shutdown invoked"

    .line 5
    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v1

    sput-object v1, Lq77;->f0:Lx47;

    const-string v1, "Subchannel shutdown invoked"

    .line 6
    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    sput-object v0, Lq77;->g0:Lx47;

    .line 7
    new-instance v0, Lq77$t;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 9
    new-instance v2, Lb87;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v5}, Lb87;-><init>(Ljava/util/Map;Ljava/util/Map;Lr87$x;Ljava/lang/Object;)V

    .line 10
    invoke-direct {v0, v1, v2}, Lq77$t;-><init>(Ljava/util/Map;Lb87;)V

    sput-object v0, Lq77;->h0:Lq77$t;

    return-void
.end method

.method public constructor <init>(Lf57;Lb67;Ln57$a;Lh87;Lqd5;Ljava/util/List;Ld97;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf57<",
            "*>;",
            "Lb67;",
            "Ln57$a;",
            "Lh87<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lqd5<",
            "Lpd5;",
            ">;",
            "Ljava/util/List<",
            "Lb37;",
            ">;",
            "Ld97;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Lf47;-><init>()V

    .line 2
    new-instance v14, Lb57;

    new-instance v5, Lq77$a;

    invoke-direct {v5, v0}, Lq77$a;-><init>(Lq77;)V

    invoke-direct {v14, v5}, Lb57;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v14, v0, Lq77;->n:Lb57;

    .line 3
    new-instance v5, Le67;

    invoke-direct {v5}, Le67;-><init>()V

    iput-object v5, v0, Lq77;->s:Le67;

    .line 4
    new-instance v5, Ljava/util/HashSet;

    const/16 v6, 0x10

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v5, v6, v7}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v5, v0, Lq77;->B:Ljava/util/Set;

    .line 5
    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v7}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v5, v0, Lq77;->C:Ljava/util/Set;

    .line 6
    new-instance v5, Lq77$v;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7}, Lq77$v;-><init>(Lq77;Lq77$a;)V

    iput-object v5, v0, Lq77;->E:Lq77$v;

    .line 7
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Lq77;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, v0, Lq77;->J:Ljava/util/concurrent/CountDownLatch;

    .line 9
    sget-object v5, Lq77$q;->e:Lq77$q;

    iput-object v5, v0, Lq77;->P:Lq77$q;

    .line 10
    sget-object v5, Lq77;->h0:Lq77$t;

    iput-object v5, v0, Lq77;->Q:Lq77$t;

    .line 11
    iput-boolean v8, v0, Lq77;->R:Z

    .line 12
    new-instance v5, Lr87$q;

    invoke-direct {v5}, Lr87$q;-><init>()V

    iput-object v5, v0, Lq77;->T:Lr87$q;

    .line 13
    new-instance v15, Lq77$j;

    invoke-direct {v15, v0, v7}, Lq77$j;-><init>(Lq77;Lq77$a;)V

    iput-object v15, v0, Lq77;->W:Lc87$a;

    .line 14
    new-instance v5, Lq77$l;

    invoke-direct {v5, v0, v7}, Lq77$l;-><init>(Lq77;Lq77$a;)V

    iput-object v5, v0, Lq77;->X:Lb77;

    .line 15
    new-instance v5, Lq77$h;

    invoke-direct {v5, v0, v7}, Lq77$h;-><init>(Lq77;Lq77$a;)V

    iput-object v5, v0, Lq77;->a0:Lt57$c;

    .line 16
    iget-object v13, v1, Lf57;->f:Ljava/lang/String;

    const-string v5, "target"

    invoke-static {v13, v5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v13, v0, Lq77;->b:Ljava/lang/String;

    const-string v5, "Channel"

    .line 17
    invoke-static {v5, v13}, Ly37;->b(Ljava/lang/String;Ljava/lang/String;)Ly37;

    move-result-object v5

    iput-object v5, v0, Lq77;->a:Ly37;

    const-string v6, "timeProvider"

    .line 18
    invoke-static {v4, v6}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lq77;->m:Ld97;

    .line 19
    iget-object v6, v1, Lf57;->a:Lh87;

    const-string v8, "executorPool"

    invoke-static {v6, v8}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v0, Lq77;->i:Lh87;

    .line 20
    invoke-interface {v6}, Lh87;->a()Ljava/lang/Object;

    move-result-object v6

    const-string v8, "executor"

    invoke-static {v6, v8}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, Ljava/util/concurrent/Executor;

    iput-object v12, v0, Lq77;->h:Ljava/util/concurrent/Executor;

    .line 21
    new-instance v11, Lp57;

    move-object/from16 v6, p2

    invoke-direct {v11, v6, v12}, Lp57;-><init>(Lb67;Ljava/util/concurrent/Executor;)V

    iput-object v11, v0, Lq77;->f:Lb67;

    .line 22
    new-instance v10, Lq77$r;

    .line 23
    invoke-virtual {v11}, Lp57;->x0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-direct {v10, v6, v7}, Lq77$r;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lq77$a;)V

    iput-object v10, v0, Lq77;->g:Lq77$r;

    .line 24
    new-instance v6, Ls57;

    .line 25
    move-object v7, v4

    check-cast v7, Ld97$a;

    invoke-virtual {v7}, Ld97$a;->a()J

    move-result-wide v19

    const-string v7, "Channel for \'"

    const-string v8, "\'"

    invoke-static {v7, v13, v8}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v18, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v21}, Ls57;-><init>(Ly37;IJLjava/lang/String;)V

    iput-object v6, v0, Lq77;->M:Ls57;

    .line 26
    new-instance v9, Lr57;

    invoke-direct {v9, v6, v4}, Lr57;-><init>(Ls57;Ld97;)V

    iput-object v9, v0, Lq77;->N:Lz27;

    .line 27
    iget-object v8, v1, Lf57;->e:Ll47$c;

    .line 28
    iput-object v8, v0, Lq77;->c:Ll47$c;

    .line 29
    sget-object v7, Lu67;->k:Lt47;

    .line 30
    new-instance v5, Lm57;

    iget-object v6, v1, Lf57;->g:Ljava/lang/String;

    invoke-direct {v5, v6}, Lm57;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Lq77;->e:Lm57;

    .line 31
    new-instance v6, Lq77$k;

    move-object/from16 v16, v8

    iget-object v8, v1, Lf57;->b:Lh87;

    move-object/from16 v17, v11

    const-string v11, "offloadExecutorPool"

    .line 32
    invoke-static {v8, v11}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v6, v8}, Lq77$k;-><init>(Lh87;)V

    iput-object v6, v0, Lq77;->l:Lq77$k;

    .line 33
    new-instance v11, Lq77$s;

    iget v6, v1, Lf57;->k:I

    iget v8, v1, Lf57;->l:I

    const/16 v23, 0x0

    move-object/from16 v22, v11

    move/from16 v24, v6

    move/from16 v25, v8

    move-object/from16 v26, v5

    move-object/from16 v27, v9

    invoke-direct/range {v22 .. v27}, Lq77$s;-><init>(ZIILm57;Lz27;)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Lf57;->e()I

    move-result v5

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 36
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v8, Lq77$g;

    invoke-direct {v8, v0}, Lq77$g;-><init>(Lq77;)V

    .line 38
    new-instance v5, Ll47$a;

    const/16 v18, 0x0

    move-object/from16 v19, v13

    const/4 v13, 0x0

    move-object/from16 p2, v5

    move-object/from16 v28, v16

    move-object/from16 v16, v8

    move-object v8, v14

    move-object/from16 v20, v9

    move-object v9, v11

    move-object/from16 v11, v20

    move-object v4, v12

    move-object/from16 v12, v16

    move-object/from16 v3, v19

    move-object/from16 v13, v18

    invoke-direct/range {v5 .. v13}, Ll47$a;-><init>(Ljava/lang/Integer;Lt47;Lb57;Ll47$g;Ljava/util/concurrent/ScheduledExecutorService;Lz27;Ljava/util/concurrent/Executor;Lk47;)V

    .line 39
    iput-object v5, v0, Lq77;->d:Ll47$a;

    move-object/from16 v6, v28

    .line 40
    invoke-static {v3, v6, v5}, Lq77;->t(Ljava/lang/String;Ll47$c;Ll47$a;)Ll47;

    move-result-object v3

    iput-object v3, v0, Lq77;->w:Ll47;

    const-string v3, "balancerRpcExecutorPool"

    .line 41
    invoke-static {v2, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lq77;->j:Lh87;

    .line 42
    new-instance v3, Lq77$k;

    invoke-direct {v3, v2}, Lq77$k;-><init>(Lh87;)V

    iput-object v3, v0, Lq77;->k:Lq77$k;

    .line 43
    new-instance v2, Lh67;

    invoke-direct {v2, v4, v14}, Lh67;-><init>(Ljava/util/concurrent/Executor;Lb57;)V

    iput-object v2, v0, Lq77;->D:Lh67;

    .line 44
    invoke-virtual {v2, v15}, Lh67;->d(Lc87$a;)Ljava/lang/Runnable;

    move-object/from16 v2, p3

    .line 45
    iput-object v2, v0, Lq77;->u:Ln57$a;

    .line 46
    new-instance v2, Lv87;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lv87;-><init>(Z)V

    iput-object v2, v0, Lq77;->t:Lv87;

    .line 47
    iget-boolean v4, v1, Lf57;->q:Z

    iput-boolean v4, v0, Lq77;->S:Z

    .line 48
    new-instance v5, Lq77$p;

    iget-object v6, v0, Lq77;->w:Ll47;

    invoke-virtual {v6}, Ll47;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v0, v6, v7}, Lq77$p;-><init>(Lq77;Ljava/lang/String;Lq77$a;)V

    const/4 v6, 0x1

    new-array v6, v6, [Lb37;

    aput-object v2, v6, v3

    .line 49
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ld37;->a(Ly27;Ljava/util/List;)Ly27;

    move-result-object v3

    move-object/from16 v5, p6

    .line 50
    invoke-static {v3, v5}, Ld37;->a(Ly27;Ljava/util/List;)Ly27;

    move-result-object v3

    iput-object v3, v0, Lq77;->v:Ly27;

    const-string v3, "stopwatchSupplier"

    move-object/from16 v5, p5

    .line 51
    invoke-static {v5, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v0, Lq77;->q:Lqd5;

    .line 52
    iget-wide v8, v1, Lf57;->j:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_0

    .line 53
    iput-wide v8, v0, Lq77;->r:J

    goto :goto_1

    .line 54
    :cond_0
    sget-wide v10, Lf57;->z:J

    cmp-long v3, v8, v10

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v6, "invalid idleTimeoutMillis %s"

    invoke-static {v3, v6, v8, v9}, Lc50;->n(ZLjava/lang/String;J)V

    .line 55
    iget-wide v8, v1, Lf57;->j:J

    iput-wide v8, v0, Lq77;->r:J

    .line 56
    :goto_1
    new-instance v3, Lq87;

    new-instance v6, Lq77$m;

    invoke-direct {v6, v0, v7}, Lq77$m;-><init>(Lq77;Lq77$a;)V

    .line 57
    invoke-virtual/range {v17 .. v17}, Lp57;->x0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 58
    invoke-interface/range {p5 .. p5}, Lqd5;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpd5;

    invoke-direct {v3, v6, v14, v7, v5}, Lq87;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lpd5;)V

    iput-object v3, v0, Lq77;->b0:Lq87;

    .line 59
    iget-object v3, v1, Lf57;->h:Lo37;

    const-string v5, "decompressorRegistry"

    invoke-static {v3, v5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v0, Lq77;->o:Lo37;

    .line 60
    iget-object v3, v1, Lf57;->i:Lh37;

    const-string v5, "compressorRegistry"

    invoke-static {v3, v5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v0, Lq77;->p:Lh37;

    .line 61
    iget-wide v5, v1, Lf57;->m:J

    iput-wide v5, v0, Lq77;->V:J

    .line 62
    iget-wide v5, v1, Lf57;->n:J

    iput-wide v5, v0, Lq77;->U:J

    .line 63
    new-instance v3, Lq77$b;

    move-object/from16 v5, p7

    invoke-direct {v3, v0, v5}, Lq77$b;-><init>(Lq77;Ld97;)V

    iput-object v3, v0, Lq77;->K:Lq57$a;

    .line 64
    invoke-virtual {v3}, Lq77$b;->a()Lq57;

    move-result-object v3

    iput-object v3, v0, Lq77;->L:Lq57;

    .line 65
    iget-object v1, v1, Lf57;->p:Lv37;

    .line 66
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iput-object v1, v0, Lq77;->O:Lv37;

    .line 68
    iget-object v1, v1, Lv37;->a:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v1, v0}, Lv37;->a(Ljava/util/Map;Lx37;)V

    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Lq77;->R:Z

    .line 70
    iget-object v3, v0, Lq77;->Q:Lq77$t;

    iget-object v3, v3, Lq77$t;->b:Lb87;

    .line 71
    iget-object v4, v2, Lv87;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 72
    iput-boolean v1, v2, Lv87;->c:Z

    :cond_2
    return-void
.end method

.method public static n(Lq77;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lq77;->G:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lq77;->B:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld77;

    .line 3
    sget-object v2, Lq77;->e0:Lx47;

    .line 4
    invoke-virtual {v1, v2}, Ld77;->b(Lx47;)V

    .line 5
    iget-object v3, v1, Ld77;->k:Lb57;

    new-instance v4, Lj77;

    invoke-direct {v4, v1, v2}, Lj77;-><init>(Ld77;Lx47;)V

    .line 6
    iget-object v1, v3, Lb57;->f:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v4, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v3}, Lb57;->a()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lq77;->C:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li87;

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public static o(Lq77;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object p0, p0, Lq77;->n:Lb57;

    invoke-virtual {p0}, Lb57;->d()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lq77;->c0:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should be called from SynchronizationContext. This warning will become an exception in a future release. See https://github.com/grpc/grpc-java/issues/5015 for more details"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static p(Lq77;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lq77;->I:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lq77;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq77;->B:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq77;->C:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lq77;->N:Lz27;

    sget-object v1, Lz27$a;->f:Lz27$a;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lq77;->O:Lv37;

    .line 5
    iget-object v0, v0, Lv37;->a:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p0}, Lv37;->b(Ljava/util/Map;Lx37;)V

    .line 6
    iget-object v0, p0, Lq77;->i:Lh87;

    iget-object v1, p0, Lq77;->h:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lh87;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lq77;->k:Lq77$k;

    invoke-virtual {v0}, Lq77$k;->a()V

    .line 8
    iget-object v0, p0, Lq77;->l:Lq77$k;

    invoke-virtual {v0}, Lq77$k;->a()V

    .line 9
    iget-object v0, p0, Lq77;->f:Lb67;

    invoke-interface {v0}, Lb67;->close()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lq77;->I:Z

    .line 11
    iget-object p0, p0, Lq77;->J:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static q(Lq77;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lq77;->w(Z)V

    .line 2
    iget-object v1, p0, Lq77;->D:Lh67;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lh67;->i(Lc47$i;)V

    .line 3
    iget-object v1, p0, Lq77;->N:Lz27;

    sget-object v2, Lz27$a;->f:Lz27$a;

    const-string v3, "Entering IDLE state"

    invoke-virtual {v1, v2, v3}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lq77;->s:Le67;

    sget-object v2, Li37;->h:Li37;

    invoke-virtual {v1, v2}, Le67;->a(Li37;)V

    .line 5
    iget-object v1, p0, Lq77;->X:Lb77;

    .line 6
    iget-object v1, v1, Lb77;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lq77;->s()V

    :cond_0
    return-void
.end method

.method public static t(Ljava/lang/String;Ll47$c;Ll47$a;)Ll47;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1, v2, p2}, Ll47$c;->b(Ljava/net/URI;Ll47$a;)Ll47;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 5
    :cond_0
    sget-object v2, Lq77;->d0:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_1

    .line 6
    :try_start_1
    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Ll47$c;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7
    invoke-virtual {p1, v2, p2}, Ll47$c;->b(Ljava/net/URI;Ll47$a;)Ll47;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :catch_1
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    const/4 p0, 0x1

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    aput-object v3, p2, p0

    const-string p0, "cannot find a NameResolver for %s%s"

    .line 11
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq77;->v:Ly27;

    invoke-virtual {v0}, Ly27;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ly37;
    .locals 1

    .line 1
    iget-object v0, p0, Lq77;->a:Ly37;

    return-object v0
.end method

.method public h(Lj47;Lx27;)La37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj47<",
            "TReqT;TRespT;>;",
            "Lx27;",
            ")",
            "La37<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq77;->v:Ly27;

    invoke-virtual {v0, p1, p2}, Ly27;->h(Lj47;Lx27;)La37;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq77;->n:Lb57;

    new-instance v1, Lq77$d;

    invoke-direct {v1, p0}, Lq77$d;-><init>(Lq77;)V

    .line 2
    iget-object v2, v0, Lb57;->f:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v1, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method

.method public j(Z)Li37;
    .locals 4

    .line 1
    iget-object v0, p0, Lq77;->s:Le67;

    .line 2
    iget-object v0, v0, Le67;->b:Li37;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Li37;->h:Li37;

    if-ne v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lq77;->n:Lb57;

    new-instance v1, Lq77$e;

    invoke-direct {v1, p0}, Lq77$e;-><init>(Lq77;)V

    .line 5
    iget-object v2, p1, Lb57;->f:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v1, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lb57;->a()V

    :cond_0
    return-object v0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Channel state API is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Li37;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq77;->n:Lb57;

    new-instance v1, Lq77$c;

    invoke-direct {v1, p0, p2, p1}, Lq77$c;-><init>(Lq77;Ljava/lang/Runnable;Li37;)V

    .line 2
    iget-object p1, v0, Lb57;->f:Ljava/util/Queue;

    const-string p2, "runnable is null"

    invoke-static {v1, p2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq77;->n:Lb57;

    new-instance v1, Lq77$f;

    invoke-direct {v1, p0}, Lq77$f;-><init>(Lq77;)V

    .line 2
    iget-object v2, v0, Lb57;->f:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v1, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method

.method public m()Lf47;
    .locals 5

    .line 1
    iget-object v0, p0, Lq77;->N:Lz27;

    sget-object v1, Lz27$a;->e:Lz27$a;

    const-string v2, "shutdownNow() called"

    invoke-virtual {v0, v1, v2}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lq77;->N:Lz27;

    const-string v2, "shutdown() called"

    invoke-virtual {v0, v1, v2}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lq77;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lq77;->n:Lb57;

    new-instance v1, Lt77;

    invoke-direct {v1, p0}, Lt77;-><init>(Lq77;)V

    .line 5
    iget-object v0, v0, Lb57;->f:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v1, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lq77;->E:Lq77$v;

    sget-object v1, Lq77;->f0:Lx47;

    invoke-virtual {v0, v1}, Lq77$v;->a(Lx47;)V

    .line 7
    iget-object v0, p0, Lq77;->n:Lb57;

    new-instance v1, Lr77;

    invoke-direct {v1, p0}, Lr77;-><init>(Lq77;)V

    .line 8
    iget-object v3, v0, Lb57;->f:Ljava/util/Queue;

    invoke-static {v1, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0}, Lb57;->a()V

    .line 10
    :goto_0
    iget-object v0, p0, Lq77;->E:Lq77$v;

    sget-object v1, Lq77;->e0:Lx47;

    .line 11
    invoke-virtual {v0, v1}, Lq77$v;->a(Lx47;)V

    .line 12
    iget-object v2, v0, Lq77$v;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 13
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lq77$v;->b:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly57;

    .line 16
    invoke-interface {v3, v1}, Ly57;->f(Lx47;)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, v0, Lq77$v;->d:Lq77;

    .line 18
    iget-object v0, v0, Lq77;->D:Lh67;

    .line 19
    invoke-virtual {v0, v1}, Lh67;->c(Lx47;)V

    .line 20
    iget-object v0, p0, Lq77;->n:Lb57;

    new-instance v1, Lu77;

    invoke-direct {v1, p0}, Lu77;-><init>(Lq77;)V

    .line 21
    iget-object v2, v0, Lb57;->f:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v1, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v0}, Lb57;->a()V

    return-object p0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final r(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq77;->b0:Lq87;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lq87;->f:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, v0, Lq87;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, v0, Lq87;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq77;->n:Lb57;

    invoke-virtual {v0}, Lb57;->d()V

    .line 2
    iget-object v0, p0, Lq77;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lq77;->A:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lq77;->X:Lb77;

    .line 4
    iget-object v0, v0, Lb77;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lq77;->r(Z)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lq77;->v()V

    .line 7
    :goto_0
    iget-object v0, p0, Lq77;->y:Lq77$n;

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lq77;->N:Lz27;

    sget-object v2, Lz27$a;->f:Lz27$a;

    const-string v3, "Exiting idle mode"

    invoke-virtual {v0, v2, v3}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lq77$n;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lq77$n;-><init>(Lq77;Lq77$a;)V

    .line 10
    iget-object v2, p0, Lq77;->e:Lm57;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v3, Lm57$b;

    invoke-direct {v3, v2, v0}, Lm57$b;-><init>(Lm57;Lc47$d;)V

    .line 13
    iput-object v3, v0, Lq77$n;->a:Lm57$b;

    .line 14
    iput-object v0, p0, Lq77;->y:Lq77$n;

    .line 15
    new-instance v2, Lq77$o;

    iget-object v3, p0, Lq77;->w:Ll47;

    invoke-direct {v2, p0, v0, v3}, Lq77$o;-><init>(Lq77;Lq77$n;Ll47;)V

    .line 16
    iget-object v0, p0, Lq77;->w:Ll47;

    invoke-virtual {v0, v2}, Ll47;->d(Ll47$e;)V

    .line 17
    iput-boolean v1, p0, Lq77;->x:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lq77;->a:Ly37;

    .line 2
    iget-wide v1, v1, Ly37;->c:J

    const-string v3, "logId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lnd5;->b(Ljava/lang/String;J)Lnd5;

    iget-object v1, p0, Lq77;->b:Ljava/lang/String;

    const-string v2, "target"

    .line 4
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq77;->n:Lb57;

    invoke-virtual {v0}, Lb57;->d()V

    .line 2
    iget-object v0, p0, Lq77;->n:Lb57;

    invoke-virtual {v0}, Lb57;->d()V

    .line 3
    iget-object v0, p0, Lq77;->Y:Lb57$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lb57$c;->a()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lq77;->Y:Lb57$c;

    .line 6
    iput-object v0, p0, Lq77;->Z:Ln57;

    .line 7
    :cond_0
    iget-object v0, p0, Lq77;->n:Lb57;

    invoke-virtual {v0}, Lb57;->d()V

    .line 8
    iget-boolean v0, p0, Lq77;->x:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lq77;->w:Ll47;

    invoke-virtual {v0}, Ll47;->b()V

    :cond_1
    return-void
.end method

.method public final v()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lq77;->r:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lq77;->b0:Lq87;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 5
    iget-object v3, v2, Lq87;->d:Lpd5;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lpd5;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    add-long/2addr v5, v0

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, v2, Lq87;->f:Z

    .line 7
    iget-wide v7, v2, Lq87;->e:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-ltz v3, :cond_1

    iget-object v3, v2, Lq87;->g:Ljava/util/concurrent/ScheduledFuture;

    if-nez v3, :cond_3

    .line 8
    :cond_1
    iget-object v3, v2, Lq87;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    .line 9
    invoke-interface {v3, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 10
    :cond_2
    iget-object v3, v2, Lq87;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lq87$c;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8}, Lq87$c;-><init>(Lq87;Lq87$a;)V

    invoke-interface {v3, v7, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v2, Lq87;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    :cond_3
    iput-wide v5, v2, Lq87;->e:J

    return-void
.end method

.method public final w(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq77;->n:Lb57;

    invoke-virtual {v0}, Lb57;->d()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v1, p0, Lq77;->x:Z

    const-string v2, "nameResolver is not started"

    invoke-static {v1, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lq77;->y:Lq77$n;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "lbHelper is null"

    invoke-static {v1, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 4
    :cond_1
    iget-object v1, p0, Lq77;->w:Ll47;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Lq77;->n:Lb57;

    invoke-virtual {v1}, Lb57;->d()V

    .line 6
    iget-object v1, p0, Lq77;->Y:Lb57$c;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lb57$c;->a()V

    .line 8
    iput-object v2, p0, Lq77;->Y:Lb57$c;

    .line 9
    iput-object v2, p0, Lq77;->Z:Ln57;

    .line 10
    :cond_2
    iget-object v1, p0, Lq77;->w:Ll47;

    invoke-virtual {v1}, Ll47;->c()V

    .line 11
    iput-boolean v0, p0, Lq77;->x:Z

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lq77;->b:Ljava/lang/String;

    iget-object v0, p0, Lq77;->c:Ll47$c;

    iget-object v1, p0, Lq77;->d:Ll47$a;

    invoke-static {p1, v0, v1}, Lq77;->t(Ljava/lang/String;Ll47$c;Ll47$a;)Ll47;

    move-result-object p1

    iput-object p1, p0, Lq77;->w:Ll47;

    goto :goto_1

    .line 13
    :cond_3
    iput-object v2, p0, Lq77;->w:Ll47;

    .line 14
    :cond_4
    :goto_1
    iget-object p1, p0, Lq77;->y:Lq77$n;

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p1, Lq77$n;->a:Lm57$b;

    .line 16
    iget-object v0, p1, Lm57$b;->b:Lc47;

    invoke-virtual {v0}, Lc47;->d()V

    .line 17
    iput-object v2, p1, Lm57$b;->b:Lc47;

    .line 18
    iput-object v2, p0, Lq77;->y:Lq77$n;

    .line 19
    :cond_5
    iput-object v2, p0, Lq77;->z:Lc47$i;

    return-void
.end method
