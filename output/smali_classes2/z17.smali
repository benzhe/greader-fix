.class public final Lz17;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final e:Ljava/io/InputStream;

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Z

.field public k:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lz17;->i:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lz17;->j:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lz17;->k:I

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 7
    :cond_0
    iput-object p1, p0, Lz17;->e:Ljava/io/InputStream;

    const/16 p1, 0x400

    .line 8
    iput p1, p0, Lz17;->k:I

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lz17;->f:J

    iget-wide v2, p0, Lz17;->h:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lz17;->g:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 3
    iget-wide v0, p0, Lz17;->g:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lz17;->c(JJ)V

    .line 4
    iput-wide p1, p0, Lz17;->f:J

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot reset"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final b(J)V
    .locals 5

    .line 1
    :try_start_0
    iget-wide v0, p0, Lz17;->g:J

    iget-wide v2, p0, Lz17;->f:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p0, Lz17;->h:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    .line 2
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 3
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    iget-wide v1, p0, Lz17;->g:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 4
    iget-wide v0, p0, Lz17;->g:J

    iget-wide v2, p0, Lz17;->f:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lz17;->c(JJ)V

    goto :goto_0

    .line 5
    :cond_0
    iput-wide v2, p0, Lz17;->g:J

    .line 6
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    sub-long v1, p1, v2

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 7
    :goto_0
    iput-wide p1, p0, Lz17;->h:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to mark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final c(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    .line 1
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    invoke-virtual {p0}, Lz17;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x1

    :cond_1
    add-long/2addr p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lz17;->f:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lz17;->h:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    .line 3
    invoke-virtual {p0, v0, v1}, Lz17;->b(J)V

    .line 4
    :cond_0
    iget-wide v0, p0, Lz17;->f:J

    .line 5
    iput-wide v0, p0, Lz17;->i:J

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lz17;->j:Z

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    iget-wide v3, p0, Lz17;->f:J

    add-long/2addr v3, v1

    iget-wide v5, p0, Lz17;->h:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 2
    iget v0, p0, Lz17;->k:I

    int-to-long v3, v0

    add-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lz17;->b(J)V

    .line 3
    :cond_0
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 4
    iget-wide v3, p0, Lz17;->f:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lz17;->f:J

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lz17;->j:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lz17;->f:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lz17;->h:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 6
    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lz17;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lz17;->b(J)V

    .line 7
    :cond_0
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 8
    iget-wide v0, p0, Lz17;->f:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lz17;->f:J

    :cond_1
    return p1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-boolean v0, p0, Lz17;->j:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lz17;->f:J

    int-to-long v2, p3

    add-long v4, v0, v2

    iget-wide v6, p0, Lz17;->h:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    add-long/2addr v0, v2

    .line 10
    iget v2, p0, Lz17;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lz17;->b(J)V

    .line 11
    :cond_0
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 12
    iget-wide p2, p0, Lz17;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lz17;->f:J

    :cond_1
    return p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lz17;->i:J

    invoke-virtual {p0, v0, v1}, Lz17;->a(J)V

    return-void
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lz17;->j:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lz17;->f:J

    add-long v2, v0, p1

    iget-wide v4, p0, Lz17;->h:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    add-long/2addr v0, p1

    .line 2
    iget v2, p0, Lz17;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lz17;->b(J)V

    .line 3
    :cond_0
    iget-object v0, p0, Lz17;->e:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 4
    iget-wide v0, p0, Lz17;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lz17;->f:J

    return-wide p1
.end method
