.class public final Llt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs5;


# instance fields
.field public final a:Lgt5;

.field public final b:Lur5;


# direct methods
.method public constructor <init>(Lgt5;Lur5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llt5;->a:Lgt5;

    .line 3
    iput-object p2, p0, Llt5;->b:Lur5;

    return-void
.end method


# virtual methods
.method public a(Lbu5;)Lfu5;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Llt5;->g(Lbu5;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Llt5;->a:Lgt5;

    const-string v1, "SELECT contents FROM remote_documents WHERE path = ?"

    .line 3
    iget-object v0, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 4
    new-instance p1, Lht5;

    invoke-direct {p1, v2}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Llt5;->f([B)Lfu5;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, p1

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_1
    throw v0
.end method

.method public b(Lbu5;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Llt5;->g(Lbu5;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Llt5;->a:Lgt5;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    iget-object p1, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "DELETE FROM remote_documents WHERE path = ?"

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lbu5;",
            ">;)",
            "Ljava/util/Map<",
            "Lbu5;",
            "Lfu5;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbu5;

    .line 3
    iget-object v2, v2, Lbu5;->e:Liu5;

    .line 4
    invoke-static {v2}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbu5;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Llt5;->a:Lgt5;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 14
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    rsub-int v6, v6, 0x384

    if-ge v5, v6, :cond_3

    if-lez v5, :cond_2

    const-string v6, ", "

    .line 15
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v6, "?"

    .line 16
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT contents FROM remote_documents WHERE path IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") ORDER BY path"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgt5;->k(Ljava/lang/String;)Lgt5$c;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lgt5$c;->a([Ljava/lang/Object;)Lgt5$c;

    .line 20
    new-instance v3, Lit5;

    invoke-direct {v3, p0, v1}, Lit5;-><init>(Llt5;Ljava/util/Map;)V

    .line 21
    invoke-virtual {v4, v3}, Lgt5$c;->b(Lkx5;)I

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public d(Lyq5;Lju5;)Ljn5;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyq5;",
            "Lju5;",
            ")",
            "Ljn5<",
            "Lbu5;",
            "Lyt5;",
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
    iget-object v0, p1, Lyq5;->e:Liu5;

    .line 4
    invoke-virtual {v0}, Lvt5;->I()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    .line 5
    invoke-static {v0}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lc50;->D0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, p2, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 8
    new-instance v10, Ljx5;

    invoke-direct {v10}, Ljx5;-><init>()V

    new-array v11, v1, [Ljn5;

    .line 9
    sget-object v5, Lzt5;->a:Ljn5;

    aput-object v5, v11, v2

    .line 10
    sget-object v5, Lju5;->f:Lju5;

    invoke-virtual {p2, v5}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v5, 0x2

    if-eqz p2, :cond_0

    .line 11
    iget-object p2, p0, Llt5;->a:Lgt5;

    .line 12
    new-instance v4, Lgt5$c;

    iget-object p2, p2, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT path, contents FROM remote_documents WHERE path >= ? AND path < ?"

    invoke-direct {v4, p2, v7}, Lgt5$c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v0, p2, v2

    aput-object v3, p2, v1

    .line 13
    new-instance v0, Lht5;

    invoke-direct {v0, p2}, Lht5;-><init>([Ljava/lang/Object;)V

    .line 14
    iput-object v0, v4, Lgt5$c;->c:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-object p2, v4

    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Llt5;->a:Lgt5;

    .line 16
    new-instance v7, Lgt5$c;

    iget-object p2, p2, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "SELECT path, contents FROM remote_documents WHERE path >= ? AND path < ?AND (read_time_seconds > ? OR (read_time_seconds = ? AND read_time_nanos > ?))"

    invoke-direct {v7, p2, v8}, Lgt5$c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v2

    aput-object v3, p2, v1

    .line 17
    iget-wide v8, v4, Lcom/google/firebase/Timestamp;->e:J

    .line 18
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v5

    const/4 v0, 0x3

    .line 19
    iget-wide v8, v4, Lcom/google/firebase/Timestamp;->e:J

    .line 20
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x4

    .line 21
    iget v3, v4, Lcom/google/firebase/Timestamp;->f:I

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v0

    .line 23
    new-instance v0, Lht5;

    invoke-direct {v0, p2}, Lht5;-><init>([Ljava/lang/Object;)V

    .line 24
    iput-object v0, v7, Lgt5$c;->c:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-object p2, v7

    .line 25
    :goto_0
    new-instance v0, Ljt5;

    move-object v4, v0

    move-object v5, p0

    move-object v7, v10

    move-object v8, p1

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Ljt5;-><init>(Llt5;ILjx5;Lyq5;[Ljn5;)V

    .line 26
    invoke-virtual {p2, v0}, Lgt5$c;->b(Lkx5;)I

    .line 27
    :try_start_0
    iget-object p1, v10, Ljx5;->e:Ljava/util/concurrent/Semaphore;

    iget p2, v10, Ljx5;->f:I

    invoke-virtual {p1, p2}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 28
    iput v2, v10, Ljx5;->f:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    aget-object p1, v11, v2

    return-object p1

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Interrupted while deserializing documents"

    .line 30
    invoke-static {p1, p2}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Lfu5;Lju5;)V
    .locals 9

    .line 1
    sget-object v0, Lju5;->f:Lju5;

    .line 2
    invoke-virtual {p2, v0}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Cannot add document to the RemoteDocumentCache with a read time of zero"

    .line 3
    invoke-static {v0, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Lfu5;->a:Lbu5;

    .line 5
    invoke-virtual {p0, v0}, Llt5;->g(Lbu5;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object p2, p2, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 7
    iget-object v3, p0, Llt5;->b:Lur5;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcv5;->L()Lcv5$b;

    move-result-object v4

    .line 10
    instance-of v5, p1, Lgu5;

    if-eqz v5, :cond_0

    .line 11
    move-object v5, p1

    check-cast v5, Lgu5;

    .line 12
    invoke-static {}, Ldv5;->H()Ldv5$b;

    move-result-object v6

    .line 13
    iget-object v7, v3, Lur5;->a:Low5;

    .line 14
    iget-object v8, v5, Lfu5;->a:Lbu5;

    .line 15
    invoke-virtual {v7, v8}, Low5;->j(Lbu5;)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {v6}, Lgj6$a;->o()V

    .line 17
    iget-object v8, v6, Lgj6$a;->f:Lgj6;

    check-cast v8, Ldv5;

    invoke-static {v8, v7}, Ldv5;->C(Ldv5;Ljava/lang/String;)V

    .line 18
    iget-object v3, v3, Lur5;->a:Low5;

    .line 19
    iget-object v7, v5, Lfu5;->b:Lju5;

    .line 20
    iget-object v7, v7, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 21
    invoke-virtual {v3, v7}, Low5;->o(Lcom/google/firebase/Timestamp;)Lwk6;

    move-result-object v3

    .line 22
    invoke-virtual {v6}, Lgj6$a;->o()V

    .line 23
    iget-object v7, v6, Lgj6$a;->f:Lgj6;

    check-cast v7, Ldv5;

    invoke-static {v7, v3}, Ldv5;->D(Ldv5;Lwk6;)V

    .line 24
    invoke-virtual {v6}, Lgj6$a;->l()Lgj6;

    move-result-object v3

    check-cast v3, Ldv5;

    .line 25
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 26
    iget-object v6, v4, Lgj6$a;->f:Lgj6;

    check-cast v6, Lcv5;

    invoke-static {v6, v3}, Lcv5;->D(Lcv5;Ldv5;)V

    .line 27
    iget-boolean v3, v5, Lgu5;->c:Z

    .line 28
    invoke-virtual {v4, v3}, Lcv5$b;->r(Z)Lcv5$b;

    goto/16 :goto_0

    .line 29
    :cond_0
    instance-of v5, p1, Lyt5;

    if-eqz v5, :cond_1

    .line 30
    move-object v5, p1

    check-cast v5, Lyt5;

    .line 31
    invoke-static {}, Lmc6;->J()Lmc6$b;

    move-result-object v6

    .line 32
    iget-object v7, v3, Lur5;->a:Low5;

    .line 33
    iget-object v8, v5, Lfu5;->a:Lbu5;

    .line 34
    invoke-virtual {v7, v8}, Low5;->j(Lbu5;)Ljava/lang/String;

    move-result-object v7

    .line 35
    invoke-virtual {v6}, Lgj6$a;->o()V

    .line 36
    iget-object v8, v6, Lgj6$a;->f:Lgj6;

    check-cast v8, Lmc6;

    invoke-static {v8, v7}, Lmc6;->C(Lmc6;Ljava/lang/String;)V

    .line 37
    iget-object v7, v5, Lyt5;->d:Lhu5;

    .line 38
    iget-object v7, v7, Lhu5;->a:Lbd6;

    invoke-virtual {v7}, Lbd6;->U()Lwc6;

    move-result-object v7

    invoke-virtual {v7}, Lwc6;->F()Ljava/util/Map;

    move-result-object v7

    .line 39
    invoke-virtual {v6}, Lgj6$a;->o()V

    .line 40
    iget-object v8, v6, Lgj6$a;->f:Lgj6;

    check-cast v8, Lmc6;

    invoke-static {v8}, Lmc6;->D(Lmc6;)Ljava/util/Map;

    move-result-object v8

    check-cast v8, Luj6;

    invoke-virtual {v8, v7}, Luj6;->putAll(Ljava/util/Map;)V

    .line 41
    iget-object v7, v5, Lfu5;->b:Lju5;

    .line 42
    iget-object v7, v7, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 43
    iget-object v3, v3, Lur5;->a:Low5;

    invoke-virtual {v3, v7}, Low5;->o(Lcom/google/firebase/Timestamp;)Lwk6;

    move-result-object v3

    .line 44
    invoke-virtual {v6}, Lgj6$a;->o()V

    .line 45
    iget-object v7, v6, Lgj6$a;->f:Lgj6;

    check-cast v7, Lmc6;

    invoke-static {v7, v3}, Lmc6;->E(Lmc6;Lwk6;)V

    .line 46
    invoke-virtual {v6}, Lgj6$a;->l()Lgj6;

    move-result-object v3

    check-cast v3, Lmc6;

    .line 47
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 48
    iget-object v6, v4, Lgj6$a;->f:Lgj6;

    check-cast v6, Lcv5;

    invoke-static {v6, v3}, Lcv5;->E(Lcv5;Lmc6;)V

    .line 49
    invoke-virtual {v5}, Lyt5;->c()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcv5$b;->r(Z)Lcv5$b;

    goto :goto_0

    .line 50
    :cond_1
    instance-of v5, p1, Lku5;

    if-eqz v5, :cond_2

    .line 51
    move-object v5, p1

    check-cast v5, Lku5;

    .line 52
    invoke-static {}, Lfv5;->H()Lfv5$b;

    move-result-object v6

    .line 53
    iget-object v7, v3, Lur5;->a:Low5;

    .line 54
    iget-object v8, v5, Lfu5;->a:Lbu5;

    .line 55
    invoke-virtual {v7, v8}, Low5;->j(Lbu5;)Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-virtual {v6}, Lgj6$a;->o()V

    .line 57
    iget-object v8, v6, Lgj6$a;->f:Lgj6;

    check-cast v8, Lfv5;

    invoke-static {v8, v7}, Lfv5;->C(Lfv5;Ljava/lang/String;)V

    .line 58
    iget-object v3, v3, Lur5;->a:Low5;

    .line 59
    iget-object v5, v5, Lfu5;->b:Lju5;

    .line 60
    iget-object v5, v5, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 61
    invoke-virtual {v3, v5}, Low5;->o(Lcom/google/firebase/Timestamp;)Lwk6;

    move-result-object v3

    .line 62
    invoke-virtual {v6}, Lgj6$a;->o()V

    .line 63
    iget-object v5, v6, Lgj6$a;->f:Lgj6;

    check-cast v5, Lfv5;

    invoke-static {v5, v3}, Lfv5;->D(Lfv5;Lwk6;)V

    .line 64
    invoke-virtual {v6}, Lgj6$a;->l()Lgj6;

    move-result-object v3

    check-cast v3, Lfv5;

    .line 65
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 66
    iget-object v5, v4, Lgj6$a;->f:Lgj6;

    check-cast v5, Lcv5;

    invoke-static {v5, v3}, Lcv5;->F(Lcv5;Lfv5;)V

    .line 67
    invoke-virtual {v4, v1}, Lcv5$b;->r(Z)Lcv5$b;

    .line 68
    :goto_0
    invoke-virtual {v4}, Lgj6$a;->l()Lgj6;

    move-result-object v3

    check-cast v3, Lcv5;

    .line 69
    iget-object v4, p0, Llt5;->a:Lgt5;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    .line 70
    iget-wide v6, p2, Lcom/google/firebase/Timestamp;->e:J

    .line 71
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    .line 72
    iget p2, p2, Lcom/google/firebase/Timestamp;->f:I

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    const/4 p2, 0x3

    .line 74
    invoke-virtual {v3}, Lii6;->b()[B

    move-result-object v0

    aput-object v0, v5, p2

    .line 75
    iget-object p2, v4, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "INSERT OR REPLACE INTO remote_documents (path, read_time_seconds, read_time_nanos, contents) VALUES (?, ?, ?, ?)"

    invoke-virtual {p2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object p2, p0, Llt5;->a:Lgt5;

    .line 77
    iget-object p2, p2, Lgt5;->e:Lat5;

    .line 78
    iget-object p1, p1, Lfu5;->a:Lbu5;

    .line 79
    iget-object p1, p1, Lbu5;->e:Liu5;

    .line 80
    invoke-virtual {p1}, Lvt5;->L()Lvt5;

    move-result-object p1

    check-cast p1, Liu5;

    invoke-virtual {p2, p1}, Lat5;->b(Liu5;)V

    return-void

    :cond_2
    new-array p2, v1, [Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "Unknown document type %s"

    invoke-static {p1, p2}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 p1, 0x0

    throw p1
.end method

.method public final f([B)Lfu5;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Llt5;->b:Lur5;

    .line 2
    invoke-static {p1}, Lcv5;->M([B)Lcv5;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lur5;->a(Lcv5;)Lfu5;

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

    const-string p1, "MaybeDocument failed to parse: %s"

    .line 4
    invoke-static {p1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 p1, 0x0

    throw p1
.end method

.method public final g(Lbu5;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p1, Lbu5;->e:Liu5;

    .line 2
    invoke-static {p1}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
