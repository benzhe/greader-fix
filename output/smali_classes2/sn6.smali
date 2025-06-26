.class public Lsn6;
.super Lrn6;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrn6;-><init>(Landroid/content/Context;)V

    const p1, 0x9c40

    .line 2
    invoke-static {p1}, Ln56;->M(I)Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lrn6;->mClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static h([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    aget-object v3, p0, v1

    invoke-static {v3}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "&amp;"

    const-string v1, "&"

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&#39;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lsn6;->i()Ljava/lang/String;

    .line 2
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "OAuth "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsn6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    .line 4
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lrn6;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_3

    const/16 v2, 0x191

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 9
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_0
    new-instance p1, Lgw6;

    const-string v0, "null response body"

    invoke-direct {p1, v0}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance v0, Lgw6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid http status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    new-instance v0, Lgw6$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication fails ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance p1, Lgw6$b;

    const-string v0, "Login failure"

    invoke-direct {p1, v0}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lsn6;->i()Ljava/lang/String;

    .line 2
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 4
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Content-Type"

    .line 5
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "OAuth "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsn6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    .line 6
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lrn6;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_4

    const/16 v2, 0x191

    if-eq v1, v2, :cond_3

    const/16 v2, 0x190

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 10
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    new-instance v0, Lsn6$a;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lsn6$a;-><init>(Lsn6;Ljava/io/InputStream;)V

    return-object v0

    .line 12
    :cond_0
    new-instance p1, Lgw6;

    const-string v0, "null response body"

    invoke-direct {p1, v0}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance v0, Lgw6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid http status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Lgw6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_3
    new-instance v0, Lgw6$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication fails ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    new-instance p1, Lgw6$b;

    const-string v0, "Login failure"

    invoke-direct {p1, v0}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lsn6;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lsn6;->e(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public disableTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string p2, "user"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "/category/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "https://feedly.com/v3/categories/"

    .line 2
    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsn6;->a(Ljava/lang/String;)Z

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "/tag/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "https://feedly.com/v3/tags/"

    .line 4
    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsn6;->a(Ljava/lang/String;)Z

    return v1

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableTag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FeedlyClient"

    .line 6
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public e(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2
    invoke-virtual {p0}, Lsn6;->i()Ljava/lang/String;

    const-string v0, "application/json; charset=utf-8"

    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    .line 4
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 5
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "OAuth "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsn6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    .line 6
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 7
    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lgw6;

    const-string p2, "no http action"

    invoke-direct {p1, p2}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 10
    :goto_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 11
    iget-object p3, p0, Lrn6;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p3, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p3

    const/16 v0, 0x193

    if-eq p3, v0, :cond_5

    const/16 v0, 0x191

    if-eq p3, v0, :cond_4

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_3

    .line 13
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    const/4 p1, 0x1

    return p1

    .line 15
    :cond_2
    new-instance p1, Lgw6;

    const-string p2, "null response body"

    invoke-direct {p1, p2}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Lgw6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid http status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Lgw6$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authentication fails ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "): "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    new-instance p1, Lgw6$b;

    const-string p2, "Login failure"

    invoke-direct {p1, p2}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6
    new-instance p1, Lgw6;

    const-string p2, "no data content"

    invoke-direct {p1, p2}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    const-string v2, "entryIds"

    const-string v3, "connection error"

    const-string v4, "https://feedly.com/v3/tags/"

    const-string v5, ","

    if-eq p4, v0, :cond_5

    const/4 v6, 0x2

    const-string v7, "/"

    if-eq p4, v6, :cond_4

    const/4 v4, 0x3

    if-eq p4, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p3, :cond_7

    .line 1
    array-length p4, p3

    if-lez p4, :cond_7

    .line 2
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 4
    array-length v6, p1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, p1, v8

    .line 5
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p4, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "https://feedly.com/v3/tags"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_1
    array-length v2, p3

    if-ge p2, v2, :cond_3

    if-lez p2, :cond_2

    move-object v2, v5

    goto :goto_2

    :cond_2
    const-string v2, ""

    .line 9
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, p2

    invoke-virtual {p0, v2}, Lsn6;->getTagUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p0, v1, p1, p2}, Lsn6;->e(ILjava/lang/String;Ljava/lang/String;)Z

    return v0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 13
    new-instance p2, Lgw6;

    invoke-direct {p2, v3, p1}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    if-eqz p3, :cond_7

    .line 14
    array-length p4, p3

    if-lez p4, :cond_7

    .line 15
    invoke-static {v4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, v5}, Lsn6;->h([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v5}, Lsn6;->h([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsn6;->a(Ljava/lang/String;)Z

    return v0

    :cond_5
    if-eqz p3, :cond_7

    .line 16
    array-length p4, p3

    if-lez p4, :cond_7

    .line 17
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 18
    :try_start_1
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 19
    array-length v7, p1

    :goto_3
    if-ge p2, v7, :cond_6

    aget-object v8, p1, p2

    .line 20
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 21
    :cond_6
    invoke-virtual {p4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    invoke-static {v4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3, v5}, Lsn6;->h([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p0, v1, p1, p2}, Lsn6;->e(ILjava/lang/String;Ljava/lang/String;)Z

    return v0

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 25
    new-instance p2, Lgw6;

    invoke-direct {p2, v3, p1}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_7
    :goto_4
    return p2
.end method

.method public editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string v0, "https://feedly.com/v3/subscriptions"

    const-string v1, "title"

    const-string v2, "id"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p5, v4, :cond_8

    const/4 v6, 0x2

    if-eq p5, v6, :cond_5

    if-eq p5, v3, :cond_4

    const/4 p3, 0x4

    if-eq p5, p3, :cond_2

    const/4 p3, 0x5

    if-eq p5, p3, :cond_0

    goto :goto_1

    :cond_0
    const-string p3, "https://feedly.com/v3/categories"

    .line 1
    invoke-virtual {p0, p3}, Lsn6;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    .line 2
    invoke-static {p3}, Ln56;->C(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p5

    .line 3
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    if-nez p4, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    .line 4
    :cond_1
    array-length p3, p4

    .line 5
    :goto_0
    :try_start_0
    new-instance p4, Lorg/json/JSONArray;

    invoke-direct {p4, p5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-ne p4, p3, :cond_3

    new-array p3, v5, [Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lsn6;->r(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Lsn6;->r(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_3
    :goto_1
    return v5

    :cond_4
    const-string p2, "https://feedly.com/v3/subscriptions/"

    .line 10
    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsn6;->a(Ljava/lang/String;)Z

    return v4

    .line 11
    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    new-instance p5, Lorg/json/JSONArray;

    invoke-direct {p5}, Lorg/json/JSONArray;-><init>()V

    .line 13
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "feed/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_7

    .line 15
    array-length p2, p4

    if-lez p2, :cond_7

    .line 16
    array-length p2, p4

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_6

    aget-object v1, p4, p3

    .line 17
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 18
    invoke-virtual {p0, v1}, Lsn6;->getCategoryUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "label"

    .line 19
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p5, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_6
    const-string p2, "categories"

    .line 21
    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    :cond_7
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p0, v3, v0, p1}, Lsn6;->e(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v4, 0x0

    :goto_3
    return v4

    .line 25
    :cond_8
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 26
    :try_start_2
    invoke-virtual {p3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {p3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "updated"

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {p3, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 29
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p0, v3, v0, p1}, Lsn6;->e(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :catch_2
    move-exception p1

    .line 31
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v4, 0x0

    :goto_4
    return v4
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string v0, "user/-/category/global.all"

    const-string v1, "-"

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "state/starred"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lsn6;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "user/-/tag/global.saved"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string v0, "user/-/tag/global.read"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object p1, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lsn6;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lsn6;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    sget v0, Lcn6;->b:I

    const-string v0, "user_id"

    .line 2
    invoke-static {p1, v0}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type"

    invoke-static {p1, v3, v1, v2}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, v1, Llp6;->f:Ljava/lang/String;

    const/4 v2, 0x5

    const-string v3, "/tag"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p1, v0, v1}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "id"

    .line 7
    invoke-virtual {p0}, Lsn6;->i()Ljava/lang/String;

    const-string v2, "https://feedly.com/v3/profile"

    .line 8
    invoke-virtual {p0, v2}, Lsn6;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Ln56;->C(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 9
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-static {p1, v0, v1}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    return-object v1

    .line 14
    :cond_4
    new-instance p1, Lgw6;

    const-string v0, "Login failure"

    invoke-direct {p1, v0}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCategoryUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string v0, "user/"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lsn6;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/category/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    const-string v0, "feedly"

    return-object v0
.end method

.method public getClientService()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getTagUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string v0, "user/"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lsn6;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tag/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleItemIdList(Lrn6$a;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lrn6$a;->f()[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v1, p2

    if-lez v1, :cond_2

    aget-object p2, p2, v0

    .line 4
    invoke-virtual {p0, p2}, Lsn6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lsn6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    :cond_2
    :goto_1
    invoke-static {p3}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "https://feedly.com/v3/streams/-/ids"

    const-string v1, "-"

    invoke-virtual {p3, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "?ranked="

    .line 8
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lrn6$a;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "newest"

    goto :goto_2

    :cond_3
    const-string p2, "oldest"

    :goto_2
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p1}, Lrn6$a;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "&unreadOnly=true"

    .line 10
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string p2, "&unreadOnly=false"

    .line 11
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :goto_3
    invoke-interface {p1}, Lrn6$a;->c()I

    move-result p2

    if-lez p2, :cond_5

    const-string v1, "&count="

    .line 13
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    :cond_5
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsn6;->c(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p2

    .line 15
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lsn6;->m(Ljava/io/Reader;Lrn6$a;)I

    move-result p1
    :try_end_0
    .catch Lzo; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p2}, Ljava/io/Reader;->close()V

    if-lez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 18
    new-instance p3, Lgw6;

    const-string v0, "data parse error"

    invoke-direct {p3, v0, p1}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :goto_4
    invoke-virtual {p2}, Ljava/io/Reader;->close()V

    .line 20
    throw p1
.end method

.method public handleItemList(Lrn6$b;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lrn6$b;->b()J

    move-result-wide p2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, p3, p1, v0}, Lsn6;->q(JLrn6$b;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-interface {p1}, Lrn6$b;->g()Ljava/util/Set;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lsn6;->n(Ljava/io/Reader;Lrn6$b;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Lrn6$b;->c()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v3, :cond_1

    mul-int v6, v4, v5

    if-le v3, v6, :cond_2

    .line 6
    :cond_1
    invoke-interface {p1}, Lrn6$b;->f()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 8
    invoke-virtual {p0, p2, p3, p1, v2}, Lsn6;->q(JLrn6$b;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0, p1, v1}, Lsn6;->n(Ljava/io/Reader;Lrn6$b;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lzo; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    new-instance p2, Lgw6;

    const-string p3, "data parse error"

    invoke-direct {p2, p3, p1}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 14
    throw p1
.end method

.method public handleReaderList(Lrn6$d;Lrn6$c;Lrn6$e;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string p3, "data parse error"

    const-string p4, "https://feedly.com/v3/subscriptions"

    .line 1
    invoke-virtual {p0, p4}, Lsn6;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p4

    .line 2
    new-instance p5, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {p5, p4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, p5, p2, p1}, Lsn6;->o(Ljava/io/Reader;Lrn6$c;Lrn6$d;)V
    :try_end_0
    .catch Lzo; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-virtual {p5}, Ljava/io/Reader;->close()V

    const-string p2, "https://feedly.com/v3/tags"

    .line 5
    invoke-virtual {p0, p2}, Lsn6;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 6
    new-instance p4, Ljava/io/InputStreamReader;

    invoke-direct {p4, p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 7
    :try_start_1
    invoke-virtual {p0, p4, p1}, Lsn6;->p(Ljava/io/Reader;Lrn6$d;)V
    :try_end_1
    .catch Lzo; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {p4}, Ljava/io/Reader;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    new-instance p2, Lgw6;

    invoke-direct {p2, p3, p1}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :goto_0
    invoke-virtual {p4}, Ljava/io/Reader;->close()V

    .line 12
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    new-instance p2, Lgw6;

    invoke-direct {p2, p3, p1}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    :goto_1
    invoke-virtual {p5}, Ljava/io/Reader;->close()V

    .line 16
    throw p1
.end method

.method public final i()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrn6;->mContext:Landroid/content/Context;

    .line 2
    sget v1, Lcn6;->b:I

    const-string v1, "google_auth"

    .line 3
    invoke-static {v0, v1}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lsn6;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lrn6;->mContext:Landroid/content/Context;

    const-string v1, "google_auth_time"

    const-wide/16 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2, v3}, Liw6;->A(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lsn6;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xdb7b8

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 9
    iget-object v0, p0, Lsn6;->a:Ljava/lang/String;

    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lrn6;->mContext:Landroid/content/Context;

    const-string v1, "oauth2_token_refresh"

    .line 11
    invoke-static {v0, v1}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 12
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "refresh_token"

    .line 13
    invoke-virtual {v1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v3, "client_id"

    const-string v4, "greader"

    .line 14
    invoke-virtual {v1, v3, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v3, "client_secret"

    const-string v4, "1DFHBT3YNACQADNK9IZ0IOXG"

    .line 15
    invoke-virtual {v1, v3, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v3, "grant_type"

    .line 16
    invoke-virtual {v1, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    const-string v2, "https://feedly.com/v3/auth/token"

    .line 18
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 19
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 22
    iget-object v3, p0, Lrn6;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x193

    if-eq v3, v4, :cond_6

    const/16 v4, 0x191

    if-eq v3, v4, :cond_5

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    .line 24
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 25
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 26
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "access_token"

    .line 27
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 28
    iput-object v2, p0, Lsn6;->a:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lrn6;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v1, v2, v0, v3}, Lcn6;->i0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "FeedlyClient"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :goto_0
    iget-object v0, p0, Lsn6;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 33
    iget-object v1, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn6;->f0(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lsn6;->a:Ljava/lang/String;

    return-object v0

    .line 35
    :cond_2
    new-instance v0, Lgw6;

    const-string v1, "Login Failure"

    invoke-direct {v0, v1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_3
    new-instance v0, Lgw6;

    const-string v1, "null response body"

    invoke-direct {v0, v1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_4
    new-instance v0, Lgw6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid http status "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_5
    new-instance v0, Lgw6$b;

    const-string v1, "Authentication fails ("

    const-string v2, ")"

    invoke-static {v1, v3, v2}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_6
    new-instance v0, Lgw6$b;

    const-string v1, "Login failure"

    invoke-direct {v0, v1}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_7
    new-instance v0, Lgw6$b;

    const-string v1, "no login data"

    invoke-direct {v0, v1}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Ljava/lang/String;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "action"

    const-string v2, "markAsRead"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "categories"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asOf"

    const-wide/16 v2, 0x3e7

    add-long/2addr p2, v2

    .line 4
    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 5
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 6
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "categoryIds"

    .line 7
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const-string p3, "https://feedly.com/v3/markers"

    .line 9
    invoke-virtual {p0, p2, p3, p1}, Lsn6;->e(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public final k([Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "action"

    const-string v3, "markAsRead"

    .line 2
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "entries"

    .line 3
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 5
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    .line 6
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "entryIds"

    .line 7
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "https://feedly.com/v3/markers"

    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lsn6;->e(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v1
.end method

.method public final l([Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "action"

    const-string v3, "keepUnread"

    .line 2
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "entries"

    .line 3
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 5
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    .line 6
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "entryIds"

    .line 7
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "https://feedly.com/v3/markers"

    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lsn6;->e(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v1
.end method

.method public final m(Ljava/io/Reader;Lrn6$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lwo;

    invoke-direct {v0}, Lwo;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lwo;->a(Ljava/io/Reader;)Lap;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lap;->g()Lbp;

    .line 5
    :goto_0
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v1

    sget-object v2, Lbp;->m:Lbp;

    if-eq v1, v2, :cond_4

    .line 6
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v2, "ids"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    :goto_1
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v1

    sget-object v2, Lbp;->o:Lbp;

    if-eq v1, v2, :cond_2

    .line 10
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p2, v0}, Lrn6$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public markAllAsRead(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "user/-/category/global.all"

    .line 1
    invoke-virtual {p0, p1}, Lsn6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string p2, "user"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/category/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p3, p4}, Lsn6;->j(Ljava/lang/String;J)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "/tag/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0, p1, p3, p4}, Lsn6;->j(Ljava/lang/String;J)Z

    move-result p1

    return p1

    :cond_2
    const-string p2, "feed/"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 7
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "action"

    const-string v2, "markAsRead"

    .line 8
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "feeds"

    .line 9
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asOf"

    const-wide/16 v2, 0x3e7

    add-long/2addr p3, v2

    .line 10
    invoke-virtual {p2, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 12
    invoke-virtual {p3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "feedIds"

    .line 13
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const-string p3, "https://feedly.com/v3/markers"

    .line 15
    invoke-virtual {p0, p2, p3, p1}, Lsn6;->e(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return v0
.end method

.method public markAsRead(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 1
    invoke-virtual {p0, p2}, Lsn6;->k([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public markAsRead([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lsn6;->k([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public markAsUnread(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 1
    invoke-virtual {p0, p2}, Lsn6;->l([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public markAsUnread([Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lsn6;->l([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final n(Ljava/io/Reader;Lrn6$b;Ljava/util/Set;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lrn6$b;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;,
            Ljava/io/IOException;,
            Lgw6$a;
        }
    .end annotation

    .line 1
    new-instance v0, Lwo;

    invoke-direct {v0}, Lwo;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lwo;->a(Ljava/io/Reader;)Lap;

    move-result-object p1

    .line 3
    new-instance v0, Lcp6;

    invoke-direct {v0}, Lcp6;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Lap;->g()Lbp;

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 6
    :goto_0
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v5

    sget-object v6, Lbp;->m:Lbp;

    if-eq v5, v6, :cond_30

    .line 7
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v6, "continuation"

    .line 9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v6, "items"

    .line 11
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 12
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v5

    sget-object v6, Lbp;->o:Lbp;

    if-eq v5, v6, :cond_2e

    .line 13
    iget-boolean v5, p0, Lrn6;->mRequestStop:Z

    if-nez v5, :cond_2d

    .line 14
    move-object v5, p1

    check-cast v5, Lhp;

    .line 15
    iget-object v6, v5, Lhp;->f:Lbp;

    .line 16
    sget-object v7, Lbp;->l:Lbp;

    if-ne v6, v7, :cond_2

    .line 17
    new-instance v4, Lap6;

    invoke-direct {v4}, Lap6;-><init>()V

    goto :goto_2

    .line 18
    :cond_2
    sget-object v7, Lbp;->m:Lbp;

    if-ne v6, v7, :cond_5

    if-eqz v4, :cond_3

    .line 19
    iget-object v6, v4, Lap6;->f:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 20
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/lit16 v4, v4, 0xc8

    if-nez v4, :cond_4

    .line 22
    invoke-interface {p2, v1}, Lrn6$b;->a(Ljava/util/List;)V

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move-object v4, v2

    .line 24
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_6

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v7, "id"

    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 27
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsn6;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lap6;->f:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v8, "title"

    .line 28
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 29
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsn6;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lap6;->h:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v8, "unread"

    .line 30
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_b

    .line 31
    iget-object v5, v5, Lhp;->f:Lbp;

    .line 32
    sget-object v6, Lbp;->u:Lbp;

    if-ne v5, v6, :cond_9

    const/4 v9, 0x1

    goto :goto_3

    .line 33
    :cond_9
    sget-object v6, Lbp;->v:Lbp;

    if-ne v5, v6, :cond_a

    :goto_3
    xor-int/lit8 v5, v9, 0x1

    .line 34
    iput-boolean v5, v4, Lap6;->v:Z

    goto/16 :goto_1

    .line 35
    :cond_a
    new-instance p2, Lzo;

    new-array p3, v10, [Ljava/lang/Object;

    aput-object v5, p3, v9

    const-string v0, "Current token (%s) not of boolean type"

    .line 36
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 37
    throw p2

    :cond_b
    const-string v8, "categories"

    .line 38
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_28

    const-string v8, "tags"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_a

    :cond_c
    const-string v7, "published"

    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-wide/16 v8, 0x3e8

    if-eqz v7, :cond_d

    .line 40
    invoke-virtual {p1}, Lap;->c()J

    move-result-wide v5

    div-long/2addr v5, v8

    iput-wide v5, v4, Lap6;->p:J

    goto/16 :goto_1

    :cond_d
    const-string v7, "crawled"

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 42
    invoke-virtual {p1}, Lap;->c()J

    move-result-wide v5

    div-long/2addr v5, v8

    iput-wide v5, v4, Lap6;->q:J

    goto/16 :goto_1

    :cond_e
    const-string v7, "alternate"

    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "href"

    if-eqz v7, :cond_11

    .line 44
    :goto_4
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v5

    sget-object v6, Lbp;->o:Lbp;

    if-eq v5, v6, :cond_1

    .line 45
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    goto :goto_4

    .line 46
    :cond_f
    invoke-virtual {p1}, Lap;->g()Lbp;

    .line 47
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 48
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lap6;->k:Ljava/lang/String;

    goto :goto_4

    .line 49
    :cond_10
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_4

    :cond_11
    const-string v7, "enclosure"

    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 51
    invoke-virtual {v0}, Lcp6;->a()V

    .line 52
    :cond_12
    :goto_5
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v6

    sget-object v7, Lbp;->o:Lbp;

    if-eq v6, v7, :cond_1

    .line 53
    iget-object v6, v5, Lhp;->f:Lbp;

    .line 54
    sget-object v7, Lbp;->l:Lbp;

    if-ne v6, v7, :cond_13

    .line 55
    invoke-virtual {v0}, Lcp6;->a()V

    goto :goto_6

    .line 56
    :cond_13
    sget-object v7, Lbp;->m:Lbp;

    if-ne v6, v7, :cond_14

    .line 57
    invoke-virtual {v4, v0}, Lap6;->i(Lcp6;)V

    .line 58
    :cond_14
    :goto_6
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_15

    goto :goto_5

    .line 59
    :cond_15
    invoke-virtual {p1}, Lap;->g()Lbp;

    .line 60
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 61
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcp6;->a:Ljava/lang/String;

    goto :goto_5

    :cond_16
    const-string v7, "type"

    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 63
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcp6;->b:Ljava/lang/String;

    const-string v7, "image"

    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "image/thumbnail"

    .line 65
    iput-object v6, v0, Lcp6;->b:Ljava/lang/String;

    goto :goto_5

    .line 66
    :cond_17
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_5

    :cond_18
    const-string v5, "content"

    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, "summary"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, v4, Lap6;->i:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_19

    goto/16 :goto_9

    :cond_19
    const-string v5, "visual"

    .line 68
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 69
    invoke-virtual {v0}, Lcp6;->a()V

    .line 70
    :cond_1a
    :goto_7
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v5

    sget-object v6, Lbp;->m:Lbp;

    if-eq v5, v6, :cond_1d

    .line 71
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    goto :goto_7

    .line 72
    :cond_1b
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v6, "url"

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 74
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcp6;->a:Ljava/lang/String;

    const-string v6, "none"

    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, v0, Lcp6;->a:Ljava/lang/String;

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "image/visual"

    .line 76
    iput-object v5, v0, Lcp6;->b:Ljava/lang/String;

    goto :goto_7

    .line 77
    :cond_1c
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_7

    .line 78
    :cond_1d
    invoke-virtual {v4, v0}, Lap6;->i(Lcp6;)V

    goto/16 :goto_1

    :cond_1e
    const-string v5, "author"

    .line 79
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 80
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lap6;->j:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1f
    const-string v5, "origin"

    .line 81
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 82
    :goto_8
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v5

    sget-object v6, Lbp;->m:Lbp;

    if-eq v5, v6, :cond_1

    .line 83
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_20

    goto :goto_8

    .line 84
    :cond_20
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v6, "streamId"

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 86
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    if-eqz p3, :cond_21

    .line 87
    invoke-interface {p3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 88
    :cond_21
    iput-object v5, v4, Lap6;->z:Ljava/lang/String;

    goto :goto_8

    :cond_22
    const-string v5, ""

    .line 89
    iput-object v5, v4, Lap6;->f:Ljava/lang/String;

    goto :goto_8

    .line 90
    :cond_23
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_8

    .line 91
    :cond_24
    invoke-virtual {p1}, Lap;->i()Lap;

    goto/16 :goto_1

    .line 92
    :cond_25
    :goto_9
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v6

    sget-object v7, Lbp;->m:Lbp;

    if-eq v6, v7, :cond_1

    .line 93
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_26

    goto :goto_9

    .line 94
    :cond_26
    invoke-virtual {p1}, Lap;->g()Lbp;

    .line 95
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 96
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsn6;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lap6;->i:Ljava/lang/String;

    goto :goto_9

    .line 97
    :cond_27
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_9

    .line 98
    :cond_28
    :goto_a
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v5

    sget-object v6, Lbp;->o:Lbp;

    if-eq v5, v6, :cond_1

    .line 99
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_29

    goto :goto_a

    .line 100
    :cond_29
    invoke-virtual {p1}, Lap;->g()Lbp;

    .line 101
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 102
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28

    const-string v6, "/global.saved"

    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "user/"

    if-eqz v6, :cond_2a

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 104
    iput-boolean v10, v4, Lap6;->r:Z

    goto :goto_b

    .line 105
    :cond_2a
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const-string v6, "/tag/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2b

    :goto_b
    const/4 v6, 0x1

    goto :goto_c

    :cond_2b
    const/4 v6, 0x0

    :goto_c
    if-eqz v6, :cond_28

    .line 106
    iget-object v6, v4, Lap6;->y:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 107
    :cond_2c
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_a

    .line 108
    :cond_2d
    new-instance p1, Lgw6$a;

    invoke-direct {p1}, Lgw6$a;-><init>()V

    throw p1

    .line 109
    :cond_2e
    invoke-interface {p2, v1}, Lrn6$b;->a(Ljava/util/List;)V

    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 111
    :cond_2f
    invoke-virtual {p1}, Lap;->i()Lap;

    goto/16 :goto_0

    :cond_30
    return-object v3
.end method

.method public final o(Ljava/io/Reader;Lrn6$c;Lrn6$d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;,
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    new-instance v0, Lwo;

    invoke-direct {v0}, Lwo;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lwo;->a(Ljava/io/Reader;)Lap;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v5

    sget-object v6, Lbp;->o:Lbp;

    if-eq v5, v6, :cond_11

    .line 6
    move-object v5, p1

    check-cast v5, Lhp;

    .line 7
    iget-object v6, v5, Lhp;->f:Lbp;

    .line 8
    sget-object v7, Lbp;->l:Lbp;

    if-ne v6, v7, :cond_1

    .line 9
    new-instance v3, Lip6;

    invoke-direct {v3}, Lip6;-><init>()V

    goto :goto_1

    .line 10
    :cond_1
    sget-object v7, Lbp;->m:Lbp;

    if-ne v6, v7, :cond_2

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v7, "id"

    .line 14
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 15
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lip6;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v8, "title"

    .line 16
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 17
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsn6;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lip6;->h:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v8, "sortid"

    .line 18
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 19
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lip6;->g:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v8, "website"

    .line 20
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 21
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lip6;->j:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v8, "visualUrl"

    .line 22
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 23
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lip6;->k:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v8, "updated"

    .line 24
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 25
    invoke-virtual {p1}, Lap;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, v3, Lip6;->n:J

    goto/16 :goto_0

    :cond_9
    const-string v8, "categories"

    .line 26
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 27
    :goto_2
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v6

    sget-object v8, Lbp;->o:Lbp;

    if-eq v6, v8, :cond_0

    .line 28
    iget-object v6, v5, Lhp;->f:Lbp;

    .line 29
    sget-object v8, Lbp;->l:Lbp;

    if-ne v6, v8, :cond_a

    .line 30
    new-instance v4, Llp6;

    invoke-direct {v4}, Llp6;-><init>()V

    goto :goto_3

    .line 31
    :cond_a
    sget-object v8, Lbp;->m:Lbp;

    if-ne v6, v8, :cond_c

    if-eqz v4, :cond_b

    .line 32
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v4, v2

    .line 33
    :cond_c
    :goto_3
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    goto :goto_2

    .line 34
    :cond_d
    invoke-virtual {p1}, Lap;->g()Lbp;

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 36
    iget-object v6, v3, Lip6;->l:Ljava/util/List;

    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Llp6;->f:Ljava/lang/String;

    const/16 v6, 0xb

    .line 38
    iput v6, v4, Llp6;->g:I

    goto :goto_2

    :cond_e
    const-string v8, "label"

    .line 39
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 40
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Llp6;->i:Ljava/lang/String;

    goto :goto_2

    .line 41
    :cond_f
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_2

    .line 42
    :cond_10
    invoke-virtual {p1}, Lap;->i()Lap;

    goto/16 :goto_0

    .line 43
    :cond_11
    check-cast p3, Lep6$a;

    invoke-virtual {p3, v1}, Lep6$a;->a(Ljava/util/List;)V

    .line 44
    check-cast p2, Lep6$b;

    invoke-virtual {p2, v0}, Lep6$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public final p(Ljava/io/Reader;Lrn6$d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lwo;

    invoke-direct {v0}, Lwo;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lwo;->a(Ljava/io/Reader;)Lap;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v5

    sget-object v6, Lbp;->o:Lbp;

    const-string v7, "tag/global.saved"

    if-eq v5, v6, :cond_6

    .line 5
    move-object v5, p1

    check-cast v5, Lhp;

    .line 6
    iget-object v5, v5, Lhp;->f:Lbp;

    .line 7
    sget-object v6, Lbp;->l:Lbp;

    if-ne v5, v6, :cond_1

    .line 8
    new-instance v4, Llp6;

    invoke-direct {v4}, Llp6;-><init>()V

    goto :goto_1

    .line 9
    :cond_1
    sget-object v6, Lbp;->m:Lbp;

    if-ne v5, v6, :cond_2

    .line 10
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v6, "id"

    .line 13
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 14
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llp6;->f:Ljava/lang/String;

    const/16 v6, 0xa

    .line 15
    iput v6, v4, Llp6;->g:I

    .line 16
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 17
    iput-object v7, v4, Llp6;->i:Ljava/lang/String;

    .line 18
    iput v1, v4, Llp6;->g:I

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const-string v6, "label"

    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 20
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llp6;->i:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_0

    :cond_6
    if-nez v3, :cond_7

    .line 22
    :try_start_0
    new-instance p1, Llp6;

    invoke-direct {p1}, Llp6;-><init>()V

    const-string v2, "global.saved"

    .line 23
    invoke-virtual {p0, v2}, Lsn6;->getTagUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Llp6;->f:Ljava/lang/String;

    .line 24
    iput-object v7, p1, Llp6;->i:Ljava/lang/String;

    .line 25
    iput v1, p1, Llp6;->g:I

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lgw6; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :cond_7
    :try_start_1
    check-cast p2, Lep6$a;

    invoke-virtual {p2, v0}, Lep6$a;->a(Ljava/util/List;)V
    :try_end_1
    .catch Lgw6; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final q(JLrn6$b;Ljava/lang/String;)Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lrn6$b;->stream()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsn6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://feedly.com/v3/streams/-/contents"

    const-string v2, "-"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?ranked="

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lrn6$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "newest"

    goto :goto_0

    :cond_0
    const-string v0, "oldest"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p3}, Lrn6$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&unreadOnly=true"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "&unreadOnly=false"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz p4, :cond_2

    .line 8
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "&continuation="

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long p4, p1, v2

    if-lez p4, :cond_3

    const-string p4, "&newerThan="

    .line 10
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    invoke-interface {p3}, Lrn6$b;->c()I

    move-result p1

    const/16 p2, 0x3e8

    if-gt p1, p2, :cond_4

    if-nez p1, :cond_5

    :cond_4
    const/16 p1, 0x3e8

    :cond_5
    if-lez p1, :cond_7

    const-string p3, "&count="

    .line 12
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le p1, p2, :cond_6

    goto :goto_2

    :cond_6
    move p2, p1

    :goto_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsn6;->c(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string v0, "id"

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "title"

    .line 4
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v4, p3, p2

    .line 6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "label"

    const-string v7, "/category/"

    .line 8
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0xa

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "categories"

    .line 10
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const-string p3, "https://feedly.com/v3/subscriptions"

    .line 12
    invoke-virtual {p0, p2, p3, p1}, Lsn6;->e(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v3
.end method

.method public renameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "label"

    .line 2
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "user"

    .line 3
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "/category/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "https://feedly.com/v3/categories/"

    .line 4
    invoke-static {p3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "/tag/"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "https://feedly.com/v3/tags/"

    .line 6
    invoke-static {p3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsn6;->d(Ljava/lang/String;Ljava/lang/String;)Z

    return v1

    .line 8
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "renameTag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FeedlyClient"

    .line 9
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
