.class public final Lrx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lny4;


# static fields
.field public static volatile I:Lrx4;


# instance fields
.field public A:J

.field public volatile B:Ljava/lang/Boolean;

.field public C:Ljava/lang/Boolean;

.field public D:Ljava/lang/Boolean;

.field public volatile E:Z

.field public F:I

.field public final G:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final H:J

.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lc35;

.field public final g:Lcs4;

.field public final h:Lex4;

.field public final i:Lqw4;

.field public final j:Lox4;

.field public final k:Lx15;

.field public final l:Lp25;

.field public final m:Llw4;

.field public final n:Lb20;

.field public final o:Lh05;

.field public final p:Lsz4;

.field public final q:Lxu4;

.field public final r:Lxz4;

.field public final s:Ljava/lang/String;

.field public t:Lkw4;

.field public u:Lh15;

.field public v:Ljs4;

.field public w:Liw4;

.field public x:Lhx4;

.field public y:Z

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lsy4;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx4;->y:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lrx4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    iget-object v1, p1, Lsy4;->a:Landroid/content/Context;

    new-instance v2, Lc35;

    invoke-direct {v2}, Lc35;-><init>()V

    iput-object v2, p0, Lrx4;->f:Lc35;

    sput-object v2, Lc50;->b:Lc35;

    iput-object v1, p0, Lrx4;->a:Landroid/content/Context;

    iget-object v2, p1, Lsy4;->b:Ljava/lang/String;

    iput-object v2, p0, Lrx4;->b:Ljava/lang/String;

    iget-object v2, p1, Lsy4;->c:Ljava/lang/String;

    iput-object v2, p0, Lrx4;->c:Ljava/lang/String;

    iget-object v2, p1, Lsy4;->d:Ljava/lang/String;

    iput-object v2, p0, Lrx4;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lsy4;->h:Z

    iput-boolean v2, p0, Lrx4;->e:Z

    iget-object v2, p1, Lsy4;->e:Ljava/lang/Boolean;

    iput-object v2, p0, Lrx4;->B:Ljava/lang/Boolean;

    iget-object v2, p1, Lsy4;->j:Ljava/lang/String;

    iput-object v2, p0, Lrx4;->s:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx4;->E:Z

    iget-object v3, p1, Lsy4;->g:Lcom/google/android/gms/internal/measurement/zzy;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 5
    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lrx4;->C:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    .line 6
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lrx4;->D:Ljava/lang/Boolean;

    .line 9
    :cond_1
    sget-object v3, Lb74;->f:Ljava/lang/Object;

    .line 10
    monitor-enter v3

    :try_start_0
    sget-object v4, Lb74;->g:La74;

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, La74;->a()Landroid/content/Context;

    move-result-object v4

    if-eq v4, v5, :cond_5

    .line 12
    :cond_3
    invoke-static {}, Lj64;->d()V

    .line 13
    invoke-static {}, Lc74;->c()V

    .line 14
    const-class v4, Lp64;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v6, Lp64;->c:Lp64;

    if-eqz v6, :cond_4

    .line 15
    iget-object v7, v6, Lp64;->a:Landroid/content/Context;

    if-eqz v7, :cond_4

    iget-object v6, v6, Lp64;->b:Landroid/database/ContentObserver;

    if-eqz v6, :cond_4

    .line 16
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lp64;->c:Lp64;

    iget-object v7, v7, Lp64;->b:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    const/4 v6, 0x0

    sput-object v6, Lp64;->c:Lp64;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    .line 17
    new-instance v4, Lt64;

    .line 18
    invoke-direct {v4, v5}, Lt64;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-static {v4}, Lc50;->z1(Lg74;)Lg74;

    move-result-object v4

    new-instance v6, Lg64;

    .line 20
    invoke-direct {v6, v5, v4}, Lg64;-><init>(Landroid/content/Context;Lg74;)V

    sput-object v6, Lb74;->g:La74;

    sget-object v4, Lb74;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 22
    :cond_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    sget-object v3, Ld20;->a:Ld20;

    iput-object v3, p0, Lrx4;->n:Lb20;

    iget-object v3, p1, Lsy4;->i:Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 24
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    .line 25
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 26
    :goto_1
    iput-wide v3, p0, Lrx4;->H:J

    new-instance v3, Lcs4;

    .line 27
    invoke-direct {v3, p0}, Lcs4;-><init>(Lrx4;)V

    iput-object v3, p0, Lrx4;->g:Lcs4;

    .line 28
    new-instance v3, Lex4;

    invoke-direct {v3, p0}, Lex4;-><init>(Lrx4;)V

    .line 29
    invoke-virtual {v3}, Lmy4;->k()V

    iput-object v3, p0, Lrx4;->h:Lex4;

    new-instance v3, Lqw4;

    .line 30
    invoke-direct {v3, p0}, Lqw4;-><init>(Lrx4;)V

    .line 31
    invoke-virtual {v3}, Lmy4;->k()V

    iput-object v3, p0, Lrx4;->i:Lqw4;

    .line 32
    new-instance v3, Lp25;

    invoke-direct {v3, p0}, Lp25;-><init>(Lrx4;)V

    .line 33
    invoke-virtual {v3}, Lmy4;->k()V

    iput-object v3, p0, Lrx4;->l:Lp25;

    .line 34
    new-instance v3, Llw4;

    invoke-direct {v3, p0}, Llw4;-><init>(Lrx4;)V

    .line 35
    invoke-virtual {v3}, Lmy4;->k()V

    iput-object v3, p0, Lrx4;->m:Llw4;

    new-instance v3, Lxu4;

    .line 36
    invoke-direct {v3, p0}, Lxu4;-><init>(Lrx4;)V

    iput-object v3, p0, Lrx4;->q:Lxu4;

    new-instance v3, Lh05;

    .line 37
    invoke-direct {v3, p0}, Lh05;-><init>(Lrx4;)V

    .line 38
    invoke-virtual {v3}, Lww4;->g()V

    iput-object v3, p0, Lrx4;->o:Lh05;

    new-instance v3, Lsz4;

    .line 39
    invoke-direct {v3, p0}, Lsz4;-><init>(Lrx4;)V

    .line 40
    invoke-virtual {v3}, Lww4;->g()V

    iput-object v3, p0, Lrx4;->p:Lsz4;

    new-instance v3, Lx15;

    .line 41
    invoke-direct {v3, p0}, Lx15;-><init>(Lrx4;)V

    .line 42
    invoke-virtual {v3}, Lww4;->g()V

    iput-object v3, p0, Lrx4;->k:Lx15;

    new-instance v3, Lxz4;

    .line 43
    invoke-direct {v3, p0}, Lxz4;-><init>(Lrx4;)V

    .line 44
    invoke-virtual {v3}, Lmy4;->k()V

    iput-object v3, p0, Lrx4;->r:Lxz4;

    .line 45
    new-instance v3, Lox4;

    invoke-direct {v3, p0}, Lox4;-><init>(Lrx4;)V

    .line 46
    invoke-virtual {v3}, Lmy4;->k()V

    iput-object v3, p0, Lrx4;->j:Lox4;

    iget-object v4, p1, Lsy4;->g:Lcom/google/android/gms/internal/measurement/zzy;

    if-eqz v4, :cond_7

    iget-wide v4, v4, Lcom/google/android/gms/internal/measurement/zzy;->f:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    .line 47
    :goto_2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_9

    .line 48
    invoke-virtual {p0}, Lrx4;->s()Lsz4;

    move-result-object v1

    iget-object v2, v1, Lly4;->a:Lrx4;

    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lly4;->a:Lrx4;

    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v4, v1, Lsz4;->c:Lrz4;

    if-nez v4, :cond_8

    .line 51
    new-instance v4, Lrz4;

    invoke-direct {v4, v1}, Lrz4;-><init>(Lsz4;)V

    iput-object v4, v1, Lsz4;->c:Lrz4;

    :cond_8
    if-eqz v0, :cond_a

    iget-object v0, v1, Lsz4;->c:Lrz4;

    .line 52
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lsz4;->c:Lrz4;

    .line 53
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 54
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 55
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Registered activity lifecycle callback"

    .line 56
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 57
    :cond_9
    invoke-virtual {p0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 58
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v1, "Application context is not an Application"

    .line 59
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    .line 60
    :cond_a
    :goto_3
    new-instance v0, Lqx4;

    .line 61
    invoke-direct {v0, p0, p1}, Lqx4;-><init>(Lrx4;Lsy4;)V

    invoke-virtual {v3, v0}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 62
    :try_start_3
    monitor-exit v4

    throw p1

    :catchall_1
    move-exception p1

    .line 63
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static d(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)Lrx4;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzy;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzy;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzy;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzy;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzy;->f:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzy;->g:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzy;->h:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    .line 1
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    const-string v0, "null reference"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null reference"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lrx4;->I:Lrx4;

    if-nez v0, :cond_3

    const-class v0, Lrx4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrx4;->I:Lrx4;

    if-nez v1, :cond_2

    new-instance v1, Lsy4;

    .line 6
    invoke-direct {v1, p0, p1, p2}, Lsy4;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)V

    new-instance p0, Lrx4;

    .line 7
    invoke-direct {p0, v1}, Lrx4;-><init>(Lsy4;)V

    sput-object p0, Lrx4;->I:Lrx4;

    .line 8
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 9
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    .line 10
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lrx4;->I:Lrx4;

    const-string p2, "null reference"

    .line 11
    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    sget-object p0, Lrx4;->I:Lrx4;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lrx4;->B:Ljava/lang/Boolean;

    .line 15
    :cond_4
    :goto_0
    sget-object p0, Lrx4;->I:Lrx4;

    const-string p1, "null reference"

    .line 16
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    sget-object p0, Lrx4;->I:Lrx4;

    return-object p0
.end method

.method public static final k(Lly4;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final l(Lww4;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    iget-boolean v0, p0, Lww4;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-static {v2, v1, p0}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final n(Lmy4;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lmy4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-static {v2, v1, p0}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Ljs4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->v:Ljs4;

    .line 1
    invoke-static {v0}, Lrx4;->n(Lmy4;)V

    iget-object v0, p0, Lrx4;->v:Ljs4;

    return-object v0
.end method

.method public final a()Lqw4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->i:Lqw4;

    .line 1
    invoke-static {v0}, Lrx4;->n(Lmy4;)V

    iget-object v0, p0, Lrx4;->i:Lqw4;

    return-object v0
.end method

.method public final b()Liw4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->w:Liw4;

    .line 1
    invoke-static {v0}, Lrx4;->l(Lww4;)V

    iget-object v0, p0, Lrx4;->w:Liw4;

    return-object v0
.end method

.method public final c()Lxu4;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->q:Lxu4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Lb20;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->n:Lb20;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lrx4;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx4;->B:Ljava/lang/Boolean;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx4;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lrx4;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0}, Lox4;->d()V

    iget-object v0, p0, Lrx4;->g:Lcs4;

    .line 2
    invoke-virtual {v0}, Lcs4;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lrx4;->D:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    return v0

    .line 4
    :cond_2
    :goto_0
    invoke-static {}, Lpc4;->b()Z

    iget-object v0, p0, Lrx4;->g:Lcs4;

    .line 5
    sget-object v1, Lew4;->E0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lrx4;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0}, Lox4;->d()V

    iget-boolean v0, p0, Lrx4;->E:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    return v0

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lrx4;->q()Lex4;

    move-result-object v0

    invoke-virtual {v0}, Lex4;->q()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x3

    return v0

    :cond_6
    iget-object v0, p0, Lrx4;->g:Lcs4;

    iget-object v3, v0, Lly4;->a:Lrx4;

    iget-object v3, v3, Lrx4;->f:Lc35;

    const-string v3, "firebase_analytics_collection_enabled"

    .line 9
    invoke-virtual {v0, v3}, Lcs4;->u(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x4

    return v0

    :cond_8
    iget-object v0, p0, Lrx4;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x5

    return v0

    :cond_a
    iget-object v0, p0, Lrx4;->g:Lcs4;

    sget-object v3, Lew4;->S:Ldw4;

    .line 12
    invoke-virtual {v0, v2, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lrx4;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lrx4;->B:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x7

    return v0

    :cond_c
    return v1
.end method

.method public final i()Z
    .locals 8

    iget-boolean v0, p0, Lrx4;->y:Z

    if-eqz v0, :cond_6

    .line 1
    invoke-virtual {p0}, Lrx4;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0}, Lox4;->d()V

    iget-object v0, p0, Lrx4;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lrx4;->A:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lrx4;->n:Lb20;

    .line 3
    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lrx4;->A:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    :cond_0
    iget-object v0, p0, Lrx4;->n:Lb20;

    .line 4
    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lrx4;->A:J

    .line 5
    invoke-virtual {p0}, Lrx4;->t()Lp25;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lp25;->E(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lrx4;->t()Lp25;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lp25;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrx4;->a:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v0

    invoke-virtual {v0}, Lh20;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx4;->g:Lcs4;

    .line 8
    invoke-virtual {v0}, Lcs4;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx4;->a:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Ljx4;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrx4;->a:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Lp25;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lrx4;->z:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lrx4;->t()Lp25;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lrx4;->b()Liw4;

    move-result-object v3

    invoke-virtual {v3}, Liw4;->l()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lrx4;->b()Liw4;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Lww4;->f()V

    iget-object v4, v4, Liw4;->l:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lrx4;->b()Liw4;

    move-result-object v5

    .line 18
    invoke-virtual {v5}, Lww4;->f()V

    iget-object v6, v5, Liw4;->m:Ljava/lang/String;

    const-string v7, "null reference"

    .line 19
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v5, v5, Liw4;->m:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v3, v4, v5}, Lp25;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 22
    invoke-virtual {p0}, Lrx4;->b()Liw4;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lww4;->f()V

    iget-object v0, v0, Liw4;->l:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 25
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lrx4;->z:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lrx4;->z:Ljava/lang/Boolean;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final m()Lox4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->j:Lox4;

    .line 1
    invoke-static {v0}, Lrx4;->n(Lmy4;)V

    iget-object v0, p0, Lrx4;->j:Lox4;

    return-object v0
.end method

.method public final o()Lc35;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->f:Lc35;

    return-object v0
.end method

.method public final p()Lcs4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->g:Lcs4;

    return-object v0
.end method

.method public final q()Lex4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->h:Lex4;

    .line 1
    invoke-static {v0}, Lrx4;->k(Lly4;)V

    iget-object v0, p0, Lrx4;->h:Lex4;

    return-object v0
.end method

.method public final r()Lx15;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->k:Lx15;

    .line 1
    invoke-static {v0}, Lrx4;->l(Lww4;)V

    iget-object v0, p0, Lrx4;->k:Lx15;

    return-object v0
.end method

.method public final s()Lsz4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->p:Lsz4;

    .line 1
    invoke-static {v0}, Lrx4;->l(Lww4;)V

    iget-object v0, p0, Lrx4;->p:Lsz4;

    return-object v0
.end method

.method public final t()Lp25;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->l:Lp25;

    .line 1
    invoke-static {v0}, Lrx4;->k(Lly4;)V

    iget-object v0, p0, Lrx4;->l:Lp25;

    return-object v0
.end method

.method public final u()Llw4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->m:Llw4;

    .line 1
    invoke-static {v0}, Lrx4;->k(Lly4;)V

    iget-object v0, p0, Lrx4;->m:Llw4;

    return-object v0
.end method

.method public final v()Lkw4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->t:Lkw4;

    .line 1
    invoke-static {v0}, Lrx4;->l(Lww4;)V

    iget-object v0, p0, Lrx4;->t:Lkw4;

    return-object v0
.end method

.method public final w()Lxz4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->r:Lxz4;

    .line 1
    invoke-static {v0}, Lrx4;->n(Lmy4;)V

    iget-object v0, p0, Lrx4;->r:Lxz4;

    return-object v0
.end method

.method public final x()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->b:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final y()Lh05;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->o:Lh05;

    .line 1
    invoke-static {v0}, Lrx4;->l(Lww4;)V

    iget-object v0, p0, Lrx4;->o:Lh05;

    return-object v0
.end method

.method public final z()Lh15;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lrx4;->u:Lh15;

    .line 1
    invoke-static {v0}, Lrx4;->l(Lww4;)V

    iget-object v0, p0, Lrx4;->u:Lh15;

    return-object v0
.end method
