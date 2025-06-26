.class public final Lgt5;
.super Lts5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgt5$c;,
        Lgt5$b;
    }
.end annotation


# instance fields
.field public final b:Landroid/database/sqlite/SQLiteOpenHelper;

.field public final c:Lur5;

.field public final d:Lst5;

.field public final e:Lat5;

.field public final f:Llt5;

.field public final g:Lct5;

.field public final h:Landroid/database/sqlite/SQLiteTransactionListener;

.field public i:Landroid/database/sqlite/SQLiteDatabase;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lwt5;Lur5;Ljs5$a;)V
    .locals 5

    .line 1
    new-instance v0, Lgt5$b;

    const-string v1, "."

    const-string v2, "utf-8"

    .line 2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firestore."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p2, p3, Lwt5;->e:Ljava/lang/String;

    .line 5
    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p2, p3, Lwt5;->f:Ljava/lang/String;

    .line 7
    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-direct {v0, p1, p4, p2}, Lgt5$b;-><init>(Landroid/content/Context;Lur5;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lts5;-><init>()V

    .line 10
    new-instance p1, Lgt5$a;

    invoke-direct {p1, p0}, Lgt5$a;-><init>(Lgt5;)V

    iput-object p1, p0, Lgt5;->h:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 11
    iput-object v0, p0, Lgt5;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 12
    iput-object p4, p0, Lgt5;->c:Lur5;

    .line 13
    new-instance p1, Lst5;

    invoke-direct {p1, p0, p4}, Lst5;-><init>(Lgt5;Lur5;)V

    iput-object p1, p0, Lgt5;->d:Lst5;

    .line 14
    new-instance p1, Lat5;

    invoke-direct {p1, p0}, Lat5;-><init>(Lgt5;)V

    iput-object p1, p0, Lgt5;->e:Lat5;

    .line 15
    new-instance p1, Llt5;

    invoke-direct {p1, p0, p4}, Llt5;-><init>(Lgt5;Lur5;)V

    iput-object p1, p0, Lgt5;->f:Llt5;

    .line 16
    new-instance p1, Lct5;

    invoke-direct {p1, p0, p5}, Lct5;-><init>(Lgt5;Ljs5$a;)V

    iput-object p1, p0, Lgt5;->g:Lct5;

    return-void

    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public static j(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 2
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 3
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 4
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 5
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 7
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 8
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    .line 9
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 10
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    .line 11
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_1

    .line 12
    :cond_4
    instance-of v3, v2, [B

    if-eqz v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    .line 13
    check-cast v2, [B

    invoke-virtual {p0, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v2, p0, v0

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const-string p1, "Unknown argument %s of type %s"

    invoke-static {p1, p0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 p0, 0x0

    throw p0

    :cond_6
    return-void
.end method


# virtual methods
.method public a()Lsr5;
    .locals 1

    .line 1
    iget-object v0, p0, Lgt5;->e:Lat5;

    return-object v0
.end method

.method public b(Ltp5;)Lss5;
    .locals 2

    .line 1
    new-instance v0, Lft5;

    iget-object v1, p0, Lgt5;->c:Lur5;

    invoke-direct {v0, p0, v1, p1}, Lft5;-><init>(Lgt5;Lur5;Ltp5;)V

    return-object v0
.end method

.method public c()Lxs5;
    .locals 1

    .line 1
    iget-object v0, p0, Lgt5;->g:Lct5;

    return-object v0
.end method

.method public d()Lzs5;
    .locals 1

    .line 1
    iget-object v0, p0, Lgt5;->f:Llt5;

    return-object v0
.end method

.method public e()Ltt5;
    .locals 1

    .line 1
    iget-object v0, p0, Lgt5;->d:Lst5;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgt5;->j:Z

    return v0
.end method

.method public g(Ljava/lang/String;Lrx5;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lrx5<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lts5;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2
    sget-object p1, Lqx5$a;->e:Lqx5$a;

    const-string v2, "Starting transaction: %s"

    invoke-static {p1, v0, v2, v1}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lgt5;->h:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4
    :try_start_0
    invoke-interface {p2}, Lrx5;->get()Ljava/lang/Object;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p2, p0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 7
    throw p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Lts5;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2
    sget-object p1, Lqx5$a;->e:Lqx5$a;

    const-string v2, "Starting transaction: %s"

    invoke-static {p1, v0, v2, v1}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lgt5;->h:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 5
    iget-object p1, p0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 7
    throw p1
.end method

.method public i()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lgt5;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "SQLitePersistence double-started!"

    invoke-static {v0, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lgt5;->j:Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lgt5;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object v0, p0, Lgt5;->d:Lst5;

    .line 5
    iget-object v3, v0, Lst5;->a:Lgt5;

    const-string v4, "SELECT highest_target_id, highest_listen_sequence_number, last_remote_snapshot_version_seconds, last_remote_snapshot_version_nanos, target_count FROM target_globals LIMIT 1"

    .line 6
    iget-object v3, v3, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    .line 7
    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 8
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lst5;->c:I

    .line 10
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lst5;->d:J

    .line 11
    new-instance v3, Lju5;

    new-instance v4, Lcom/google/firebase/Timestamp;

    const/4 v6, 0x2

    .line 12
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct {v4, v6, v7, v8}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    invoke-direct {v3, v4}, Lju5;-><init>(Lcom/google/firebase/Timestamp;)V

    iput-object v3, v0, Lst5;->e:Lju5;

    const/4 v3, 0x4

    .line 13
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lst5;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Missing target_globals entry"

    .line 15
    invoke-static {v1, v2, v0}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lgt5;->g:Lct5;

    iget-object v1, p0, Lgt5;->d:Lst5;

    .line 17
    iget-wide v1, v1, Lst5;->d:J

    .line 18
    new-instance v3, Lsq5;

    invoke-direct {v3, v1, v2}, Lsq5;-><init>(J)V

    iput-object v3, v0, Lct5;->b:Lsq5;

    return-void

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_2

    .line 19
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_2
    throw v0

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to gain exclusive lock to the Cloud Firestore client\'s offline persistence. This generally means you are using Cloud Firestore from multiple processes in your app. Keep in mind that multi-process Android apps execute the code in your Application class in all processes, so you may need to avoid initializing Cloud Firestore in your Application class. If you are intentionally using Cloud Firestore from multiple processes, you can only enable offline persistence (that is, call setPersistenceEnabled(true)) in one of them."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public k(Ljava/lang/String;)Lgt5$c;
    .locals 2

    .line 1
    new-instance v0, Lgt5$c;

    iget-object v1, p0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, p1}, Lgt5$c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-object v0
.end method
