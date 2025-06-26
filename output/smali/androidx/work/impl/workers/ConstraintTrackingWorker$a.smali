.class public Landroidx/work/impl/workers/ConstraintTrackingWorker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/workers/ConstraintTrackingWorker;->startWork()Lie5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$a;->e:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$a;->e:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 2
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Lsj;

    move-result-object v1

    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v1, v2}, Lsj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n:Ljava/lang/String;

    const-string v4, "No worker to delegate to."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4, v3}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()V

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getWorkerFactory()Lek;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->i:Landroidx/work/WorkerParameters;

    .line 8
    invoke-virtual {v2, v4, v1, v5}, Lek;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v2

    iput-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_1

    .line 9
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n:Ljava/lang/String;

    const-string v4, "No worker to delegate to."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4, v3}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()V

    goto/16 :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnk;->b(Landroid/content/Context;)Lnk;

    move-result-object v2

    .line 12
    iget-object v2, v2, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 13
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->n()Lem;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Lfm;

    invoke-virtual {v2, v4}, Lfm;->h(Ljava/lang/String;)Ldm;

    move-result-object v2

    if-nez v2, :cond_2

    .line 14
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()V

    goto/16 :goto_1

    .line 15
    :cond_2
    new-instance v4, Lel;

    .line 16
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getTaskExecutor()Lxm;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lel;-><init>(Landroid/content/Context;Lxm;Ldl;)V

    .line 17
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lel;->b(Ljava/util/List;)V

    .line 18
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lel;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 19
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v2

    sget-object v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n:Ljava/lang/String;

    const-string v6, "Constraints met for delegate %s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5, v6, v7}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 20
    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/ListenableWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->startWork()Lie5;

    move-result-object v2

    .line 21
    new-instance v5, Lzm;

    invoke-direct {v5, v0, v2}, Lzm;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lie5;)V

    .line 22
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 23
    invoke-interface {v2, v5, v6}, Lie5;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 24
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n:Ljava/lang/String;

    const-string v7, "Delegated worker %s threw exception in startWork."

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v2, v4, v3

    invoke-virtual {v5, v6, v1, v4}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 25
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->j:Ljava/lang/Object;

    monitor-enter v2

    .line 26
    :try_start_1
    iget-boolean v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Z

    if-eqz v1, :cond_3

    .line 27
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v1

    const-string v4, "Constraints were unmet, Retrying."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v6, v4, v3}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 28
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c()V

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a()V

    .line 30
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 31
    :cond_4
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v2

    sget-object v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n:Ljava/lang/String;

    const-string v6, "Constraints not met for delegate %s. Requesting retry."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5, v1, v3}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c()V

    :goto_1
    return-void
.end method
