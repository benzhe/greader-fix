.class public final Lft5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lss5;


# instance fields
.field public final a:Lgt5;

.field public final b:Lur5;

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:Lqi6;


# direct methods
.method public constructor <init>(Lgt5;Lur5;Ltp5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lft5;->a:Lgt5;

    .line 3
    iput-object p2, p0, Lft5;->b:Lur5;

    .line 4
    iget-object p1, p3, Ltp5;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 5
    :goto_1
    iput-object p1, p0, Lft5;->c:Ljava/lang/String;

    .line 6
    sget-object p1, Lax5;->s:Lqi6;

    iput-object p1, p0, Lft5;->e:Lqi6;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lft5;->a:Lgt5;

    const-string v1, "SELECT batch_id FROM mutations WHERE uid = ? LIMIT 1"

    .line 2
    iget-object v0, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    iget-object v4, p0, Lft5;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    new-instance v4, Lht5;

    invoke-direct {v4, v3}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v0, v4, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    xor-int/2addr v1, v2

    .line 7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lft5;->a:Lgt5;

    .line 10
    iget-object v1, v1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    new-array v4, v2, [Ljava/lang/Object;

    .line 11
    iget-object v6, p0, Lft5;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 12
    new-instance v6, Lht5;

    invoke-direct {v6, v4}, Lht5;-><init>([Ljava/lang/Object;)V

    const-string v4, "SELECT path FROM document_mutations WHERE uid = ?"

    .line 13
    invoke-virtual {v1, v6, v4, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 14
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc50;->K(Ljava/lang/String;)Liu5;

    move-result-object v3

    .line 16
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const-string v0, "Document leak -- detected dangling mutation references when queue is empty. Dangling keys: %s"

    .line 19
    invoke-static {v1, v0, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 20
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_2
    throw v0

    :catchall_2
    move-exception v1

    move-object v3, v0

    goto :goto_1

    :catchall_3
    move-exception v1

    :goto_1
    if-eqz v3, :cond_3

    .line 21
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 22
    :cond_3
    throw v1
.end method

.method public b(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lbu5;",
            ">;)",
            "Ljava/util/List<",
            "Lru5;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu5;

    .line 3
    iget-object v1, v1, Lbu5;->e:Liu5;

    .line 4
    invoke-static {v1}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lft5;->a:Lgt5;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0xf4240

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lft5;->c:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    .line 10
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    .line 13
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    rsub-int v10, v10, 0x384

    if-ge v9, v10, :cond_2

    if-lez v9, :cond_1

    const-string v10, ", "

    .line 14
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v10, "?"

    .line 15
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 18
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT DISTINCT dm.batch_id, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lgt5;->k(Ljava/lang/String;)Lgt5$c;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Lgt5$c;->a([Ljava/lang/Object;)Lgt5$c;

    .line 19
    new-instance v7, Let5;

    invoke-direct {v7, p0, v5, v2}, Let5;-><init>(Lft5;Ljava/util/Set;Ljava/util/List;)V

    .line 20
    invoke-virtual {v8, v7}, Lgt5$c;->b(Lkx5;)I

    goto :goto_1

    :cond_3
    if-le v6, v4, :cond_4

    .line 21
    sget-object p1, Ldt5;->e:Ldt5;

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    return-object v2
.end method

.method public c(Lcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)Lru5;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/Timestamp;",
            "Ljava/util/List<",
            "Lqu5;",
            ">;",
            "Ljava/util/List<",
            "Lqu5;",
            ">;)",
            "Lru5;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lft5;->d:I

    add-int/lit8 v1, v0, 0x1

    .line 2
    iput v1, p0, Lft5;->d:I

    .line 3
    new-instance v1, Lru5;

    invoke-direct {v1, v0, p1, p2, p3}, Lru5;-><init>(ILcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lft5;->b:Lur5;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lgv5;->M()Lgv5$b;

    move-result-object p2

    .line 7
    iget v2, v1, Lru5;->a:I

    .line 8
    invoke-virtual {p2}, Lgj6$a;->o()V

    .line 9
    iget-object v3, p2, Lgj6$a;->f:Lgj6;

    check-cast v3, Lgv5;

    invoke-static {v3, v2}, Lgv5;->C(Lgv5;I)V

    .line 10
    iget-object v2, p1, Lur5;->a:Low5;

    .line 11
    iget-object v3, v1, Lru5;->b:Lcom/google/firebase/Timestamp;

    .line 12
    invoke-virtual {v2, v3}, Low5;->o(Lcom/google/firebase/Timestamp;)Lwk6;

    move-result-object v2

    .line 13
    invoke-virtual {p2}, Lgj6$a;->o()V

    .line 14
    iget-object v3, p2, Lgj6$a;->f:Lgj6;

    check-cast v3, Lgv5;

    invoke-static {v3, v2}, Lgv5;->F(Lgv5;Lwk6;)V

    .line 15
    iget-object v2, v1, Lru5;->c:Ljava/util/List;

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqu5;

    .line 17
    iget-object v4, p1, Lur5;->a:Low5;

    invoke-virtual {v4, v3}, Low5;->k(Lqu5;)Lcd6;

    move-result-object v3

    .line 18
    invoke-virtual {p2}, Lgj6$a;->o()V

    .line 19
    iget-object v4, p2, Lgj6$a;->f:Lgj6;

    check-cast v4, Lgv5;

    invoke-static {v4, v3}, Lgv5;->D(Lgv5;Lcd6;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, v1, Lru5;->d:Ljava/util/List;

    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqu5;

    .line 22
    iget-object v4, p1, Lur5;->a:Low5;

    invoke-virtual {v4, v3}, Low5;->k(Lqu5;)Lcd6;

    move-result-object v3

    .line 23
    invoke-virtual {p2}, Lgj6$a;->o()V

    .line 24
    iget-object v4, p2, Lgj6$a;->f:Lgj6;

    check-cast v4, Lgv5;

    invoke-static {v4, v3}, Lgv5;->E(Lgv5;Lcd6;)V

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lgv5;

    .line 26
    iget-object p2, p0, Lft5;->a:Lgt5;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lft5;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 28
    invoke-virtual {p1}, Lii6;->b()[B

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 29
    iget-object p1, p2, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "INSERT INTO mutations (uid, batch_id, mutations) VALUES (?, ?, ?)"

    invoke-virtual {p1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 31
    iget-object p2, p0, Lft5;->a:Lgt5;

    .line 32
    iget-object p2, p2, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO document_mutations (uid, path, batch_id) VALUES (?, ?, ?)"

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    .line 33
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqu5;

    .line 34
    iget-object v3, v3, Lqu5;->a:Lbu5;

    .line 35
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 36
    :cond_2
    iget-object v7, v3, Lbu5;->e:Liu5;

    .line 37
    invoke-static {v7}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v7

    .line 38
    iget-object v8, p0, Lft5;->a:Lgt5;

    new-array v9, v2, [Ljava/lang/Object;

    iget-object v10, p0, Lft5;->c:Ljava/lang/String;

    aput-object v10, v9, v5

    aput-object v7, v9, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v4

    .line 39
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 41
    invoke-static {p2, v9}, Lgt5;->j(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 43
    iget-object v7, p0, Lft5;->a:Lgt5;

    .line 44
    iget-object v7, v7, Lgt5;->e:Lat5;

    .line 45
    iget-object v3, v3, Lbu5;->e:Liu5;

    .line 46
    invoke-virtual {v3}, Lvt5;->L()Lvt5;

    move-result-object v3

    check-cast v3, Liu5;

    invoke-virtual {v7, v3}, Lat5;->b(Liu5;)V

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public d(Lbu5;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbu5;",
            ")",
            "Ljava/util/List<",
            "Lru5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lbu5;->e:Liu5;

    .line 2
    invoke-static {p1}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lft5;->a:Lgt5;

    .line 5
    iget-object v1, v1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xf4240

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lft5;->c:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 7
    new-instance p1, Lht5;

    invoke-direct {p1, v2}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v2, 0x0

    const-string v3, "SELECT m.batch_id, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path = ? AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id"

    .line 8
    invoke-virtual {v1, p1, v3, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 9
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lft5;->m(I[B)Lru5;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 12
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    throw v0
.end method

.method public e(Lqi6;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lft5;->e:Lqi6;

    .line 3
    invoke-virtual {p0}, Lft5;->n()V

    return-void
.end method

.method public f(I)Lru5;
    .locals 6

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    iget-object v1, p0, Lft5;->a:Lgt5;

    const-string v2, "SELECT batch_id, SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? AND batch_id >= ? ORDER BY batch_id ASC LIMIT 1"

    .line 2
    iget-object v1, v1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0xf4240

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lft5;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 4
    new-instance p1, Lht5;

    invoke-direct {p1, v3}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lft5;->m(I[B)Lru5;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    move-object v3, p1

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_1
    throw v0
.end method

.method public g(I)Lru5;
    .locals 6

    .line 1
    iget-object v0, p0, Lft5;->a:Lgt5;

    const-string v1, "SELECT SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? AND batch_id = ?"

    .line 2
    iget-object v0, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xf4240

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p0, Lft5;->c:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 4
    new-instance v3, Lht5;

    invoke-direct {v3, v2}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lft5;->m(I[B)Lru5;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_1
    throw p1
.end method

.method public h(Lru5;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lft5;->a:Lgt5;

    .line 2
    iget-object v0, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM mutations WHERE uid = ? AND batch_id = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lft5;->a:Lgt5;

    .line 4
    iget-object v1, v1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM document_mutations WHERE uid = ? AND path = ? AND batch_id = ?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 5
    iget v2, p1, Lru5;->a:I

    .line 6
    iget-object v3, p0, Lft5;->a:Lgt5;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lft5;->c:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 9
    invoke-static {v0, v5}, Lgt5;->j(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v4, [Ljava/lang/Object;

    .line 11
    iget-object v5, p0, Lft5;->c:Ljava/lang/String;

    aput-object v5, v3, v7

    .line 12
    iget v5, p1, Lru5;->a:I

    .line 13
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    const-string v5, "Mutation batch (%s, %d) did not exist"

    invoke-static {v0, v5, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object p1, p1, Lru5;->d:Ljava/util/List;

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqu5;

    .line 16
    iget-object v0, v0, Lqu5;->a:Lbu5;

    .line 17
    iget-object v3, v0, Lbu5;->e:Liu5;

    .line 18
    invoke-static {v3}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v3

    .line 19
    iget-object v5, p0, Lft5;->a:Lgt5;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lft5;->c:Ljava/lang/String;

    aput-object v9, v6, v7

    aput-object v3, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    .line 20
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 22
    invoke-static {v1, v6}, Lgt5;->j(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 24
    iget-object v3, p0, Lft5;->a:Lgt5;

    .line 25
    iget-object v3, v3, Lgt5;->g:Lct5;

    .line 26
    invoke-virtual {v3, v0}, Lct5;->j(Lbu5;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public i(Lyq5;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyq5;",
            ")",
            "Ljava/util/List<",
            "Lru5;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lyq5;->g()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CollectionGroup queries should be handled in LocalDocumentsView"

    .line 2
    invoke-static {v0, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p1, Lyq5;->e:Liu5;

    .line 4
    invoke-virtual {p1}, Lvt5;->I()I

    move-result v0

    add-int/2addr v0, v1

    .line 5
    invoke-static {p1}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lc50;->D0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v5, p0, Lft5;->a:Lgt5;

    .line 9
    iget-object v5, v5, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0xf4240

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lft5;->c:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v7, 0x2

    aput-object p1, v6, v7

    const/4 p1, 0x3

    aput-object v3, v6, p1

    .line 11
    new-instance p1, Lht5;

    invoke-direct {p1, v6}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v3, 0x0

    const-string v6, "SELECT dm.batch_id, dm.path, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path >= ? AND dm.path < ? AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id"

    .line 12
    invoke-virtual {v5, p1, v6, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 13
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 16
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru5;

    .line 17
    iget v5, v5, Lru5;->a:I

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc50;->K(Ljava/lang/String;)Liu5;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Lvt5;->I()I

    move-result v5

    if-eq v5, v0, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lft5;->m(I[B)Lru5;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 21
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 22
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_3
    throw v0
.end method

.method public j()Lqi6;
    .locals 1

    .line 1
    iget-object v0, p0, Lft5;->e:Lqi6;

    return-object v0
.end method

.method public k(Lru5;Lqi6;)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lft5;->e:Lqi6;

    .line 3
    invoke-virtual {p0}, Lft5;->n()V

    return-void
.end method

.method public l()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru5;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lft5;->a:Lgt5;

    .line 3
    iget-object v1, v1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xf4240

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lft5;->c:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 5
    new-instance v3, Lht5;

    invoke-direct {v3, v2}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v2, 0x0

    const-string v6, "SELECT batch_id, SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? ORDER BY batch_id ASC"

    .line 6
    invoke-virtual {v1, v3, v6, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lft5;->m(I[B)Lru5;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 10
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    throw v0
.end method

.method public final m(I[B)Lru5;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    array-length v3, p2

    const v4, 0xf4240

    if-ge v3, v4, :cond_0

    .line 2
    iget-object p1, p0, Lft5;->b:Lur5;

    .line 3
    invoke-static {p2}, Lgv5;->O([B)Lgv5;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Lur5;->b(Lgv5;)Lru5;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v5, Lqi6;->f:Lqi6;

    .line 7
    array-length v5, p2

    invoke-static {p2, v1, v5}, Lqi6;->o([BII)Lqi6;

    move-result-object p2

    .line 8
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int v5, v5, v4

    add-int/2addr v5, v2

    .line 10
    iget-object v6, p0, Lft5;->a:Lgt5;

    const-string v7, "SELECT SUBSTR(mutations, ?, ?) FROM mutations WHERE uid = ? AND batch_id = ?"

    .line 11
    iget-object v6, v6, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    const/4 v5, 0x2

    iget-object v9, p0, Lft5;->c:Ljava/lang/String;

    aput-object v9, v8, v5

    const/4 v5, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    .line 13
    new-instance v5, Lht5;

    invoke-direct {v5, v8}, Lht5;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catch Lkj6; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    invoke-virtual {v6, v5, v7, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 16
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 17
    sget-object v7, Lqi6;->f:Lqi6;

    .line 18
    array-length v7, v6

    invoke-static {v6, v1, v7}, Lqi6;->o([BII)Lqi6;

    move-result-object v7

    .line 19
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    array-length v6, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge v6, v4, :cond_1

    const/4 p2, 0x0

    .line 21
    :cond_1
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 22
    :cond_2
    throw p1

    .line 23
    :cond_3
    sget-object p1, Lqi6;->f:Lqi6;

    .line 24
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 25
    sget-object p1, Lqi6;->f:Lqi6;

    goto :goto_2

    .line 26
    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-static {p2, p1}, Lqi6;->d(Ljava/util/Iterator;I)Lqi6;

    move-result-object p1

    .line 27
    :goto_2
    iget-object p2, p0, Lft5;->b:Lur5;

    .line 28
    invoke-static {p1}, Lgv5;->N(Lqi6;)Lgv5;

    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Lur5;->b(Lgv5;)Lru5;

    move-result-object p1
    :try_end_3
    .catch Lkj6; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "MutationBatch failed to parse: %s"

    .line 30
    invoke-static {p1, p2}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v0
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lft5;->a:Lgt5;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lft5;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, -0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lft5;->e:Lqi6;

    .line 3
    invoke-virtual {v2}, Lqi6;->H()[B

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 4
    iget-object v0, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT OR REPLACE INTO mutation_queues (uid, last_acknowledged_batch_id, last_stream_token) VALUES (?, ?, ?)"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lft5;->a:Lgt5;

    .line 3
    iget-object v1, v1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT uid FROM mutation_queues"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8
    iput v4, p0, Lft5;->d:I

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    iget-object v5, p0, Lft5;->a:Lgt5;

    .line 11
    iget-object v5, v5, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    .line 12
    new-instance v1, Lht5;

    invoke-direct {v1, v2}, Lht5;-><init>([Ljava/lang/Object;)V

    const-string v2, "SELECT MAX(batch_id) FROM mutations WHERE uid = ?"

    .line 13
    invoke-virtual {v5, v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 14
    :goto_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    iget v2, p0, Lft5;->d:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lft5;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 16
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 17
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_2
    throw v0

    .line 18
    :cond_3
    iget v0, p0, Lft5;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lft5;->d:I

    .line 19
    iget-object v0, p0, Lft5;->a:Lgt5;

    const-string v1, "SELECT last_stream_token FROM mutation_queues WHERE uid = ?"

    .line 20
    iget-object v0, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    new-array v5, v2, [Ljava/lang/Object;

    .line 21
    iget-object v6, p0, Lft5;->c:Ljava/lang/String;

    aput-object v6, v5, v4

    .line 22
    new-instance v6, Lht5;

    invoke-direct {v6, v5}, Lht5;-><init>([Ljava/lang/Object;)V

    .line 23
    :try_start_3
    invoke-virtual {v0, v6, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 24
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lqi6;->n([B)Lqi6;

    move-result-object v0

    iput-object v0, p0, Lft5;->e:Lqi6;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_3
    if-nez v4, :cond_5

    .line 27
    invoke-virtual {p0}, Lft5;->n()V

    :cond_5
    return-void

    :goto_4
    if-eqz v3, :cond_6

    .line 28
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 29
    :cond_6
    throw v0

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_7

    .line 30
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_7
    throw v0
.end method
