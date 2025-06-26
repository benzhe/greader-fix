.class public final synthetic Lbt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkx5;


# instance fields
.field public final a:Lct5;

.field public final b:[I


# direct methods
.method public constructor <init>(Lct5;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbt5;->a:Lct5;

    iput-object p2, p0, Lbt5;->b:[I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lbt5;->a:Lct5;

    iget-object v1, p0, Lbt5;->b:[I

    check-cast p1, Landroid/database/Cursor;

    const/4 v2, 0x0

    .line 1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc50;->K(Ljava/lang/String;)Liu5;

    move-result-object p1

    .line 2
    new-instance v3, Lbu5;

    invoke-direct {v3, p1}, Lbu5;-><init>(Liu5;)V

    .line 3
    iget-object p1, v0, Lct5;->e:Lys5;

    invoke-virtual {p1, v3}, Lys5;->c(Lbu5;)Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, v0, Lct5;->a:Lgt5;

    const-string v5, "SELECT 1 FROM document_mutations WHERE path = ?"

    .line 5
    iget-object p1, p1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    new-array v6, v4, [Ljava/lang/Object;

    .line 6
    iget-object v7, v3, Lbu5;->e:Liu5;

    .line 7
    invoke-static {v7}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 8
    new-instance v7, Lht5;

    invoke-direct {v7, v6}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v6, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p1, v7, v5, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr p1, v4

    .line 11
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    xor-int/2addr p1, v4

    :goto_0
    if-nez p1, :cond_1

    .line 12
    aget p1, v1, v2

    add-int/2addr p1, v4

    aput p1, v1, v2

    .line 13
    iget-object p1, v0, Lct5;->a:Lgt5;

    .line 14
    iget-object p1, p1, Lgt5;->f:Llt5;

    .line 15
    invoke-virtual {p1, v3}, Llt5;->b(Lbu5;)V

    .line 16
    iget-object p1, v0, Lct5;->a:Lgt5;

    new-array v0, v4, [Ljava/lang/Object;

    .line 17
    iget-object v1, v3, Lbu5;->e:Liu5;

    .line 18
    invoke-static {v1}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 19
    iget-object p1, p1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM target_documents WHERE path = ? AND target_id = 0"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v6, :cond_2

    .line 20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_2
    throw p1
.end method
