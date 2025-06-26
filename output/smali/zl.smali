.class public final Lzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyl;


# instance fields
.field public final a:Llg;

.field public final b:Lhg;

.field public final c:Log;


# direct methods
.method public constructor <init>(Llg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzl;->a:Llg;

    .line 3
    new-instance v0, Lzl$a;

    invoke-direct {v0, p0, p1}, Lzl$a;-><init>(Lzl;Llg;)V

    iput-object v0, p0, Lzl;->b:Lhg;

    .line 4
    new-instance v0, Lzl$b;

    invoke-direct {v0, p0, p1}, Lzl$b;-><init>(Lzl;Llg;)V

    iput-object v0, p0, Lzl;->c:Log;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lxl;
    .locals 4

    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lng;->c(Ljava/lang/String;I)Lng;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lng;->f(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Lng;->g(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lzl;->a:Llg;

    invoke-virtual {p1}, Llg;->b()V

    .line 5
    iget-object p1, p0, Lzl;->a:Llg;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lqg;->a(Llg;Lzg;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "work_spec_id"

    .line 6
    invoke-static {p1, v1}, Ld0$h;->B(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "system_id"

    .line 7
    invoke-static {p1, v2}, Ld0$h;->B(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 11
    new-instance v3, Lxl;

    invoke-direct {v3, v1, v2}, Lxl;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 12
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v0}, Lng;->i()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 15
    invoke-virtual {v0}, Lng;->i()V

    .line 16
    throw v1
.end method

.method public b(Lxl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzl;->a:Llg;

    invoke-virtual {v0}, Llg;->b()V

    .line 2
    iget-object v0, p0, Lzl;->a:Llg;

    invoke-virtual {v0}, Llg;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lzl;->b:Lhg;

    invoke-virtual {v0, p1}, Lhg;->e(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lzl;->a:Llg;

    invoke-virtual {p1}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lzl;->a:Llg;

    invoke-virtual {p1}, Llg;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lzl;->a:Llg;

    invoke-virtual {v0}, Llg;->g()V

    .line 6
    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzl;->a:Llg;

    invoke-virtual {v0}, Llg;->b()V

    .line 2
    iget-object v0, p0, Lzl;->c:Log;

    invoke-virtual {v0}, Log;->a()Leh;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, v0, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v1, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lzl;->a:Llg;

    invoke-virtual {p1}, Llg;->c()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Leh;->a()I

    .line 7
    iget-object p1, p0, Lzl;->a:Llg;

    invoke-virtual {p1}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lzl;->a:Llg;

    invoke-virtual {p1}, Llg;->g()V

    .line 9
    iget-object p1, p0, Lzl;->c:Log;

    .line 10
    iget-object v1, p1, Log;->c:Leh;

    if-ne v0, v1, :cond_1

    .line 11
    iget-object p1, p1, Log;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object v1, p0, Lzl;->a:Llg;

    invoke-virtual {v1}, Llg;->g()V

    .line 13
    iget-object v1, p0, Lzl;->c:Log;

    invoke-virtual {v1, v0}, Log;->c(Leh;)V

    .line 14
    throw p1
.end method
