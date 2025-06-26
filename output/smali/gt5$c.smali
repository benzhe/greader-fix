.class public Lgt5$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgt5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;

.field public final b:Ljava/lang/String;

.field public c:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgt5$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    iput-object p2, p0, Lgt5$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lgt5$c;
    .locals 1

    .line 1
    new-instance v0, Lht5;

    invoke-direct {v0, p1}, Lht5;-><init>([Ljava/lang/Object;)V

    .line 2
    iput-object v0, p0, Lgt5$c;->c:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method public b(Lkx5;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkx5<",
            "Landroid/database/Cursor;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgt5$c;->c()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-interface {p1, v0}, Lkx5;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    throw p1
.end method

.method public final c()Landroid/database/Cursor;
    .locals 4

    .line 1
    iget-object v0, p0, Lgt5$c;->c:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lgt5$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lgt5$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lgt5$c;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lgt5$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
