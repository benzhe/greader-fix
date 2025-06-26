.class public Lsw5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzw5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsw5;-><init>(Lsw5$c;Lfs5;Lqv5;Lex5;Lpv5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsw5;


# direct methods
.method public constructor <init>(Lsw5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsw5$a;->a:Lsw5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsw5$a;->a:Lsw5;

    .line 2
    iget-object v1, v0, Lsw5;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lut5;

    .line 3
    invoke-virtual {v0, v2}, Lsw5;->g(Lut5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lju5;Lxw5;)V
    .locals 17

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 1
    iget-object v8, v7, Lsw5$a;->a:Lsw5;

    .line 2
    iget-object v1, v8, Lsw5;->d:Lmw5;

    sget-object v2, Lwq5;->f:Lwq5;

    invoke-virtual {v1, v2}, Lmw5;->c(Lwq5;)V

    .line 3
    iget-object v1, v8, Lsw5;->f:Lzw5;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v8, Lsw5;->h:Lyw5;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "WatchStream and WatchStreamAggregator should both be non-null"

    invoke-static {v1, v5, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    instance-of v1, v0, Lxw5$d;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    move-object v5, v0

    check-cast v5, Lxw5$d;

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_3

    .line 5
    iget-object v9, v5, Lxw5$d;->a:Lxw5$e;

    .line 6
    sget-object v10, Lxw5$e;->g:Lxw5$e;

    invoke-virtual {v9, v10}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 7
    iget-object v9, v5, Lxw5$d;->d:Lx47;

    if-eqz v9, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Processing target error without a cause"

    .line 8
    invoke-static {v3, v1, v0}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v0, v5, Lxw5$d;->b:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 11
    iget-object v2, v8, Lsw5;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v2, v8, Lsw5;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, v8, Lsw5;->h:Lyw5;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 14
    iget-object v2, v2, Lyw5;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v2, v8, Lsw5;->a:Lsw5$c;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 16
    iget-object v3, v5, Lxw5$d;->d:Lx47;

    .line 17
    invoke-interface {v2, v1, v3}, Lsw5$c;->a(ILx47;)V

    goto :goto_2

    .line 18
    :cond_3
    instance-of v5, v0, Lxw5$b;

    if-eqz v5, :cond_b

    .line 19
    iget-object v1, v8, Lsw5;->h:Lyw5;

    check-cast v0, Lxw5$b;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v4, v0, Lxw5$b;->d:Lfu5;

    .line 22
    iget-object v5, v0, Lxw5$b;->c:Lbu5;

    .line 23
    iget-object v9, v0, Lxw5$b;->a:Ljava/util/List;

    .line 24
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 25
    instance-of v11, v4, Lyt5;

    if-eqz v11, :cond_9

    .line 26
    invoke-virtual {v1, v10}, Lyw5;->c(I)Lut5;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    if-nez v11, :cond_6

    goto :goto_3

    .line 27
    :cond_6
    iget-object v11, v4, Lfu5;->a:Lbu5;

    .line 28
    invoke-virtual {v1, v10, v11}, Lyw5;->f(ILbu5;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 29
    sget-object v11, Lbq5$a;->g:Lbq5$a;

    goto :goto_5

    .line 30
    :cond_7
    sget-object v11, Lbq5$a;->f:Lbq5$a;

    .line 31
    :goto_5
    invoke-virtual {v1, v10}, Lyw5;->a(I)Lww5;

    move-result-object v12

    .line 32
    iget-object v13, v4, Lfu5;->a:Lbu5;

    .line 33
    iput-boolean v3, v12, Lww5;->c:Z

    .line 34
    iget-object v12, v12, Lww5;->b:Ljava/util/Map;

    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v11, v1, Lyw5;->c:Ljava/util/Map;

    .line 36
    iget-object v12, v4, Lfu5;->a:Lbu5;

    .line 37
    invoke-interface {v11, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v11, v4, Lfu5;->a:Lbu5;

    .line 39
    iget-object v12, v1, Lyw5;->d:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    if-nez v12, :cond_8

    .line 40
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 41
    iget-object v13, v1, Lyw5;->d:Ljava/util/Map;

    invoke-interface {v13, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 43
    :cond_9
    instance-of v11, v4, Lgu5;

    if-eqz v11, :cond_4

    .line 44
    invoke-virtual {v1, v10, v5, v4}, Lyw5;->d(ILbu5;Lfu5;)V

    goto :goto_3

    .line 45
    :cond_a
    iget-object v4, v0, Lxw5$b;->b:Ljava/util/List;

    .line 46
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 47
    iget-object v10, v0, Lxw5$b;->d:Lfu5;

    .line 48
    invoke-virtual {v1, v9, v5, v10}, Lyw5;->d(ILbu5;Lfu5;)V

    goto :goto_6

    .line 49
    :cond_b
    instance-of v5, v0, Lxw5$c;

    if-eqz v5, :cond_f

    .line 50
    iget-object v1, v8, Lsw5;->h:Lyw5;

    check-cast v0, Lxw5$c;

    .line 51
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget v4, v0, Lxw5$c;->a:I

    .line 53
    iget-object v0, v0, Lxw5$c;->b:Lrv5;

    .line 54
    iget v0, v0, Lrv5;->a:I

    .line 55
    invoke-virtual {v1, v4}, Lyw5;->c(I)Lut5;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 56
    iget-object v5, v5, Lut5;->a:Ldr5;

    .line 57
    invoke-virtual {v5}, Ldr5;->c()Z

    move-result v9

    if-eqz v9, :cond_e

    if-nez v0, :cond_c

    .line 58
    iget-object v0, v5, Ldr5;->d:Liu5;

    .line 59
    new-instance v5, Lbu5;

    invoke-direct {v5, v0}, Lbu5;-><init>(Liu5;)V

    .line 60
    new-instance v0, Lgu5;

    sget-object v9, Lju5;->f:Lju5;

    invoke-direct {v0, v5, v9, v2}, Lgu5;-><init>(Lbu5;Lju5;Z)V

    invoke-virtual {v1, v4, v5, v0}, Lyw5;->d(ILbu5;Lfu5;)V

    goto/16 :goto_c

    :cond_c
    if-ne v0, v3, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    new-array v4, v3, [Ljava/lang/Object;

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Single document existence filter with count: %d"

    .line 62
    invoke-static {v1, v0, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 63
    :cond_e
    invoke-virtual {v1, v4}, Lyw5;->a(I)Lww5;

    move-result-object v5

    .line 64
    invoke-virtual {v5}, Lww5;->b()Lvw5;

    move-result-object v5

    .line 65
    iget-object v9, v1, Lyw5;->a:Lyw5$a;

    check-cast v9, Lsw5;

    .line 66
    iget-object v9, v9, Lsw5;->a:Lsw5$c;

    invoke-interface {v9, v4}, Lsw5$c;->d(I)Lln5;

    move-result-object v9

    .line 67
    invoke-virtual {v9}, Lln5;->size()I

    move-result v9

    .line 68
    iget-object v10, v5, Lvw5;->c:Lln5;

    .line 69
    invoke-virtual {v10}, Lln5;->size()I

    move-result v10

    add-int/2addr v10, v9

    .line 70
    iget-object v5, v5, Lvw5;->e:Lln5;

    .line 71
    invoke-virtual {v5}, Lln5;->size()I

    move-result v5

    sub-int/2addr v10, v5

    int-to-long v9, v10

    int-to-long v11, v0

    cmp-long v0, v9, v11

    if-eqz v0, :cond_1c

    .line 72
    invoke-virtual {v1, v4}, Lyw5;->e(I)V

    .line 73
    iget-object v0, v1, Lyw5;->e:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_f
    new-array v5, v2, [Ljava/lang/Object;

    const-string v9, "Expected watchChange to be an instance of WatchTargetChange"

    .line 74
    invoke-static {v1, v9, v5}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v1, v8, Lsw5;->h:Lyw5;

    check-cast v0, Lxw5$d;

    .line 76
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v5, v0, Lxw5$d;->b:Ljava/util/List;

    .line 78
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_9

    .line 79
    :cond_10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v9, v1, Lyw5;->b:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 81
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v11}, Lyw5;->b(I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 82
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 83
    :cond_12
    :goto_9
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 84
    invoke-virtual {v1, v9}, Lyw5;->a(I)Lww5;

    move-result-object v10

    .line 85
    iget-object v11, v0, Lxw5$d;->a:Lxw5$e;

    .line 86
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_1b

    if-eq v11, v3, :cond_19

    const/4 v12, 0x2

    if-eq v11, v12, :cond_16

    const/4 v12, 0x3

    if-eq v11, v12, :cond_15

    const/4 v12, 0x4

    if-ne v11, v12, :cond_14

    .line 87
    invoke-virtual {v1, v9}, Lyw5;->b(I)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 88
    invoke-virtual {v1, v9}, Lyw5;->e(I)V

    .line 89
    iget-object v9, v0, Lxw5$d;->c:Lqi6;

    .line 90
    invoke-virtual {v10, v9}, Lww5;->c(Lqi6;)V

    goto :goto_a

    :cond_14
    new-array v1, v3, [Ljava/lang/Object;

    .line 91
    iget-object v0, v0, Lxw5$d;->a:Lxw5$e;

    aput-object v0, v1, v2

    const-string v0, "Unknown target watch change state: %s"

    .line 92
    invoke-static {v0, v1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v4

    .line 93
    :cond_15
    invoke-virtual {v1, v9}, Lyw5;->b(I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 94
    iput-boolean v3, v10, Lww5;->c:Z

    .line 95
    iput-boolean v3, v10, Lww5;->e:Z

    .line 96
    iget-object v9, v0, Lxw5$d;->c:Lqi6;

    .line 97
    invoke-virtual {v10, v9}, Lww5;->c(Lqi6;)V

    goto :goto_a

    .line 98
    :cond_16
    iget v11, v10, Lww5;->a:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lww5;->a:I

    .line 99
    invoke-virtual {v10}, Lww5;->a()Z

    move-result v10

    if-nez v10, :cond_17

    .line 100
    iget-object v10, v1, Lyw5;->b:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_17
    iget-object v9, v0, Lxw5$d;->d:Lx47;

    if-nez v9, :cond_18

    const/4 v9, 0x1

    goto :goto_b

    :cond_18
    const/4 v9, 0x0

    :goto_b
    new-array v10, v2, [Ljava/lang/Object;

    const-string v11, "WatchChangeAggregator does not handle errored targets"

    .line 102
    invoke-static {v9, v11, v10}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 103
    :cond_19
    iget v9, v10, Lww5;->a:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v10, Lww5;->a:I

    .line 104
    invoke-virtual {v10}, Lww5;->a()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 105
    iput-boolean v2, v10, Lww5;->c:Z

    .line 106
    iget-object v9, v10, Lww5;->b:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 107
    :cond_1a
    iget-object v9, v0, Lxw5$d;->c:Lqi6;

    .line 108
    invoke-virtual {v10, v9}, Lww5;->c(Lqi6;)V

    goto/16 :goto_a

    .line 109
    :cond_1b
    invoke-virtual {v1, v9}, Lyw5;->b(I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 110
    iget-object v9, v0, Lxw5$d;->c:Lqi6;

    .line 111
    invoke-virtual {v10, v9}, Lww5;->c(Lqi6;)V

    goto/16 :goto_a

    .line 112
    :cond_1c
    :goto_c
    sget-object v0, Lju5;->f:Lju5;

    invoke-virtual {v6, v0}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 113
    iget-object v1, v8, Lsw5;->b:Lfs5;

    .line 114
    iget-object v1, v1, Lfs5;->g:Ltt5;

    invoke-interface {v1}, Ltt5;->e()Lju5;

    move-result-object v1

    .line 115
    invoke-virtual {v6, v1}, Lju5;->i(Lju5;)I

    move-result v1

    if-ltz v1, :cond_28

    .line 116
    invoke-virtual {v6, v0}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "Can\'t raise event for unknown SnapshotVersion"

    .line 117
    invoke-static {v0, v4, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v9, v8, Lsw5;->h:Lyw5;

    .line 119
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    iget-object v1, v9, Lyw5;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 123
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lww5;

    .line 124
    invoke-virtual {v9, v5}, Lyw5;->c(I)Lut5;

    move-result-object v10

    if-eqz v10, :cond_1d

    .line 125
    iget-boolean v11, v4, Lww5;->e:Z

    if-eqz v11, :cond_1e

    .line 126
    iget-object v11, v10, Lut5;->a:Ldr5;

    .line 127
    invoke-virtual {v11}, Ldr5;->c()Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 128
    iget-object v10, v10, Lut5;->a:Ldr5;

    .line 129
    iget-object v10, v10, Ldr5;->d:Liu5;

    .line 130
    new-instance v11, Lbu5;

    invoke-direct {v11, v10}, Lbu5;-><init>(Liu5;)V

    .line 131
    iget-object v10, v9, Lyw5;->c:Ljava/util/Map;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1e

    invoke-virtual {v9, v5, v11}, Lyw5;->f(ILbu5;)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 132
    new-instance v10, Lgu5;

    invoke-direct {v10, v11, v6, v2}, Lgu5;-><init>(Lbu5;Lju5;Z)V

    invoke-virtual {v9, v5, v11, v10}, Lyw5;->d(ILbu5;Lfu5;)V

    .line 133
    :cond_1e
    iget-boolean v10, v4, Lww5;->c:Z

    if-eqz v10, :cond_1d

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Lww5;->b()Lvw5;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iput-boolean v2, v4, Lww5;->c:Z

    .line 136
    iget-object v4, v4, Lww5;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto :goto_d

    .line 137
    :cond_1f
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 138
    iget-object v4, v9, Lyw5;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbu5;

    .line 140
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 141
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 142
    invoke-virtual {v9, v11}, Lyw5;->c(I)Lut5;

    move-result-object v11

    if-eqz v11, :cond_21

    .line 143
    iget-object v11, v11, Lut5;->d:Lvs5;

    .line 144
    sget-object v12, Lvs5;->g:Lvs5;

    invoke-virtual {v11, v12}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_21

    const/4 v5, 0x0

    goto :goto_f

    :cond_22
    const/4 v5, 0x1

    :goto_f
    if-eqz v5, :cond_20

    .line 145
    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 146
    :cond_23
    new-instance v10, Lnw5;

    .line 147
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, v9, Lyw5;->e:Ljava/util/Set;

    .line 148
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iget-object v0, v9, Lyw5;->c:Ljava/util/Map;

    .line 149
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 150
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lnw5;-><init>(Lju5;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Lyw5;->c:Ljava/util/Map;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Lyw5;->d:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v9, Lyw5;->e:Ljava/util/Set;

    .line 154
    iget-object v0, v10, Lnw5;->b:Ljava/util/Map;

    .line 155
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvw5;

    .line 157
    iget-object v3, v2, Lvw5;->a:Lqi6;

    .line 158
    invoke-virtual {v3}, Lqi6;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 160
    iget-object v3, v8, Lsw5;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lut5;

    if-eqz v3, :cond_24

    .line 161
    iget-object v4, v8, Lsw5;->c:Ljava/util/Map;

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 163
    iget-object v2, v2, Lvw5;->a:Lqi6;

    .line 164
    invoke-virtual {v3, v2, v6}, Lut5;->a(Lqi6;Lju5;)Lut5;

    move-result-object v2

    .line 165
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 166
    :cond_25
    iget-object v0, v10, Lnw5;->c:Ljava/util/Set;

    .line 167
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 168
    iget-object v1, v8, Lsw5;->c:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lut5;

    if-eqz v1, :cond_26

    .line 169
    iget-object v2, v8, Lsw5;->c:Ljava/util/Map;

    .line 170
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lqi6;->f:Lqi6;

    .line 171
    iget-object v5, v1, Lut5;->e:Lju5;

    .line 172
    invoke-virtual {v1, v4, v5}, Lut5;->a(Lqi6;Lju5;)Lut5;

    move-result-object v4

    .line 173
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {v8, v13}, Lsw5;->f(I)V

    .line 175
    new-instance v2, Lut5;

    .line 176
    iget-object v12, v1, Lut5;->a:Ldr5;

    .line 177
    iget-wide v14, v1, Lut5;->c:J

    .line 178
    sget-object v16, Lvs5;->f:Lvs5;

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lut5;-><init>(Ldr5;IJLvs5;)V

    .line 179
    invoke-virtual {v8, v2}, Lsw5;->g(Lut5;)V

    goto :goto_11

    .line 180
    :cond_27
    iget-object v0, v8, Lsw5;->a:Lsw5$c;

    invoke-interface {v0, v10}, Lsw5$c;->c(Lnw5;)V

    :cond_28
    return-void
.end method

.method public e(Lx47;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lsw5$a;->a:Lsw5;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lwq5;->e:Lwq5;

    sget-object v2, Lx47;->f:Lx47;

    invoke-virtual {v2, p1}, Lx47;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lsw5;->h()Z

    move-result v2

    xor-int/2addr v2, v3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Watch stream was stopped gracefully while still needed."

    .line 5
    invoke-static {v2, v6, v5}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lsw5;->h:Lyw5;

    .line 7
    invoke-virtual {v0}, Lsw5;->h()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 8
    iget-object v5, v0, Lsw5;->d:Lmw5;

    .line 9
    iget-object v6, v5, Lmw5;->a:Lwq5;

    sget-object v7, Lwq5;->f:Lwq5;

    if-ne v6, v7, :cond_3

    .line 10
    invoke-virtual {v5, v1}, Lmw5;->b(Lwq5;)V

    .line 11
    iget p1, v5, Lmw5;->b:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "watchStreamFailures must be 0"

    invoke-static {p1, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object p1, v5, Lmw5;->c:Lex5$b;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    new-array p1, v4, [Ljava/lang/Object;

    const-string v1, "onlineStateTimer must be null"

    invoke-static {v3, v1, p1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_3
    iget v1, v5, Lmw5;->b:I

    add-int/2addr v1, v3

    iput v1, v5, Lmw5;->b:I

    if-lt v1, v3, :cond_5

    .line 14
    iget-object v1, v5, Lmw5;->c:Lex5$b;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Lex5$b;->a()V

    .line 16
    iput-object v2, v5, Lmw5;->c:Lex5$b;

    .line 17
    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    aput-object p1, v2, v3

    const-string p1, "Connection failed %d times. Most recent error: %s"

    .line 19
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {v5, p1}, Lmw5;->a(Ljava/lang/String;)V

    .line 21
    sget-object p1, Lwq5;->g:Lwq5;

    invoke-virtual {v5, p1}, Lmw5;->b(Lwq5;)V

    .line 22
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lsw5;->j()V

    goto :goto_3

    .line 23
    :cond_6
    iget-object p1, v0, Lsw5;->d:Lmw5;

    invoke-virtual {p1, v1}, Lmw5;->c(Lwq5;)V

    :goto_3
    return-void
.end method
