.class public Loi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le45<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/Date;

.field public final synthetic f:Ljava/lang/Throwable;

.field public final synthetic g:Ljava/lang/Thread;

.field public final synthetic h:Lkm5;

.field public final synthetic i:Lii5;


# direct methods
.method public constructor <init>(Lii5;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Lkm5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loi5;->i:Lii5;

    iput-object p2, p0, Loi5;->e:Ljava/util/Date;

    iput-object p3, p0, Loi5;->f:Ljava/lang/Throwable;

    iput-object p4, p0, Loi5;->g:Ljava/lang/Thread;

    iput-object p5, p0, Loi5;->h:Lkm5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Loi5;->e:Ljava/util/Date;

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v10, v2, v4

    .line 3
    iget-object v0, v1, Loi5;->i:Lii5;

    .line 4
    invoke-virtual {v0}, Lii5;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Lah5;->a:Lah5;

    const-string v3, "Tried to write a fatal exception while no session was open."

    .line 6
    invoke-virtual {v2, v3}, Lah5;->d(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object v0

    goto/16 :goto_15

    .line 8
    :cond_0
    iget-object v0, v1, Loi5;->i:Lii5;

    .line 9
    iget-object v0, v0, Lii5;->c:Lxi5;

    .line 10
    invoke-virtual {v0}, Lxi5;->a()Z

    .line 11
    iget-object v0, v1, Loi5;->i:Lii5;

    .line 12
    iget-object v0, v0, Lii5;->s:Lmj5;

    .line 13
    iget-object v3, v1, Loi5;->f:Ljava/lang/Throwable;

    iget-object v4, v1, Loi5;->g:Ljava/lang/Thread;

    const-string v5, ""

    const-string v6, "-"

    .line 14
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v7, Lah5;->a:Lah5;

    const-string v8, "Persisting fatal event for session "

    invoke-static {v8, v6, v7}, Ljo;->G(Ljava/lang/String;Ljava/lang/String;Lah5;)V

    .line 17
    iget-object v7, v0, Lmj5;->a:Lyi5;

    .line 18
    iget-object v8, v7, Lyi5;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    .line 19
    new-instance v9, Len5;

    iget-object v12, v7, Lyi5;->d:Ldn5;

    invoke-direct {v9, v3, v12}, Len5;-><init>(Ljava/lang/Throwable;Ldn5;)V

    .line 20
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 21
    iget-object v12, v7, Lyi5;->c:Lqh5;

    iget-object v12, v12, Lqh5;->d:Ljava/lang/String;

    iget-object v13, v7, Lyi5;->a:Landroid/content/Context;

    .line 22
    invoke-static {v12, v13}, Lvh5;->h(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 23
    iget v12, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v13, 0x64

    if-eq v12, v13, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 24
    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v16, v12

    .line 25
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 26
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v14, v9, Len5;->c:[Ljava/lang/StackTraceElement;

    const/4 v15, 0x4

    .line 28
    invoke-virtual {v7, v4, v14, v15}, Lyi5;->c(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Ltk5$d$d$a$b$d;

    move-result-object v14

    .line 29
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v14

    .line 31
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/Thread;

    .line 33
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v17, v4

    .line 34
    iget-object v4, v7, Lyi5;->d:Ldn5;

    .line 35
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/StackTraceElement;

    invoke-interface {v4, v15}, Ldn5;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v15, 0x0

    .line 36
    invoke-virtual {v7, v5, v4, v15}, Lyi5;->c(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Ltk5$d$d$a$b$d;

    move-result-object v4

    .line 37
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object/from16 v17, v4

    :goto_3
    move-object/from16 v4, v17

    move-object/from16 v5, v19

    goto :goto_2

    :cond_4
    move-object/from16 v19, v5

    const/4 v4, 0x0

    .line 38
    new-instance v5, Luk5;

    invoke-direct {v5, v13}, Luk5;-><init>(Ljava/util/List;)V

    const/16 v13, 0x8

    const/4 v14, 0x4

    .line 39
    invoke-virtual {v7, v9, v14, v13, v4}, Lyi5;->a(Len5;III)Ltk5$d$d$a$b$b;

    move-result-object v22

    const-wide/16 v13, 0x0

    .line 40
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v9, " address"

    goto :goto_4

    :cond_5
    move-object/from16 v9, v19

    .line 41
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    const-string v15, "Missing required properties:"

    if-eqz v13, :cond_19

    .line 42
    new-instance v9, Lmk5;

    .line 43
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const/16 v28, 0x0

    const-string v24, "0"

    const-string v25, "0"

    move-object/from16 v23, v9

    invoke-direct/range {v23 .. v28}, Lmk5;-><init>(Ljava/lang/String;Ljava/lang/String;JLmk5$a;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ltk5$d$d$a$b$a;

    const-wide/16 v13, 0x0

    .line 44
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 45
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 46
    iget-object v14, v7, Lyi5;->c:Lqh5;

    iget-object v14, v14, Lqh5;->d:Ljava/lang/String;

    move-object/from16 v18, v15

    const-string v15, "Null name"

    .line 47
    invoke-static {v14, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v15, v7, Lyi5;->c:Lqh5;

    iget-object v15, v15, Lqh5;->b:Ljava/lang/String;

    if-nez v17, :cond_6

    const-string v20, " baseAddress"

    move-wide/from16 v31, v10

    move-object/from16 v10, v20

    goto :goto_5

    :cond_6
    move-wide/from16 v31, v10

    move-object/from16 v10, v19

    :goto_5
    if-nez v13, :cond_7

    const-string v11, " size"

    .line 49
    invoke-static {v10, v11}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 50
    :cond_7
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 51
    new-instance v10, Lkk5;

    .line 52
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 53
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const/16 v30, 0x0

    move-object/from16 v23, v10

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    invoke-direct/range {v23 .. v30}, Lkk5;-><init>(JJLjava/lang/String;Ljava/lang/String;Lkk5$a;)V

    const/4 v11, 0x0

    aput-object v10, v4, v11

    .line 54
    new-instance v10, Luk5;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v10, v4}, Luk5;-><init>(Ljava/util/List;)V

    .line 55
    new-instance v14, Ljk5;

    const/16 v25, 0x0

    move-object/from16 v20, v14

    move-object/from16 v21, v5

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    invoke-direct/range {v20 .. v25}, Ljk5;-><init>(Luk5;Ltk5$d$d$a$b$b;Ltk5$d$d$a$b$c;Luk5;Ljk5$a;)V

    if-nez v12, :cond_8

    const-string v4, " uiOrientation"

    goto :goto_6

    :cond_8
    move-object/from16 v4, v19

    .line 56
    :goto_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 57
    new-instance v4, Lik5;

    .line 58
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/4 v5, 0x0

    const/4 v15, 0x0

    move-object v13, v4

    move-object/from16 v11, v18

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lik5;-><init>(Ltk5$d$d$a$b;Luk5;Ljava/lang/Boolean;ILik5$a;)V

    .line 59
    iget-object v5, v7, Lyi5;->a:Landroid/content/Context;

    invoke-static {v5}, Lth5;->a(Landroid/content/Context;)Lth5;

    move-result-object v5

    .line 60
    iget-object v9, v5, Lth5;->a:Ljava/lang/Float;

    if-eqz v9, :cond_9

    .line 61
    invoke-virtual {v9}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    .line 62
    :goto_7
    invoke-virtual {v5}, Lth5;->b()I

    move-result v5

    .line 63
    iget-object v10, v7, Lyi5;->a:Landroid/content/Context;

    invoke-static {v10}, Lvh5;->l(Landroid/content/Context;)Z

    move-result v10

    .line 64
    invoke-static {}, Lvh5;->o()J

    move-result-wide v12

    iget-object v7, v7, Lyi5;->a:Landroid/content/Context;

    .line 65
    new-instance v14, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v14}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v15, "activity"

    .line 66
    invoke-virtual {v7, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    invoke-virtual {v7, v14}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 67
    iget-wide v14, v14, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v12, v14

    .line 68
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lvh5;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 69
    new-instance v7, Lpk5$b;

    invoke-direct {v7}, Lpk5$b;-><init>()V

    .line 70
    iput-object v9, v7, Lpk5$b;->a:Ljava/lang/Double;

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v7, Lpk5$b;->b:Ljava/lang/Integer;

    .line 72
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v7, Lpk5$b;->c:Ljava/lang/Boolean;

    .line 73
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v7, Lpk5$b;->d:Ljava/lang/Integer;

    .line 74
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v7, Lpk5$b;->e:Ljava/lang/Long;

    .line 75
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v7, Lpk5$b;->f:Ljava/lang/Long;

    .line 76
    invoke-virtual {v7}, Lpk5$b;->a()Ltk5$d$d$b;

    move-result-object v25

    const-string v5, " timestamp"

    if-nez v3, :cond_a

    move-object v7, v5

    goto :goto_8

    :cond_a
    move-object/from16 v7, v19

    .line 77
    :goto_8
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 78
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 79
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 80
    iget-object v7, v0, Lmj5;->d:Luj5;

    .line 81
    iget-object v7, v7, Luj5;->c:Ltj5;

    invoke-interface {v7}, Ltj5;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 82
    new-instance v8, Lqk5;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lqk5;-><init>(Ljava/lang/String;Lqk5$a;)V

    move-object/from16 v26, v8

    goto :goto_9

    .line 83
    :cond_b
    sget-object v7, Lah5;->a:Lah5;

    const-string v8, "No log data to include with this event."

    invoke-virtual {v7, v8}, Lah5;->b(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v26, v7

    .line 84
    :goto_9
    iget-object v7, v0, Lmj5;->e:Loj5;

    .line 85
    iget-object v7, v7, Loj5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 86
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 88
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, "Null key"

    .line 90
    invoke-static {v10, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v12, "Null value"

    .line 92
    invoke-static {v9, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    new-instance v12, Lak5;

    const/4 v13, 0x0

    invoke-direct {v12, v10, v9, v13}, Lak5;-><init>(Ljava/lang/String;Ljava/lang/String;Lak5$a;)V

    .line 94
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 95
    :cond_c
    sget-object v7, Llj5;->e:Llj5;

    invoke-static {v8, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 97
    invoke-virtual {v4}, Lik5;->e()Ltk5$d$d$a$a;

    move-result-object v4

    .line 98
    new-instance v7, Luk5;

    invoke-direct {v7, v8}, Luk5;-><init>(Ljava/util/List;)V

    .line 99
    check-cast v4, Lik5$b;

    .line 100
    iput-object v7, v4, Lik5$b;->b:Luk5;

    .line 101
    invoke-virtual {v4}, Lik5$b;->a()Ltk5$d$d$a;

    move-result-object v4

    :cond_d
    move-object/from16 v24, v4

    .line 102
    iget-object v0, v0, Lmj5;->b:Lnl5;

    if-nez v3, :cond_e

    goto :goto_b

    :cond_e
    move-object/from16 v5, v19

    .line 103
    :goto_b
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 104
    new-instance v4, Lhk5;

    .line 105
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const/16 v27, 0x0

    const-string v23, "crash"

    move-object/from16 v20, v4

    invoke-direct/range {v20 .. v27}, Lhk5;-><init>(JLjava/lang/String;Ltk5$d$d$a;Ltk5$d$d$b;Ltk5$d$d$c;Lhk5$a;)V

    .line 106
    iget-object v3, v0, Lnl5;->f:Lkm5;

    .line 107
    check-cast v3, Ljm5;

    invoke-virtual {v3}, Ljm5;->c()Lsm5;

    move-result-object v3

    invoke-interface {v3}, Lsm5;->b()Lrm5;

    move-result-object v3

    iget v3, v3, Lrm5;->a:I

    .line 108
    invoke-virtual {v0, v6}, Lnl5;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 109
    sget-object v7, Lnl5;->i:Lcl5;

    .line 110
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v7, Lcl5;->a:Lun5;

    check-cast v7, Lho5;

    .line 112
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 114
    :try_start_0
    invoke-virtual {v7, v4, v8}, Lho5;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    iget-object v0, v0, Lnl5;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 117
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const-string v0, "%010d"

    invoke-static {v7, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "event"

    const-string v8, "_"

    .line 118
    invoke-static {v7, v0, v8}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lnl5;->l(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 120
    sget-object v4, Lah5;->a:Lah5;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not persist event for session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lah5;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :goto_c
    sget-object v0, Ljl5;->e:Ljl5;

    .line 122
    invoke-static {v5, v0}, Lnl5;->g(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 123
    sget-object v4, Lkl5;->e:Lkl5;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    if-gt v4, v3, :cond_f

    goto :goto_e

    .line 126
    :cond_f
    invoke-static {v5}, Lnl5;->k(Ljava/io/File;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 127
    :cond_10
    :goto_e
    iget-object v6, v1, Loi5;->i:Lii5;

    iget-object v8, v1, Loi5;->g:Ljava/lang/Thread;

    iget-object v9, v1, Loi5;->f:Ljava/lang/Throwable;

    .line 128
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Failed to close fatal exception file output stream."

    const-string v4, "Failed to flush to session begin file."

    .line 129
    :try_start_2
    new-instance v5, Lql5;

    invoke-virtual {v6}, Lii5;->l()Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SessionCrash"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lql5;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 130
    :try_start_3
    invoke-static {v5}, Lrl5;->i(Ljava/io/OutputStream;)Lrl5;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v12, "crash"

    const/4 v13, 0x1

    move-object v7, v2

    move-wide/from16 v10, v31

    .line 131
    invoke-virtual/range {v6 .. v13}, Lii5;->x(Lrl5;Ljava/lang/Thread;Ljava/lang/Throwable;JLjava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_16

    :catch_2
    move-exception v0

    goto :goto_11

    :catchall_1
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    :goto_f
    const/4 v2, 0x0

    goto/16 :goto_16

    :catch_4
    move-exception v0

    const/4 v5, 0x0

    :goto_10
    const/4 v2, 0x0

    .line 132
    :goto_11
    :try_start_5
    sget-object v6, Lah5;->a:Lah5;

    const-string v7, "An error occurred in the fatal exception logger"

    const/4 v8, 0x6

    .line 133
    invoke-virtual {v6, v8}, Lah5;->a(I)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "FirebaseCrashlytics"

    .line 134
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    :cond_11
    :goto_12
    invoke-static {v2, v4}, Lvh5;->g(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 136
    invoke-static {v5, v3}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 137
    iget-object v0, v1, Loi5;->i:Lii5;

    iget-object v2, v1, Loi5;->e:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 138
    invoke-virtual {v0, v2, v3}, Lii5;->g(J)V

    .line 139
    iget-object v0, v1, Loi5;->h:Lkm5;

    check-cast v0, Ljm5;

    invoke-virtual {v0}, Ljm5;->c()Lsm5;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lsm5;->b()Lrm5;

    move-result-object v2

    iget v2, v2, Lrm5;->a:I

    .line 141
    invoke-interface {v0}, Lsm5;->b()Lrm5;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, v1, Loi5;->i:Lii5;

    const/4 v3, 0x0

    .line 143
    invoke-virtual {v0, v2, v3}, Lii5;->f(IZ)V

    .line 144
    iget-object v0, v1, Loi5;->i:Lii5;

    invoke-static {v0}, Lii5;->a(Lii5;)V

    .line 145
    iget-object v0, v1, Loi5;->i:Lii5;

    .line 146
    invoke-virtual {v0}, Lii5;->m()Ljava/io/File;

    move-result-object v2

    .line 147
    invoke-virtual {v0}, Lii5;->k()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lii5;->A:Ljava/util/Comparator;

    .line 148
    sget-object v5, Lqj5;->a:Ljava/io/FilenameFilter;

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 151
    sget-object v6, Lqj5;->a:Ljava/io/FilenameFilter;

    invoke-virtual {v3, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v2, :cond_12

    goto :goto_13

    :cond_12
    new-array v2, v7, [Ljava/io/File;

    :goto_13
    if-eqz v3, :cond_13

    goto :goto_14

    :cond_13
    new-array v3, v7, [Ljava/io/File;

    .line 152
    :goto_14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x4

    .line 154
    invoke-static {v5, v2, v4}, Lqj5;->c(Ljava/util/List;ILjava/util/Comparator;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    .line 155
    invoke-virtual {v0}, Lii5;->n()Ljava/io/File;

    move-result-object v3

    .line 156
    invoke-static {v3, v6, v2, v4}, Lqj5;->b(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 157
    invoke-virtual {v0}, Lii5;->l()Ljava/io/File;

    move-result-object v0

    sget-object v3, Lii5;->y:Ljava/io/FilenameFilter;

    invoke-static {v0, v3, v2, v4}, Lqj5;->b(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    .line 158
    iget-object v0, v1, Loi5;->i:Lii5;

    .line 159
    iget-object v0, v0, Lii5;->b:Lbj5;

    .line 160
    invoke-virtual {v0}, Lbj5;->b()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    .line 161
    invoke-static {v0}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object v0

    goto :goto_15

    .line 162
    :cond_14
    iget-object v0, v1, Loi5;->i:Lii5;

    .line 163
    iget-object v0, v0, Lii5;->e:Lwh5;

    .line 164
    iget-object v0, v0, Lwh5;->a:Ljava/util/concurrent/Executor;

    .line 165
    iget-object v2, v1, Loi5;->h:Lkm5;

    .line 166
    check-cast v2, Ljm5;

    invoke-virtual {v2}, Ljm5;->a()Le45;

    move-result-object v2

    new-instance v3, Lni5;

    invoke-direct {v3, v1, v0}, Lni5;-><init>(Loi5;Ljava/util/concurrent/Executor;)V

    .line 167
    invoke-virtual {v2, v0, v3}, Le45;->q(Ljava/util/concurrent/Executor;Ld45;)Le45;

    move-result-object v0

    :goto_15
    return-object v0

    .line 168
    :goto_16
    invoke-static {v2, v4}, Lvh5;->g(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 169
    invoke-static {v5, v3}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 170
    throw v0

    .line 171
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v11, v5}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v11, v7}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v11, v18

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v11, v4}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object/from16 v11, v18

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v11, v10}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v11, v15

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v11, v9}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
