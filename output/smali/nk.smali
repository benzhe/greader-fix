.class public Lnk;
.super Lbk;
.source "SourceFile"


# static fields
.field public static j:Lnk;

.field public static k:Lnk;

.field public static final l:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lpj;

.field public c:Landroidx/work/impl/WorkDatabase;

.field public d:Lxm;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lik;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lhk;

.field public g:Lpm;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnk;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lpj;Lxm;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/work/R$bool;->workmanager_test_configuration:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-direct/range {p0 .. p0}, Lbk;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 4
    iget-object v3, v8, Lpj;->b:Ljava/util/concurrent/Executor;

    .line 5
    sget v4, Landroidx/work/impl/WorkDatabase;->k:I

    .line 6
    const-class v4, Landroidx/work/impl/WorkDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Llg$a;

    invoke-direct {v0, v2, v4, v5}, Llg$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    iput-boolean v6, v0, Llg$a;->h:Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Llg$a;

    const-string v5, "androidx.work.workdb"

    invoke-direct {v0, v2, v4, v5}, Llg$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 10
    iput-object v3, v0, Llg$a;->e:Ljava/util/concurrent/Executor;

    .line 11
    :goto_0
    new-instance v3, Llk;

    invoke-direct {v3}, Llk;-><init>()V

    .line 12
    iget-object v4, v0, Llg$a;->d:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Llg$a;->d:Ljava/util/ArrayList;

    .line 14
    :cond_1
    iget-object v4, v0, Llg$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v6, [Lpg;

    .line 15
    sget-object v4, Lmk;->a:Lpg;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 16
    invoke-virtual {v0, v3}, Llg$a;->a([Lpg;)Llg$a;

    new-array v3, v6, [Lpg;

    new-instance v4, Lmk$d;

    const/4 v7, 0x3

    const/4 v10, 0x2

    invoke-direct {v4, v2, v10, v7}, Lmk$d;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v5

    .line 17
    invoke-virtual {v0, v3}, Llg$a;->a([Lpg;)Llg$a;

    new-array v3, v6, [Lpg;

    sget-object v4, Lmk;->b:Lpg;

    aput-object v4, v3, v5

    .line 18
    invoke-virtual {v0, v3}, Llg$a;->a([Lpg;)Llg$a;

    new-array v3, v6, [Lpg;

    sget-object v4, Lmk;->c:Lpg;

    aput-object v4, v3, v5

    .line 19
    invoke-virtual {v0, v3}, Llg$a;->a([Lpg;)Llg$a;

    new-array v3, v6, [Lpg;

    new-instance v4, Lmk$d;

    const/4 v7, 0x5

    const/4 v10, 0x6

    invoke-direct {v4, v2, v7, v10}, Lmk$d;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v5

    .line 20
    invoke-virtual {v0, v3}, Llg$a;->a([Lpg;)Llg$a;

    .line 21
    iput-boolean v5, v0, Llg$a;->i:Z

    .line 22
    iput-boolean v6, v0, Llg$a;->j:Z

    .line 23
    sget-object v3, Llg$c;->g:Llg$c;

    iget-object v11, v0, Llg$a;->c:Landroid/content/Context;

    if-eqz v11, :cond_d

    .line 24
    iget-object v4, v0, Llg$a;->a:Ljava/lang/Class;

    if-eqz v4, :cond_c

    .line 25
    iget-object v4, v0, Llg$a;->e:Ljava/util/concurrent/Executor;

    if-nez v4, :cond_2

    iget-object v5, v0, Llg$a;->f:Ljava/util/concurrent/Executor;

    if-nez v5, :cond_2

    .line 26
    sget-object v4, Lk3;->d:Ljava/util/concurrent/Executor;

    iput-object v4, v0, Llg$a;->f:Ljava/util/concurrent/Executor;

    iput-object v4, v0, Llg$a;->e:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 27
    iget-object v5, v0, Llg$a;->f:Ljava/util/concurrent/Executor;

    if-nez v5, :cond_3

    .line 28
    iput-object v4, v0, Llg$a;->f:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 29
    iget-object v4, v0, Llg$a;->f:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_4

    .line 30
    iput-object v4, v0, Llg$a;->e:Ljava/util/concurrent/Executor;

    .line 31
    :cond_4
    :goto_1
    iget-object v4, v0, Llg$a;->g:Lxg$b;

    if-nez v4, :cond_5

    .line 32
    new-instance v4, Lch;

    invoke-direct {v4}, Lch;-><init>()V

    iput-object v4, v0, Llg$a;->g:Lxg$b;

    .line 33
    :cond_5
    new-instance v4, Lgg;

    iget-object v12, v0, Llg$a;->b:Ljava/lang/String;

    iget-object v13, v0, Llg$a;->g:Lxg$b;

    iget-object v14, v0, Llg$a;->k:Llg$d;

    iget-object v15, v0, Llg$a;->d:Ljava/util/ArrayList;

    iget-boolean v5, v0, Llg$a;->h:Z

    const-string v6, "activity"

    .line 34
    invoke-virtual {v11, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    if-eqz v6, :cond_6

    .line 35
    invoke-virtual {v6}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 v17, v3

    goto :goto_2

    .line 36
    :cond_6
    sget-object v6, Llg$c;->f:Llg$c;

    move-object/from16 v17, v6

    .line 37
    :goto_2
    iget-object v6, v0, Llg$a;->e:Ljava/util/concurrent/Executor;

    iget-object v7, v0, Llg$a;->f:Ljava/util/concurrent/Executor;

    const/16 v20, 0x0

    iget-boolean v10, v0, Llg$a;->i:Z

    iget-boolean v9, v0, Llg$a;->j:Z

    const/16 v23, 0x0

    move/from16 v21, v10

    move-object v10, v4

    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v22, v9

    invoke-direct/range {v10 .. v23}, Lgg;-><init>(Landroid/content/Context;Ljava/lang/String;Lxg$b;Llg$d;Ljava/util/List;ZLlg$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;)V

    .line 38
    iget-object v0, v0, Llg$a;->a:Ljava/lang/Class;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    .line 42
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 43
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2e

    const/16 v10, 0x5f

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_Impl"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 44
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v5, v6

    goto :goto_4

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    :goto_4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 46
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    check-cast v0, Llg;

    .line 48
    invoke-virtual {v0, v4}, Llg;->f(Lgg;)Lxg;

    move-result-object v5

    iput-object v5, v0, Llg;->c:Lxg;

    .line 49
    iget-object v6, v4, Lgg;->g:Llg$c;

    if-ne v6, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    .line 50
    :goto_5
    check-cast v5, Lbh;

    .line 51
    iget-object v5, v5, Lbh;->a:Lbh$a;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 52
    iget-object v5, v4, Lgg;->e:Ljava/util/List;

    iput-object v5, v0, Llg;->g:Ljava/util/List;

    .line 53
    iget-object v5, v4, Lgg;->h:Ljava/util/concurrent/Executor;

    iput-object v5, v0, Llg;->b:Ljava/util/concurrent/Executor;

    .line 54
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 55
    iget-boolean v4, v4, Lgg;->f:Z

    iput-boolean v4, v0, Llg;->e:Z

    .line 56
    iput-boolean v3, v0, Llg;->f:Z

    .line 57
    move-object v9, v0

    check-cast v9, Landroidx/work/impl/WorkDatabase;

    .line 58
    new-instance v0, Lvj$a;

    .line 59
    iget v3, v8, Lpj;->d:I

    .line 60
    invoke-direct {v0, v3}, Lvj$a;-><init>(I)V

    .line 61
    const-class v3, Lvj;

    monitor-enter v3

    .line 62
    :try_start_1
    sput-object v0, Lvj;->a:Lvj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    monitor-exit v3

    const/4 v0, 0x2

    new-array v3, v0, [Lik;

    .line 64
    sget-object v0, Ljk;->a:Ljava/lang/String;

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_a

    .line 66
    new-instance v0, Lal;

    invoke-direct {v0, v2, v1}, Lal;-><init>(Landroid/content/Context;Lnk;)V

    .line 67
    const-class v4, Landroidx/work/impl/background/systemjob/SystemJobService;

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lom;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 68
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v4

    sget-object v5, Ljk;->a:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    const-string v7, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v4, v5, v7, v6}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_7

    :cond_a
    :try_start_2
    const-string v0, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 69
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 70
    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 71
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lik;

    .line 72
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v4

    sget-object v5, Ljk;->a:Ljava/lang/String;

    const-string v6, "Created %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-string v10, "androidx.work.impl.background.gcm.GcmScheduler"

    const/4 v11, 0x0

    aput-object v10, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 73
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v4

    sget-object v5, Ljk;->a:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Throwable;

    const/4 v10, 0x0

    aput-object v0, v7, v10

    const-string v0, "Unable to create GCM Scheduler"

    invoke-virtual {v4, v5, v0, v7}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_6
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_b

    .line 74
    new-instance v0, Lxk;

    invoke-direct {v0, v2}, Lxk;-><init>(Landroid/content/Context;)V

    .line 75
    const-class v6, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-static {v2, v6, v4}, Lom;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 76
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v6

    sget-object v7, Ljk;->a:Ljava/lang/String;

    new-array v10, v5, [Ljava/lang/Throwable;

    const-string v11, "Created SystemAlarmScheduler"

    invoke-virtual {v6, v7, v11, v10}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    aput-object v0, v3, v5

    .line 77
    new-instance v0, Lrk;

    move-object/from16 v10, p3

    invoke-direct {v0, v2, v10, v1}, Lrk;-><init>(Landroid/content/Context;Lxm;Lnk;)V

    aput-object v0, v3, v4

    .line 78
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 79
    new-instance v11, Lhk;

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v9

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lhk;-><init>(Landroid/content/Context;Lpj;Lxm;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 81
    iput-object v2, v1, Lnk;->a:Landroid/content/Context;

    .line 82
    iput-object v8, v1, Lnk;->b:Lpj;

    .line 83
    iput-object v10, v1, Lnk;->d:Lxm;

    .line 84
    iput-object v9, v1, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 85
    iput-object v0, v1, Lnk;->e:Ljava/util/List;

    .line 86
    iput-object v11, v1, Lnk;->f:Lhk;

    .line 87
    new-instance v0, Lpm;

    invoke-direct {v0, v2}, Lpm;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lnk;->g:Lpm;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, v1, Lnk;->h:Z

    .line 89
    new-instance v0, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {v0, v2, v1}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Lnk;)V

    move-object v2, v10

    check-cast v2, Lym;

    .line 90
    iget-object v2, v2, Lym;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 91
    monitor-exit v3

    throw v2

    .line 92
    :catch_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to create an instance of "

    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :catch_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot access the constructor"

    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :catch_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "cannot find implementation for "

    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 97
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot provide null context for the database."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lnk;
    .locals 2

    .line 1
    sget-object v0, Lnk;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Lnk;->j:Lnk;

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lnk;->k:Lnk;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    instance-of v1, p0, Lpj$b;

    if-eqz v1, :cond_1

    .line 8
    move-object v1, p0

    check-cast v1, Lpj$b;

    .line 9
    invoke-interface {v1}, Lpj$b;->a()Lpj;

    move-result-object v1

    .line 10
    invoke-static {p0, v1}, Lnk;->c(Landroid/content/Context;Lpj;)V

    .line 11
    invoke-static {p0}, Lnk;->b(Landroid/content/Context;)Lnk;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 15
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;Lpj;)V
    .locals 4

    .line 1
    sget-object v0, Lnk;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lnk;->j:Lnk;

    if-eqz v1, :cond_1

    sget-object v2, Lnk;->k:Lnk;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class levelJavadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    sget-object v1, Lnk;->k:Lnk;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Lnk;

    new-instance v2, Lym;

    .line 7
    iget-object v3, p1, Lpj;->b:Ljava/util/concurrent/Executor;

    .line 8
    invoke-direct {v2, v3}, Lym;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, Lnk;-><init>(Landroid/content/Context;Lpj;Lxm;)V

    sput-object v1, Lnk;->k:Lnk;

    .line 9
    :cond_2
    sget-object p0, Lnk;->k:Lnk;

    sput-object p0, Lnk;->j:Lnk;

    .line 10
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lnk;->a:Landroid/content/Context;

    .line 3
    sget-object v1, Lal;->j:Ljava/lang/String;

    const-string v1, "jobscheduler"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0, v1}, Lal;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 8
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lal;->b(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 10
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lem;

    move-result-object v0

    check-cast v0, Lfm;

    .line 11
    iget-object v1, v0, Lfm;->a:Llg;

    invoke-virtual {v1}, Llg;->b()V

    .line 12
    iget-object v1, v0, Lfm;->i:Log;

    invoke-virtual {v1}, Log;->a()Leh;

    move-result-object v1

    .line 13
    iget-object v2, v0, Lfm;->a:Llg;

    invoke-virtual {v2}, Llg;->c()V

    .line 14
    :try_start_0
    invoke-virtual {v1}, Leh;->a()I

    .line 15
    iget-object v2, v0, Lfm;->a:Llg;

    invoke-virtual {v2}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v2, v0, Lfm;->a:Llg;

    invoke-virtual {v2}, Llg;->g()V

    .line 17
    iget-object v0, v0, Lfm;->i:Log;

    .line 18
    iget-object v2, v0, Log;->c:Leh;

    if-ne v1, v2, :cond_1

    .line 19
    iget-object v0, v0, Log;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    :cond_1
    iget-object v0, p0, Lnk;->b:Lpj;

    .line 21
    iget-object v1, p0, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 22
    iget-object v2, p0, Lnk;->e:Ljava/util/List;

    .line 23
    invoke-static {v0, v1, v2}, Ljk;->a(Lpj;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v2

    .line 24
    iget-object v3, v0, Lfm;->a:Llg;

    invoke-virtual {v3}, Llg;->g()V

    .line 25
    iget-object v0, v0, Lfm;->i:Log;

    invoke-virtual {v0, v1}, Log;->c(Leh;)V

    .line 26
    throw v2
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnk;->d:Lxm;

    new-instance v1, Lsm;

    invoke-direct {v1, p0, p1}, Lsm;-><init>(Lnk;Ljava/lang/String;)V

    check-cast v0, Lym;

    .line 2
    iget-object p1, v0, Lym;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
