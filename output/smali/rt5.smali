.class public Lrt5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;

.field public final b:Lur5;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lur5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    iput-object p2, p0, Lrt5;->b:Lur5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT target_id, target_proto FROM targets"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 5
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-static {v5}, Lev5;->T([B)Lev5;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Lgj6;->A()Lgj6$a;

    move-result-object v5

    check-cast v5, Lev5$b;

    .line 8
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 9
    iget-object v6, v5, Lgj6$a;->f:Lgj6;

    check-cast v6, Lev5;

    invoke-static {v6}, Lev5;->F(Lev5;)V

    .line 10
    invoke-virtual {v5}, Lgj6$a;->l()Lgj6;

    move-result-object v5

    check-cast v5, Lev5;

    .line 11
    iget-object v6, p0, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "UPDATE targets SET target_proto = ? WHERE target_id = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v5}, Lii6;->b()[B

    move-result-object v5

    aput-object v5, v8, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v3

    .line 13
    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lkj6; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Failed to decode Query data for target %s"

    invoke-static {v1, v3}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 16
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_1
    throw v1
.end method

.method public final b([Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    const-string v0, "["

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 3
    aget-object v4, p1, v2

    .line 4
    invoke-virtual {p0, v4}, Lrt5;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v2, :cond_0

    move v3, v5

    goto :goto_2

    :cond_0
    if-eq v5, v3, :cond_2

    const-string p2, "Expected all of "

    const-string v2, " to either exist or not, but "

    .line 5
    invoke-static {p2, v0, v2}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v3, :cond_1

    .line 6
    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object p1, p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exists and "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object p1, p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist and "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 9
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping migration because all of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " already exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SQLiteSchema"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public c(I)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string v2, "remote_documents"

    const-string v3, "target_documents"

    const-string v4, "targets"

    const-string v5, "target_globals"

    const/4 v6, 0x1

    if-ge v0, v6, :cond_0

    const-string v7, "mutation_queues"

    const-string v8, "mutations"

    const-string v9, "document_mutations"

    .line 1
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 2
    new-instance v8, Lmt5;

    invoke-direct {v8, v1}, Lmt5;-><init>(Lrt5;)V

    .line 3
    invoke-virtual {v1, v7, v8}, Lrt5;->b([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 4
    filled-new-array {v4, v5, v3}, [Ljava/lang/String;

    move-result-object v7

    .line 5
    new-instance v8, Lot5;

    invoke-direct {v8, v1}, Lot5;-><init>(Lrt5;)V

    .line 6
    invoke-virtual {v1, v7, v8}, Lrt5;->b([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 7
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    .line 8
    new-instance v8, Lpt5;

    invoke-direct {v8, v1}, Lpt5;-><init>(Lrt5;)V

    .line 9
    invoke-virtual {v1, v7, v8}, Lrt5;->b([Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    const/4 v7, 0x3

    if-ge v0, v7, :cond_4

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v1, v4}, Lrt5;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 11
    iget-object v7, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "DROP TABLE targets"

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-virtual {v1, v5}, Lrt5;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 13
    iget-object v7, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "DROP TABLE target_globals"

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {v1, v3}, Lrt5;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 15
    iget-object v7, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "DROP TABLE target_documents"

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 16
    :cond_3
    filled-new-array {v4, v5, v3}, [Ljava/lang/String;

    move-result-object v7

    .line 17
    new-instance v8, Lot5;

    invoke-direct {v8, v1}, Lot5;-><init>(Lrt5;)V

    .line 18
    invoke-virtual {v1, v7, v8}, Lrt5;->b([Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_4
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ge v0, v7, :cond_8

    .line 19
    iget-object v7, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v5}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_6

    .line 20
    iget-object v7, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "0"

    filled-new-array {v10, v10, v10, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "INSERT INTO target_globals (highest_target_id, highest_listen_sequence_number, last_remote_snapshot_version_seconds, last_remote_snapshot_version_nanos) VALUES (?, ?, ?, ?)"

    invoke-virtual {v7, v11, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const-string v7, "target_count"

    .line 21
    invoke-virtual {v1, v5, v7}, Lrt5;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 22
    iget-object v10, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "ALTER TABLE target_globals ADD COLUMN target_count INTEGER"

    invoke-virtual {v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    :cond_7
    iget-object v10, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v10, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v10

    .line 24
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 25
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    iget-object v7, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v5, v4, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_8
    const/4 v4, 0x5

    if-ge v0, v4, :cond_9

    const-string v4, "sequence_number"

    .line 27
    invoke-virtual {v1, v3, v4}, Lrt5;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 28
    iget-object v3, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ALTER TABLE target_documents ADD COLUMN sequence_number INTEGER"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    const/4 v3, 0x6

    if-ge v0, v3, :cond_c

    .line 29
    iget-object v3, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    new-instance v4, Lnt5;

    invoke-direct {v4, v1}, Lnt5;-><init>(Lrt5;)V

    const-string v5, "SELECT uid, last_acknowledged_batch_id FROM mutation_queues"

    .line 31
    invoke-virtual {v3, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 32
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 33
    invoke-virtual {v4, v3}, Lnt5;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 34
    :cond_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_b

    .line 35
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_b
    throw v0

    :cond_c
    :goto_2
    const/4 v3, 0x7

    const/4 v4, 0x2

    if-ge v0, v3, :cond_14

    .line 36
    iget-object v3, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT highest_listen_sequence_number FROM target_globals LIMIT 1"

    .line 37
    :try_start_2
    invoke-virtual {v3, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 38
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 39
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 40
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v5, v8

    :goto_3
    if-eqz v5, :cond_e

    const/4 v3, 0x1

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    :goto_4
    new-array v7, v9, [Ljava/lang/Object;

    const-string v10, "Missing highest sequence number"

    .line 41
    invoke-static {v3, v10, v7}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 43
    iget-object v3, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO target_documents (target_id, path, sequence_number) VALUES (0, ?, ?)"

    .line 44
    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 45
    iget-object v5, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-array v7, v6, [Ljava/lang/Object;

    const/16 v12, 0x64

    .line 46
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v9

    .line 47
    new-instance v12, Lht5;

    invoke-direct {v12, v7}, Lht5;-><init>([Ljava/lang/Object;)V

    new-array v7, v6, [Z

    :goto_5
    aput-boolean v9, v7, v9

    const-string v13, "SELECT RD.path FROM remote_documents AS RD WHERE NOT EXISTS (SELECT TD.path FROM target_documents AS TD WHERE RD.path = TD.path AND TD.target_id = 0) LIMIT ?"

    .line 48
    invoke-virtual {v5, v12, v13, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 49
    :goto_6
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_10

    aput-boolean v6, v7, v9

    .line 50
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 51
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v6, v14}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 52
    invoke-virtual {v3, v4, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 53
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v18, v14, v16

    if-eqz v18, :cond_f

    const/4 v14, 0x1

    goto :goto_7

    :cond_f
    const/4 v14, 0x0

    :goto_7
    new-array v15, v9, [Ljava/lang/Object;

    const-string v6, "Failed to insert a sentinel row"

    invoke-static {v14, v6, v15}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v6, 0x1

    goto :goto_6

    .line 54
    :cond_10
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 55
    aget-boolean v6, v7, v9

    if-nez v6, :cond_11

    goto :goto_9

    :cond_11
    const/4 v6, 0x1

    goto :goto_5

    :catchall_2
    move-exception v0

    if-eqz v13, :cond_12

    .line 56
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    :cond_12
    throw v0

    :catchall_4
    move-exception v0

    move-object v8, v3

    goto :goto_8

    :catchall_5
    move-exception v0

    :goto_8
    if-eqz v8, :cond_13

    .line 57
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 58
    :cond_13
    throw v0

    :cond_14
    :goto_9
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1f

    const-string v3, "collection_parents"

    .line 59
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 60
    new-instance v5, Lqt5;

    invoke-direct {v5, v1}, Lqt5;-><init>(Lrt5;)V

    .line 61
    invoke-virtual {v1, v3, v5}, Lrt5;->b([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 62
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 63
    iget-object v5, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)"

    .line 64
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 65
    iget-object v6, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT path FROM remote_documents"

    .line 66
    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 67
    :cond_15
    :goto_a
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    const-string v10, "Expected a collection path."

    if-eqz v7, :cond_18

    .line 68
    :try_start_7
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc50;->K(Ljava/lang/String;)Liu5;

    move-result-object v7

    .line 69
    invoke-virtual {v7}, Lvt5;->L()Lvt5;

    move-result-object v7

    check-cast v7, Liu5;

    .line 70
    invoke-virtual {v7}, Lvt5;->I()I

    move-result v11

    rem-int/2addr v11, v4

    const/4 v12, 0x1

    if-ne v11, v12, :cond_16

    const/4 v11, 0x1

    goto :goto_b

    :cond_16
    const/4 v11, 0x0

    :goto_b
    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v11, v10, v12}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v7}, Lvt5;->x()Ljava/lang/String;

    move-result-object v10

    .line 72
    invoke-virtual {v7}, Lvt5;->L()Lvt5;

    move-result-object v11

    check-cast v11, Liu5;

    .line 73
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    if-nez v12, :cond_17

    .line 74
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 75
    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_17
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 77
    invoke-virtual {v7}, Lvt5;->x()Ljava/lang/String;

    move-result-object v10

    .line 78
    invoke-virtual {v7}, Lvt5;->L()Lvt5;

    move-result-object v7

    check-cast v7, Liu5;

    .line 79
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v11, 0x1

    .line 80
    invoke-virtual {v5, v11, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    invoke-static {v7}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 82
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    goto :goto_a

    .line 83
    :cond_18
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    iget-object v6, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT path FROM document_mutations"

    .line 85
    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    :cond_19
    :goto_c
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 87
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc50;->K(Ljava/lang/String;)Liu5;

    move-result-object v7

    .line 88
    invoke-virtual {v7}, Lvt5;->L()Lvt5;

    move-result-object v7

    check-cast v7, Liu5;

    .line 89
    invoke-virtual {v7}, Lvt5;->I()I

    move-result v11

    rem-int/2addr v11, v4

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1a

    const/4 v11, 0x1

    goto :goto_d

    :cond_1a
    const/4 v11, 0x0

    :goto_d
    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v11, v10, v12}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v7}, Lvt5;->x()Ljava/lang/String;

    move-result-object v11

    .line 91
    invoke-virtual {v7}, Lvt5;->L()Lvt5;

    move-result-object v12

    check-cast v12, Liu5;

    .line 92
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    if-nez v13, :cond_1b

    .line 93
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 94
    invoke-virtual {v3, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1b
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 96
    invoke-virtual {v7}, Lvt5;->x()Ljava/lang/String;

    move-result-object v11

    .line 97
    invoke-virtual {v7}, Lvt5;->L()Lvt5;

    move-result-object v7

    check-cast v7, Liu5;

    .line 98
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v12, 0x1

    .line 99
    invoke-virtual {v5, v12, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 100
    invoke-static {v7}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 101
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_c

    .line 102
    :cond_1c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_e

    :catchall_6
    move-exception v0

    if-eqz v6, :cond_1d

    .line 103
    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    :cond_1d
    throw v0

    :catchall_8
    move-exception v0

    if-eqz v6, :cond_1e

    .line 104
    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :catchall_9
    :cond_1e
    throw v0

    :cond_1f
    :goto_e
    const/16 v3, 0x9

    if-ge v0, v3, :cond_23

    const-string v5, "read_time_seconds"

    .line 105
    invoke-virtual {v1, v2, v5}, Lrt5;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "read_time_nanos"

    .line 106
    invoke-virtual {v1, v2, v6}, Lrt5;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-ne v5, v2, :cond_20

    const/4 v6, 0x1

    goto :goto_f

    :cond_20
    const/4 v6, 0x0

    :goto_f
    new-array v7, v9, [Ljava/lang/Object;

    const-string v10, "Table contained just one of read_time_seconds or read_time_nanos"

    .line 107
    invoke-static {v6, v10, v7}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_21

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_10

    :cond_21
    const/4 v2, 0x0

    :goto_10
    if-nez v2, :cond_22

    .line 108
    iget-object v2, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE remote_documents ADD COLUMN read_time_seconds INTEGER"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    iget-object v2, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE remote_documents ADD COLUMN read_time_nanos INTEGER"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_11

    .line 110
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lrt5;->a()V

    :cond_23
    :goto_11
    if-ne v0, v3, :cond_24

    .line 111
    invoke-virtual/range {p0 .. p0}, Lrt5;->a()V

    :cond_24
    const/16 v2, 0xb

    if-ge v0, v2, :cond_27

    .line 112
    iget-object v2, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT target_id, target_proto FROM targets"

    .line 113
    invoke-virtual {v2, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 114
    :goto_12
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 115
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    .line 116
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 117
    :try_start_c
    invoke-static {v6}, Lev5;->T([B)Lev5;

    move-result-object v5

    .line 118
    iget-object v6, v1, Lrt5;->b:Lur5;

    invoke-virtual {v6, v5}, Lur5;->c(Lev5;)Lut5;

    move-result-object v5

    .line 119
    iget-object v5, v5, Lut5;->a:Ldr5;

    .line 120
    invoke-virtual {v5}, Ldr5;->a()Ljava/lang/String;

    move-result-object v5

    .line 121
    iget-object v6, v1, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "UPDATE targets SET canonical_id  = ? WHERE target_id = ?"

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v5, v10, v9

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v10, v11

    .line 123
    invoke-virtual {v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Lkj6; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_12

    :catch_0
    const/4 v0, 0x1

    :try_start_d
    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v9

    const-string v3, "Failed to decode Query data for target %s"

    invoke-static {v3, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    throw v8

    .line 125
    :cond_25
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_13

    :catchall_a
    move-exception v0

    if-eqz v2, :cond_26

    .line 126
    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :catchall_b
    :cond_26
    throw v0

    :cond_27
    :goto_13
    const/16 v2, 0xc

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRAGMA table_info("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string p1, "name"

    .line 3
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 4
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_2
    throw p1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT 1=1 FROM sqlite_master WHERE tbl_name = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 2
    new-instance p1, Lht5;

    invoke-direct {p1, v3}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr p1, v2

    .line 5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    xor-int/2addr p1, v2

    return p1

    :catchall_0
    move-exception p1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 6
    :cond_0
    throw p1
.end method
