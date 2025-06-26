.class public final Lokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache2/Relay$RelaySource;,
        Lokhttp3/internal/cache2/Relay$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/cache2/Relay$Companion;

.field private static final FILE_HEADER_SIZE:J = 0x20L

.field public static final PREFIX_CLEAN:Lbt7;

.field public static final PREFIX_DIRTY:Lbt7;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field private final buffer:Lxs7;

.field private final bufferMaxSize:J

.field private complete:Z

.field private file:Ljava/io/RandomAccessFile;

.field private final metadata:Lbt7;

.field private sourceCount:I

.field private upstream:Lvt7;

.field private final upstreamBuffer:Lxs7;

.field private upstreamPos:J

.field private upstreamReader:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/cache2/Relay$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/Relay$Companion;-><init>(Lgm7;)V

    sput-object v0, Lokhttp3/internal/cache2/Relay;->Companion:Lokhttp3/internal/cache2/Relay$Companion;

    .line 1
    sget-object v0, Lbt7;->i:Lbt7$a;

    const-string v1, "OkHttp cache v1\n"

    invoke-virtual {v0, v1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lbt7;

    const-string v1, "OkHttp DIRTY :(\n"

    .line 2
    invoke-virtual {v0, v1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lbt7;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lvt7;JLbt7;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lvt7;

    iput-wide p3, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    iput-object p5, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lbt7;

    iput-wide p6, p0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    .line 2
    new-instance p1, Lxs7;

    invoke-direct {p1}, Lxs7;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lxs7;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 4
    new-instance p1, Lxs7;

    invoke-direct {p1}, Lxs7;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->buffer:Lxs7;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/RandomAccessFile;Lvt7;JLbt7;JLgm7;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p7}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lvt7;JLbt7;J)V

    return-void
.end method

.method public static final synthetic access$writeHeader(Lokhttp3/internal/cache2/Relay;Lbt7;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lbt7;JJ)V

    return-void
.end method

.method private final writeHeader(Lbt7;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v3, Lxs7;

    invoke-direct {v3}, Lxs7;-><init>()V

    .line 2
    invoke-virtual {v3, p1}, Lxs7;->F(Lbt7;)Lxs7;

    .line 3
    invoke-virtual {v3, p2, p3}, Lxs7;->g0(J)Lxs7;

    .line 4
    invoke-virtual {v3, p4, p5}, Lxs7;->g0(J)Lxs7;

    .line 5
    iget-wide p1, v3, Lxs7;->f:J

    const-wide/16 p3, 0x20

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lim7;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const-string p2, "file!!.channel"

    invoke-static {p1, p2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x20

    .line 7
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->write(JLxs7;J)V

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeMetadata(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v3, Lxs7;

    invoke-direct {v3}, Lxs7;-><init>()V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lbt7;

    invoke-virtual {v3, v0}, Lxs7;->F(Lbt7;)Lxs7;

    .line 3
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-static {v1}, Lim7;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-string v2, "file!!.channel"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long/2addr v1, p1

    .line 4
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lbt7;

    .line 5
    invoke-virtual {p1}, Lbt7;->t()I

    move-result p1

    int-to-long v4, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->write(JLxs7;J)V

    return-void
.end method


# virtual methods
.method public final commit(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache2/Relay;->writeMetadata(J)V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 3
    sget-object v3, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lbt7;

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lbt7;

    .line 4
    invoke-virtual {v0}, Lbt7;->t()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    .line 5
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lbt7;JJ)V

    .line 6
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lim7;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 7
    monitor-enter p0

    const/4 p1, 0x1

    .line 8
    :try_start_0
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    .line 10
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lvt7;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lvt7;

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    throw p1
.end method

.method public final getBuffer()Lxs7;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->buffer:Lxs7;

    return-object v0
.end method

.method public final getBufferMaxSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    return-wide v0
.end method

.method public final getComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    return v0
.end method

.method public final getFile()Ljava/io/RandomAccessFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public final getSourceCount()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    return v0
.end method

.method public final getUpstream()Lvt7;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lvt7;

    return-object v0
.end method

.method public final getUpstreamBuffer()Lxs7;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lxs7;

    return-object v0
.end method

.method public final getUpstreamPos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    return-wide v0
.end method

.method public final getUpstreamReader()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final metadata()Lbt7;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lbt7;

    return-object v0
.end method

.method public final newSource()Lvt7;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    iget v0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    new-instance v0, Lokhttp3/internal/cache2/Relay$RelaySource;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache2/Relay$RelaySource;-><init>(Lokhttp3/internal/cache2/Relay;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0

    throw v0
.end method

.method public final setComplete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    return-void
.end method

.method public final setFile(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public final setSourceCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    return-void
.end method

.method public final setUpstream(Lvt7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lvt7;

    return-void
.end method

.method public final setUpstreamPos(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    return-void
.end method

.method public final setUpstreamReader(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    return-void
.end method
