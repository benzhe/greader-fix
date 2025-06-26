.class public final synthetic Lvr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx5;


# instance fields
.field public final a:Lfs5;

.field public final b:Ljs5;


# direct methods
.method public constructor <init>(Lfs5;Ljs5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvr5;->a:Lfs5;

    iput-object p2, p0, Lvr5;->b:Ljs5;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    iget-object v0, v1, Lvr5;->a:Lfs5;

    iget-object v2, v1, Lvr5;->b:Ljs5;

    .line 1
    iget-object v0, v0, Lfs5;->h:Landroid/util/SparseArray;

    .line 2
    sget-object v3, Lqx5$a;->e:Lqx5$a;

    iget-object v4, v2, Ljs5;->b:Ljs5$a;

    iget-wide v4, v4, Ljs5$a;->a:J

    const-wide/16 v6, -0x1

    const-string v8, "LruGarbageCollector"

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-nez v10, :cond_0

    new-array v0, v9, [Ljava/lang/Object;

    const-string v2, "Garbage collection skipped; disabled"

    .line 3
    invoke-static {v3, v8, v2, v0}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljs5$b;

    invoke-direct {v0, v9, v9, v9, v9}, Ljs5$b;-><init>(ZIII)V

    goto/16 :goto_a

    .line 5
    :cond_0
    iget-object v4, v2, Ljs5;->a:Lis5;

    check-cast v4, Lct5;

    .line 6
    iget-object v4, v4, Lct5;->a:Lgt5;

    const-string v5, "PRAGMA page_count"

    .line 7
    iget-object v10, v4, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v11, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v10, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 9
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 10
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    goto :goto_0

    :cond_1
    move-object v10, v11

    .line 11
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-string v5, "PRAGMA page_size"

    .line 13
    iget-object v4, v4, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    :try_start_2
    invoke-virtual {v4, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 15
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 16
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    goto :goto_1

    :cond_2
    move-object v5, v11

    .line 17
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 18
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long v4, v4, v12

    .line 19
    iget-object v10, v2, Ljs5;->b:Ljs5$a;

    iget-wide v12, v10, Ljs5$a;->a:J

    cmp-long v10, v4, v12

    if-gez v10, :cond_3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Garbage collection skipped; Cache size "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " is lower than threshold "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Ljs5;->b:Ljs5$a;

    iget-wide v4, v2, Ljs5$a;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    .line 21
    invoke-static {v3, v8, v0, v2}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance v0, Ljs5$b;

    invoke-direct {v0, v9, v9, v9, v9}, Ljs5$b;-><init>(ZIII)V

    goto/16 :goto_a

    .line 23
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 24
    iget-object v10, v2, Ljs5;->b:Ljs5$a;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v10, v2, Ljs5;->a:Lis5;

    check-cast v10, Lct5;

    .line 26
    iget-object v10, v10, Lct5;->a:Lgt5;

    .line 27
    iget-object v12, v10, Lgt5;->d:Lst5;

    .line 28
    iget-wide v12, v12, Lst5;->f:J

    const-string v14, "SELECT COUNT(*) FROM (SELECT sequence_number FROM target_documents GROUP BY path HAVING COUNT(*) = 1 AND target_id = 0)"

    .line 29
    iget-object v10, v10, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    :try_start_4
    invoke-virtual {v10, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 31
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 32
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    goto :goto_2

    :cond_4
    move-object v14, v11

    .line 33
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 34
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v14, v12

    const/16 v10, 0xa

    int-to-float v10, v10

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v10, v12

    long-to-float v12, v14

    mul-float v10, v10, v12

    float-to-int v10, v10

    .line 35
    iget-object v12, v2, Ljs5;->b:Ljs5$a;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x3e8

    if-le v10, v12, :cond_5

    const-string v13, "Capping sequence numbers to collect down to the maximum of "

    .line 36
    invoke-static {v13}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Ljs5;->b:Ljs5$a;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " from "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v12, v9, [Ljava/lang/Object;

    .line 37
    invoke-static {v3, v8, v10, v12}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v10, v2, Ljs5;->b:Ljs5$a;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x3e8

    .line 39
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-nez v10, :cond_6

    move-wide/from16 v16, v12

    goto :goto_5

    .line 40
    :cond_6
    new-instance v6, Ljs5$c;

    invoke-direct {v6, v10}, Ljs5$c;-><init>(I)V

    .line 41
    iget-object v7, v2, Ljs5;->a:Lis5;

    check-cast v7, Lct5;

    .line 42
    iget-object v7, v7, Lct5;->a:Lgt5;

    .line 43
    iget-object v7, v7, Lgt5;->d:Lst5;

    .line 44
    iget-object v14, v7, Lst5;->a:Lgt5;

    .line 45
    iget-object v14, v14, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "SELECT target_proto FROM targets"

    .line 46
    invoke-virtual {v14, v15, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 47
    :goto_3
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 48
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lst5;->j([B)Lut5;

    move-result-object v9

    move-wide/from16 v16, v12

    .line 49
    iget-wide v11, v9, Lut5;->c:J

    .line 50
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljs5$c;->a(Ljava/lang/Long;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const/4 v9, 0x0

    move-wide/from16 v12, v16

    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    move-wide/from16 v16, v12

    .line 51
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 52
    iget-object v7, v2, Ljs5;->a:Lis5;

    check-cast v7, Lct5;

    .line 53
    iget-object v7, v7, Lct5;->a:Lgt5;

    .line 54
    iget-object v7, v7, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "select sequence_number from target_documents group by path having COUNT(*) = 1 AND target_id = 0"

    const/4 v11, 0x0

    .line 55
    invoke-virtual {v7, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 56
    :goto_4
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    .line 57
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 58
    invoke-virtual {v6, v9}, Ljs5$c;->a(Ljava/lang/Long;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    .line 59
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 60
    iget-object v6, v6, Ljs5$c;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 61
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 62
    iget-object v9, v2, Ljs5;->a:Lis5;

    check-cast v9, Lct5;

    .line 63
    iget-object v9, v9, Lct5;->a:Lgt5;

    .line 64
    iget-object v9, v9, Lgt5;->d:Lst5;

    const/4 v13, 0x1

    new-array v14, v13, [I

    .line 65
    iget-object v15, v9, Lst5;->a:Lgt5;

    .line 66
    iget-object v15, v15, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    new-array v13, v13, [Ljava/lang/Object;

    .line 67
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v13, v19

    .line 68
    new-instance v1, Lht5;

    invoke-direct {v1, v13}, Lht5;-><init>([Ljava/lang/Object;)V

    const-string v13, "SELECT target_id FROM targets WHERE last_listen_sequence_number <= ?"

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .line 69
    invoke-virtual {v15, v1, v13, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 70
    :cond_9
    :goto_6
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    .line 71
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 72
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_9

    .line 73
    iget-object v13, v9, Lst5;->a:Lgt5;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v15, v20

    .line 74
    iget-object v13, v13, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    const-string v0, "DELETE FROM target_documents WHERE target_id = ?"

    invoke-virtual {v13, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, v9, Lst5;->a:Lgt5;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v15, 0x0

    aput-object v3, v13, v15

    .line 76
    iget-object v0, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM targets WHERE target_id = ?"

    invoke-virtual {v0, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v20, v11

    .line 77
    iget-wide v11, v9, Lst5;->f:J

    const-wide/16 v22, 0x1

    sub-long v11, v11, v22

    iput-wide v11, v9, Lst5;->f:J

    const/4 v0, 0x0

    .line 78
    aget v3, v14, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v14, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v0, v19

    move-wide/from16 v11, v20

    goto :goto_6

    :cond_a
    move-wide/from16 v20, v11

    .line 79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 80
    invoke-virtual {v9}, Lst5;->m()V

    const/4 v0, 0x0

    .line 81
    aget v0, v14, v0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 83
    iget-object v1, v2, Ljs5;->a:Lis5;

    check-cast v1, Lct5;

    .line 84
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [I

    :goto_7
    const/4 v3, 0x1

    :goto_8
    const/4 v9, 0x2

    if-eqz v3, :cond_e

    .line 85
    iget-object v3, v1, Lct5;->a:Lgt5;

    .line 86
    iget-object v3, v3, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    new-array v9, v9, [Ljava/lang/Object;

    .line 87
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v9, v14

    const/16 v13, 0x64

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v9, v14

    .line 88
    new-instance v13, Lht5;

    invoke-direct {v13, v9}, Lht5;-><init>([Ljava/lang/Object;)V

    .line 89
    new-instance v9, Lbt5;

    invoke-direct {v9, v1, v2}, Lbt5;-><init>(Lct5;[I)V

    const-string v14, "select path from target_documents group by path having COUNT(*) = 1 AND target_id = 0 AND sequence_number <= ? LIMIT ?"

    const/4 v15, 0x0

    .line 90
    invoke-virtual {v3, v13, v14, v15, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v13, 0x0

    .line 91
    :goto_9
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_b

    add-int/lit8 v13, v13, 0x1

    .line 92
    invoke-virtual {v9, v3}, Lbt5;->accept(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    .line 93
    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/16 v3, 0x64

    if-ne v13, v3, :cond_c

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    goto :goto_8

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_d

    .line 94
    :try_start_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    :cond_d
    throw v0

    :cond_e
    const/4 v1, 0x0

    .line 95
    aget v1, v2, v1

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v6, "LRU Garbage Collection:\n"

    const-string v7, "\tCounted targets in "

    .line 97
    invoke-static {v6, v7}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v13, v16, v4

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-static {v6}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v13, v9, [Ljava/lang/Object;

    .line 99
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sub-long v14, v20, v16

    .line 100
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string v14, "\tDetermined least recently used %d sequence numbers in %dms\n"

    .line 101
    invoke-static {v7, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-static {v6}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-array v13, v9, [Ljava/lang/Object;

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sub-long v14, v11, v20

    .line 104
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string v14, "\tRemoved %d targets in %dms\n"

    .line 105
    invoke-static {v7, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-static {v6}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-array v9, v9, [Ljava/lang/Object;

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v9, v14

    sub-long v11, v2, v11

    .line 108
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v9, v12

    const-string v11, "\tRemoved %d documents in %dms\n"

    .line 109
    invoke-static {v7, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-static {v6}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-array v9, v12, [Ljava/lang/Object;

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v9, v3

    const-string v2, "Total Duration: %dms"

    invoke-static {v7, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v4, v18

    .line 111
    invoke-static {v4, v8, v2, v3}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance v2, Ljs5$b;

    invoke-direct {v2, v12, v10, v0, v1}, Ljs5$b;-><init>(ZIII)V

    move-object v0, v2

    :goto_a
    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_f

    .line 113
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    :cond_f
    throw v0

    :catchall_4
    move-exception v0

    if-eqz v7, :cond_10

    .line 114
    :try_start_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    :cond_10
    throw v0

    :catchall_6
    move-exception v0

    if-eqz v14, :cond_11

    .line 115
    :try_start_d
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    :cond_11
    throw v0

    :catchall_8
    move-exception v0

    move-object v11, v10

    goto :goto_b

    :catchall_9
    move-exception v0

    :goto_b
    if-eqz v11, :cond_12

    .line 116
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_12
    throw v0

    :catchall_a
    move-exception v0

    move-object v11, v4

    goto :goto_c

    :catchall_b
    move-exception v0

    :goto_c
    if-eqz v11, :cond_13

    .line 118
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_13
    throw v0

    :catchall_c
    move-exception v0

    move-object v11, v5

    goto :goto_d

    :catchall_d
    move-exception v0

    :goto_d
    if-eqz v11, :cond_14

    .line 120
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_14
    throw v0
.end method
