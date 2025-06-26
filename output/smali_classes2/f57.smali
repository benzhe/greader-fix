.class public abstract Lf57;
.super Lg47;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lf57<",
        "TT;>;>",
        "Lg47<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final A:Lh87;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh87<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final B:Lo37;

.field public static final C:Lh37;

.field public static final x:Ljava/util/logging/Logger;

.field public static final y:J

.field public static final z:J


# instance fields
.field public a:Lh87;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh87<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lh87;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh87<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb37;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lp47;

.field public e:Ll47$c;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lo37;

.field public i:Lh37;

.field public j:J

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:Z

.field public p:Lv37;

.field public q:Z

.field public r:Lg97$b;

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lf57;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lf57;->x:Ljava/util/logging/Logger;

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lf57;->y:J

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lf57;->z:J

    .line 5
    sget-object v0, Lu67;->m:Lx87$c;

    .line 6
    new-instance v1, Lz87;

    invoke-direct {v1, v0}, Lz87;-><init>(Lx87$c;)V

    .line 7
    sput-object v1, Lf57;->A:Lh87;

    .line 8
    sget-object v0, Lo37;->d:Lo37;

    .line 9
    sput-object v0, Lf57;->B:Lo37;

    .line 10
    sget-object v0, Lh37;->b:Lh37;

    .line 11
    sput-object v0, Lf57;->C:Lh37;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lg47;-><init>()V

    .line 2
    sget-object v0, Lf57;->A:Lh87;

    iput-object v0, p0, Lf57;->a:Lh87;

    .line 3
    iput-object v0, p0, Lf57;->b:Lh87;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf57;->c:Ljava/util/List;

    .line 5
    sget-object v0, Lp47;->d:Ljava/util/logging/Logger;

    const-class v0, Ln47;

    const-class v1, Lp47;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lp47;->e:Lp47;

    if-nez v2, :cond_3

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v3, "k67"

    .line 8
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v3

    .line 9
    :try_start_2
    sget-object v4, Lp47;->d:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Unable to find DNS NameResolver"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lp47$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lp47$b;-><init>(Lo47;)V

    .line 12
    invoke-static {v0, v2, v3, v4}, Ln56;->s1(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lw47;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    sget-object v2, Lp47;->d:Ljava/util/logging/Logger;

    const-string v3, "No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 15
    :cond_0
    new-instance v2, Lp47;

    invoke-direct {v2}, Lp47;-><init>()V

    sput-object v2, Lp47;->e:Lp47;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln47;

    .line 17
    sget-object v3, Lp47;->d:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service loader found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Ln47;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    sget-object v3, Lp47;->e:Lp47;

    .line 20
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    :try_start_3
    invoke-virtual {v2}, Ln47;->c()Z

    move-result v4

    const-string v5, "isAvailable() returned false"

    invoke-static {v4, v5}, Lc50;->t(ZLjava/lang/Object;)V

    .line 22
    iget-object v4, v3, Lp47;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :try_start_4
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1

    .line 24
    :cond_2
    sget-object v0, Lp47;->e:Lp47;

    .line 25
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 26
    :try_start_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lp47;->b:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    new-instance v3, Lo47;

    invoke-direct {v3, v0}, Lo47;-><init>(Lp47;)V

    invoke-static {v3}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 28
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lp47;->c:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 29
    :try_start_6
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    .line 30
    :cond_3
    :goto_2
    sget-object v0, Lp47;->e:Lp47;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v1

    .line 31
    iput-object v0, p0, Lf57;->d:Lp47;

    .line 32
    iget-object v0, v0, Lp47;->a:Ll47$c;

    .line 33
    iput-object v0, p0, Lf57;->e:Ll47$c;

    const-string v0, "pick_first"

    .line 34
    iput-object v0, p0, Lf57;->g:Ljava/lang/String;

    .line 35
    sget-object v0, Lf57;->B:Lo37;

    iput-object v0, p0, Lf57;->h:Lo37;

    .line 36
    sget-object v0, Lf57;->C:Lh37;

    iput-object v0, p0, Lf57;->i:Lh37;

    .line 37
    sget-wide v0, Lf57;->y:J

    iput-wide v0, p0, Lf57;->j:J

    const/4 v0, 0x5

    .line 38
    iput v0, p0, Lf57;->k:I

    .line 39
    iput v0, p0, Lf57;->l:I

    const-wide/32 v0, 0x1000000

    .line 40
    iput-wide v0, p0, Lf57;->m:J

    const-wide/32 v0, 0x100000

    .line 41
    iput-wide v0, p0, Lf57;->n:J

    .line 42
    sget-object v0, Lv37;->e:Lv37;

    .line 43
    iput-object v0, p0, Lf57;->p:Lv37;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lf57;->q:Z

    .line 45
    sget-object v1, Lg97;->h:Lg97$b;

    sget-object v1, Lg97;->h:Lg97$b;

    iput-object v1, p0, Lf57;->r:Lg97$b;

    const/high16 v1, 0x400000

    .line 46
    iput v1, p0, Lf57;->s:I

    .line 47
    iput-boolean v0, p0, Lf57;->t:Z

    .line 48
    iput-boolean v0, p0, Lf57;->u:Z

    .line 49
    iput-boolean v0, p0, Lf57;->v:Z

    .line 50
    iput-boolean v0, p0, Lf57;->w:Z

    const-string v0, "target"

    .line 51
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lf57;->f:Ljava/lang/String;

    return-void

    :catchall_2
    move-exception p1

    .line 52
    monitor-exit v1

    throw p1
.end method


# virtual methods
.method public a()Lf47;
    .locals 18

    move-object/from16 v9, p0

    .line 1
    new-instance v10, La87;

    new-instance v11, Lq77;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lf57;->d()Lb67;

    move-result-object v3

    new-instance v4, Ll67$a;

    invoke-direct {v4}, Ll67$a;-><init>()V

    sget-object v0, Lu67;->m:Lx87$c;

    .line 3
    new-instance v5, Lz87;

    invoke-direct {v5, v0}, Lz87;-><init>(Lx87$c;)V

    .line 4
    sget-object v6, Lu67;->o:Lqd5;

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v9, Lf57;->c:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v9, Lf57;->o:Z

    .line 7
    iget-boolean v0, v9, Lf57;->t:Z

    const-string v2, "getClientInterceptor"

    const/4 v8, 0x0

    const/4 v12, 0x1

    const-string v13, "Unable to apply census stats"

    if-eqz v0, :cond_0

    .line 8
    iput-boolean v12, v9, Lf57;->o:Z

    :try_start_0
    const-string v0, "io.grpc.census.InternalCensusStatsAccessor"

    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    .line 10
    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v1

    aput-object v16, v15, v12

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 11
    invoke-virtual {v0, v2, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v14, v14, [Ljava/lang/Object;

    .line 12
    iget-boolean v15, v9, Lf57;->u:Z

    .line 13
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v1

    iget-boolean v15, v9, Lf57;->v:Z

    .line 14
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v12

    .line 15
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v15, v14, v17

    .line 16
    invoke-virtual {v0, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb37;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    sget-object v14, Lf57;->x:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v15, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 18
    sget-object v14, Lf57;->x:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v15, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 19
    sget-object v14, Lf57;->x:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v15, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 20
    sget-object v14, Lf57;->x:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v15, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v7, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 22
    :cond_0
    iget-boolean v0, v9, Lf57;->w:Z

    if-eqz v0, :cond_1

    .line 23
    iput-boolean v12, v9, Lf57;->o:Z

    :try_start_1
    const-string v0, "io.grpc.census.InternalCensusTracingAccessor"

    .line 24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v12, v1, [Ljava/lang/Class;

    .line 25
    invoke-virtual {v0, v2, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 26
    invoke-virtual {v0, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb37;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v8, v0

    goto :goto_2

    :catch_4
    move-exception v0

    .line 27
    sget-object v2, Lf57;->x:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v12, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_5
    move-exception v0

    .line 28
    sget-object v2, Lf57;->x:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v12, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v0

    .line 29
    sget-object v2, Lf57;->x:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v12, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception v0

    .line 30
    sget-object v2, Lf57;->x:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v12, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v8, :cond_1

    .line 31
    invoke-virtual {v7, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 32
    :cond_1
    sget-object v8, Ld97;->a:Ld97;

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lq77;-><init>(Lf57;Lb67;Ln57$a;Lh87;Lqd5;Ljava/util/List;Ld97;)V

    invoke-direct {v10, v11}, La87;-><init>(Lf47;)V

    return-object v10
.end method

.method public abstract d()Lb67;
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x1bb

    return v0
.end method
