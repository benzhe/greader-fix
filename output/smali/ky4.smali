.class public final Lky4;
.super Lgw4;
.source "SourceFile"


# instance fields
.field public final e:Lj25;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lj25;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgw4;-><init>()V

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lky4;->e:Lj25;

    const/4 p1, 0x0

    iput-object p1, p0, Lky4;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final E0(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 3

    .line 1
    invoke-static {}, Lpc4;->b()Z

    iget-object v0, p0, Lky4;->e:Lj25;

    .line 2
    iget-object v0, v0, Lj25;->j:Lrx4;

    .line 3
    iget-object v0, v0, Lrx4;->g:Lcs4;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lew4;->G0:Ldw4;

    invoke-virtual {v0, v1, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v0}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->z:Ljava/lang/String;

    const-string v1, "null reference"

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lcy4;

    .line 9
    invoke-direct {v0, p0, p1}, Lcy4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 10
    iget-object p1, p0, Lky4;->e:Lj25;

    .line 11
    invoke-virtual {p1}, Lj25;->m()Lox4;

    move-result-object p1

    invoke-virtual {p1}, Lox4;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {v0}, Lcy4;->run()V

    return-void

    :cond_0
    iget-object p1, p0, Lky4;->e:Lj25;

    .line 13
    invoke-virtual {p1}, Lj25;->m()Lox4;

    move-result-object p1

    invoke-virtual {p1, v0}, Lox4;->s(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final G5(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Liy4;

    .line 2
    invoke-direct {v0, p0, p1}, Liy4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p0, v0}, Lky4;->g0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final I3(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)[B
    .locals 11

    .line 1
    invoke-static {p2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p2, v0}, Lky4;->b2(Ljava/lang/String;Z)V

    iget-object v1, p0, Lky4;->e:Lj25;

    .line 4
    invoke-virtual {v1}, Lj25;->a()Lqw4;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lqw4;->m:Low4;

    .line 6
    iget-object v2, p0, Lky4;->e:Lj25;

    .line 7
    invoke-virtual {v2}, Lj25;->R()Llw4;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Log and bundle. event"

    .line 8
    invoke-virtual {v1, v3, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lky4;->e:Lj25;

    .line 9
    iget-object v1, v1, Lj25;->j:Lrx4;

    .line 10
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 11
    invoke-interface {v1}, Lb20;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    iget-object v5, p0, Lky4;->e:Lj25;

    .line 12
    invoke-virtual {v5}, Lj25;->m()Lox4;

    move-result-object v5

    new-instance v6, Lfy4;

    invoke-direct {v6, p0, p1, p2}, Lfy4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Lmy4;->i()V

    .line 14
    new-instance v7, Lmx4;

    .line 15
    invoke-direct {v7, v5, v6, v0}, Lmx4;-><init>(Lox4;Ljava/util/concurrent/Callable;Z)V

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v6, v5, Lox4;->c:Lnx4;

    if-ne v0, v6, :cond_0

    .line 17
    invoke-virtual {v7}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v5, v7}, Lox4;->u(Lmx4;)V

    .line 19
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    iget-object v0, p0, Lky4;->e:Lj25;

    .line 20
    invoke-virtual {v0}, Lj25;->a()Lqw4;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v5, "Log and bundle returned null. appId"

    .line 22
    invoke-static {p2}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 23
    invoke-virtual {v0, v5, v6}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_1
    iget-object v5, p0, Lky4;->e:Lj25;

    .line 24
    iget-object v5, v5, Lj25;->j:Lrx4;

    .line 25
    iget-object v5, v5, Lrx4;->n:Lb20;

    .line 26
    invoke-interface {v5}, Lb20;->nanoTime()J

    move-result-wide v5

    iget-object v7, p0, Lky4;->e:Lj25;

    .line 27
    invoke-virtual {v7}, Lj25;->a()Lqw4;

    move-result-object v7

    .line 28
    iget-object v7, v7, Lqw4;->m:Low4;

    const-string v8, "Log and bundle processed. event, size, time_ms"

    .line 29
    iget-object v9, p0, Lky4;->e:Lj25;

    .line 30
    invoke-virtual {v9}, Lj25;->R()Llw4;

    move-result-object v9

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    array-length v10, v0

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    div-long/2addr v5, v3

    sub-long/2addr v5, v1

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 33
    invoke-virtual {v7, v8, v9, v10, v1}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    iget-object v1, p0, Lky4;->e:Lj25;

    .line 34
    invoke-virtual {v1}, Lj25;->a()Lqw4;

    move-result-object v1

    .line 35
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 36
    invoke-static {p2}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lky4;->e:Lj25;

    .line 37
    invoke-virtual {v2}, Lj25;->R()Llw4;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 38
    invoke-virtual {v1, v2, p2, p1, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final I6(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Ldy4;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Ldy4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p0, v0}, Lky4;->g0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final M6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkr;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lky4;->b2(Ljava/lang/String;Z)V

    iget-object v0, p0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->m()Lox4;

    move-result-object v0

    new-instance v1, Lxx4;

    invoke-direct {v1, p0, p1, p2, p3}, Lxx4;-><init>(Lky4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lox4;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 4
    :try_start_0
    check-cast p2, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln25;

    if-nez p4, :cond_1

    .line 7
    iget-object v1, v0, Ln25;->c:Ljava/lang/String;

    invoke-static {v1}, Lp25;->F(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ln25;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    iget-object p3, p0, Lky4;->e:Lj25;

    .line 9
    invoke-virtual {p3}, Lj25;->a()Lqw4;

    move-result-object p3

    .line 10
    iget-object p3, p3, Lqw4;->f:Low4;

    .line 11
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Failed to get user properties as. appId"

    .line 12
    invoke-virtual {p3, p4, p1, p2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final Q2(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/measurement/internal/zzp;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkr;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p4}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->m()Lox4;

    move-result-object v0

    new-instance v1, Lwx4;

    invoke-direct {v1, p0, p4, p1, p2}, Lwx4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lox4;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 4
    :try_start_0
    check-cast p1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln25;

    if-nez p3, :cond_1

    .line 7
    iget-object v1, v0, Ln25;->c:Ljava/lang/String;

    invoke-static {v1}, Lp25;->F(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ln25;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    iget-object p2, p0, Lky4;->e:Lj25;

    .line 9
    invoke-virtual {p2}, Lj25;->a()Lqw4;

    move-result-object p2

    .line 10
    iget-object p2, p2, Lqw4;->f:Low4;

    .line 11
    iget-object p3, p4, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {p3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Failed to query user properties. appId"

    .line 12
    invoke-virtual {p2, p4, p3, p1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final V2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lky4;->b2(Ljava/lang/String;Z)V

    iget-object v0, p0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->m()Lox4;

    move-result-object v0

    new-instance v1, Lzx4;

    invoke-direct {v1, p0, p1, p2, p3}, Lzx4;-><init>(Lky4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lox4;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 4
    :try_start_0
    check-cast p1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lky4;->e:Lj25;

    .line 5
    invoke-virtual {p2}, Lj25;->a()Lqw4;

    move-result-object p2

    .line 6
    iget-object p2, p2, Lqw4;->f:Low4;

    const-string p3, "Failed to get conditional user properties as"

    .line 7
    invoke-virtual {p2, p3, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final Z0(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lky4;->e:Lj25;

    .line 2
    iget-object v1, v0, Lj25;->j:Lrx4;

    .line 3
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v2, Lf25;

    .line 4
    invoke-direct {v2, v0, p1}, Lf25;-><init>(Lj25;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 5
    invoke-virtual {v1, v2}, Lox4;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    check-cast v1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    iget-object v0, v0, Lj25;->j:Lrx4;

    .line 7
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 10
    invoke-virtual {v0, v2, p1, v1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final b2(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lky4;->f:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    iget-object v2, p0, Lky4;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lky4;->e:Lj25;

    .line 3
    iget-object p2, p2, Lj25;->j:Lrx4;

    .line 4
    iget-object p2, p2, Lrx4;->a:Landroid/content/Context;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 6
    invoke-static {p2, v2}, Lbi;->L(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lky4;->e:Lj25;

    .line 7
    iget-object p2, p2, Lj25;->j:Lrx4;

    .line 8
    iget-object p2, p2, Lrx4;->a:Landroid/content/Context;

    .line 9
    invoke-static {p2}, Lly;->a(Landroid/content/Context;)Lly;

    move-result-object p2

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lly;->b(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 11
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lky4;->f:Ljava/lang/Boolean;

    :cond_2
    iget-object p2, p0, Lky4;->f:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    iget-object p2, p0, Lky4;->g:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, p0, Lky4;->e:Lj25;

    .line 13
    iget-object p2, p2, Lj25;->j:Lrx4;

    .line 14
    iget-object p2, p2, Lrx4;->a:Landroid/content/Context;

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 16
    sget-boolean v3, Lky;->a:Z

    .line 17
    invoke-static {p2, v2, p1}, Lbi;->a0(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 18
    iput-object p1, p0, Lky4;->g:Ljava/lang/String;

    :cond_4
    iget-object p2, p0, Lky4;->g:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Unknown calling package name \'%s\'."

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 21
    iget-object v0, p0, Lky4;->e:Lj25;

    .line 22
    invoke-virtual {v0}, Lj25;->a()Lqw4;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 24
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 25
    invoke-virtual {v0, v1, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    throw p2

    .line 27
    :cond_7
    iget-object p1, p0, Lky4;->e:Lj25;

    .line 28
    invoke-virtual {p1}, Lj25;->a()Lqw4;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string p2, "Measurement Service called without app package"

    .line 30
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/SecurityException;

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g0(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0}, Lox4;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lky4;->e:Lj25;

    .line 4
    invoke-virtual {v0}, Lj25;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h3(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lky4;->b2(Ljava/lang/String;Z)V

    new-instance v0, Lay4;

    .line 2
    invoke-direct {v0, p0, p1}, Lay4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p0, v0}, Lky4;->g0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j4(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Lby4;

    .line 2
    invoke-direct {v0, p0, p1}, Lby4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p0, v0}, Lky4;->g0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l0(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 3

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lky4;->b2(Ljava/lang/String;Z)V

    iget-object v0, p0, Lky4;->e:Lj25;

    .line 3
    iget-object v0, v0, Lj25;->j:Lrx4;

    .line 4
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Lp25;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final q0(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzp;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->m()Lox4;

    move-result-object v0

    new-instance v1, Lyx4;

    invoke-direct {v1, p0, p3, p1, p2}, Lyx4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lox4;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 4
    :try_start_0
    check-cast p1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lky4;->e:Lj25;

    .line 5
    invoke-virtual {p2}, Lj25;->a()Lqw4;

    move-result-object p2

    .line 6
    iget-object p2, p2, Lqw4;->f:Low4;

    const-string p3, "Failed to get conditional user properties"

    .line 7
    invoke-virtual {p2, p3, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final w4(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Lgy4;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lgy4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p0, v0}, Lky4;->g0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x2(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 2

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 3
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p2}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    .line 6
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    new-instance p1, Ltx4;

    .line 7
    invoke-direct {p1, p0, v0, p2}, Ltx4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p0, p1}, Lky4;->g0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y2(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Ljy4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Ljy4;-><init>(Lky4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v7}, Lky4;->g0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final z3(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 3

    .line 1
    invoke-static {}, Lde4;->b()Z

    iget-object v0, p0, Lky4;->e:Lj25;

    .line 2
    iget-object v0, v0, Lj25;->j:Lrx4;

    .line 3
    iget-object v0, v0, Lrx4;->g:Lcs4;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lew4;->z0:Ldw4;

    invoke-virtual {v0, v1, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Lsx4;

    .line 6
    invoke-direct {v0, p0, p2, p1}, Lsx4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lky4;->g0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
