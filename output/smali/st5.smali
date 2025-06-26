.class public final Lst5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltt5;


# instance fields
.field public final a:Lgt5;

.field public final b:Lur5;

.field public c:I

.field public d:J

.field public e:Lju5;

.field public f:J


# direct methods
.method public constructor <init>(Lgt5;Lur5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lju5;->f:Lju5;

    iput-object v0, p0, Lst5;->e:Lju5;

    .line 3
    iput-object p1, p0, Lst5;->a:Lgt5;

    .line 4
    iput-object p2, p0, Lst5;->b:Lur5;

    return-void
.end method


# virtual methods
.method public a(Lut5;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lst5;->k(Lut5;)V

    .line 2
    invoke-virtual {p0, p1}, Lst5;->l(Lut5;)Z

    .line 3
    iget-wide v0, p0, Lst5;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lst5;->f:J

    .line 4
    invoke-virtual {p0}, Lst5;->m()V

    return-void
.end method

.method public b(Ldr5;)Lut5;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ldr5;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lst5;->a:Lgt5;

    .line 3
    iget-object v1, v1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 4
    new-instance v0, Lht5;

    invoke-direct {v0, v2}, Lht5;-><init>([Ljava/lang/Object;)V

    const-string v2, "SELECT target_proto FROM targets WHERE canonical_id = ?"

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v0, v2, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lst5;->j([B)Lut5;

    move-result-object v1

    .line 8
    iget-object v2, v1, Lut5;->a:Ldr5;

    .line 9
    invoke-virtual {p1, v2}, Ldr5;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 11
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    throw p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lst5;->c:I

    return v0
.end method

.method public d(I)Lln5;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbu5;->f:Lln5;

    .line 2
    iget-object v1, p0, Lst5;->a:Lgt5;

    .line 3
    iget-object v1, v1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 5
    new-instance p1, Lht5;

    invoke-direct {p1, v2}, Lht5;-><init>([Ljava/lang/Object;)V

    const-string v2, "SELECT path FROM target_documents WHERE target_id = ?"

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, p1, v2, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lc50;->K(Ljava/lang/String;)Liu5;

    move-result-object v1

    .line 10
    new-instance v2, Lbu5;

    invoke-direct {v2, v1}, Lbu5;-><init>(Liu5;)V

    .line 11
    new-instance v1, Lln5;

    iget-object v0, v0, Lln5;->e:Ljn5;

    invoke-virtual {v0, v2, v4}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v0

    invoke-direct {v1, v0}, Lln5;-><init>(Ljn5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 13
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    throw v0
.end method

.method public e()Lju5;
    .locals 1

    .line 1
    iget-object v0, p0, Lst5;->e:Lju5;

    return-object v0
.end method

.method public f(Lln5;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln5<",
            "Lbu5;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lst5;->a:Lgt5;

    .line 2
    iget-object v0, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR IGNORE INTO target_documents (target_id, path) VALUES (?, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lst5;->a:Lgt5;

    .line 4
    iget-object v1, v1, Lgt5;->g:Lct5;

    .line 5
    invoke-virtual {p1}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v2, p1

    check-cast v2, Lln5$a;

    invoke-virtual {v2}, Lln5$a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbu5;

    .line 6
    iget-object v3, v2, Lbu5;->e:Liu5;

    .line 7
    invoke-static {v3}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lst5;->a:Lgt5;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 9
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 11
    invoke-static {v0, v5}, Lgt5;->j(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 13
    invoke-virtual {v1, v2}, Lct5;->j(Lbu5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lut5;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lst5;->k(Lut5;)V

    .line 2
    invoke-virtual {p0, p1}, Lst5;->l(Lut5;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lst5;->m()V

    :cond_0
    return-void
.end method

.method public h(Lju5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lst5;->e:Lju5;

    .line 2
    invoke-virtual {p0}, Lst5;->m()V

    return-void
.end method

.method public i(Lln5;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln5<",
            "Lbu5;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lst5;->a:Lgt5;

    .line 2
    iget-object v0, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM target_documents WHERE target_id = ? AND path = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lst5;->a:Lgt5;

    .line 4
    iget-object v1, v1, Lgt5;->g:Lct5;

    .line 5
    invoke-virtual {p1}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v2, p1

    check-cast v2, Lln5$a;

    invoke-virtual {v2}, Lln5$a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbu5;

    .line 6
    iget-object v3, v2, Lbu5;->e:Liu5;

    .line 7
    invoke-static {v3}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lst5;->a:Lgt5;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 9
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 11
    invoke-static {v0, v5}, Lgt5;->j(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 13
    invoke-virtual {v1, v2}, Lct5;->j(Lbu5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j([B)Lut5;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lst5;->b:Lur5;

    .line 2
    invoke-static {p1}, Lev5;->T([B)Lev5;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lur5;->c(Lev5;)Lut5;

    move-result-object p1
    :try_end_0
    .catch Lkj6; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TargetData failed to parse: %s"

    .line 4
    invoke-static {p1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 p1, 0x0

    throw p1
.end method

.method public final k(Lut5;)V
    .locals 12

    .line 1
    iget v0, p1, Lut5;->b:I

    .line 2
    iget-object v1, p1, Lut5;->a:Ldr5;

    .line 3
    invoke-virtual {v1}, Ldr5;->a()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p1, Lut5;->e:Lju5;

    .line 5
    iget-object v2, v2, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 6
    iget-object v3, p0, Lst5;->b:Lur5;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v4, Lvs5;->e:Lvs5;

    .line 9
    iget-object v5, p1, Lut5;->d:Lvs5;

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 11
    iget-object v4, p1, Lut5;->d:Lvs5;

    const/4 v9, 0x1

    aput-object v4, v7, v9

    const-string v4, "Only queries with purpose %s may be stored, got %s"

    .line 12
    invoke-static {v5, v4, v7}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lev5;->S()Lev5$b;

    move-result-object v4

    .line 14
    iget v5, p1, Lut5;->b:I

    .line 15
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 16
    iget-object v7, v4, Lgj6$a;->f:Lgj6;

    check-cast v7, Lev5;

    invoke-static {v7, v5}, Lev5;->G(Lev5;I)V

    .line 17
    iget-wide v10, p1, Lut5;->c:J

    .line 18
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 19
    iget-object v5, v4, Lgj6$a;->f:Lgj6;

    check-cast v5, Lev5;

    invoke-static {v5, v10, v11}, Lev5;->J(Lev5;J)V

    .line 20
    iget-object v5, v3, Lur5;->a:Low5;

    .line 21
    iget-object v7, p1, Lut5;->f:Lju5;

    .line 22
    invoke-virtual {v5, v7}, Low5;->p(Lju5;)Lwk6;

    move-result-object v5

    .line 23
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 24
    iget-object v7, v4, Lgj6$a;->f:Lgj6;

    check-cast v7, Lev5;

    invoke-static {v7, v5}, Lev5;->E(Lev5;Lwk6;)V

    .line 25
    iget-object v5, v3, Lur5;->a:Low5;

    .line 26
    iget-object v7, p1, Lut5;->e:Lju5;

    .line 27
    invoke-virtual {v5, v7}, Low5;->p(Lju5;)Lwk6;

    move-result-object v5

    .line 28
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 29
    iget-object v7, v4, Lgj6$a;->f:Lgj6;

    check-cast v7, Lev5;

    invoke-static {v7, v5}, Lev5;->H(Lev5;Lwk6;)V

    .line 30
    iget-object v5, p1, Lut5;->g:Lqi6;

    .line 31
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 32
    iget-object v7, v4, Lgj6$a;->f:Lgj6;

    check-cast v7, Lev5;

    invoke-static {v7, v5}, Lev5;->I(Lev5;Lqi6;)V

    .line 33
    iget-object v5, p1, Lut5;->a:Ldr5;

    .line 34
    invoke-virtual {v5}, Ldr5;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 35
    iget-object v3, v3, Lur5;->a:Low5;

    invoke-virtual {v3, v5}, Low5;->h(Ldr5;)Lzc6$c;

    move-result-object v3

    .line 36
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 37
    iget-object v5, v4, Lgj6$a;->f:Lgj6;

    check-cast v5, Lev5;

    invoke-static {v5, v3}, Lev5;->D(Lev5;Lzc6$c;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v3, v3, Lur5;->a:Low5;

    invoke-virtual {v3, v5}, Low5;->m(Ldr5;)Lzc6$d;

    move-result-object v3

    .line 39
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 40
    iget-object v5, v4, Lgj6$a;->f:Lgj6;

    check-cast v5, Lev5;

    invoke-static {v5, v3}, Lev5;->C(Lev5;Lzc6$d;)V

    .line 41
    :goto_0
    invoke-virtual {v4}, Lgj6$a;->l()Lgj6;

    move-result-object v3

    check-cast v3, Lev5;

    .line 42
    iget-object v4, p0, Lst5;->a:Lgt5;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    .line 44
    iget-wide v0, v2, Lcom/google/firebase/Timestamp;->e:J

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x3

    .line 46
    iget v1, v2, Lcom/google/firebase/Timestamp;->f:I

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x4

    .line 48
    iget-object v1, p1, Lut5;->g:Lqi6;

    .line 49
    invoke-virtual {v1}, Lqi6;->H()[B

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    .line 50
    iget-wide v1, p1, Lut5;->c:J

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x6

    .line 52
    invoke-virtual {v3}, Lii6;->b()[B

    move-result-object v0

    aput-object v0, v5, p1

    .line 53
    iget-object p1, v4, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "INSERT OR REPLACE INTO targets (target_id, canonical_id, snapshot_version_seconds, snapshot_version_nanos, resume_token, last_listen_sequence_number, target_proto) VALUES (?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {p1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Lut5;)Z
    .locals 7

    .line 1
    iget v0, p1, Lut5;->b:I

    .line 2
    iget v1, p0, Lst5;->c:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 3
    iput v0, p0, Lst5;->c:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-wide v3, p1, Lut5;->c:J

    .line 5
    iget-wide v5, p0, Lst5;->d:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    .line 6
    iput-wide v3, p0, Lst5;->d:J

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    return v2
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lst5;->a:Lgt5;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lst5;->c:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lst5;->d:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lst5;->e:Lju5;

    .line 4
    iget-object v2, v2, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 5
    iget-wide v2, v2, Lcom/google/firebase/Timestamp;->e:J

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    iget-object v3, p0, Lst5;->e:Lju5;

    .line 7
    iget-object v3, v3, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 8
    iget v3, v3, Lcom/google/firebase/Timestamp;->f:I

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lst5;->f:J

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 11
    iget-object v0, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE target_globals SET highest_target_id = ?, highest_listen_sequence_number = ?, last_remote_snapshot_version_seconds = ?, last_remote_snapshot_version_nanos = ?, target_count = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
