.class public final Lwz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ljava/net/URL;

.field public final f:Ljava/lang/String;

.field public final synthetic g:Lxz4;

.field public final h:Lpx4;


# direct methods
.method public constructor <init>(Lxz4;Ljava/lang/String;Ljava/net/URL;Lpx4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lpx4;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lwz4;->g:Lxz4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "null reference"

    .line 2
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lwz4;->e:Ljava/net/URL;

    iput-object p4, p0, Lwz4;->h:Lpx4;

    iput-object p2, p0, Lwz4;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lwz4;->g:Lxz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v7, Lvz4;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lvz4;-><init>(Lwz4;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 3
    invoke-virtual {v0, v7}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 9

    iget-object v0, p0, Lwz4;->g:Lxz4;

    .line 1
    invoke-virtual {v0}, Lly4;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lwz4;->g:Lxz4;

    iget-object v3, p0, Lwz4;->e:Ljava/net/URL;

    .line 2
    invoke-virtual {v2, v3}, Lxz4;->n(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 3
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 4
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 5
    :try_start_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v7, 0x400

    :try_start_4
    new-array v7, v7, [B

    .line 7
    :goto_0
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_0

    .line 8
    invoke-virtual {v5, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 12
    invoke-virtual {p0, v3, v1, v0, v4}, Lwz4;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_1

    .line 13
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 14
    :cond_1
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v1

    goto :goto_3

    :catchall_4
    move-exception v3

    move-object v4, v1

    move-object v0, v3

    const/4 v3, 0x0

    goto :goto_2

    :catch_2
    move-exception v3

    move-object v4, v1

    move-object v0, v3

    const/4 v3, 0x0

    goto :goto_3

    :catchall_5
    move-exception v2

    move-object v4, v1

    move-object v0, v2

    const/4 v3, 0x0

    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 16
    :cond_2
    invoke-virtual {p0, v3, v1, v1, v4}, Lwz4;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 17
    throw v0

    :catch_3
    move-exception v2

    move-object v4, v1

    move-object v0, v2

    const/4 v3, 0x0

    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 19
    :cond_3
    invoke-virtual {p0, v3, v0, v1, v4}, Lwz4;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
