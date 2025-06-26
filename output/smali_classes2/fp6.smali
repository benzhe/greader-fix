.class public Lfp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrn6$b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lcw6;

.field public final synthetic d:Lep6;


# direct methods
.method public constructor <init>(Lep6;IJLcw6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfp6;->d:Lep6;

    iput p2, p0, Lfp6;->a:I

    iput-wide p3, p0, Lfp6;->b:J

    iput-object p5, p0, Lfp6;->c:Lcw6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lap6;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfp6;->d:Lep6;

    invoke-virtual {v0}, Lep6;->n()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    const/4 v6, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lfp6;->d:Lep6;

    iget-wide v3, p0, Lfp6;->b:J

    iget-object v5, p0, Lfp6;->c:Lcw6;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lep6;->L(Ljava/util/List;JLcw6;I)V

    return-void
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lfp6;->d:Lep6;

    .line 2
    iget-object v0, v0, Lep6;->a:Landroid/content/Context;

    invoke-static {v0}, Liw6;->z(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lfp6;->a:I

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfp6;->d:Lep6;

    const-string v1, "subscription.uid"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    .line 3
    new-instance v1, Lvd;

    iget-object v3, v0, Lep6;->a:Landroid/content/Context;

    sget-object v4, Lip6;->A:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "subscription.sync_excluded = 1 OR tag.sync_excluded = 1"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lvd;->k()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 5
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 6
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9
    throw v1

    .line 10
    :catch_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v1
.end method

.method public stream()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
