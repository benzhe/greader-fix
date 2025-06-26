.class public final Lms0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lzv2;

.field public static final b:Lzv2;

.field public static final c:Lzv2;

.field public static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final e:Lzv2;

.field public static final f:Lzv2;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 2
    new-instance v7, Los0;

    const-string v0, "Default"

    invoke-direct {v7, v0}, Los0;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v5, v17

    .line 3
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 4
    invoke-static {v8}, Lms0;->a(Ljava/util/concurrent/Executor;)Lzv2;

    move-result-object v0

    .line 5
    sput-object v0, Lms0;->a:Lzv2;

    .line 6
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x5

    const/4 v11, 0x5

    const-wide/16 v12, 0xa

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 7
    new-instance v1, Los0;

    const-string v2, "Loader"

    invoke-direct {v1, v2}, Los0;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    move-object/from16 v14, v17

    move-object/from16 v16, v1

    .line 8
    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 10
    invoke-static {v0}, Lms0;->a(Ljava/util/concurrent/Executor;)Lzv2;

    move-result-object v0

    .line 11
    sput-object v0, Lms0;->b:Lzv2;

    .line 12
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0xa

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 13
    new-instance v2, Los0;

    const-string v3, "Activeview"

    invoke-direct {v2, v3}, Los0;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    move-object/from16 v14, v17

    move-object/from16 v16, v2

    .line 14
    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 16
    invoke-static {v0}, Lms0;->a(Ljava/util/concurrent/Executor;)Lzv2;

    move-result-object v0

    .line 17
    sput-object v0, Lms0;->c:Lzv2;

    .line 18
    new-instance v0, Lps0;

    .line 19
    new-instance v1, Los0;

    const-string v2, "Schedule"

    invoke-direct {v1, v2}, Los0;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-direct {v0, v1}, Lps0;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lms0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    new-instance v0, Lrs0;

    invoke-direct {v0}, Lrs0;-><init>()V

    .line 22
    invoke-static {v0}, Lms0;->a(Ljava/util/concurrent/Executor;)Lzv2;

    move-result-object v0

    .line 23
    sput-object v0, Lms0;->e:Lzv2;

    .line 24
    sget-object v0, Llv2;->e:Llv2;

    invoke-static {v0}, Lms0;->a(Ljava/util/concurrent/Executor;)Lzv2;

    move-result-object v0

    sput-object v0, Lms0;->f:Lzv2;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)Lzv2;
    .locals 2

    .line 1
    new-instance v0, Lqs0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqs0;-><init>(Ljava/util/concurrent/Executor;Lps0;)V

    return-object v0
.end method
