.class public Lgt5$b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgt5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:Lur5;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lur5;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 1
    invoke-direct {p0, p1, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    iput-object p2, p0, Lgt5$b;->e:Lur5;

    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lgt5$b;->f:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PRAGMA locking_mode = EXCLUSIVE"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lgt5$b;->f:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lgt5$b;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    :cond_0
    new-instance v0, Lrt5;

    iget-object v1, p0, Lgt5$b;->e:Lur5;

    invoke-direct {v0, p1, v1}, Lrt5;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lur5;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lrt5;->c(I)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lgt5$b;->f:Z

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lgt5$b;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgt5$b;->f:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lgt5$b;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-boolean p3, p0, Lgt5$b;->f:Z

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lgt5$b;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    :cond_0
    new-instance p3, Lrt5;

    iget-object v0, p0, Lgt5$b;->e:Lur5;

    invoke-direct {p3, p1, v0}, Lrt5;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lur5;)V

    invoke-virtual {p3, p2}, Lrt5;->c(I)V

    return-void
.end method
