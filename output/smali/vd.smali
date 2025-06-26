.class public Lvd;
.super Lud;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lud<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Lwd$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwd<",
            "Landroid/database/Cursor;",
            ">.a;"
        }
    .end annotation
.end field

.field public n:Landroid/net/Uri;

.field public o:[Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:[Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Landroid/database/Cursor;

.field public t:Lw8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lud;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lwd$a;

    invoke-direct {p1, p0}, Lwd$a;-><init>(Lwd;)V

    iput-object p1, p0, Lvd;->m:Lwd$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lud;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lwd$a;

    invoke-direct {p1, p0}, Lwd$a;-><init>(Lwd;)V

    iput-object p1, p0, Lvd;->m:Lwd$a;

    .line 5
    iput-object p2, p0, Lvd;->n:Landroid/net/Uri;

    .line 6
    iput-object p3, p0, Lvd;->o:[Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lvd;->p:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lvd;->q:[Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lvd;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lud;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mUri="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lvd;->n:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mProjection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lvd;->o:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSelection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lvd;->p:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSelectionArgs="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lvd;->q:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSortOrder="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lvd;->r:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCursor="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lvd;->s:Landroid/database/Cursor;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mContentChanged="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lwd;->g:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lud;->c()Z

    .line 2
    iget-object v0, p0, Lvd;->s:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lvd;->s:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lvd;->s:Landroid/database/Cursor;

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvd;->s:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lvd;->j(Landroid/database/Cursor;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lwd;->g:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lwd;->g:Z

    .line 5
    iget-boolean v1, p0, Lwd;->h:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lwd;->h:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lvd;->s:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0}, Lud;->d()V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lud;->c()Z

    return-void
.end method

.method public j(Landroid/database/Cursor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lwd;->f:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lvd;->s:Landroid/database/Cursor;

    .line 4
    iput-object p1, p0, Lvd;->s:Landroid/database/Cursor;

    .line 5
    iget-boolean v1, p0, Lwd;->d:Z

    if-eqz v1, :cond_2

    .line 6
    invoke-super {p0, p1}, Lwd;->a(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 7
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public k()Landroid/database/Cursor;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lud;->k:Lud$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    new-instance v0, Lw8;

    invoke-direct {v0}, Lw8;-><init>()V

    iput-object v0, p0, Lvd;->t:Lw8;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 5
    :try_start_1
    iget-object v1, p0, Lwd;->c:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lvd;->n:Landroid/net/Uri;

    iget-object v4, p0, Lvd;->o:[Ljava/lang/String;

    iget-object v5, p0, Lvd;->p:Ljava/lang/String;

    iget-object v6, p0, Lvd;->q:[Ljava/lang/String;

    iget-object v7, p0, Lvd;->r:Ljava/lang/String;

    iget-object v8, p0, Lvd;->t:Lw8;

    invoke-static/range {v2 .. v8}, Ld0$h;->U(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lw8;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 7
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 8
    iget-object v2, p0, Lvd;->m:Lwd$a;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 9
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    :cond_1
    :goto_1
    monitor-enter p0

    .line 12
    :try_start_4
    iput-object v0, p0, Lvd;->t:Lw8;

    .line 13
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 14
    monitor-enter p0

    .line 15
    :try_start_5
    iput-object v0, p0, Lvd;->t:Lw8;

    .line 16
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 17
    :cond_2
    :try_start_7
    new-instance v0, Lb9;

    invoke-direct {v0}, Lb9;-><init>()V

    throw v0

    .line 18
    :goto_2
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2
.end method
