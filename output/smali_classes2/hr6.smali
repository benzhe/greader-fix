.class public Lhr6;
.super Lvm6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvm6<",
        "Lew6;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvm6;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lew6;

    .line 2
    iget-object v0, p0, Lvm6;->a:Landroid/content/Context;

    .line 3
    iget-boolean v1, p1, Lew6;->d:Z

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v1, p1, Lew6;->f:Z

    iget-object v2, p1, Lew6;->c:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lew6;->d()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-boolean v1, p1, Lew6;->e:Z

    if-eqz v1, :cond_1

    .line 6
    iget-boolean v1, p1, Lew6;->f:Z

    iget-object v2, p1, Lew6;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1, v0}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lew6;->d()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_1

    .line 7
    :cond_1
    iget-object v1, p1, Lew6;->a:Lip6;

    if-eqz v1, :cond_3

    .line 8
    iget-wide v1, v1, Lip6;->e:J

    iget-boolean v3, p1, Lew6;->f:Z

    iget-object v4, p1, Lew6;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lew6;->d()J

    move-result-wide v5

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v3, v4, v5, v6}, Lep6;->v(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, " AND "

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "item.sub_id = ?"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v3

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/noinnion/android/greader/provider/ReaderProvider;->t:Landroid/net/Uri;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_3
    iget-object v1, p1, Lew6;->b:Llp6;

    if-eqz v1, :cond_5

    .line 14
    iget v2, v1, Llp6;->g:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 15
    iget-object v1, v1, Llp6;->f:Ljava/lang/String;

    iget-boolean v2, p1, Lew6;->f:Z

    iget-object v3, p1, Lew6;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lew6;->d()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lep6;->p(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_4
    iget-object v1, v1, Llp6;->f:Ljava/lang/String;

    iget-boolean v2, p1, Lew6;->f:Z

    iget-object v3, p1, Lew6;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lew6;->d()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lep6;->r(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_5
    iget-boolean v1, p1, Lew6;->f:Z

    iget-object v2, p1, Lew6;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lew6;->d()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object p1

    :goto_1
    return-object p1
.end method
