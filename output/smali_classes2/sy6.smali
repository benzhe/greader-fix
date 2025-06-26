.class public final Lsy6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/net/URL;

.field public b:Ljava/net/URL;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lsy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p4, p5, 0x2

    if-eqz p4, :cond_0

    const-string p2, "UTF-8"

    :cond_0
    and-int/lit8 p4, p5, 0x4

    if-eqz p4, :cond_1

    const-string p3, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    :cond_1
    and-int/lit8 p4, p5, 0x8

    const-string p4, "url"

    .line 1
    invoke-static {p1, p4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsy6;->d:Ljava/lang/String;

    iput-object p2, p0, Lsy6;->e:Ljava/lang/String;

    iput-object p3, p0, Lsy6;->f:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lsy6;->g:Lokhttp3/OkHttpClient;

    .line 3
    new-instance p3, Ljava/net/URL;

    const-string p4, "str"

    .line 4
    invoke-static {p1, p4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 5
    :try_start_0
    invoke-static {p1}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "\\"

    const-string v0, "%5C"

    const/4 v1, 0x4

    .line 6
    invoke-static {p1, p5, v0, p4, v1}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p5, "<"

    const-string v0, "%3C"

    .line 7
    invoke-static {p1, p5, v0, p4, v1}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p5, ">"

    const-string v0, "%3E"

    invoke-static {p1, p5, v0, p4, v1}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p5, "["

    const-string v0, "%5B"

    .line 8
    invoke-static {p1, p5, v0, p4, v1}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p5, "]"

    const-string v0, "%5D"

    invoke-static {p1, p5, v0, p4, v1}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p5, "{"

    const-string v0, "%7B"

    .line 9
    invoke-static {p1, p5, v0, p4, v1}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p5, "}"

    const-string v0, "%7D"

    invoke-static {p1, p5, v0, p4, v1}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p5, "`"

    const-string v0, "%60"

    .line 10
    invoke-static {p1, p5, v0, p4, v1}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p5, " "

    const-string v0, "%20"

    .line 11
    invoke-static {p1, p5, v0, p4, v1}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    const-string p5, "|"

    const-string v0, "%7C"

    .line 12
    invoke-static {p1, p5, v0, p4, v1}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, p2

    .line 14
    :goto_0
    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lsy6;->a:Ljava/net/URL;

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lsy6;->c:Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lsy6;->g:Lokhttp3/OkHttpClient;

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x4e20

    .line 17
    new-instance p5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    int-to-long v0, p1

    .line 18
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p5, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p5

    .line 19
    invoke-virtual {p5, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p5

    .line 20
    invoke-virtual {p5, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 24
    :goto_1
    new-instance p5, Lokhttp3/Request$Builder;

    invoke-direct {p5}, Lokhttp3/Request$Builder;-><init>()V

    .line 25
    iget-object v0, p0, Lsy6;->d:Ljava/lang/String;

    invoke-virtual {p5, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 26
    iget-object v0, p0, Lsy6;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "User-Agent"

    .line 27
    invoke-virtual {p5, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 28
    :cond_3
    invoke-virtual {p5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p5

    .line 29
    :try_start_1
    invoke-virtual {p1, p5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p5

    invoke-interface {p5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p5

    .line 30
    invoke-virtual {p5}, Lokhttp3/Response;->isRedirect()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    const-string v0, "Location"

    .line 31
    invoke-static {p5, v0, p2, v1, p2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    .line 32
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lsy6;->b:Ljava/net/URL;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :catch_1
    :cond_4
    :try_start_3
    invoke-virtual {p5}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    invoke-virtual {p5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, p2

    :goto_2
    if-eqz v2, :cond_6

    const-string v3, "text/"

    .line 36
    invoke-static {v2, v3, p4, v1}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "application/json"

    .line 37
    invoke-static {v2, v3, p4, v1}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "application/xhtml"

    .line 38
    invoke-static {v2, v3, p4, v1}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_4

    .line 39
    :cond_6
    iget-object p4, p0, Lsy6;->e:Ljava/lang/String;

    if-nez p4, :cond_8

    .line 40
    invoke-virtual {p5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p5

    if-eqz p5, :cond_7

    invoke-virtual {p5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p5

    if-eqz p5, :cond_7

    invoke-static {p5, p2, p3, p2}, Lokhttp3/MediaType;->charset$default(Lokhttp3/MediaType;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object p3

    goto :goto_3

    :cond_7
    move-object p3, p2

    :goto_3
    if-eqz p3, :cond_8

    .line 41
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :cond_8
    :try_start_4
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    .line 43
    invoke-static {p2, p4}, Ln56;->D(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "StreamUtils.convertStrea\u2026putStream, streamCharset)"

    invoke-static {p3, p4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lsy6;->c:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_a

    .line 44
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p3

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_9
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 45
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ConnectionPool;->evictAll()V

    return-void

    .line 46
    :cond_b
    :try_start_6
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lokhttp3/Response;->code()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " SC_BAD_REQUEST: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lsy6;->d:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p2

    .line 47
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ConnectionPool;->evictAll()V

    throw p2
.end method


# virtual methods
.method public final a()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lsy6;->b:Ljava/net/URL;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsy6;->a:Ljava/net/URL;

    :goto_0
    return-object v0
.end method
