.class public final Ld25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsw4;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lj25;


# direct methods
.method public constructor <init>(Lj25;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld25;->b:Lj25;

    iput-object p2, p0, Ld25;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Ld25;->b:Lj25;

    .line 1
    iget-object p5, p1, Lj25;->j:Lrx4;

    .line 2
    invoke-virtual {p5}, Lrx4;->m()Lox4;

    move-result-object p5

    .line 3
    invoke-virtual {p5}, Lox4;->d()V

    .line 4
    invoke-virtual {p1}, Lj25;->S()V

    const/4 p5, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, p5, [B

    :cond_0
    iget-object v0, p1, Lj25;->v:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p1, Lj25;->v:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/16 v3, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_6

    const/16 p2, 0xcc

    :cond_1
    if-nez p3, :cond_6

    :try_start_1
    iget-object p3, p1, Lj25;->j:Lrx4;

    .line 5
    invoke-virtual {p3}, Lrx4;->q()Lex4;

    move-result-object p3

    .line 6
    iget-object p3, p3, Lex4;->e:Lbx4;

    iget-object v2, p1, Lj25;->j:Lrx4;

    .line 7
    iget-object v2, v2, Lrx4;->n:Lb20;

    .line 8
    invoke-interface {v2}, Lb20;->a()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lbx4;->b(J)V

    iget-object p3, p1, Lj25;->j:Lrx4;

    .line 9
    invoke-virtual {p3}, Lrx4;->q()Lex4;

    move-result-object p3

    .line 10
    iget-object p3, p3, Lex4;->f:Lbx4;

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v2, v3}, Lbx4;->b(J)V

    .line 11
    invoke-virtual {p1}, Lj25;->D()V

    iget-object p3, p1, Lj25;->j:Lrx4;

    .line 12
    invoke-virtual {p3}, Lrx4;->a()Lqw4;

    move-result-object p3

    .line 13
    iget-object p3, p3, Lqw4;->n:Low4;

    const-string v4, "Successful upload. Got network response. code, size"

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v4, p2, p4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1}, Lj25;->L()Lgs4;

    move-result-object p2

    invoke-virtual {p2}, Lgs4;->v()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    invoke-virtual {p1}, Lj25;->L()Lgs4;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p4}, Lly4;->d()V

    invoke-virtual {p4}, Lb25;->f()V

    invoke-virtual {p4}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 18
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, p5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v4, "queue"

    const-string v5, "rowid=?"

    .line 19
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    .line 21
    :try_start_5
    iget-object p4, p4, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {p4}, Lrx4;->a()Lqw4;

    move-result-object p4

    .line 23
    iget-object p4, p4, Lqw4;->f:Low4;

    const-string v4, "Failed to delete a bundle in a queue table"

    .line 24
    invoke-virtual {p4, v4, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p4

    .line 26
    :try_start_6
    iget-object v0, p1, Lj25;->w:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 27
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 28
    :cond_3
    throw p4

    .line 29
    :cond_4
    invoke-virtual {p1}, Lj25;->L()Lgs4;

    move-result-object p2

    invoke-virtual {p2}, Lgs4;->w()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 30
    :try_start_7
    invoke-virtual {p1}, Lj25;->L()Lgs4;

    move-result-object p2

    invoke-virtual {p2}, Lgs4;->x()V

    iput-object v1, p1, Lj25;->w:Ljava/util/List;

    .line 31
    invoke-virtual {p1}, Lj25;->K()Lvw4;

    move-result-object p2

    invoke-virtual {p2}, Lvw4;->i()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lj25;->C()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 32
    invoke-virtual {p1}, Lj25;->h()V

    goto :goto_1

    :cond_5
    const-wide/16 p2, -0x1

    .line 33
    iput-wide p2, p1, Lj25;->x:J

    .line 34
    invoke-virtual {p1}, Lj25;->D()V

    .line 35
    :goto_1
    iput-wide v2, p1, Lj25;->m:J

    goto/16 :goto_2

    :catchall_0
    move-exception p2

    .line 36
    invoke-virtual {p1}, Lj25;->L()Lgs4;

    move-result-object p3

    invoke-virtual {p3}, Lgs4;->x()V

    .line 37
    throw p2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p2

    .line 38
    :try_start_8
    iget-object p3, p1, Lj25;->j:Lrx4;

    .line 39
    invoke-virtual {p3}, Lrx4;->a()Lqw4;

    move-result-object p3

    .line 40
    iget-object p3, p3, Lqw4;->f:Low4;

    const-string p4, "Database error while trying to delete uploaded bundles"

    .line 41
    invoke-virtual {p3, p4, p2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p1, Lj25;->j:Lrx4;

    .line 42
    iget-object p2, p2, Lrx4;->n:Lb20;

    .line 43
    invoke-interface {p2}, Lb20;->b()J

    move-result-wide p2

    iput-wide p2, p1, Lj25;->m:J

    iget-object p2, p1, Lj25;->j:Lrx4;

    .line 44
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 45
    iget-object p2, p2, Lqw4;->n:Low4;

    const-string p3, "Disable upload, time"

    .line 46
    iget-wide v0, p1, Lj25;->m:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 47
    :cond_6
    iget-object p4, p1, Lj25;->j:Lrx4;

    .line 48
    invoke-virtual {p4}, Lrx4;->a()Lqw4;

    move-result-object p4

    .line 49
    iget-object p4, p4, Lqw4;->n:Low4;

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v1, v2, p3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p1, Lj25;->j:Lrx4;

    .line 51
    invoke-virtual {p3}, Lrx4;->q()Lex4;

    move-result-object p3

    .line 52
    iget-object p3, p3, Lex4;->f:Lbx4;

    iget-object p4, p1, Lj25;->j:Lrx4;

    .line 53
    iget-object p4, p4, Lrx4;->n:Lb20;

    .line 54
    invoke-interface {p4}, Lb20;->a()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lbx4;->b(J)V

    const/16 p3, 0x1f7

    if-eq p2, p3, :cond_7

    const/16 p3, 0x1ad

    if-ne p2, p3, :cond_8

    :cond_7
    iget-object p2, p1, Lj25;->j:Lrx4;

    .line 55
    invoke-virtual {p2}, Lrx4;->q()Lex4;

    move-result-object p2

    .line 56
    iget-object p2, p2, Lex4;->g:Lbx4;

    iget-object p3, p1, Lj25;->j:Lrx4;

    .line 57
    iget-object p3, p3, Lrx4;->n:Lb20;

    .line 58
    invoke-interface {p3}, Lb20;->a()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lbx4;->b(J)V

    .line 59
    :cond_8
    invoke-virtual {p1}, Lj25;->L()Lgs4;

    move-result-object p2

    invoke-virtual {p2, v0}, Lgs4;->R(Ljava/util/List;)V

    .line 60
    invoke-virtual {p1}, Lj25;->D()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 61
    :goto_2
    iput-boolean p5, p1, Lj25;->r:Z

    .line 62
    invoke-virtual {p1}, Lj25;->E()V

    return-void

    :catchall_1
    move-exception p2

    .line 63
    iput-boolean p5, p1, Lj25;->r:Z

    .line 64
    invoke-virtual {p1}, Lj25;->E()V

    .line 65
    throw p2
.end method
