.class public Lex5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lex5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lex5$c$b;
    }
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final f:Ljava/lang/Thread;

.field public final synthetic g:Lex5;


# direct methods
.method public constructor <init>(Lex5;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lex5$c;->g:Lex5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lex5$c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lex5$c$b;-><init>(Lex5$c;Lex5$a;)V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lex5$c;->f:Ljava/lang/Thread;

    const-string v2, "FirestoreWorker"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 6
    new-instance v3, Lgx5;

    invoke-direct {v3, p0}, Lgx5;-><init>(Lex5$c;)V

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 8
    new-instance v1, Lex5$c$a;

    invoke-direct {v1, p0, v2, v0, p1}, Lex5$c$a;-><init>(Lex5$c;ILjava/util/concurrent/ThreadFactory;Lex5;)V

    iput-object v1, p0, Lex5$c;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lex5$c;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
