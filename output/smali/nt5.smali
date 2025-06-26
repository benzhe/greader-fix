.class public final synthetic Lnt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkx5;


# instance fields
.field public final a:Lrt5;


# direct methods
.method public constructor <init>(Lrt5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnt5;->a:Lrt5;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lnt5;->a:Lrt5;

    check-cast p1, Landroid/database/Cursor;

    const/4 v1, 0x0

    .line 1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3
    iget-object p1, v0, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v1

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v3

    .line 5
    new-instance v4, Lht5;

    invoke-direct {v4, v7}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v5, 0x0

    const-string v7, "SELECT batch_id FROM mutations WHERE uid = ? AND batch_id <= ?"

    .line 6
    invoke-virtual {p1, v4, v7, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 9
    iget-object v5, v0, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "DELETE FROM mutations WHERE uid = ? AND batch_id = ?"

    .line 10
    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 11
    invoke-virtual {v5, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    int-to-long v7, v4

    .line 12
    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v1

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "Mutatiohn batch (%s, %d) did not exist"

    invoke-static {v5, v8, v7}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v5, v0, Lrt5;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v1

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const-string v4, "DELETE FROM document_mutations WHERE uid = ? AND batch_id = ?"

    .line 17
    invoke-virtual {v5, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 19
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    throw v0
.end method
