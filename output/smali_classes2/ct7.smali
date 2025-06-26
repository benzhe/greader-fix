.class public final Lct7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltt7;


# instance fields
.field public e:Z

.field public final f:Lzs7;

.field public final g:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Ltt7;Ljava/util/zip/Deflater;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deflater"

    invoke-static {p2, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ln56;->o(Ltt7;)Lzs7;

    move-result-object p1

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct7;->f:Lzs7;

    iput-object p2, p0, Lct7;->g:Ljava/util/zip/Deflater;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 7
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 1
    iget-object v0, p0, Lct7;->f:Lzs7;

    invoke-interface {v0}, Lzs7;->h()Lxs7;

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lxs7;->E(I)Lqt7;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 3
    iget-object v2, p0, Lct7;->g:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lqt7;->a:[B

    iget v4, v1, Lqt7;->c:I

    rsub-int v5, v4, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Lct7;->g:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lqt7;->a:[B

    iget v4, v1, Lqt7;->c:I

    rsub-int v5, v4, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_1
    if-lez v2, :cond_2

    .line 5
    iget v3, v1, Lqt7;->c:I

    add-int/2addr v3, v2

    iput v3, v1, Lqt7;->c:I

    .line 6
    iget-wide v3, v0, Lxs7;->f:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    .line 7
    iput-wide v3, v0, Lxs7;->f:J

    .line 8
    iget-object v1, p0, Lct7;->f:Lzs7;

    invoke-interface {v1}, Lzs7;->O()Lzs7;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lct7;->g:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget p1, v1, Lqt7;->b:I

    iget v2, v1, Lqt7;->c:I

    if-ne p1, v2, :cond_3

    .line 11
    invoke-virtual {v1}, Lqt7;->a()Lqt7;

    move-result-object p1

    iput-object p1, v0, Lxs7;->e:Lqt7;

    .line 12
    invoke-static {v1}, Lrt7;->a(Lqt7;)V

    :cond_3
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lct7;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lct7;->g:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Lct7;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    :goto_0
    :try_start_1
    iget-object v1, p0, Lct7;->g:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 5
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lct7;->f:Lzs7;

    invoke-interface {v1}, Ltt7;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lct7;->e:Z

    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lct7;->a(Z)V

    .line 2
    iget-object v0, p0, Lct7;->f:Lzs7;

    invoke-interface {v0}, Lzs7;->flush()V

    return-void
.end method

.method public timeout()Lwt7;
    .locals 1

    .line 1
    iget-object v0, p0, Lct7;->f:Lzs7;

    invoke-interface {v0}, Ltt7;->timeout()Lwt7;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DeflaterSink("

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct7;->f:Lzs7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lxs7;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p1, Lxs7;->f:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 2
    invoke-static/range {v1 .. v6}, Ln56;->u(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 3
    iget-object v0, p1, Lxs7;->e:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 4
    iget v1, v0, Lqt7;->c:I

    iget v2, v0, Lqt7;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 5
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 6
    iget-object v1, p0, Lct7;->g:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lqt7;->a:[B

    iget v4, v0, Lqt7;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Lct7;->a(Z)V

    .line 8
    iget-wide v3, p1, Lxs7;->f:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    .line 9
    iput-wide v3, p1, Lxs7;->f:J

    .line 10
    iget v1, v0, Lqt7;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lqt7;->b:I

    .line 11
    iget v2, v0, Lqt7;->c:I

    if-ne v1, v2, :cond_0

    .line 12
    invoke-virtual {v0}, Lqt7;->a()Lqt7;

    move-result-object v1

    iput-object v1, p1, Lxs7;->e:Lqt7;

    .line 13
    invoke-static {v0}, Lrt7;->a(Lqt7;)V

    :cond_0
    sub-long/2addr p2, v5

    goto :goto_0

    :cond_1
    return-void
.end method
