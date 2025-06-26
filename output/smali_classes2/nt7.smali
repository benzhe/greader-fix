.class public final Lnt7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt7;


# instance fields
.field public final e:Lxs7;

.field public f:Lqt7;

.field public g:I

.field public h:Z

.field public i:J

.field public final j:Lat7;


# direct methods
.method public constructor <init>(Lat7;)V
    .locals 1

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnt7;->j:Lat7;

    .line 2
    invoke-interface {p1}, Lat7;->h()Lxs7;

    move-result-object p1

    iput-object p1, p0, Lnt7;->e:Lxs7;

    .line 3
    iget-object p1, p1, Lxs7;->e:Lqt7;

    iput-object p1, p0, Lnt7;->f:Lqt7;

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Lqt7;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lnt7;->g:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lnt7;->h:Z

    return-void
.end method

.method public read(Lxs7;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_8

    .line 1
    iget-boolean v4, p0, Lnt7;->h:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    .line 2
    iget-object v4, p0, Lnt7;->f:Lqt7;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lnt7;->e:Lxs7;

    iget-object v5, v5, Lxs7;->e:Lqt7;

    if-ne v4, v5, :cond_2

    iget v4, p0, Lnt7;->g:I

    invoke-static {v5}, Lim7;->c(Ljava/lang/Object;)V

    iget v5, v5, Lqt7;->b:I

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_6

    if-nez v3, :cond_3

    return-wide v1

    .line 3
    :cond_3
    iget-object v0, p0, Lnt7;->j:Lat7;

    iget-wide v1, p0, Lnt7;->i:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lat7;->l(J)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 p1, -0x1

    return-wide p1

    .line 4
    :cond_4
    iget-object v0, p0, Lnt7;->f:Lqt7;

    if-nez v0, :cond_5

    iget-object v0, p0, Lnt7;->e:Lxs7;

    iget-object v0, v0, Lxs7;->e:Lqt7;

    if-eqz v0, :cond_5

    .line 5
    iput-object v0, p0, Lnt7;->f:Lqt7;

    .line 6
    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    iget v0, v0, Lqt7;->b:I

    iput v0, p0, Lnt7;->g:I

    .line 7
    :cond_5
    iget-object v0, p0, Lnt7;->e:Lxs7;

    .line 8
    iget-wide v0, v0, Lxs7;->f:J

    .line 9
    iget-wide v2, p0, Lnt7;->i:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 10
    iget-object v2, p0, Lnt7;->e:Lxs7;

    iget-wide v4, p0, Lnt7;->i:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lxs7;->e(Lxs7;JJ)Lxs7;

    .line 11
    iget-wide v0, p0, Lnt7;->i:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lnt7;->i:J

    return-wide p2

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Peek source is invalid because upstream source was used"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const-string p1, "byteCount < 0: "

    .line 14
    invoke-static {p1, p2, p3}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public timeout()Lwt7;
    .locals 1

    .line 1
    iget-object v0, p0, Lnt7;->j:Lat7;

    invoke-interface {v0}, Lvt7;->timeout()Lwt7;

    move-result-object v0

    return-object v0
.end method
