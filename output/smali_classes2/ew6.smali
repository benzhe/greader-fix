.class public Lew6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lip6;

.field public b:Llp6;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lew6;->a:Lip6;

    .line 3
    iput-object v0, p0, Lew6;->b:Llp6;

    .line 4
    iput-object v0, p0, Lew6;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lew6;->d:Z

    .line 6
    iput-boolean v0, p0, Lew6;->e:Z

    .line 7
    iput-boolean v0, p0, Lew6;->f:Z

    const-wide/16 v1, -0x1

    .line 8
    iput-wide v1, p0, Lew6;->g:J

    .line 9
    iput v0, p0, Lew6;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lew6;->a:Lip6;

    .line 2
    iput-object v0, p0, Lew6;->b:Llp6;

    .line 3
    iput-object v0, p0, Lew6;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lew6;->d:Z

    .line 5
    iput-boolean v0, p0, Lew6;->e:Z

    const-wide/16 v1, -0x1

    .line 6
    iput-wide v1, p0, Lew6;->g:J

    .line 7
    iput v0, p0, Lew6;->h:I

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lew6;->a:Lip6;

    .line 2
    iput-object v0, p0, Lew6;->b:Llp6;

    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Lew6;->a:Lip6;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, v1, Lip6;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lew6;->b:Llp6;

    if-eqz v1, :cond_4

    .line 5
    iget v2, v1, Llp6;->g:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/16 p1, 0xa

    if-eq v2, p1, :cond_2

    const/16 p1, 0xb

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, v1, Llp6;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, v1, Llp6;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const v1, 0x7f110157

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_4
    iget-boolean v1, p0, Lew6;->d:Z

    if-eqz v1, :cond_5

    const v1, 0x7f110156

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_5
    iget-boolean v1, p0, Lew6;->e:Z

    if-eqz v1, :cond_6

    const v1, 0x7f110155

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const v1, 0x7f110154

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lew6;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lew6;->g:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lew6;->g:J

    return-wide v0
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lon6;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " limit "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lew6;->h:I

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x32

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lew6;->a:Lip6;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lip6;->f:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lew6;->b:Llp6;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Llp6;->f:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lew6;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "cached"

    return-object v0

    .line 6
    :cond_2
    iget-boolean v0, p0, Lew6;->e:Z

    if-eqz v0, :cond_3

    const-string v0, "podcast"

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public g(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "cachedItems"

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lon6;->a:Lew6;

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lew6;->d:Z

    :cond_0
    const-string v0, "podcastItems"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lon6;->a:Lew6;

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lew6;->e:Z

    .line 5
    :cond_1
    sget-object v0, Lon6;->a:Lew6;

    iget-boolean v1, v0, Lew6;->d:Z

    if-nez v1, :cond_8

    iget-boolean v0, v0, Lew6;->e:Z

    if-nez v0, :cond_8

    const-wide/16 v0, 0x0

    const-string v3, "subId"

    .line 6
    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "subUid"

    .line 7
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    sget-object v6, Lon6;->a:Lew6;

    iget-object v6, v6, Lew6;->a:Lip6;

    if-nez v6, :cond_6

    cmp-long v6, v3, v0

    if-gtz v6, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lon6;->a:Lew6;

    iget-object v0, v0, Lew6;->b:Llp6;

    const/16 v1, 0x9

    if-eqz v0, :cond_3

    iget v3, v0, Llp6;->g:I

    if-ne v3, v1, :cond_3

    .line 10
    invoke-static {p1, v0}, Ln56;->f1(Landroid/content/Context;Llp6;)V

    goto :goto_1

    :cond_3
    const-string v0, "tagUid"

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-object v3, Lon6;->a:Lew6;

    iget-object v3, v3, Lew6;->b:Llp6;

    if-nez v3, :cond_8

    if-eqz v0, :cond_8

    .line 13
    invoke-static {p1, v0, v2}, Llp6;->b(Landroid/content/Context;Ljava/lang/String;Z)Llp6;

    move-result-object v2

    if-nez v2, :cond_4

    .line 14
    new-instance v1, Llp6;

    invoke-direct {v1}, Llp6;-><init>()V

    .line 15
    iput-object v0, v1, Llp6;->f:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object p1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lep6;->U(Llp6;J)V

    .line 18
    invoke-virtual {p1}, Lep6;->Y()V

    .line 19
    sget-object p1, Lon6;->a:Lew6;

    iput-object v1, p1, Lew6;->b:Llp6;

    goto :goto_1

    .line 20
    :cond_4
    iget v0, v2, Llp6;->g:I

    if-ne v0, v1, :cond_5

    .line 21
    invoke-static {p1, v2}, Ln56;->f1(Landroid/content/Context;Llp6;)V

    goto :goto_1

    .line 22
    :cond_5
    sget-object p1, Lon6;->a:Lew6;

    iput-object v2, p1, Lew6;->b:Llp6;

    goto :goto_1

    .line 23
    :cond_6
    :goto_0
    sget-object v2, Lon6;->a:Lew6;

    iget-object v6, v2, Lew6;->a:Lip6;

    if-nez v6, :cond_8

    const/4 v6, 0x1

    cmp-long v7, v3, v0

    if-lez v7, :cond_7

    .line 24
    invoke-static {p1, v3, v4, v6}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object p1

    iput-object p1, v2, Lew6;->a:Lip6;

    goto :goto_1

    .line 25
    :cond_7
    invoke-static {p1, v5, v6}, Lip6;->d(Landroid/content/Context;Ljava/lang/String;Z)Lip6;

    move-result-object p1

    iput-object p1, v2, Lew6;->a:Lip6;

    :cond_8
    :goto_1
    const-string p1, "readingTime"

    .line 26
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    sget-object v0, Lon6;->a:Lew6;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lew6;->g:J

    :cond_9
    const-string p1, "page"

    .line 28
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    sget-object v0, Lon6;->a:Lew6;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lew6;->h:I

    :cond_a
    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lew6;->a:Lip6;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, v0, Lip6;->e:J

    const-string v2, "subId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    :cond_0
    iget-object v0, p0, Lew6;->b:Llp6;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Llp6;->f:Ljava/lang/String;

    const-string v1, "tagUid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lew6;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "query"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lew6;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const-string v0, "podcastItems"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    :cond_3
    iget-boolean v0, p0, Lew6;->d:Z

    if-eqz v0, :cond_4

    const-string v0, "cachedItems"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    :cond_4
    iget-boolean v0, p0, Lew6;->f:Z

    if-eqz v0, :cond_5

    const-string v0, "unreadOnly"

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    :cond_5
    iget-wide v0, p0, Lew6;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    const-string v2, "readingTime"

    .line 14
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 15
    :cond_6
    iget v0, p0, Lew6;->h:I

    if-lez v0, :cond_7

    const-string v1, "page"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lew6;->b:Llp6;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, v1, Llp6;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lew6;->a:Lip6;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lip6;->f:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lew6;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
