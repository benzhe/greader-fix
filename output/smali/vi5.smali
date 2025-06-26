.class public Lvi5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lpe5;

.field public final c:Lbj5;

.field public final d:J

.field public e:Lxi5;

.field public f:Lxi5;

.field public g:Lii5;

.field public final h:Lgj5;

.field public final i:Lnh5;

.field public final j:Lhh5;

.field public k:Ljava/util/concurrent/ExecutorService;

.field public l:Lwh5;

.field public m:Lzg5;


# direct methods
.method public constructor <init>(Lpe5;Lgj5;Lzg5;Lbj5;Lnh5;Lhh5;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lvi5;->b:Lpe5;

    .line 3
    iput-object p4, p0, Lvi5;->c:Lbj5;

    .line 4
    invoke-virtual {p1}, Lpe5;->a()V

    .line 5
    iget-object p1, p1, Lpe5;->a:Landroid/content/Context;

    .line 6
    iput-object p1, p0, Lvi5;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lvi5;->h:Lgj5;

    .line 8
    iput-object p3, p0, Lvi5;->m:Lzg5;

    .line 9
    iput-object p5, p0, Lvi5;->i:Lnh5;

    .line 10
    iput-object p6, p0, Lvi5;->j:Lhh5;

    .line 11
    iput-object p7, p0, Lvi5;->k:Ljava/util/concurrent/ExecutorService;

    .line 12
    new-instance p1, Lwh5;

    invoke-direct {p1, p7}, Lwh5;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lvi5;->l:Lwh5;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lvi5;->d:J

    return-void
.end method

.method public static a(Lvi5;Lkm5;)Le45;
    .locals 5

    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    .line 1
    iget-object v1, p0, Lvi5;->l:Lwh5;

    invoke-virtual {v1}, Lwh5;->a()V

    .line 2
    iget-object v1, p0, Lvi5;->e:Lxi5;

    invoke-virtual {v1}, Lxi5;->a()Z

    .line 3
    sget-object v1, Lah5;->a:Lah5;

    const-string v2, "Initialization marker file created."

    invoke-virtual {v1, v2}, Lah5;->b(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lvi5;->g:Lii5;

    .line 5
    iget-object v3, v2, Lii5;->e:Lwh5;

    new-instance v4, Ldi5;

    invoke-direct {v4, v2}, Ldi5;-><init>(Lii5;)V

    .line 6
    new-instance v2, Lxh5;

    invoke-direct {v2, v3, v4}, Lxh5;-><init>(Lwh5;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Lwh5;->b(Ljava/util/concurrent/Callable;)Le45;

    .line 7
    :try_start_0
    iget-object v2, p0, Lvi5;->i:Lnh5;

    .line 8
    new-instance v3, Lti5;

    invoke-direct {v3, p0}, Lti5;-><init>(Lvi5;)V

    .line 9
    invoke-interface {v2, v3}, Lnh5;->a(Lti5;)V

    .line 10
    check-cast p1, Ljm5;

    invoke-virtual {p1}, Ljm5;->c()Lsm5;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Lsm5;->a()Lqm5;

    move-result-object v3

    iget-boolean v3, v3, Lqm5;->a:Z

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {v1, v0}, Lah5;->b(Ljava/lang/String;)V

    .line 13
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lc50;->W(Ljava/lang/Exception;)Le45;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lvi5;->g:Lii5;

    invoke-interface {v2}, Lsm5;->b()Lrm5;

    move-result-object v2

    iget v2, v2, Lrm5;->a:I

    invoke-virtual {v0, v2}, Lii5;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Could not finalize previous sessions."

    .line 15
    invoke-virtual {v1, v0}, Lah5;->b(Ljava/lang/String;)V

    .line 16
    :cond_1
    iget-object v0, p0, Lvi5;->g:Lii5;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p1}, Ljm5;->a()Le45;

    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1}, Lii5;->u(FLe45;)Le45;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    sget-object v0, Lah5;->a:Lah5;

    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    const/4 v2, 0x6

    .line 20
    invoke-virtual {v0, v2}, Lah5;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FirebaseCrashlytics"

    .line 21
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_2
    invoke-static {p1}, Lc50;->W(Ljava/lang/Exception;)Le45;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :goto_0
    invoke-virtual {p0}, Lvi5;->c()V

    return-object p1

    :goto_1
    invoke-virtual {p0}, Lvi5;->c()V

    .line 24
    throw p1
.end method


# virtual methods
.method public final b(Lkm5;)V
    .locals 5

    const-string v0, "FirebaseCrashlytics"

    .line 1
    new-instance v1, Lvi5$a;

    invoke-direct {v1, p0, p1}, Lvi5$a;-><init>(Lvi5;Lkm5;)V

    .line 2
    iget-object p1, p0, Lvi5;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 3
    sget-object v1, Lah5;->a:Lah5;

    const-string v2, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 4
    invoke-virtual {v1, v2}, Lah5;->b(Ljava/lang/String;)V

    const-wide/16 v1, 0x4

    const/4 v3, 0x6

    .line 5
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object v1, Lah5;->a:Lah5;

    .line 7
    invoke-virtual {v1, v3}, Lah5;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Crashlytics timed out during initialization."

    .line 8
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    sget-object v1, Lah5;->a:Lah5;

    .line 10
    invoke-virtual {v1, v3}, Lah5;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Problem encountered during Crashlytics initialization."

    .line 11
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 12
    sget-object v1, Lah5;->a:Lah5;

    .line 13
    invoke-virtual {v1, v3}, Lah5;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Crashlytics was interrupted during initialization."

    .line 14
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvi5;->l:Lwh5;

    new-instance v1, Lvi5$b;

    invoke-direct {v1, p0}, Lvi5$b;-><init>(Lvi5;)V

    invoke-virtual {v0, v1}, Lwh5;->b(Ljava/util/concurrent/Callable;)Le45;

    return-void
.end method
