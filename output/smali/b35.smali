.class public final Lb35;
.super Lb25;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lw25;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lj25;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb25;-><init>(Lj25;)V

    return-void
.end method


# virtual methods
.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 63
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lz44;",
            ">;",
            "Ljava/util/List<",
            "Lr54;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lu44;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    const-string v10, "current_results"

    .line 1
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v9, Lb35;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v9, Lb35;->e:Ljava/util/Set;

    .line 5
    new-instance v0, Lf4;

    invoke-direct {v0}, Lf4;-><init>()V

    iput-object v0, v9, Lb35;->f:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v9, Lb35;->g:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v9, Lb35;->h:Ljava/lang/Long;

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz44;

    .line 7
    invoke-virtual {v1}, Lz44;->v()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {}, Lbd4;->b()Z

    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    move-result-object v0

    iget-object v2, v9, Lb35;->d:Ljava/lang/String;

    .line 10
    sget-object v3, Lew4;->b0:Ldw4;

    invoke-virtual {v0, v2, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v13

    .line 11
    invoke-static {}, Lbd4;->b()Z

    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 12
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    move-result-object v0

    iget-object v2, v9, Lb35;->d:Ljava/lang/String;

    sget-object v3, Lew4;->a0:Ldw4;

    .line 13
    invoke-virtual {v0, v2, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v14

    if-eqz v1, :cond_2

    iget-object v0, v9, Lb25;->b:Lj25;

    .line 14
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v2

    iget-object v3, v9, Lb35;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Lb25;->f()V

    invoke-virtual {v2}, Lly4;->d()V

    .line 16
    invoke-static {v3}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    .line 17
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    :try_start_0
    invoke-virtual {v2}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/String;

    aput-object v3, v5, v11

    const-string v6, "events"

    const-string v7, "app_id = ?"

    .line 20
    invoke-virtual {v4, v6, v0, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error resetting session-scoped event counts. appId"

    .line 24
    invoke-virtual {v2, v4, v3, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v15, "Failed to merge filter. appId"

    const-string v8, "Database error querying filters. appId"

    const-string v7, "data"

    const-string v6, "audience_id"

    if-eqz v14, :cond_8

    if-eqz v13, :cond_8

    iget-object v0, v9, Lb25;->b:Lj25;

    .line 26
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v2

    iget-object v3, v9, Lb35;->d:Ljava/lang/String;

    .line 27
    invoke-static {v3}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Lf4;

    .line 28
    invoke-direct {v4}, Lf4;-><init>()V

    .line 29
    invoke-virtual {v2}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_1
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v18

    new-array v0, v12, [Ljava/lang/String;

    aput-object v3, v0, v11

    const-string v17, "event_filters"

    const-string v19, "app_id=?"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    .line 30
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    :goto_2
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :try_start_3
    invoke-static {}, Lv34;->E()Lu34;

    move-result-object v12

    invoke-static {v12, v0}, Ll25;->G(Ls74;[B)Ls74;

    move-result-object v0

    check-cast v0, Lu34;

    invoke-virtual {v0}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Lv34;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :try_start_4
    invoke-virtual {v0}, Lv34;->y()Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_4

    .line 35
    :cond_3
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 36
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_4

    new-instance v11, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v4, v12, v11}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v11, v16

    .line 39
    :goto_3
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_1
    move-exception v0

    .line 40
    iget-object v11, v2, Lly4;->a:Lrx4;

    .line 41
    invoke-virtual {v11}, Lrx4;->a()Lqw4;

    move-result-object v11

    .line 42
    invoke-virtual {v11}, Lqw4;->n()Low4;

    move-result-object v11

    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 43
    invoke-virtual {v11, v15, v12, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_5

    .line 45
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v11, v4

    goto :goto_9

    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_2

    .line 46
    :cond_6
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    .line 47
    :goto_5
    :try_start_6
    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 48
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 50
    invoke-virtual {v2, v8, v3, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_8

    .line 52
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_7
    throw v0

    :cond_8
    :goto_8
    move-object v11, v0

    .line 54
    :goto_9
    iget-object v0, v9, Lb25;->b:Lj25;

    .line 55
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v2

    iget-object v3, v9, Lb35;->d:Ljava/lang/String;

    .line 56
    invoke-virtual {v2}, Lb25;->f()V

    invoke-virtual {v2}, Lly4;->d()V

    .line 57
    invoke-static {v3}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-virtual {v2}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_7
    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v17, "audience_filter_values"

    const-string v19, "app_id=?"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    .line 59
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 60
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a

    .line 61
    invoke-static {}, Lid4;->b()Z

    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 62
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    move-result-object v0

    sget-object v5, Lew4;->D0:Ldw4;

    .line 63
    invoke-virtual {v0, v3, v5}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 65
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v12, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_f

    :cond_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_e

    :cond_a
    :try_start_9
    new-instance v5, Lf4;

    .line 66
    invoke-direct {v5}, Lf4;-><init>()V

    :goto_a
    const/4 v12, 0x0

    .line 67
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v12, 0x1

    .line 68
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 69
    :try_start_a
    invoke-static {}, Ln54;->C()Lm54;

    move-result-object v12

    invoke-static {v12, v0}, Ll25;->G(Ls74;[B)Ls74;

    move-result-object v0

    check-cast v0, Lm54;

    invoke-virtual {v0}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Ln54;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 70
    :try_start_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12, v0}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_b

    :catch_4
    move-exception v0

    .line 71
    iget-object v12, v2, Lly4;->a:Lrx4;

    .line 72
    invoke-virtual {v12}, Lrx4;->a()Lqw4;

    move-result-object v12

    .line 73
    invoke-virtual {v12}, Lqw4;->n()Low4;

    move-result-object v12

    move-object/from16 v17, v5

    const-string v5, "Failed to merge filter results. appId, audienceId, error"
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v18, v6

    :try_start_c
    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move-object/from16 v19, v7

    .line 74
    :try_start_d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 75
    invoke-virtual {v12, v5, v6, v7, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-nez v0, :cond_b

    .line 77
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object/from16 v12, v17

    goto :goto_f

    :cond_b
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    :goto_c
    move-object/from16 v19, v7

    goto :goto_d

    :catch_7
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_c

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_4e

    :catch_8
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const/4 v4, 0x0

    .line 78
    :goto_d
    :try_start_e
    iget-object v5, v2, Lly4;->a:Lrx4;

    .line 79
    invoke-virtual {v5}, Lrx4;->a()Lqw4;

    move-result-object v5

    .line 80
    invoke-virtual {v5}, Lqw4;->n()Low4;

    move-result-object v5

    const-string v6, "Database error querying filter results. appId"

    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 81
    invoke-virtual {v5, v6, v7, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lid4;->b()Z

    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 83
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    move-result-object v0

    sget-object v2, Lew4;->D0:Ldw4;

    .line 84
    invoke-virtual {v0, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v4, :cond_c

    .line 86
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object v12, v0

    goto :goto_f

    :cond_d
    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    :goto_e
    const/4 v12, 0x0

    .line 87
    :goto_f
    invoke-static {}, Lid4;->b()Z

    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 88
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    move-result-object v0

    iget-object v2, v9, Lb35;->d:Ljava/lang/String;

    sget-object v3, Lew4;->D0:Ldw4;

    .line 89
    invoke-virtual {v0, v2, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    const/4 v7, 0x2

    if-nez v0, :cond_f

    if-eqz v12, :cond_10

    .line 90
    :cond_f
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move-object/from16 v28, v8

    move-object/from16 v22, v10

    :goto_10
    move-object/from16 v10, v18

    move-object/from16 v11, v19

    const/4 v12, 0x2

    goto/16 :goto_26

    .line 91
    :cond_11
    new-instance v2, Ljava/util/HashSet;

    .line 92
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_22

    iget-object v1, v9, Lb35;->d:Ljava/lang/String;

    .line 93
    invoke-static {v1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    invoke-static {v12}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lf4;

    .line 95
    invoke-direct {v3}, Lf4;-><init>()V

    .line 96
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    move-object/from16 v17, v8

    goto/16 :goto_19

    .line 97
    :cond_12
    iget-object v0, v9, Lb25;->b:Lj25;

    .line 98
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lb25;->f()V

    invoke-virtual {v4}, Lly4;->d()V

    .line 100
    invoke-static {v1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lf4;

    .line 101
    invoke-direct {v0}, Lf4;-><init>()V

    .line 102
    invoke-virtual {v4}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    :try_start_f
    new-array v6, v7, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v1, v6, v16

    const/16 v16, 0x1

    aput-object v1, v6, v16

    const-string v7, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    .line 103
    invoke-virtual {v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 104
    :try_start_10
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_15

    :cond_13
    const/4 v6, 0x0

    .line 105
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_14

    new-instance v7, Ljava/util/ArrayList;

    .line 107
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {v0, v6, v7}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const/4 v6, 0x1

    .line 109
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 110
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_11

    .line 112
    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 113
    :goto_11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object/from16 v17, v8

    goto :goto_13

    :catch_9
    move-exception v0

    goto :goto_12

    :catchall_3
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_1a

    :catch_a
    move-exception v0

    const/4 v5, 0x0

    .line 114
    :goto_12
    :try_start_11
    iget-object v6, v4, Lly4;->a:Lrx4;

    .line 115
    invoke-virtual {v6}, Lrx4;->a()Lqw4;

    move-result-object v6

    .line 116
    invoke-virtual {v6}, Lqw4;->n()Low4;

    move-result-object v6

    const-string v7, "Database error querying scoped filters. appId"

    move-object/from16 v17, v8

    invoke-static {v1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 117
    invoke-virtual {v6, v7, v8, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lid4;->b()Z

    iget-object v0, v4, Lly4;->a:Lrx4;

    .line 119
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    move-result-object v0

    sget-object v4, Lew4;->D0:Ldw4;

    .line 120
    invoke-virtual {v0, v1, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-eqz v5, :cond_18

    .line 122
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_13

    :cond_16
    if-eqz v5, :cond_17

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_17
    const/4 v0, 0x0

    .line 123
    :cond_18
    :goto_13
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln54;

    .line 125
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_1f

    .line 126
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1a

    goto/16 :goto_17

    .line 127
    :cond_1a
    iget-object v5, v9, Lb25;->b:Lj25;

    .line 128
    invoke-virtual {v5}, Lj25;->Q()Ll25;

    move-result-object v5

    .line 129
    invoke-virtual {v6}, Ln54;->u()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Ll25;->C(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 130
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_19

    .line 131
    invoke-virtual {v6}, Lc94;->n()Lz84;

    move-result-object v8

    check-cast v8, Lm54;

    invoke-virtual {v8}, Lm54;->q()Lm54;

    invoke-virtual {v8, v5}, Lm54;->p(Ljava/lang/Iterable;)Lm54;

    iget-object v5, v9, Lb25;->b:Lj25;

    .line 132
    invoke-virtual {v5}, Lj25;->Q()Ll25;

    move-result-object v5

    move-object/from16 v20, v0

    .line 133
    invoke-virtual {v6}, Ln54;->s()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Ll25;->C(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-virtual {v8}, Lm54;->o()Lm54;

    invoke-virtual {v8, v0}, Lm54;->m(Ljava/lang/Iterable;)Lm54;

    const/4 v0, 0x0

    .line 135
    :goto_15
    invoke-virtual {v6}, Ln54;->x()I

    move-result v5

    if-ge v0, v5, :cond_1c

    .line 136
    invoke-virtual {v6, v0}, Ln54;->y(I)Lw44;

    move-result-object v5

    invoke-virtual {v5}, Lw44;->t()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 137
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 138
    invoke-virtual {v8, v0}, Lm54;->r(I)Lm54;

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1c
    const/4 v0, 0x0

    .line 139
    :goto_16
    invoke-virtual {v6}, Ln54;->A()I

    move-result v5

    if-ge v0, v5, :cond_1e

    .line 140
    invoke-virtual {v6, v0}, Ln54;->B(I)Lp54;

    move-result-object v5

    invoke-virtual {v5}, Lp54;->t()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 141
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 142
    invoke-virtual {v8, v0}, Lm54;->s(I)Lm54;

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 143
    :cond_1e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8}, Lz84;->g()Lc94;

    move-result-object v4

    check-cast v4, Ln54;

    invoke-virtual {v3, v0, v4}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_1f
    :goto_17
    move-object/from16 v20, v0

    .line 144
    invoke-virtual {v3, v5, v6}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    move-object/from16 v0, v20

    goto/16 :goto_14

    :cond_20
    :goto_19
    move-object v0, v3

    goto :goto_1b

    :catchall_4
    move-exception v0

    :goto_1a
    if-eqz v5, :cond_21

    .line 145
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_21
    throw v0

    :cond_22
    move-object/from16 v17, v8

    move-object v0, v12

    .line 147
    :goto_1b
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 148
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln54;

    new-instance v5, Ljava/util/BitSet;

    .line 149
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    .line 150
    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Lf4;

    .line 151
    invoke-direct {v7}, Lf4;-><init>()V

    if-eqz v1, :cond_26

    .line 152
    invoke-virtual {v1}, Ln54;->x()I

    move-result v2

    if-nez v2, :cond_23

    goto :goto_1f

    .line 153
    :cond_23
    invoke-virtual {v1}, Ln54;->w()Ljava/util/List;

    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw44;

    .line 155
    invoke-virtual {v3}, Lw44;->s()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 156
    invoke-virtual {v3}, Lw44;->t()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 157
    invoke-virtual {v3}, Lw44;->u()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 158
    invoke-virtual {v3}, Lw44;->v()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1e

    :cond_25
    const/4 v3, 0x0

    .line 159
    :goto_1e
    invoke-virtual {v7, v4, v3}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 160
    :cond_26
    :goto_1f
    new-instance v8, Lf4;

    .line 161
    invoke-direct {v8}, Lf4;-><init>()V

    if-eqz v1, :cond_29

    .line 162
    invoke-virtual {v1}, Ln54;->A()I

    move-result v2

    if-nez v2, :cond_27

    goto :goto_21

    .line 163
    :cond_27
    invoke-virtual {v1}, Ln54;->z()Ljava/util/List;

    move-result-object v2

    .line 164
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp54;

    .line 165
    invoke-virtual {v3}, Lp54;->s()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v3}, Lp54;->v()I

    move-result v4

    if-lez v4, :cond_28

    .line 166
    invoke-virtual {v3}, Lp54;->t()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 167
    invoke-virtual {v3}, Lp54;->v()I

    move-result v22

    move-object/from16 v23, v0

    add-int/lit8 v0, v22, -0x1

    invoke-virtual {v3, v0}, Lp54;->w(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 168
    invoke-virtual {v8, v4, v0}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    goto :goto_20

    :cond_29
    :goto_21
    move-object/from16 v23, v0

    if-eqz v1, :cond_2c

    const/4 v0, 0x0

    .line 169
    :goto_22
    invoke-virtual {v1}, Ln54;->t()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    if-ge v0, v2, :cond_2c

    invoke-virtual {v1}, Ln54;->s()Ljava/util/List;

    move-result-object v2

    .line 170
    invoke-static {v2, v0}, Ll25;->A(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, v9, Lly4;->a:Lrx4;

    .line 171
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lqw4;->s()Low4;

    move-result-object v2

    .line 173
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v22, v10

    const-string v10, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v2, v10, v3, v4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Ln54;->u()Ljava/util/List;

    move-result-object v2

    .line 175
    invoke-static {v2, v0}, Ll25;->A(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 176
    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_23

    :cond_2a
    move-object/from16 v22, v10

    .line 177
    :cond_2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_23
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v22

    goto :goto_22

    :cond_2c
    move-object/from16 v22, v10

    .line 178
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ln54;

    if-eqz v14, :cond_31

    if-eqz v13, :cond_31

    .line 179
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_31

    iget-object v1, v9, Lb35;->h:Ljava/lang/Long;

    if-eqz v1, :cond_31

    iget-object v1, v9, Lb35;->g:Ljava/lang/Long;

    if-nez v1, :cond_2d

    goto :goto_25

    .line 180
    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv34;

    .line 181
    invoke-virtual {v1}, Lv34;->t()I

    move-result v2

    iget-object v3, v9, Lb35;->h:Ljava/lang/Long;

    .line 182
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    .line 183
    invoke-virtual {v1}, Lv34;->B()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, v9, Lb35;->g:Ljava/lang/Long;

    .line 184
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    div-long v24, v24, v26

    .line 185
    :cond_2f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lm4;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 186
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_30
    invoke-virtual {v8, v1}, Lm4;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 188
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 189
    :cond_31
    :goto_25
    new-instance v0, Lw25;

    iget-object v3, v9, Lb35;->d:Ljava/lang/String;

    move-object v1, v0

    move-object/from16 v2, p0

    const/4 v10, 0x0

    move-object/from16 v10, v18

    move-object/from16 v18, v11

    move-object/from16 v16, v12

    move-object/from16 v11, v19

    const/4 v12, 0x2

    move-object/from16 v28, v17

    .line 190
    invoke-direct/range {v1 .. v8}, Lw25;-><init>(Lb35;Ljava/lang/String;Ln54;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v1, v9, Lb35;->f:Ljava/util/Map;

    .line 191
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v16

    move-object/from16 v11, v18

    move-object/from16 v0, v23

    move-object/from16 v18, v10

    move-object/from16 v10, v22

    goto/16 :goto_1c

    :cond_32
    move-object/from16 v22, v10

    move-object/from16 v28, v17

    goto/16 :goto_10

    .line 192
    :goto_26
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-eqz v0, :cond_34

    :cond_33
    move-object/from16 v18, v10

    move-object/from16 v20, v11

    move-object/from16 v11, v28

    goto/16 :goto_37

    .line 193
    :cond_34
    new-instance v2, Lx25;

    .line 194
    invoke-direct {v2, v9}, Lx25;-><init>(Lb35;)V

    new-instance v3, Lf4;

    .line 195
    invoke-direct {v3}, Lf4;-><init>()V

    .line 196
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz44;

    iget-object v5, v9, Lb35;->d:Ljava/lang/String;

    .line 197
    invoke-virtual {v2, v5, v0}, Lx25;->a(Ljava/lang/String;Lz44;)Lz44;

    move-result-object v5

    if-eqz v5, :cond_35

    iget-object v6, v9, Lb25;->b:Lj25;

    .line 198
    invoke-virtual {v6}, Lj25;->L()Lgs4;

    move-result-object v6

    iget-object v7, v9, Lb35;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lz44;->v()Ljava/lang/String;

    move-result-object v8

    .line 199
    invoke-virtual {v0}, Lz44;->v()Ljava/lang/String;

    move-result-object v13

    .line 200
    invoke-virtual {v6, v7, v13}, Lgs4;->z(Ljava/lang/String;Ljava/lang/String;)Lls4;

    move-result-object v13

    if-nez v13, :cond_36

    iget-object v13, v6, Lly4;->a:Lrx4;

    .line 201
    invoke-virtual {v13}, Lrx4;->a()Lqw4;

    move-result-object v13

    .line 202
    invoke-virtual {v13}, Lqw4;->p()Low4;

    move-result-object v13

    invoke-static {v7}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    iget-object v6, v6, Lly4;->a:Lrx4;

    .line 203
    invoke-virtual {v6}, Lrx4;->u()Llw4;

    move-result-object v6

    .line 204
    invoke-virtual {v6, v8}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 205
    invoke-virtual {v13, v8, v14, v6}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lls4;

    move-object/from16 v29, v6

    .line 206
    invoke-virtual {v0}, Lz44;->v()Ljava/lang/String;

    move-result-object v31

    const-wide/16 v32, 0x1

    const-wide/16 v34, 0x1

    const-wide/16 v36, 0x1

    .line 207
    invoke-virtual {v0}, Lz44;->x()J

    move-result-wide v38

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v30, v7

    invoke-direct/range {v29 .. v45}, Lls4;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_28

    .line 208
    :cond_36
    new-instance v6, Lls4;

    move-object/from16 v46, v6

    iget-object v0, v13, Lls4;->a:Ljava/lang/String;

    move-object/from16 v47, v0

    iget-object v0, v13, Lls4;->b:Ljava/lang/String;

    move-object/from16 v48, v0

    iget-wide v7, v13, Lls4;->c:J

    const-wide/16 v16, 0x1

    add-long v49, v7, v16

    iget-wide v7, v13, Lls4;->d:J

    add-long v51, v7, v16

    iget-wide v7, v13, Lls4;->e:J

    add-long v53, v7, v16

    iget-wide v7, v13, Lls4;->f:J

    move-wide/from16 v55, v7

    iget-wide v7, v13, Lls4;->g:J

    move-wide/from16 v57, v7

    iget-object v0, v13, Lls4;->h:Ljava/lang/Long;

    move-object/from16 v59, v0

    iget-object v0, v13, Lls4;->i:Ljava/lang/Long;

    move-object/from16 v60, v0

    iget-object v0, v13, Lls4;->j:Ljava/lang/Long;

    move-object/from16 v61, v0

    iget-object v0, v13, Lls4;->k:Ljava/lang/Boolean;

    move-object/from16 v62, v0

    .line 209
    invoke-direct/range {v46 .. v62}, Lls4;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 210
    :goto_28
    iget-object v0, v9, Lb25;->b:Lj25;

    .line 211
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v6}, Lgs4;->A(Lls4;)V

    iget-wide v7, v6, Lls4;->c:J

    invoke-virtual {v5}, Lz44;->v()Ljava/lang/String;

    move-result-object v13

    .line 213
    invoke-virtual {v3, v13}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3f

    iget-object v0, v9, Lb25;->b:Lj25;

    .line 214
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v14

    iget-object v12, v9, Lb35;->d:Ljava/lang/String;

    .line 215
    invoke-virtual {v14}, Lb25;->f()V

    invoke-virtual {v14}, Lly4;->d()V

    .line 216
    invoke-static {v12}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    invoke-static {v13}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v17, v2

    new-instance v2, Lf4;

    .line 218
    invoke-direct {v2}, Lf4;-><init>()V

    .line 219
    invoke-virtual {v14}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v29

    :try_start_12
    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v31
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object/from16 p2, v4

    const/4 v4, 0x2

    :try_start_13
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v12, v0, v4

    const/4 v4, 0x1

    aput-object v13, v0, v4

    const-string v30, "event_filters"

    const-string v32, "app_id=? AND event_name=?"

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v33, v0

    .line 220
    invoke-virtual/range {v29 .. v36}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_f
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 221
    :try_start_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    if-eqz v0, :cond_39

    :goto_29
    move-object/from16 v18, v10

    const/4 v10, 0x1

    .line 222
    :try_start_15
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 223
    :try_start_16
    invoke-static {}, Lv34;->E()Lu34;

    move-result-object v10

    invoke-static {v10, v0}, Ll25;->G(Ls74;[B)Ls74;

    move-result-object v0

    check-cast v0, Lu34;

    invoke-virtual {v0}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Lv34;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    const/4 v10, 0x0

    .line 224
    :try_start_17
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 225
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-nez v19, :cond_37

    move-object/from16 v20, v11

    :try_start_18
    new-instance v11, Ljava/util/ArrayList;

    .line 226
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-virtual {v2, v10, v11}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_37
    move-object/from16 v20, v11

    move-object/from16 v11, v19

    .line 228
    :goto_2a
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :catch_b
    move-exception v0

    move-object/from16 v20, v11

    .line 229
    iget-object v10, v14, Lly4;->a:Lrx4;

    .line 230
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 231
    invoke-virtual {v10}, Lqw4;->n()Low4;

    move-result-object v10

    invoke-static {v12}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 232
    invoke-virtual {v10, v15, v11, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    :goto_2b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    if-nez v0, :cond_38

    .line 234
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    goto :goto_2d

    :cond_38
    move-object/from16 v10, v18

    move-object/from16 v11, v20

    goto :goto_29

    :catch_c
    move-exception v0

    :goto_2c
    move-object/from16 v20, v11

    goto :goto_30

    :cond_39
    move-object/from16 v18, v10

    move-object/from16 v20, v11

    .line 235
    :try_start_19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_d
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 236
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :goto_2d
    move-object/from16 v11, v28

    goto :goto_31

    :catch_d
    move-exception v0

    goto :goto_30

    :catch_e
    move-exception v0

    move-object/from16 v18, v10

    goto :goto_2c

    :catch_f
    move-exception v0

    :goto_2e
    move-object/from16 v18, v10

    move-object/from16 v20, v11

    goto :goto_2f

    :catchall_5
    move-exception v0

    const/4 v5, 0x0

    goto :goto_32

    :catch_10
    move-exception v0

    move-object/from16 p2, v4

    goto :goto_2e

    :goto_2f
    const/4 v4, 0x0

    .line 237
    :goto_30
    :try_start_1a
    iget-object v2, v14, Lly4;->a:Lrx4;

    .line 238
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    invoke-static {v12}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v11, v28

    .line 240
    invoke-virtual {v2, v11, v10, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    invoke-static {}, Lid4;->b()Z

    iget-object v0, v14, Lly4;->a:Lrx4;

    .line 242
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    move-result-object v0

    sget-object v2, Lew4;->D0:Ldw4;

    .line 243
    invoke-virtual {v0, v12, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    if-eqz v4, :cond_3c

    .line 245
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_31

    :cond_3a
    if-eqz v4, :cond_3b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3b
    const/4 v0, 0x0

    .line 246
    :cond_3c
    :goto_31
    invoke-static {}, Lid4;->b()Z

    iget-object v2, v9, Lly4;->a:Lrx4;

    .line 247
    invoke-virtual {v2}, Lrx4;->p()Lcs4;

    move-result-object v2

    iget-object v4, v9, Lb35;->d:Ljava/lang/String;

    sget-object v10, Lew4;->D0:Ldw4;

    .line 248
    invoke-virtual {v2, v4, v10}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-nez v2, :cond_3d

    if-nez v0, :cond_3d

    new-instance v0, Lf4;

    .line 249
    invoke-direct {v0}, Lf4;-><init>()V

    .line 250
    :cond_3d
    invoke-virtual {v3, v13, v0}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :catchall_6
    move-exception v0

    move-object v5, v4

    :goto_32
    if-eqz v5, :cond_3e

    .line 251
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_3e
    throw v0

    :cond_3f
    move-object/from16 v17, v2

    move-object/from16 p2, v4

    move-object/from16 v18, v10

    move-object/from16 v20, v11

    move-object/from16 v11, v28

    .line 253
    :goto_33
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v10, v9, Lb35;->e:Ljava/util/Set;

    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    iget-object v4, v9, Lly4;->a:Lrx4;

    .line 255
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Lqw4;->s()Low4;

    move-result-object v4

    invoke-virtual {v4, v1, v12}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_34

    .line 257
    :cond_40
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 258
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v12, 0x1

    :goto_35
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_42

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv34;

    new-instance v13, Ly25;

    iget-object v14, v9, Lb35;->d:Ljava/lang/String;

    .line 259
    invoke-direct {v13, v9, v14, v4, v12}, Ly25;-><init>(Lb35;Ljava/lang/String;ILv34;)V

    iget-object v14, v9, Lb35;->g:Ljava/lang/Long;

    move-object/from16 v19, v0

    iget-object v0, v9, Lb35;->h:Ljava/lang/Long;

    .line 260
    invoke-virtual {v12}, Lv34;->t()I

    move-result v12

    invoke-virtual {v9, v4, v12}, Lb35;->l(II)Z

    move-result v36

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move-object/from16 v31, v0

    move-object/from16 v32, v5

    move-wide/from16 v33, v7

    move-object/from16 v35, v6

    .line 261
    invoke-virtual/range {v29 .. v36}, Ly25;->i(Ljava/lang/Long;Ljava/lang/Long;Lz44;JLls4;Z)Z

    move-result v12

    if-eqz v12, :cond_41

    .line 262
    invoke-virtual {v9, v4}, Lb35;->k(I)Lw25;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v13}, Lw25;->a(Lz25;)V

    move-object/from16 v0, v19

    goto :goto_35

    :cond_41
    iget-object v0, v9, Lb35;->e:Ljava/util/Set;

    .line 264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_42
    move-object/from16 v19, v0

    :goto_36
    if-nez v12, :cond_43

    iget-object v0, v9, Lb35;->e:Ljava/util/Set;

    .line 265
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_43
    move-object/from16 v0, v19

    goto/16 :goto_34

    :cond_44
    move-object/from16 v4, p2

    move-object/from16 v28, v11

    move-object/from16 v2, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v20

    const/4 v12, 0x2

    goto/16 :goto_27

    .line 266
    :goto_37
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_45
    move-object/from16 v12, v18

    goto/16 :goto_4a

    .line 267
    :cond_46
    new-instance v2, Lf4;

    .line 268
    invoke-direct {v2}, Lf4;-><init>()V

    .line 269
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr54;

    .line 270
    invoke-virtual {v4}, Lr54;->u()Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-virtual {v2, v5}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4f

    iget-object v0, v9, Lb25;->b:Lj25;

    .line 272
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v6

    iget-object v7, v9, Lb35;->d:Ljava/lang/String;

    .line 273
    invoke-virtual {v6}, Lb25;->f()V

    invoke-virtual {v6}, Lly4;->d()V

    .line 274
    invoke-static {v7}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    invoke-static {v5}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lf4;

    .line 276
    invoke-direct {v8}, Lf4;-><init>()V

    .line 277
    invoke-virtual {v6}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23

    move-object/from16 v12, v18

    move-object/from16 v10, v20

    :try_start_1b
    filled-new-array {v12, v10}, [Ljava/lang/String;

    move-result-object v25

    const/4 v13, 0x2

    new-array v0, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v0, v13

    const/4 v13, 0x1

    aput-object v5, v0, v13

    const-string v24, "property_filters"

    const-string v26, "app_id=? AND property_name=?"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v27, v0

    .line 278
    invoke-virtual/range {v23 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_14
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 279
    :try_start_1c
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    :goto_39
    const/4 v14, 0x1

    .line 280
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_13
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 281
    :try_start_1d
    invoke-static {}, Le44;->A()Ld44;

    move-result-object v15

    invoke-static {v15, v0}, Ll25;->G(Ls74;[B)Ls74;

    move-result-object v0

    check-cast v0, Ld44;

    invoke-virtual {v0}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Le44;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_13
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    const/4 v15, 0x0

    .line 282
    :try_start_1e
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 283
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    if-nez v17, :cond_47

    new-instance v15, Ljava/util/ArrayList;

    .line 284
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-virtual {v8, v14, v15}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_47
    move-object/from16 v15, v17

    .line 286
    :goto_3a
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p2, v3

    goto :goto_3b

    :catch_11
    move-exception v0

    .line 287
    iget-object v14, v6, Lly4;->a:Lrx4;

    .line 288
    invoke-virtual {v14}, Lrx4;->a()Lqw4;

    move-result-object v14

    .line 289
    invoke-virtual {v14}, Lqw4;->n()Low4;

    move-result-object v14

    const-string v15, "Failed to merge filter"
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_13
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    move-object/from16 p2, v3

    :try_start_1f
    invoke-static {v7}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v15, v3, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    :goto_3b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_12
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    if-nez v0, :cond_48

    .line 291
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_3e

    :cond_48
    move-object/from16 v3, p2

    goto :goto_39

    :cond_49
    move-object/from16 p2, v3

    .line 292
    :try_start_20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_12
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    goto :goto_3d

    :catch_12
    move-exception v0

    goto :goto_3c

    :catch_13
    move-exception v0

    move-object/from16 p2, v3

    goto :goto_3c

    :catchall_7
    move-exception v0

    const/4 v5, 0x0

    goto :goto_3f

    :catch_14
    move-exception v0

    move-object/from16 p2, v3

    const/4 v13, 0x0

    .line 293
    :goto_3c
    :try_start_21
    iget-object v3, v6, Lly4;->a:Lrx4;

    .line 294
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 295
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    invoke-static {v7}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 296
    invoke-virtual {v3, v11, v8, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    invoke-static {}, Lid4;->b()Z

    iget-object v0, v6, Lly4;->a:Lrx4;

    .line 298
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    move-result-object v0

    sget-object v3, Lew4;->D0:Ldw4;

    .line 299
    invoke-virtual {v0, v7, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 300
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    if-eqz v13, :cond_4c

    .line 301
    :goto_3d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    :cond_4a
    if-eqz v13, :cond_4b

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4b
    const/4 v0, 0x0

    .line 302
    :cond_4c
    :goto_3e
    invoke-static {}, Lid4;->b()Z

    iget-object v3, v9, Lly4;->a:Lrx4;

    .line 303
    invoke-virtual {v3}, Lrx4;->p()Lcs4;

    move-result-object v3

    iget-object v6, v9, Lb35;->d:Ljava/lang/String;

    sget-object v7, Lew4;->D0:Ldw4;

    .line 304
    invoke-virtual {v3, v6, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    if-nez v3, :cond_4d

    if-nez v0, :cond_4d

    new-instance v0, Lf4;

    .line 305
    invoke-direct {v0}, Lf4;-><init>()V

    .line 306
    :cond_4d
    invoke-virtual {v2, v5, v0}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :catchall_8
    move-exception v0

    move-object v5, v13

    :goto_3f
    if-eqz v5, :cond_4e

    .line 307
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_4e
    throw v0

    :cond_4f
    move-object/from16 p2, v3

    move-object/from16 v12, v18

    move-object/from16 v10, v20

    .line 309
    :goto_40
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v9, Lb35;->e:Ljava/util/Set;

    .line 310
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 311
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lqw4;->s()Low4;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 313
    :cond_50
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 314
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le44;

    iget-object v8, v9, Lly4;->a:Lrx4;

    .line 315
    invoke-virtual {v8}, Lrx4;->a()Lqw4;

    move-result-object v8

    .line 316
    invoke-virtual {v8}, Lqw4;->v()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x2

    .line 317
    invoke-static {v8, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_52

    iget-object v8, v9, Lly4;->a:Lrx4;

    .line 318
    invoke-virtual {v8}, Lrx4;->a()Lqw4;

    move-result-object v8

    .line 319
    invoke-virtual {v8}, Lqw4;->s()Low4;

    move-result-object v8

    .line 320
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 321
    invoke-virtual {v7}, Le44;->s()Z

    move-result v15

    if-eqz v15, :cond_51

    invoke-virtual {v7}, Le44;->t()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_43

    :cond_51
    const/4 v15, 0x0

    :goto_43
    iget-object v13, v9, Lly4;->a:Lrx4;

    .line 322
    invoke-virtual {v13}, Lrx4;->u()Llw4;

    move-result-object v13

    move-object/from16 p3, v0

    .line 323
    invoke-virtual {v7}, Le44;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "Evaluating filter. audience, filter, property"

    .line 324
    invoke-virtual {v8, v13, v14, v15, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 325
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lqw4;->s()Low4;

    move-result-object v0

    iget-object v8, v9, Lb25;->b:Lj25;

    .line 327
    invoke-virtual {v8}, Lj25;->Q()Ll25;

    move-result-object v8

    .line 328
    invoke-virtual {v8, v7}, Ll25;->x(Le44;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "Filter definition"

    invoke-virtual {v0, v13, v8}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_44

    :cond_52
    move-object/from16 p3, v0

    .line 329
    :goto_44
    invoke-virtual {v7}, Le44;->s()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {v7}, Le44;->t()I

    move-result v0

    const/16 v8, 0x100

    if-le v0, v8, :cond_53

    goto :goto_45

    .line 330
    :cond_53
    new-instance v0, La35;

    iget-object v8, v9, Lb35;->d:Ljava/lang/String;

    .line 331
    invoke-direct {v0, v9, v8, v5, v7}, La35;-><init>(Lb35;Ljava/lang/String;ILe44;)V

    iget-object v8, v9, Lb35;->g:Ljava/lang/Long;

    iget-object v13, v9, Lb35;->h:Ljava/lang/Long;

    .line 332
    invoke-virtual {v7}, Le44;->t()I

    move-result v7

    invoke-virtual {v9, v5, v7}, Lb35;->l(II)Z

    move-result v7

    .line 333
    invoke-virtual {v0, v8, v13, v4, v7}, La35;->i(Ljava/lang/Long;Ljava/lang/Long;Lr54;Z)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 334
    invoke-virtual {v9, v5}, Lb35;->k(I)Lw25;

    move-result-object v8

    .line 335
    invoke-virtual {v8, v0}, Lw25;->a(Lz25;)V

    move-object/from16 v0, p3

    goto/16 :goto_42

    :cond_54
    iget-object v0, v9, Lb35;->e:Ljava/util/Set;

    .line 336
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 337
    :cond_55
    :goto_45
    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 338
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lqw4;->p()Low4;

    move-result-object v0

    iget-object v6, v9, Lb35;->d:Ljava/lang/String;

    invoke-static {v6}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 340
    invoke-virtual {v7}, Le44;->s()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-virtual {v7}, Le44;->t()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_46

    :cond_56
    const/4 v7, 0x0

    :goto_46
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid property filter ID. appId, id"

    .line 341
    invoke-virtual {v0, v8, v6, v7}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_48

    :cond_57
    move-object/from16 p3, v0

    :goto_47
    if-nez v7, :cond_58

    :goto_48
    iget-object v0, v9, Lb35;->e:Ljava/util/Set;

    .line 342
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_58
    move-object/from16 v0, p3

    goto/16 :goto_41

    :cond_59
    :goto_49
    move-object/from16 v3, p2

    move-object/from16 v20, v10

    move-object/from16 v18, v12

    goto/16 :goto_38

    .line 343
    :goto_4a
    new-instance v1, Ljava/util/ArrayList;

    .line 344
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v9, Lb35;->f:Ljava/util/Map;

    .line 345
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v9, Lb35;->e:Ljava/util/Set;

    .line 346
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 347
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v9, Lb35;->f:Ljava/util/Map;

    .line 348
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw25;

    .line 349
    invoke-virtual {v3, v0}, Lw25;->b(I)Lu44;

    move-result-object v0

    .line 350
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v9, Lb25;->b:Lj25;

    .line 351
    invoke-virtual {v3}, Lj25;->L()Lgs4;

    move-result-object v3

    iget-object v5, v9, Lb35;->d:Ljava/lang/String;

    .line 352
    invoke-virtual {v0}, Lu44;->u()Ln54;

    move-result-object v0

    invoke-virtual {v3}, Lb25;->f()V

    invoke-virtual {v3}, Lly4;->d()V

    .line 353
    invoke-static {v5}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    invoke-static {v0}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {v0}, Lt74;->a()[B

    move-result-object v0

    new-instance v6, Landroid/content/ContentValues;

    .line 356
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    .line 357
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v6, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v4, v22

    .line 359
    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 360
    :try_start_22
    invoke-virtual {v3}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v7, "audience_filter_values"
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_22} :catch_16

    const/4 v8, 0x5

    const/4 v10, 0x0

    .line 361
    :try_start_23
    invoke-virtual {v0, v7, v10, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    const-wide/16 v13, -0x1

    cmp-long v0, v6, v13

    if-nez v0, :cond_5a

    iget-object v0, v3, Lly4;->a:Lrx4;

    .line 362
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lqw4;->n()Low4;

    move-result-object v0

    const-string v6, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 364
    invoke-virtual {v0, v6, v7}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_23} :catch_15

    goto :goto_4d

    :catch_15
    move-exception v0

    goto :goto_4c

    :catch_16
    move-exception v0

    const/4 v10, 0x0

    .line 365
    :goto_4c
    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 366
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 367
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    invoke-static {v5}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error storing filter results. appId"

    .line 368
    invoke-virtual {v3, v6, v5, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    :goto_4d
    move-object/from16 v22, v4

    goto/16 :goto_4b

    :cond_5b
    return-object v1

    :catchall_9
    move-exception v0

    move-object v5, v4

    :goto_4e
    if-eqz v5, :cond_5c

    .line 369
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_5c
    throw v0
.end method

.method public final k(I)Lw25;
    .locals 2

    iget-object v0, p0, Lb35;->f:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb35;->f:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw25;

    return-object p1

    :cond_0
    new-instance v0, Lw25;

    iget-object v1, p0, Lb35;->d:Ljava/lang/String;

    .line 3
    invoke-direct {v0, p0, v1}, Lw25;-><init>(Lb35;Ljava/lang/String;)V

    iget-object v1, p0, Lb35;->f:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final l(II)Z
    .locals 1

    iget-object v0, p0, Lb35;->f:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lb35;->f:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw25;

    .line 3
    iget-object p1, p1, Lw25;->d:Ljava/util/BitSet;

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method
