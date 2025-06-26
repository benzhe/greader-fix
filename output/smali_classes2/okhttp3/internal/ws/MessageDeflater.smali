.class public final Lokhttp3/internal/ws/MessageDeflater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final deflatedBytes:Lxs7;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lct7;

.field private final noContextTakeover:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/ws/MessageDeflater;->noContextTakeover:Z

    .line 2
    new-instance p1, Lxs7;

    invoke-direct {p1}, Lxs7;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lxs7;

    .line 3
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflater:Ljava/util/zip/Deflater;

    .line 4
    new-instance v1, Lct7;

    invoke-direct {v1, p1, v0}, Lct7;-><init>(Ltt7;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Lct7;

    return-void
.end method

.method private final endsWith(Lxs7;Lbt7;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Lxs7;->f:J

    .line 2
    invoke-virtual {p2}, Lbt7;->t()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 3
    invoke-virtual {p1, v0, v1, p2}, Lxs7;->U(JLbt7;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Lct7;

    invoke-virtual {v0}, Lct7;->close()V

    return-void
.end method

.method public final deflate(Lxs7;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lxs7;

    .line 2
    iget-wide v0, v0, Lxs7;->f:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-boolean v0, p0, Lokhttp3/internal/ws/MessageDeflater;->noContextTakeover:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 5
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Lct7;

    .line 6
    iget-wide v1, p1, Lxs7;->f:J

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Lct7;->write(Lxs7;J)V

    .line 8
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Lct7;

    invoke-virtual {v0}, Lct7;->flush()V

    .line 9
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lxs7;

    invoke-static {}, Lokhttp3/internal/ws/MessageDeflaterKt;->access$getEMPTY_DEFLATE_BLOCK$p()Lbt7;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/ws/MessageDeflater;->endsWith(Lxs7;Lbt7;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lxs7;

    .line 11
    iget-wide v1, v0, Lxs7;->f:J

    const/4 v3, 0x4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 12
    new-instance v3, Lxs7$a;

    invoke-direct {v3}, Lxs7$a;-><init>()V

    invoke-virtual {v0, v3}, Lxs7;->k(Lxs7$a;)Lxs7$a;

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v3, v1, v2}, Lxs7$a;->a(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v3, v0}, Ln56;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v3, p1}, Ln56;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lxs7;

    invoke-virtual {v0, v4}, Lxs7;->Q(I)Lxs7;

    .line 16
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Lxs7;

    .line 17
    iget-wide v1, v0, Lxs7;->f:J

    .line 18
    invoke-virtual {p1, v0, v1, v2}, Lxs7;->write(Lxs7;J)V

    return-void

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
