.class public final Luw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ljava/net/URL;

.field public final f:[B

.field public final g:Lsw4;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic j:Lvw4;


# direct methods
.method public constructor <init>(Lvw4;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lsw4;)V
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
            "Lsw4;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Luw4;->j:Lvw4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iput-object p3, p0, Luw4;->e:Ljava/net/URL;

    iput-object p4, p0, Luw4;->f:[B

    iput-object p6, p0, Luw4;->g:Lsw4;

    iput-object p2, p0, Luw4;->h:Ljava/lang/String;

    iput-object p5, p0, Luw4;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v1, p0, Luw4;->j:Lvw4;

    .line 1
    invoke-virtual {v1}, Lly4;->c()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Luw4;->j:Lvw4;

    iget-object v4, p0, Luw4;->e:Ljava/net/URL;

    .line 2
    invoke-virtual {v3, v4}, Lvw4;->k(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v4, p0, Luw4;->i:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Luw4;->f:[B

    if-eqz v4, :cond_1

    iget-object v4, p0, Luw4;->j:Lvw4;

    iget-object v4, v4, Lb25;->b:Lj25;

    .line 5
    invoke-virtual {v4}, Lj25;->Q()Ll25;

    move-result-object v4

    iget-object v5, p0, Luw4;->f:[B

    .line 6
    invoke-virtual {v4, v5}, Ll25;->F([B)[B

    move-result-object v4

    iget-object v5, p0, Luw4;->j:Lvw4;

    iget-object v5, v5, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v5}, Lrx4;->a()Lqw4;

    move-result-object v5

    .line 8
    iget-object v5, v5, Lqw4;->n:Low4;

    .line 9
    array-length v6, v4

    const-string v7, "Uploading data. size"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    .line 10
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v7, "gzip"

    .line 11
    invoke-virtual {v3, v5, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 13
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 14
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 15
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 16
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v11, v2

    move-object v2, v5

    goto/16 :goto_6

    :catch_0
    move-exception v4

    move-object v11, v2

    move-object v9, v4

    move-object v2, v5

    goto/16 :goto_a

    .line 17
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 18
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 19
    :try_start_5
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v6, 0x400

    :try_start_6
    new-array v6, v6, [B

    .line 21
    :goto_2
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_2

    .line 22
    invoke-virtual {v4, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 23
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 24
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 25
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Luw4;->j:Lvw4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 26
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Ltw4;

    iget-object v6, p0, Luw4;->h:Ljava/lang/String;

    iget-object v7, p0, Luw4;->g:Lsw4;

    const/4 v9, 0x0

    move-object v5, v1

    .line 27
    invoke-direct/range {v5 .. v11}, Ltw4;-><init>(Ljava/lang/String;Lsw4;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 28
    :goto_3
    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v5, v2

    :goto_4
    if-eqz v5, :cond_3

    .line 29
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 30
    :cond_3
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v1

    move-object v4, v1

    goto :goto_7

    :catch_1
    move-exception v1

    move-object v4, v1

    goto :goto_5

    :catchall_4
    move-exception v4

    move-object v11, v2

    goto :goto_7

    :catch_2
    move-exception v4

    move-object v11, v2

    :goto_5
    move-object v9, v4

    goto :goto_b

    :catchall_5
    move-exception v4

    move-object v11, v2

    goto :goto_6

    :catch_3
    move-exception v4

    move-object v11, v2

    goto :goto_9

    :catchall_6
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v11, v3

    :goto_6
    const/4 v8, 0x0

    :goto_7
    if-eqz v2, :cond_4

    .line 31
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception v1

    .line 32
    iget-object v2, p0, Luw4;->j:Lvw4;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 33
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 34
    iget-object v2, v2, Lqw4;->f:Low4;

    .line 35
    iget-object v5, p0, Luw4;->h:Ljava/lang/String;

    invoke-static {v5}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 36
    invoke-virtual {v2, v0, v5, v1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_8
    if-eqz v3, :cond_5

    .line 37
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    iget-object v0, p0, Luw4;->j:Lvw4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 38
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Ltw4;

    iget-object v6, p0, Luw4;->h:Ljava/lang/String;

    iget-object v7, p0, Luw4;->g:Lsw4;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    .line 39
    invoke-direct/range {v5 .. v11}, Ltw4;-><init>(Ljava/lang/String;Lsw4;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 40
    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    .line 41
    throw v4

    :catch_5
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v11, v3

    :goto_9
    move-object v9, v4

    :goto_a
    const/4 v8, 0x0

    :goto_b
    if-eqz v2, :cond_6

    .line 42
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_c

    :catch_6
    move-exception v1

    .line 43
    iget-object v2, p0, Luw4;->j:Lvw4;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 44
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 45
    iget-object v2, v2, Lqw4;->f:Low4;

    .line 46
    iget-object v4, p0, Luw4;->h:Ljava/lang/String;

    invoke-static {v4}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 47
    invoke-virtual {v2, v0, v4, v1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_c
    if-eqz v3, :cond_7

    .line 48
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    iget-object v0, p0, Luw4;->j:Lvw4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 49
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Ltw4;

    iget-object v6, p0, Luw4;->h:Ljava/lang/String;

    iget-object v7, p0, Luw4;->g:Lsw4;

    const/4 v10, 0x0

    move-object v5, v1

    .line 50
    invoke-direct/range {v5 .. v11}, Ltw4;-><init>(Ljava/lang/String;Lsw4;ILjava/lang/Throwable;[BLjava/util/Map;)V

    goto/16 :goto_3
.end method
