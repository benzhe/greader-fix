.class public abstract Lpa3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld91;


# static fields
.field public static l:Lva3;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Ljava/nio/ByteBuffer;

.field public i:J

.field public j:J

.field public k:Lov0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lpa3;

    invoke-static {v0}, Lva3;->b(Ljava/lang/Class;)Lva3;

    move-result-object v0

    sput-object v0, Lpa3;->l:Lva3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lpa3;->j:J

    .line 3
    iput-object p1, p0, Lpa3;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lpa3;->g:Z

    .line 5
    iput-boolean p1, p0, Lpa3;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Lov0;Ljava/nio/ByteBuffer;JLf41;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lov0;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lpa3;->i:J

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 3
    iput-wide p3, p0, Lpa3;->j:J

    .line 4
    iput-object p1, p0, Lpa3;->k:Lov0;

    .line 5
    invoke-virtual {p1}, Lov0;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Lov0;->b(J)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lpa3;->g:Z

    .line 7
    iput-boolean p1, p0, Lpa3;->f:Z

    .line 8
    invoke-virtual {p0}, Lpa3;->d()V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpa3;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 2
    :try_start_1
    sget-object v0, Lpa3;->l:Lva3;

    const-string v1, "mem mapping "

    .line 3
    iget-object v2, p0, Lpa3;->e:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lva3;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lpa3;->k:Lov0;

    iget-wide v1, p0, Lpa3;->i:J

    iget-wide v3, p0, Lpa3;->j:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lov0;->c(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lpa3;->h:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 6
    :try_start_2
    iput-boolean v0, p0, Lpa3;->g:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lc81;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lpa3;->b()V

    .line 2
    sget-object v0, Lpa3;->l:Lva3;

    const-string v1, "parsing details of "

    .line 3
    iget-object v2, p0, Lpa3;->e:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lva3;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lpa3;->h:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lpa3;->f:Z

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p0, v0}, Lpa3;->e(Ljava/nio/ByteBuffer;)V

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lpa3;->h:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract e(Ljava/nio/ByteBuffer;)V
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpa3;->e:Ljava/lang/String;

    return-object v0
.end method
