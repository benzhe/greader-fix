.class public Lct5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs5;
.implements Lis5;


# instance fields
.field public final a:Lgt5;

.field public b:Lsq5;

.field public c:J

.field public final d:Ljs5;

.field public e:Lys5;


# direct methods
.method public constructor <init>(Lgt5;Ljs5$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lct5;->c:J

    .line 3
    iput-object p1, p0, Lct5;->a:Lgt5;

    .line 4
    new-instance p1, Ljs5;

    invoke-direct {p1, p0, p2}, Ljs5;-><init>(Lis5;Ljs5$a;)V

    iput-object p1, p0, Lct5;->d:Ljs5;

    return-void
.end method


# virtual methods
.method public a(Lbu5;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lct5;->j(Lbu5;)V

    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lct5;->c:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Committing a transaction without having started one"

    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-wide v3, p0, Lct5;->c:J

    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lct5;->c:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Starting a transaction without committing the previous one"

    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lct5;->b:Lsq5;

    .line 3
    iget-wide v1, v0, Lsq5;->a:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lsq5;->a:J

    .line 4
    iput-wide v1, p0, Lct5;->c:J

    return-void
.end method

.method public d(Lbu5;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lct5;->j(Lbu5;)V

    return-void
.end method

.method public e()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lct5;->c:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Attempting to get a sequence number outside of a transaction"

    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-wide v0, p0, Lct5;->c:J

    return-wide v0
.end method

.method public f(Lut5;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lct5;->e()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lut5;->b(J)Lut5;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lct5;->a:Lgt5;

    .line 3
    iget-object v0, v0, Lgt5;->d:Lst5;

    .line 4
    invoke-virtual {v0, p1}, Lst5;->k(Lut5;)V

    .line 5
    invoke-virtual {v0, p1}, Lst5;->l(Lut5;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Lst5;->m()V

    :cond_0
    return-void
.end method

.method public g(Lys5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lct5;->e:Lys5;

    return-void
.end method

.method public h(Lbu5;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lct5;->j(Lbu5;)V

    return-void
.end method

.method public i(Lbu5;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lct5;->j(Lbu5;)V

    return-void
.end method

.method public final j(Lbu5;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lbu5;->e:Liu5;

    .line 2
    invoke-static {p1}, Lc50;->Q(Lvt5;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lct5;->a:Lgt5;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0}, Lct5;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p1

    .line 5
    iget-object p1, v0, Lgt5;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "INSERT OR REPLACE INTO target_documents (target_id, path, sequence_number) VALUES (0, ?, ?)"

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
