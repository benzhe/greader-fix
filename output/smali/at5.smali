.class public final Lat5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsr5;


# instance fields
.field public final a:Lns5$a;

.field public final b:Lgt5;


# direct methods
.method public constructor <init>(Lgt5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lns5$a;

    invoke-direct {v0}, Lns5$a;-><init>()V

    iput-object v0, p0, Lat5;->a:Lns5$a;

    .line 3
    iput-object p1, p0, Lat5;->b:Lgt5;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Liu5;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lat5;->b:Lgt5;

    .line 3
    iget-object v1, v1, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 4
    new-instance p1, Lht5;

    invoke-direct {p1, v2}, Lht5;-><init>([Ljava/lang/Object;)V

    const/4 v2, 0x0

    const-string v4, "SELECT parent FROM collection_parents WHERE collection_id = ?"

    .line 5
    invoke-virtual {v1, p1, v4, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc50;->K(Ljava/lang/String;)Liu5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 9
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    throw v0
.end method

.method public b(Liu5;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lvt5;->I()I

    move-result v0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Expected a collection path."

    invoke-static {v0, v5, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lat5;->a:Lns5$a;

    invoke-virtual {v0, p1}, Lns5$a;->a(Liu5;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lvt5;->x()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lvt5;->L()Lvt5;

    move-result-object p1

    check-cast p1, Liu5;

    .line 5
    iget-object v4, p0, Lat5;->b:Lgt5;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 6
    invoke-static {p1}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 7
    iget-object p1, v4, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)"

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
