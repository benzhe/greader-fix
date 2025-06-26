.class public final Lht7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt7;


# instance fields
.field public e:I

.field public f:Z

.field public final g:Lat7;

.field public final h:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Lat7;Ljava/util/zip/Inflater;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lht7;->g:Lat7;

    iput-object p2, p0, Lht7;->h:Ljava/util/zip/Inflater;

    return-void
.end method

.method public constructor <init>(Lvt7;Ljava/util/zip/Inflater;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inflater"

    invoke-static {p2, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ln56;->p(Lvt7;)Lat7;

    move-result-object p1

    .line 3
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lht7;->g:Lat7;

    iput-object p2, p0, Lht7;->h:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final a(Lxs7;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

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
    iget-boolean v4, p0, Lht7;->f:Z

    xor-int/2addr v4, v0

    if-eqz v4, :cond_7

    if-nez v3, :cond_1

    return-wide v1

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Lxs7;->E(I)Lqt7;

    move-result-object v0

    .line 3
    iget v3, v0, Lqt7;->c:I

    rsub-int v3, v3, 0x2000

    int-to-long v3, v3

    .line 4
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 5
    iget-object p2, p0, Lht7;->h:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object p2, p0, Lht7;->g:Lat7;

    invoke-interface {p2}, Lat7;->J()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object p2, p0, Lht7;->g:Lat7;

    invoke-interface {p2}, Lat7;->h()Lxs7;

    move-result-object p2

    iget-object p2, p2, Lxs7;->e:Lqt7;

    invoke-static {p2}, Lim7;->c(Ljava/lang/Object;)V

    .line 8
    iget v3, p2, Lqt7;->c:I

    iget v4, p2, Lqt7;->b:I

    sub-int/2addr v3, v4

    iput v3, p0, Lht7;->e:I

    .line 9
    iget-object v5, p0, Lht7;->h:Ljava/util/zip/Inflater;

    iget-object p2, p2, Lqt7;->a:[B

    invoke-virtual {v5, p2, v4, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 10
    :goto_1
    iget-object p2, p0, Lht7;->h:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lqt7;->a:[B

    iget v4, v0, Lqt7;->c:I

    invoke-virtual {p2, v3, v4, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p2

    .line 11
    iget p3, p0, Lht7;->e:I

    if-nez p3, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget-object v3, p0, Lht7;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    sub-int/2addr p3, v3

    .line 13
    iget v3, p0, Lht7;->e:I

    sub-int/2addr v3, p3

    iput v3, p0, Lht7;->e:I

    .line 14
    iget-object v3, p0, Lht7;->g:Lat7;

    int-to-long v4, p3

    invoke-interface {v3, v4, v5}, Lat7;->skip(J)V

    :goto_2
    if-lez p2, :cond_5

    .line 15
    iget p3, v0, Lqt7;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Lqt7;->c:I

    .line 16
    iget-wide v0, p1, Lxs7;->f:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 17
    iput-wide v0, p1, Lxs7;->f:J

    return-wide p2

    .line 18
    :cond_5
    iget p2, v0, Lqt7;->b:I

    iget p3, v0, Lqt7;->c:I

    if-ne p2, p3, :cond_6

    .line 19
    invoke-virtual {v0}, Lqt7;->a()Lqt7;

    move-result-object p2

    iput-object p2, p1, Lxs7;->e:Lqt7;

    .line 20
    invoke-static {v0}, Lrt7;->a(Lqt7;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-wide v1

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 22
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const-string p1, "byteCount < 0: "

    .line 23
    invoke-static {p1, p2, p3}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lht7;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lht7;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lht7;->f:Z

    .line 4
    iget-object v0, p0, Lht7;->g:Lat7;

    invoke-interface {v0}, Lvt7;->close()V

    return-void
.end method

.method public read(Lxs7;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lht7;->a(Lxs7;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lht7;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lht7;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lht7;->g:Lat7;

    invoke-interface {v0}, Lat7;->J()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public timeout()Lwt7;
    .locals 1

    .line 1
    iget-object v0, p0, Lht7;->g:Lat7;

    invoke-interface {v0}, Lvt7;->timeout()Lwt7;

    move-result-object v0

    return-object v0
.end method
